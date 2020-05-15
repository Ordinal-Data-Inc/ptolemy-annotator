# Create and initialize repos
docker exec -it ptolemy-v_monetdb_1 monetdb create repos
docker exec -it ptolemy-v_monetdb_1 monetdb start repos
docker exec -it ptolemy-v_monetdb_1 monetdb release repos

docker exec -it ptolemy-v_monetdb_1 mclient repos -s "CREATE USER \"semcat\" WITH PASSWORD 'semcat' NAME 'Semcat' SCHEMA \"sys\";"
docker exec -it ptolemy-v_monetdb_1 mclient repos -s "CREATE SCHEMA \"rep\" AUTHORIZATION \"semcat\";"
docker exec -it ptolemy-v_monetdb_1 mclient repos -s "ALTER USER \"semcat\" SET SCHEMA \"rep\";"
