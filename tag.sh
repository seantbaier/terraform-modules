#! bash


VERSION=v0.0.6

git add .
git commit -m "Initial setup"
git tag -f $VERSION -m "Initial setup"
git push origin $VERSION --force
git push