# PostgreSQL

# docker run --name postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres

FROM postgres:9.5.21-alpine
COPY loadfile/Clean-With-Meta-05-10-2020-plain-sql.backup /Clean-With-Meta-05-10-2020-plain-sql.backup
COPY initialize.sh /initialize.sh
RUN chmod +x /initialize.sh
