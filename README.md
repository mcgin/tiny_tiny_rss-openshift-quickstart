Running on OpenShift
----------------------------

Create an account at http://openshift.redhat.com/

Create a PHP 5 application + a PostgreSQL 8 cartridge to the app, and import all the quickstart codes:

    rhc app create ttrss php-5.4 postgresql-9.2 cron-1.4 --from-code=https://github.com/mcgin/tiny_tiny_rss-openshift-quickstart.git --timeout=9999


You can now checkout your RSS application at:

    http://<app name>-<your namespace>.rhcloud.com

This app can be shared by multiple users. The default user credential is "admin"/"password".

    rhc git-clone ttrss

Once you have a repository (manually or automatically) you will probably want to add repository as 'upstream':

    $ cd ttrss
    $ git remote add upstream -m master https://github.com/mcgin/tiny_tiny_rss-openshift-quickstart.git

TTRSS is now installed!

Updating the template:
======================
To update, just run a pull from repo and push into the Openshift instance:

    $ git pull upstream master
    $ git push

This will pull in any changes such as new release versions of TTRSS. It should not affect your existing data. It does take some time though, as Openshift goes through a complete application restart.
