#!/usr/bin/env bash

#START_END_MSG=(
#    "# STARTING VALIDATIONS ON INPUT"
#    "# VALIDATIONS COMPLETE"
#)
VAL_PTH="/usr/local/bin/validation"
VAL_PBP="${VAL_PTH}/pre-check.yml"
VAL_INV="${VAL_PTH}/inventory"
VAL_VAR="@/runner/env/extravars"

#printf "${START_END_MSG[0]}\n"
#MESSAGE="${@}"


#ansible-runner worker --private-data-dir=/usr/local/bin/validation

sleep 120

#echo "{\"result\": \"success\", \"message\": \"${MESSAGE}\"}"
#
#dumb-init \
#    ansible-playbook    \
#        -i "${VAL_INV}" \
#        -e "${VAL_VAR}" \
#           "${VAL_PBP}"
#
#{"result": "success", "message": "dumb-init ansible-runner worker --private-data-dir=/runner"}