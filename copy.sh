F_COPY_HOME="$HOME/WebstormProjects"
CURR_PROJ="LearnAng2Dart"
F_BUILDS="$F_COPY_HOME/builds/$CURR_PROJ/"

pushd "$F_COPY_HOME/$CURR_PROJ"
# pub build
pushd "$F_BUILDS"
#ls | xargs echo # remove all non-dotfiles from build dir
git rm * --force
popd
echo "copying $(echo build/web/*) to $F_BUILDS"
cp build/web/* $F_BUILDS
pushd "$F_BUILDS"
git add .
git commit -m "autobuilt latest" --dry-run
git push
popd
popd
