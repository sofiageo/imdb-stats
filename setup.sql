drop table title_basics;
drop table title_ratings;
drop table my_ratings;

create table title_basics
(
  tconst text,
  title_type text,
  primary_title text,
  original_title text,
  is_adult smallint,
  start_year int,
  end_year int,
  runtime_minutes int,
  genres text,
  constraint title_basics_pk primary key (tconst)
);

create table title_ratings
(
  tconst text,
  average_rating double precision,
  num_votes bigint,
  constraint title_ratings_pk primary key (tconst)
);

create table my_ratings
(
  tconst text,
  rating int,
  date_rated date,
  title text,
  url text,
  title_type text,
  imdb_rating double precision,
  runtime int,
  year int,
  genres text,
  num_votes bigint,
  release_date date,
  directors text,
  constraint title_my_ratings_pk primary key (tconst)
);

\copy title_basics from './title.basics.tsv'with delimiter E'\t' csv header null '\N' quote E'\b';
\copy title_ratings from './title.ratings.tsv'with delimiter E'\t' csv header null '\N' quote E'\b';
\copy my_ratings from './ratings.csv' with csv header null '\N';