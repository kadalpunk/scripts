#!/bin/bash
# Sam McLeod https://github.com/sammcj
#
# Sends the output of a command to a Redmine ticket
#
# Examples:
# redminejob Systems 12345 "echo Hello World"
# at 19:00 redminejob Systems 12345 "echo Hello World"

if [ $# -lt 3 ]
  then
    echo "Usage: redminejob <project> <task number> \"<command>\""
    exit 1
fi

REDMINE_EMAIL="your_redmine_email@something.com"
PROJECT=$1
TASK=$2
COMMAND=$3

echo "<pre>$($COMMAND)</pre>"|mail -s \""Re: [$PROJECT - Task #$TASK] - $COMMAND\"" $REDMINE_EMAIL

