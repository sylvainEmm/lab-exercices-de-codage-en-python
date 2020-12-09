#!/bin/sh

source .scripts/spec.sh --source-only

ID=01
ID_CODE=":one:"
FILE="programme"
OK="| ${ID_CODE} | [:bookmark:](${ID}/${FILE}.py) | :tada: | "
KO="| ${ID_CODE} | [:bookmark:](${ID}/${FILE}.py) | :x:    | "
if [ -f "${FILE}.py" ]; then
    generate_spec
    pytest .scripts/${FILE}0000.py 2>&1 >  /dev/null
    RES=`echo $?`
    if [ $RES = 0 ]; then
        echo ${OK}
    else
        echo ${KO}
    fi
else
    echo ${KO}
fi

