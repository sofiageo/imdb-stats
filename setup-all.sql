-- TODO FIX
-- drop database if exists imdb;
-- create database imdb with owner postgres;
drop table names;
drop table title_akas;
drop table title_basics;
drop table title_ratings;
drop table title_principals;
drop table title_episode;
drop table title_crew;
drop table my_ratings;

create table names
(
  nconst text,
  primary_name text,
  birth_year int,
  death_year int,
  primary_profession text,
  known_for_titles text
);

create table title_akas
(
  title_id text,
  ordering int,
  title text,
  region text,
  language text,
  types text,
  attributes text,
  is_original_title SMALLINT
);

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
  genres text
);

create table title_principals
(
  tconst text,
  ordering int,
  nconst text,
  job text,
  category text,
  characters text
);

create table title_episode
(
  tconst text,
  parent_tconst text,
  season_number int,
  episode_number int
);

create table title_crew
(
  tconst text,
  directors text,
  writers text
);

create table title_ratings
(
  tconst text,
  average_rating double precision,
  num_votes bigint
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
  directors text
);

\copy names from './name.basics.tsv' with delimiter E'\t' csv header null '\N' quote E'\b';
\copy title_akas from './title.akas.tsv'with delimiter E'\t' csv header null '\N' quote E'\b';
\copy title_basics from './title.basics.tsv'with delimiter E'\t' csv header null '\N' quote E'\b';
\copy title_crew from './title.crew.tsv'with delimiter E'\t' csv header null '\N' quote E'\b';
\copy title_episode from './title.episode.tsv'with delimiter E'\t' csv header null '\N' quote E'\b';
\copy title_principals from './title.principals.tsv'with delimiter E'\t' csv header null '\N' quote E'\b';
\copy title_ratings from './title.ratings.tsv'with delimiter E'\t' csv header null '\N' quote E'\b';
\copy my_ratings from './ratings.csv' with csv header null '\N';