#!/usr/bin/env bash

set -euo pipefail

TEST_SSH_USER="root"
TEST_SSH_SERVER="192.168.1.10"

SCRIPT_PATH="$(dirname "${BASH_SOURCE[0]}")"


 test_commands=( "${SCRIPT_PATH}/ssh-keyinfo ${SCRIPT_PATH}/examples/*/*" )
test_commands+=( "${SCRIPT_PATH}/ssh-certinfo ${SCRIPT_PATH}/examples/*/*" )
test_commands+=( "${SCRIPT_PATH}/ssh-certinfo -v ${SCRIPT_PATH}/examples/*/*" )
test_commands+=( "${SCRIPT_PATH}/ssh-certinfo -c ${SCRIPT_PATH}/examples/*/*" )
test_commands+=( "${SCRIPT_PATH}/ssh-certinfo -cv ${SCRIPT_PATH}/examples/*/*" )
test_commands+=( "${SCRIPT_PATH}/ssh-certinfo -c -w 20000 ${SCRIPT_PATH}/examples/*/*" )
test_commands+=( "${SCRIPT_PATH}/ssh-certinfo -cv -w 20000 ${SCRIPT_PATH}/examples/*/*" )
test_commands+=( "CHECK_REMOTE_FILE_EXISTS=NO sshpass -e ${SCRIPT_PATH}/ssh-diff /etc/hosts ${TEST_SSH_USER}@${TEST_SSH_SERVER}" )
test_commands+=( "sshpass -e ${SCRIPT_PATH}/ssh-facts ${TEST_SSH_USER}@${TEST_SSH_SERVER}" )
test_commands+=( "${SCRIPT_PATH}/ssh-hostkeys ${TEST_SSH_SERVER}" )
test_commands+=( "sshpass -e ${SCRIPT_PATH}/ssh-ping -4 -v -c 3 -D ${TEST_SSH_USER}@${TEST_SSH_SERVER}" )
test_commands+=( "sshpass -e ${SCRIPT_PATH}/ssh-ping -4 -v -c 3 -H ${TEST_SSH_USER}@${TEST_SSH_SERVER}" )
test_commands+=( "${SCRIPT_PATH}/ssh-version ${TEST_SSH_SERVER}" )

for (( i = 0; i < ${#test_commands[@]} ; i++ )); do
  printf "\n**** Running: ${test_commands[$i]} *****\n\n"

  # Run each command in array
  eval "${test_commands[$i]}"

done

printf "\n**** Finished *****\n\n"
