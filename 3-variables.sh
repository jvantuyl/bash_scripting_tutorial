#!/bin/bash
FILENAME=$(date +%Y%m%d)_foo_backup.tar.gz
(
  cd /Users/mpope/foo
  tar cz .
) > $FILENAME
