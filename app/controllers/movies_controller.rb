class MoviesController < ApplicationController
  def search
    @genres = TheMovieDbService.genres
    # @movie = TheMovieDbService.new(params).search.sample
    # Movie.create(title: @movie['title'])
    # @movies = HTTParty.get("https://api.themoviedb.org/3/discover/movie?with_genres=28&include_video=false&include_adult=false&sort_by=popularity.desc&language=en-US&api_key=4722ab521bc96d24058c095db629b2cd")
  end

  def search_result
    @movie = TheMovieDbService.new(params).search.sample
    @search_link = request.url
  end
end
