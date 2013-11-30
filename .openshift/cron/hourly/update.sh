#!/bin/bash
$OPENSHIFT_REPO_DIR/php/update.php --feeds &>> $OPENSHIFT_PHP_LOG_DIR/rss_update.log
