echo "🔑 Adding ssh key..." &&
eval $(ssh-agent -s) &&
ssh-add <(echo "${INPUT_KEY}") && 
echo "🔐 Added ssh key";

PRE_UPLOAD=${INPUT_PRE_UPLOAD}
if [ ! -z "$PRE_UPLOAD" ]; then
    echo "👌 Executing pre-upload script..." &&
    ssh ${INPUT_SSH_OPTIONS} ${INPUT_USER}@${INPUT_HOST} "$INPUT_PRE_UPLOAD && exit" &&
    echo "✅ Executed pre-upload script" || 
    {{ echo "😢 Something went wrong during pre-upload script" && exit 1 }} ;
fi

echo "🚚 Uploading via scp..." &&
scp ${INPUT_SSH_OPTIONS} ${INPUT_SCP_OPTIONS} -P "${INPUT_PORT}" -r ${INPUT_LOCAL} ${INPUT_USER}@${INPUT_HOST}:"${INPUT_REMOTE}" &&
echo "🙌 Uploaded via scp" || 
{{ echo "😢 Something went wrong during upload" && exit 1 }};

POST_UPLOAD=${INPUT_POST_UPLOAD}
if [ ! -z "$POST_UPLOAD" ]; then
    echo "👌 Executing post-upload script..." &&
    ssh ${INPUT_SSH_OPTIONS} ${INPUT_USER}@${INPUT_HOST} "$POST_UPLOAD && exit" &&
    echo "✅ Executed post-upload script" || 
    {{ echo "😢 Something went wrong during post-upload script" && exit 1 }};
fi

echo "🎉 Done";