#!/usr/bin/env bash

START_END_MSG=(
    "# STARTING VALIDATIONS ON INPUT"
    "# VALIDATIONS COMPLETE"
)
VAL_PTH="/usr/local/bin/validation"
VAL_PBP="${VAL_PTH}/pre-check.yml"
VAL_INV="${VAL_PTH}/inventory"
VAL_VAR="@/runner/env/extravars"

printf "${START_END_MSG[0]}\n"
ansible-playbook    \
    -i "${VAL_INV}" \
    -e "${VAL_VAR}" \
       "${VAL_PBP}"