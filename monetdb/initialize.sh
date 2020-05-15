#!/bin/sh

echo 'starting'

echo 'Creating database'
monetdb create repos
monetdb start repos
monetdb release repos

echo 'Initializing database';
mclient repos -s "CREATE USER \"semcat\" WITH PASSWORD 'semcat' NAME 'Semcat' SCHEMA \"sys\";"
mclient repos -s "CREATE SCHEMA \"rep\" AUTHORIZATION \"semcat\";"
mclient repos -s "ALTER USER \"semcat\" SET SCHEMA \"rep\";"

touch initialized

exit
