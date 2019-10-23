#!/usr/bin/env bash
chmod +x bFA.sh

echo "BFA.SH --- YOUR BUDGET FILING ASSISTANT"
echo "https://github.com/ForgivenNin/BudgetLogTemplate/"

# User inputs file
echo "What file would you like to use?
read FILENAME

# Logs file modification/creation time
stat -c %y "~$FILENAME"

echo "STORED $FILENAME"
