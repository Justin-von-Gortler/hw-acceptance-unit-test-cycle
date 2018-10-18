require "rails_helper"
require "spec_helper"

#The spec helper has been modified to seed test database for the purposes of this rspec

describe MoviesController, :type => :controller do #the spec for MoviesController
    describe 'findWithSameDirector' do
        context "When the movie has a director" do
            it 'should call Movie.similar_movies' do
                expect(Movie).to receive(:similar_movies).with('Star Wars').and_return('The Phantom Menace')
                get :search, :title => 'Star Wars'
            end
        end
        
        context "When the movie has no director" do
            it "should go to the home page" do
                Movie.similar_movies('Indiana Jones and the Temple of Doom')
                get :search, :title => 'Indiana Jones and the Temple of Doom'
                expect(response).to redirect_to(movies_path)
            end
        end
    end
end
