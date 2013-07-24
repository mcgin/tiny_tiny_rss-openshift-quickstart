#!/bin/bash
hh=$(date +%H) ; hhn=${hh##0}
if [ $(expr $hhn % 3 ) -eq 0 ] ; then
  $OPENSHIFT_REPO_DIR/php/update.php --feeds &> $OPENSHIFT_PHP_LOG_DIR/rss_update.log
fi
