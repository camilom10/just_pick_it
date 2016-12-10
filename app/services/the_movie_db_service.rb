class TheMovieDbService
  def initialize(params)
    page = (1..1000).to_a.sample
    if params[:genre]
      @genres = params[:genre].join(',')
      @url = "https://api.themoviedb.org/3/discover/movie?with_genres=#{@genres}&include_video=false&include_adult=false&sort_by=popularity.desc&language=en-US&api_key=4722ab521bc96d24058c095db629b2cd"
    else
      @genre = random_genre
      @url = "https://api.themoviedb.org/3/genre/#{@genre}/movies?api_key=4722ab521bc96d24058c095db629b2cd&language=en-US&include_adult=false&sort_by=created_at.asc"
    end

    # binding.pry
  end

  def search
    @response = HTTParty.get(@url)
    # @response = HTTParty.get(@urlnow)
    @response['results']
  end

  def now_playing
    # @urlnow = "https://api.themoviedb.org/3/movie/now_playing?region=US&language=en-US&api_key=4722ab521bc96d24058c095db629b2cd"

  end

  def self.genres
    {
      'Action' => 28,
      'Adventure' => 12,
      'Animation' => 16,
      'Comedy' => 35,
      'Crime' => 80,
      'Documentary' => 99,
      'Drama' => 18,
      'Family' => 10751,
      'Fantasy' => 14,
      'History' => 36,
      'Horror' => 27,
      'Music' => 10402,
      'Mystery' => 9648,
      'Romance' => 10749,
      'Science Fiction' => 878,
      'Triller' => 53,
      'War' => 10752,
      'Western' => 37
    }
  end

  def random_genre
    TheMovieDbService.genres.values.sample
  end
end
