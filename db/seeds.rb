# movies = CSV.read("imdb_movies.csv")

# i = 1
# while i < movies.length
#   Movie.create(
#     title: movies[i][0],
#     genre: movies[i][3],
#     rating: movies[i][2],
#     plot: movies[i][4]
#   )
#   i += 1
# end

# i = 236
# j = 1
# while i <= 365
#   3.times do 
#     if Movie.find(j)
#       Movie.find(j).update(
#         scheduled_on: i)
#       j += 1
#     end
#   end
#   i += 1
# end