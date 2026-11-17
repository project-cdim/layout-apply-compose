# Changelog 0.2

## [0.2.1](https://github.com/project-cdim/layout-apply-compose/compare/v0.2.0...v0.2.1) - 2026-11-02

The changes from v0.2.0 are as follows:

### Features

- Separated rollback status data into a dedicated database table.

### Breaking Changes

- Updated required Python version from 3.14.2 to 3.14.6.
- Replaced compose.yml with compose.yml.template to allow local Compose configuration.

### Improvements

- Adjusted database update, polling, and retry timing settings.

## [0.2.0](https://github.com/project-cdim/layout-apply-compose/compare/v0.1.1...v0.2.0) - 2026-03-24

The changes from v0.1.1 are as follows:

### Breaking Changes

- Updated required Python version from 3.13.5 to 3.14.2.
- Fixed to mount the Docker volume layout-apply-log on the host to the /var/log/cdim/ directory in the container

### Bug Fixes

- Fixed lingering processes after executing layout apply requests
