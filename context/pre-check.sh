#!/usr/bin/env bash

START_END_MSG=(
    "# STARTING VALIDATIONS ON INPUT"
    "# VALIDATIONS COMPLETE"
)
VAL_TMP_DIR="/tmp/validation"
VAL_TMP_DIR="/runner/validation/pre-check.yml"

printf "${START_END_MSG[0]}\n"
mkdir  "${VAL_TMP_DIR}"

ansible-runner \
    run "${VAL_DIR}" \
    -p  "${VAL_TMP_DIR}" \
    --hosts localhost

printf "${START_END_MSG[1]}\n"

exit 0