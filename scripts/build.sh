#!/bin/sh

# yarn plugin import workspace-tools
yarn workspaces foreach --all --interlaced --verbose --jobs unlimited run build