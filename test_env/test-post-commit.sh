#!/bin/bash

export TOKEN=$(git config --get pivotal.token)

testo=$(git log --no-color --format='Commit: %hAuthor: %aN <%aE>Refs: %dMessage: %s' -1)

[[ $testo =~ ^Commit:\ (.*)Author:\ (.*)Refs:\ \ \((.*)\)Message:\ (.*)$ ]] 

IDCOMMIT=${BASH_REMATCH[1]}
AUTHOR=${BASH_REMATCH[2]}
MESSAGE=${BASH_REMATCH[4]}

BODY='{"source_commit":{"commit_id":"'${IDCOMMIT}'","message":"'${MESSAGE}'","author":"'${AUTHOR}'"}}'

#if [[ $MESSAGE =~ ^\[#[0-9]*\](.*)$ ]]
	#then curl -X POST -H "X-TrackerToken: $TOKEN" -H "Content-Type: application/json" -d "$BODY" "https://www.pivotaltracker.com/services/v5/source_commits"
#fi 

echo $BODY