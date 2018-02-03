if ! $MAGISK; then
  if $API -ge 22 ]; then
    find -L $SYS -type f -name '*.odex.xposed' 2>/dev/null | while read f; do mv "$f" "${f%.xposed}"; done
    find -L $SYS -type f -name '*.odex.xz.xposed' 2>/dev/null | while read f; do mv "$f" "${f%.xposed}"; done
    find -L $SYS -type f -name '*.odex.gz.xposed' 2>/dev/null | while read f; do mv "$f" "${f%.xposed}"; done
  fi
  set_permissions
fi
