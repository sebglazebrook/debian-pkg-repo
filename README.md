Overview
========

This is my own personal debian package repository


Usage
=====

Until I set up the DNS you would have to do something like this:

```
LATEST_RELEASE=$(git ls-remote https://github.com/sebglazebrook/debian-pkg-repo.git | head -n 1 | awk '{ print $1 }')

echo " deb http://cdn.rawgit.com/sebglazebrook/debian-pkg-repo/${LATEST_RELEASE} jessie main" | sudo tee /etc/apt/sources.list.d/sebglazebrook.list

sudo apt-get update
```

Adding new packages
===================

```
# copy the deb file to this dir
cp ../some-other-dir/cool.deb .

# make sure you have (aliases)[https://github.com/sebglazebrook/aliases] installed
add-package cool.deb
```
