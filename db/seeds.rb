require 'open-uri'
require 'json'

Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

url = 'https://api.themoviedb.org/3/search/movie?api_key=a01d79bc72c5e96d0f300786769ce21c&language=en-US&query=batman&include_adult=false'

# Populates Movie DB with top rated movie from API
doc = JSON.parse(URI.open(url).read)
doc['results'].each do |m|
  Movie.create(title: m['title'], overview: m['overview'], poster_url: "https://image.tmdb.org/t/p/w500#{m['poster_path']}", rating: m['vote_average'])
end

puts 'Seeds Done'
