#!/usr/bin/env bash

echo "BFA.SH - YOUR BUDGET FILING ASSISTANT"
echo "https://github.com/ForgivenNin/BudgetLogTemplate/"
echo "-----"
echo "This program helps you manage all of your receipts on a timely basis."
echo "All financial documents in this folder will be watched so that everything is up to date without any clutter."
echo "By following this configuration prompt, `bfa.sh` will go ahead and start doing its work in the background."
echo "Before entering a deadline, please make sure that your files will not get deleted upon registration.\n"

echo "How many days would you like your files to be stored before deletion?"
read DEADLINE

# Run in background to manage files.
datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d +%s)
    t=$(( (d1 - d2) / 86400 ))
}

bkr() {
  (nohup "$@" &>/dev/null &)
  for FILE in BudgetLogTemplate-master/*; do
    echo "Stored $FILE"
    if [(datediff $FILE) > $DEADLINE]; then
      delete=($FILE)
    fi
  done
}
bkr ./bfa.sh

exit
