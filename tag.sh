#! bash

git add .
git commit -m "Initial setup"
git tag -f v0.0.3 -m "Initial setup"
git push origin v0.0.3 --force
git push