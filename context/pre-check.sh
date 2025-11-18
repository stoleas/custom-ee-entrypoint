#!/usr/bin/env bash

START_END_MSG=(
    "# STARTING VALIDATIONS ON INPUT"
    "# VALIDATIONS COMPLETE"
)
VAL_DIR="/tmp/validation"
VAL_PTH="/usr/local/bin/validation"
VAL_PBP="${VAL_PTH}/pre-check.yml"
VAL_INV="${VAL_PTH}/inventory"

printf "%s\n" "${@}"

printf "${START_END_MSG[0]}\n"
mkdir  "${VAL_DIR}"
ansible-runner  run "${VAL_DIR}" \
    --playbook  "${VAL_PBP}" \
    --inventory "${VAL_INV}"
printf  "${START_END_MSG[1]}\n"

exit 0