# Changelog 0.2

## [0.2.0](https://github.com/project-cdim/layout-apply-compose/compare/v0.1.1...v0.2.0) - 2026-03-24

The changes from v0.1.1 are as follows:

### Breaking Changes

- Updated required Python version from 3.13.5 to 3.14.2.
- Fixed to mount the Docker volume layout-apply-log on the host to the /var/log/cdim/ directory in the container

### Bug Fixes

- Fixed lingering processes after executing layout apply requests
