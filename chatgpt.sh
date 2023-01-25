#!/bin/bash

source ~/.chatgpt/chatgpt

clear
echo "ChatGPT.sh" | toilet -f smbraille
echo ""

while [[ $# -gt 0 ]]; do
key="$1"
case $key in
-p|--prompt)
PROMPT="$2"
shift
shift
;;
esac
done

if [ -z "$PROMPT" ]
then
echo "Prompt cannot be null!"
exit 1
fi

curl=`cat <<EOF
curl https://api.openai.com/v1/completions \
  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer $BEARER" \
  -d '{
  "model": "$MODEL",
  "prompt": "$PROMPT",
  "max_tokens": $MAX_TOKEN,
  "temperature": $TEMPERATURE

}' \
--insecure 2>/tmp/chatgpt_err | jq '.choices[]'.text | cut -c 6-
EOF`

result=`eval ${curl}`
exit_code=$?

if [ $exit_code -ne 0 ]; then
    cat /tmp/chatgpt_err
    exit $exit_code
else
    echo -e $result | sed '$ s/.$//'
    echo ""
fi
exit 0
