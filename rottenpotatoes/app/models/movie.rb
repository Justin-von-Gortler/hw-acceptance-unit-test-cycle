class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
    
   
  def self.similar_movies movie_title
    director = Movie.find_by(title: movie_title).director #identifies director of movie by title
    return nil if director.blank? or director.nil? #confirms director is not empty
    Movie.where(director: director).pluck(:title) #grabs all the movie titles that share the given director
  end
    
end
