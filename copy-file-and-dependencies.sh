#!/bin/bash

copy_file_and_dependencies() {
  PROGRAM="$1"
  DEPENDENCIES="$(ldd "$PROGRAM" | awk '{ print $3 }' | grep -v '(' | grep -v dynamic)"

  mkdir -p "${JAIL}$(dirname $PROGRAM)"
  cp -Lv "$PROGRAM" "${JAIL}${PROGRAM}"

  for f in $DEPENDENCIES; do
    mkdir -p "${JAIL}$(dirname $f)"
    cp -Lv "$f" "${JAIL}${f}"
  done
}

export -f copy_file_and_dependencies

copy_file_and_dependencies /etc/ld.so.cache
copy_file_and_dependencies /bin/sh
copy_file_and_dependencies /lib64/ld-linux-x86-64.so.2
copy_file_and_dependencies /bin/bash
copy_file_and_dependencies /usr/bin/strace
copy_file_and_dependencies /usr/bin/gdb
copy_file_and_dependencies /usr/bin/ldd

copy_file_and_dependencies $JAIL/bin/i586/java
copy_file_and_dependencies /lib/ld-linux.so.1
