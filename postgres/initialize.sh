#!/bin/sh
psql -h localhost -U scdev -d SemanticCatalog -f Clean-With-Meta-05-10-2020-plain-sql.backup
