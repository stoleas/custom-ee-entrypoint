#!/usr/bin/env bash

START_END_MSG=(
    "# STARTING VALIDATIONS ON INPUT"
    "# VALIDATIONS COMPLETE"
)
VAL_DIR="/tmp/validation"
VAL_PBP="/usr/local/bin/validation/pre-check.yml"

printf "${START_END_MSG[0]}\n"
mkdir  "${VAL_DIR}"
ansible-runner \
    run "${VAL_DIR}" \
    -p  "${VAL_PBP}"
printf  "${START_END_MSG[1]}\n"

exit 0