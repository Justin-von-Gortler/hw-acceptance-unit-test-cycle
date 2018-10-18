require 'rails_helper'
require 'spec_helper'

describe Movie do
  describe 'findSimilarMovies' do
    context 'director exists' do
      it 'finds similar movies correctly' do
        expect(Movie.similar_movies('Star Wars')).to eql(['Star Wars', 'The Phantom Menace'])
      end
        
      it 'correctly does not find movies with dissimilar directors' do
        expect(Movie.similar_movies('Star Wars')).to_not include(['Raiders of the Lost Ark', 'Indiana Jones and the Temple of Doom'])        
      end
    end
  end
end