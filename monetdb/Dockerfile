# MonetDB

# Start with monetdb/monetdb-r-docker.
# Then copy authentication credentials and database (repos)
# initialization script and run script.
# FROM monetdb/monetdb-r-docker
FROM monetdb/monetdb
COPY .monetdb /.monetdb
COPY initialize.sh /initialize.sh
RUN chmod +x /initialize.sh
# ENTRYPOINT ["/initialize.sh"]
# CMD ["monetdbd", "start", "/var/monetdb5/dbfarm" ]
