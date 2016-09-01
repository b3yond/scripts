#!/bin/bash
# removes gitolite. execute as gitolite user
cd ~
rm -rf gitolite .gitolite repositories foo .gitolite.rc projects.list .gitconfig bin/git*
echo removed gitolite. You may want to remove .ssh/authorized_keys.
ls -la
