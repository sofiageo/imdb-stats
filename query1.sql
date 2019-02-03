-- Find popular movies


select * from
  title_ratings r, title_basics b
where
    r.tconst = b.tconst and
    b.title_type = 'movie' and
    b.start_year = 2018 and
    r.num_votes > 1000
order by r.num_votes DESC;