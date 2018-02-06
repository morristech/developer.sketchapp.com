CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
PUBLISH_BRANCH=gh-pages-test
BRANCH_TO_DEPLOY=develop

SKETCH_API_REPO=https://github.com/BohemianCoding/SketchAPI
API_DOCS_FOLDER=./temp-sketchAPI-clone
LOCAL_DOCS_FOLDER=./_api-references

# switch to gh-pages
echo "Switching to gh-pages..."
git fetch
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
git checkout $PUBLISH_BRANCH

# update it with the latest changes
echo "Getting the latest changes..."
git merge $BRANCH_TO_DEPLOY --no-edit
rm -rf $LOCAL_DOCS_FOLDER
git clone $SKETCH_API_REPO $API_DOCS_FOLDER
cp -r $API_DOCS_FOLDER/docs $LOCAL_DOCS_FOLDER
git add .

# commit and push
echo "Publishing the changes..."
git commit -m 'publish new version of the docs :tada:'

# go back to previous state
echo "Cleaning up..."
git checkout $CURRENT_BRANCH
rm -rf $LOCAL_DOCS_FOLDER
rm -rf $API_DOCS_FOLDER

echo "All done ✨"
