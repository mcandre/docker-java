#!/bin/bash

copy_file_and_dependencies() {
  PROGRAM="$1"
  DEPENDENCIES="$(ldd "$PROGRAM" | awk '{ print $3 }' | grep -v '(' | grep -v 'not a dynamic executable')"

  mkdir -p "${JAIL}$(dirname $PROGRAM)"
  cp -Lv "$PROGRAM" "${JAIL}${PROGRAM}"

  for f in $DEPENDENCIES; do
    mkdir -p "${JAIL}$(dirname $f)"
    cp -Lv "$f" "${JAIL}${f}"
  done
}

export -f copy_file_and_dependencies

copy_file_and_dependencies /etc/ld.so.cache
# copy_file_and_dependencies /bin/sh
copy_file_and_dependencies $JAIL/bin/i586/java
copy_file_and_dependencies /lib/ld-linux.so.1.9.11
ln -sf ld-linux.so.1.9.11 $JAIL/lib/ld-linux.so.1
rm $JAIL/lib/i386-linux-gnu/libc.so.6
ln -sf libc.so.5 $JAIL/lib/libc.so.6
