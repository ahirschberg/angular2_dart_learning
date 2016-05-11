# Builds the dart project to js and pushes it to the gh-pages branch
# must have the F_BUILDS folder already initialized as a copy of
# the git repo.

F_COPY_HOME="$HOME/WebstormProjects" # root-level directory
CURR_PROJ="LearnAng2Dart" # project directory name
F_BUILDS="$F_COPY_HOME/builds/$CURR_PROJ/" # destination directory (builds)

pushd "$F_COPY_HOME/$CURR_PROJ"
pub build

pushd "$F_BUILDS"
git rm * --force --quiet # clean the build folder
popd

echo "copying build/web/* to $F_BUILDS"
cp build/web/* $F_BUILDS

pushd "$F_BUILDS"
git config push.default simple
git checkout -B gh-pages # ensure we're on the correct branch
git add .
git commit -m "autobuilt latest"
git push
popd

popd
