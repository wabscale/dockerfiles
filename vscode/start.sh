#!/bin/bash
set -e
set -o pipefail

# su user -p -c /usr/share/code/code
/usr/share/code/code --no-sandbox
