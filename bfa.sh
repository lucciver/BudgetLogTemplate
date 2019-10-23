#!/usr/bin/env bash

echo "BFA.SH - YOUR BUDGET FILING ASSISTANT"
echo "https://github.com/ForgivenNin/BudgetLogTemplate/"
echo "-----"
echo "This program helps you manage all of your receipts on a timely basis."

# User inputs file
echo "Is there a file you would like to register?"
read FILENAME

# Logs file modification/creation time
stat -c %y "~$FILENAME"

echo "STORED $FILENAME"


# Run in background to manage files
bkr() {(nohup "$@" &>/dev/null &)}
bkr ./bfa.sh
