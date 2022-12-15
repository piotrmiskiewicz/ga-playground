COMMIT_HASH=`git rev-parse HEAD`
BR_NAME="autobump-${{COMMIT_HASH}}"
git config --global user.name "CI"
git config --global user.email "ci@void"
git checkout -b ${{BR_NAME}}
git commit -a -m "Automatic PR"
echo "Pushing"
git push
gh pr create --title "The image bump" --body "Automatic docker image bump"
