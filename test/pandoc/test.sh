#!/bin/bash

# This test file will be executed against a devcontainer.json that
# includes the 'pandoc' Feature.
#
# For more information, see: https://github.com/devcontainers/cli/blob/main/docs/features/test.md

set -e

# Import test library bundled with the devcontainer CLI
# Provides the 'check' and 'reportResults' commands.
source dev-container-features-test-lib

# Feature-specific tests
# check "pandoc installed" command -v pandoc
check "execute command" bash -c "pandoc --version | grep 'pandoc'"

# Report results
reportResults
