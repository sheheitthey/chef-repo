#!/bin/sh
# A helper script to list the files I actually edited, namely by excluding
# the cookbooks I did not. Just helps me see what changes I've made using
#     git diff TREEISH -- `./my-edited.sh`

GREP=grep
LS=/bin/ls

if [ -z "${MY_COOKBOOKS+set}" ]; then
    MY_COOKBOOKS='aliases'
fi

# List out my cookbooks.
for cookbook in $MY_COOKBOOKS; do
    echo "./cookbooks/${cookbook}"
done

# List out hidden files except ., .., and .git.
$LS -Ad ./.* | $GREP -Ev '^\./\.(|\.|git)$'

# List out all other files except cookbooks.
$LS -d ./* | $GREP -Ev '^\./cookbooks$'
