# Paperscan Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [26.0.4] - 

### Added

- DashboardPage.

### Changed

- Binary PDF reading/streaming instead of TextInputStream in Viewer.
- Use ShellPath instead of NativePath in the DoucmentParser module.
- New database schema. The old schema is not compatible.
- Import process with better feedback.

### Fixed

- typos corrected

## [26.0.3] - 2026-03-06

### Added

- Files can be deleted from the upload list.
- NormalizeSpaces - Regex function to remove spaces in a string.

### Fixed

- Style folder was missing in previous version.

### Changed

- GetText renamed to ExtractTextFromFile.

## [26.0.2] - 2026-03-04

### Added

- This CHANGELOG file.
- Switch Light/Dark Mode.

### Changed
- Some UI adjustments.

## [26.0.1] - 2026-02-28

### Added

- Added About Dialog.
- German translation.

## [25.0.7] - 2025-05-30

### Added

- Dockerfile.
- Preparing for multilingual.

## [25.0.6] - 2025-04-20

### Added

- Toolbar.

## [25.0.5] - 2025-04-18

### Fixed

- CreateFolder Exception.

## [25.0.4] - 2025-04-04

### Changed

- Revised ParsePDF Method.

## [25.0.3] - 2025-04-03

### Added

- Print and Download function.

## [25.0.1] - 2025-03-31

### Added

- Initial Commit.
- MainPage, UploadPage, ViewerDialog.
- DocumentParser Method.