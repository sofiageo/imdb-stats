#!/bin/bash

DB_USER=postgres
DB_PASS=12345
DB_NAME=imdb
DB_HOST=localhost
IMDB_USER=ur00000000
RATINGS_URL=https://www.imdb.com/user/${IMDB_USER}/ratings/export

#wget https://datasets.imdbws.com/title.basics.tsv.gz
#wget https://datasets.imdbws.com/title.ratings.tsv.gz
#gunzip title.basics.tsv.gz
#gunzip title.ratings.tsv.gz

# This needs to be authenticated
# wget ${RATINGS_URL}

psql -h ${DB_HOST} -d ${DB_NAME} -U ${DB_USER} -f setup.sql