#!/usr/bin/env bash

set -e

# Add less_setup.sh
echo -e '\n# For less\nsource "$HOME/unixconfig/less_setup.sh"' >> ~/.bashrc

# Add hist_setup.sh
echo -e '\n# For history\nsource "$HOME/unixconfig/hist_setup.sh"' >> ~/.bashrc

