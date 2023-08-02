This is a fork of the moodlehq/moodle-docker project that includes some new things.

## New Things

1. `install-moodle.sh` script

This script installs moodle, nodejs, python3, and poppler-utils

To run, ensure the stack is up by doing`bin/moodle-docker-compose up -d`. Then, exec `bash` on `webserver` and do `./var/www/scripts/install-moodle.sh`

This will set the moodle admin username and password to `admin`.
