#!/bin/bash
hh=$(date +%H) ; hhn=${hh##0}
if(($hhn % 15 == 0))
then
  $OPENSHIFT_REPO_DIR/php/update.php --feeds &> $OPENSHIFT_PHP_LOG_DIR/rss_update.log
fi
