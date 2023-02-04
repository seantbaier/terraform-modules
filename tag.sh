#! bash

git add .
git commit -m "Initial setup"
git tag -f v0.0.4 -m "Initial setup"
git push origin v0.0.4 --force
git push