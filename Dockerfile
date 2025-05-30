# Step-by-Step Instructions for Building, Saving, and Running the Image:
# 1. Build the Docker image:
#    "docker build -t paperscan-image ."
#    This creates a Docker image named "paperscan-image" based on this Dockerfile.
#
# 2. Save the Docker image to a tar file:
#    "docker save -o paperscan-image.tar paperscan-image"
#    This saves the "paperscan-image" to a file named "paperscan-image.tar".
#    You can use this file to transfer the image to another server.
#
# 3. Upload the .tar file to the remote server.
#    After transferring the tar file, follow these steps on the remote server:
#
#    3.1 Load the Docker image:
#        "docker load -i paperscan-image.tar"
#        This imports the image into the Docker environment on the server.
#
#    3.2 Run a container from the image:
#        "docker run -d --name paperscan-container --restart always -p 7000:80 paperscan-image"
#        This creates and starts a container named "paperscan-container" that:
#        - Restarts automatically if it stops (via `--restart always`).
#        - Maps port 8080 inside the container to port 7000 on the host machine.
#
#    3.3 Verify the web app is running:
#        Open a web browser and navigate to http://server-ip:7000
#        Replace "server-ip" with the IP address of your remote server.
#
# Complete video guide at: https://youtu.be/ARr7d6Z6CRY
# Use Ubuntu 24.04 as the base image for the container.
FROM ubuntu:24.04

# Define the name of the Xojo web app executable.
# This should match the exact name of your compiled Xojo web app (case-sensitive).
ENV WEBAPP_NAME=Paperscan

# Prevent interactive prompts during the installation of dependencies.
ENV DEBIAN_FRONTEND=noninteractive

# Install required system libraries for the Xojo web app to run, and purge unnecessary software (PHP, Python, Apache)
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    libunwind8 \
    libsoup2.4-1 \
    libpango-1.0 \
    libglib2.0 \
    libgtk-3-0 \
    ghostscript \
    poppler-utils \
    && apt-get purge -y php* python3* apache2* libapache2-mod-php* \
    && apt-get autoremove -y \
    && apt-get clean
 
RUN useradd --create-home ${WEBAPP_NAME}
# Set the working directory inside the container.
# This is where the web app files will be located.
WORKDIR /${WEBAPP_NAME}

# Copy the built Xojo web app from the build context into the container.
# Remember, this Dockerfile must be placed in the same folder as the Xojo project.
COPY ["Builds - ${WEBAPP_NAME}/Linux 64 bit/${WEBAPP_NAME}", "."]

# Change ownership of the application files to the non-root user
RUN chown -R ${WEBAPP_NAME}:${WEBAPP_NAME} /${WEBAPP_NAME}

# Ensure the main web app executable has permission to run
RUN chmod +x ${WEBAPP_NAME}

# Create a directory for persistent data storage.
# Ensure the data directory is owned by the non-root user.
RUN mkdir -p /home/${WEBAPP_NAME}/Data && chown -R ${WEBAPP_NAME}:${WEBAPP_NAME} /home/${WEBAPP_NAME}/Data
RUN mkdir -p /home/${WEBAPP_NAME}/Input && chown -R ${WEBAPP_NAME}:${WEBAPP_NAME} /home/${WEBAPP_NAME}/Input
RUN mkdir -p /home/${WEBAPP_NAME}/Media && chown -R ${WEBAPP_NAME}:${WEBAPP_NAME} /home/${WEBAPP_NAME}/Media

# The contents of "/home/${WEBAPP_NAME}/data" will persist outside the container.
VOLUME /home/${WEBAPP_NAME}/Data
VOLUME /home/${WEBAPP_NAME}/Input
VOLUME /home/${WEBAPP_NAME}/Media

# Switch to the non-root user for security purposes.
# All subsequent instructions (including CMD) will run as this user.
USER ${WEBAPP_NAME}

# Expose port 8080 inside the container.
# This allows the web app to listen on port 8808, which will be mapped to port 7000
# on the host machine when the container is run.
EXPOSE 8080

# Start the Xojo web app when the container runs.
# The app will listen on port 8080 inside the container.
CMD ["sh", "-c", "./${WEBAPP_NAME} --port=8080"]
