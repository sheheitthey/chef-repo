#!/bin/sh
# Upload all cookbooks, data_bags, environments, nodes, and roles. It looks
# like the Rakefile is the intended way to do this, but for some reason there
# is currently no task in it to upload all objects of all types.

GREP=grep
LS=\ls
KNIFE=knife

if [ -z "${UPLOAD_COOKBOOKS+set}" ]; then
    UPLOAD_COOKBOOKS=1
fi

if [ -z "${JS_OBJECT_TYPES+set}" ]; then
    JS_OBJECT_TYPES='data_bag environment node role'
fi

COOKBOOKS_DIR=./cookbooks
COOKBOOKS_GREP_EXCLUDE='README\.md'

if [ "${UPLOAD_COOKBOOKS}" = '1' ]; then
    cookbooks=`$LS ${COOKBOOKS_DIR} | $GREP -Ev ${COOKBOOKS_GREP_EXCLUDE}`

    for cookbook in $cookbooks; do
        $KNIFE cookbook upload $cookbook
    done
fi

for js_object_type in $JS_OBJECT_TYPES; do
    js_object_dir="${js_object_type}s"
    js_object_paths=`$LS ${js_object_dir}/*.js 2> /dev/null`

    for js_object_path in $js_object_paths; do
        $KNIFE ${js_object_type} from file "${js_object_path}"
    done
done
