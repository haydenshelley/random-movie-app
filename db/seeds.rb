movies = CSV.read("imdb_movies.csv")

i = 1
while i < movies.length
  Movie.create(
    title: movies[i][0],
    genre: movies[i][3],
    rating: movies[i][2],
    plot: movies[i][4]
  )
  i += 1
end