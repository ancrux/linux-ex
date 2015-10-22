#!/bin/bash

# ssh-copy-id with ssh port
ssh-copy-id "user@host -p 2222"
ssh-copy-id -i ~/.ssh/id_rsa.pub "user@host -p 2222"

