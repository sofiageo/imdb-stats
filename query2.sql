-- Find recent movies with a lot of votes that you have not seen

select
  r.*,
  b.* from
  title_ratings r, title_basics b
  LEFT JOIN my_ratings my on my.tconst = b.tconst
where
    r.tconst = b.tconst and
    b.title_type = 'movie' and
    b.start_year < 2018 and
    b.start_year > 2010 and
    my.tconst is null and
    r.num_votes > 1000
order by r.num_votes desc;