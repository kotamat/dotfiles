#!/bin/sh
version=`awk '{print $1}' < /dev/stdin`
command=$1
major=`echo $version | awk -F '.' '{print $1}'`
minor=`echo $version | awk -F '.' '{print $2}'`
bugfix=`echo $version | awk -F '.' '{print $3}'`
build=`echo $version | awk -F '.' '{print $4}'`

if [ -z "$version" ]; then
  echo "USAGE: echo 1.0.0 | version_up.sh [major|minor|bugfix|build]"
  exit 1
fi

if [ "$command" = '' ]; then
  if [ -n "$build" ]; then
    build=`expr $build + 1`
  elif [ -n "$bugfix" ]; then
    bugfix=`expr $bugfix + 1`
  fi
elif [ "$command" = 'major' ]; then
  major=`expr $major + 1`
  minor=0
  bugfix=0
  build=0
elif [ "$command" = 'minor' ]; then
  minor=`expr $minor + 1`
  bugfix=0
  build=0
elif [ "$command" = 'bugfix' ]; then
  bugfix=`expr $bugfix + 1`
  build=0
elif [ "$command" = 'build' ]; then
  build=`expr $build + 1`
fi

if [ "$command" = "major" -o "$command" = 'minor' -o "$command" = 'bugfix' ]; then
  if [ -n "$build" ]; then
    build=0
  fi
fi

if [ -n "$build" ]; then
  echo ${major}.${minor}.${bugfix}.${build}
else
  echo ${major}.${minor}.${bugfix}
fi
