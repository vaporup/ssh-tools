#!/usr/bin/env bash

TEST_SSH_USER="root"
TEST_SSH_SERVER="192.168.1.10"

 test_commands=( "./ssh-keyinfo examples/*/*"                                              )
test_commands+=( "./ssh-certinfo examples/*/*"                                             )
test_commands+=( "./ssh-certinfo -v examples/*/*"                                          )
test_commands+=( "./ssh-certinfo -c examples/*/*"                                          )
test_commands+=( "./ssh-certinfo -cv examples/*/*"                                         )
test_commands+=( "./ssh-certinfo -c -w 20000 examples/*/*"                                 )
test_commands+=( "./ssh-certinfo -cv -w 20000 examples/*/*"                                )
test_commands+=( "sshpass -e ./ssh-diff /etc/hosts ${TEST_SSH_USER}@${TEST_SSH_SERVER}"    )
test_commands+=( "sshpass -e ./ssh-diff -y /etc/hosts ${TEST_SSH_USER}@${TEST_SSH_SERVER}" )
test_commands+=( "sshpass -e ./ssh-diff -u /etc/hosts ${TEST_SSH_USER}@${TEST_SSH_SERVER}" )
test_commands+=( "sshpass -e ./ssh-facts ${TEST_SSH_USER}@${TEST_SSH_SERVER}"              )
test_commands+=( "./ssh-hostkeys ${TEST_SSH_SERVER}"                                       )
test_commands+=( "sshpass -e ./ssh-ping -v -c 3 -D ${TEST_SSH_USER}@${TEST_SSH_SERVER}"    )
test_commands+=( "sshpass -e ./ssh-ping -v -c 3 -H ${TEST_SSH_USER}@${TEST_SSH_SERVER}"    )
test_commands+=( "./ssh-version ${TEST_SSH_SERVER}"                                        )

for (( i = 0; i < ${#test_commands[@]} ; i++ )); do
  printf "\n**** Running: ${test_commands[$i]} *****\n\n"

  # Run each command in array
  eval "${test_commands[$i]}"

done

