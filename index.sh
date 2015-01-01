#!/usr/bin/env sh

_() {
  touch README.md
  echo "Hello 2015！" > 2015.md
  git add .
  GIT_AUTHOR_DATE="2015-01-01T08:00:00" \
    GIT_COMMITTER_DATE="2015-01-01T08:00:00" \
    git commit -m "2015"
    [ -z "https://github.com/yuluo-yx/tmux_profile.git/" ] && \
      git remote add origin "https://github.com/yuluo-yx/tmux_profile.git" || \
        git remote add origin "https://github.com/yuluo-yx/tmux_profile.git"
  git branch -M main
  git push -u origin main

} && _

unset -f _
