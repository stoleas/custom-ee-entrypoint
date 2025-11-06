#!/usr/bin/env bash

echo "# START TEST INPUT"
echo "### PRINTING \${ANSIBLE_EXTRA_VARS}"
echo "${ANSIBLE_EXTRA_VARS}"
echo "### RUNNING COMMAND env"
env
echo "# END TEST INPUT"
