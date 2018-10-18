require "rails_helper"

describe MoviesController, :type => :controller do #the spec for MoviesController
    describe 'findWithSameDirector' do
        context "When the movie has a director" do
            it "grabs the id of the movie that is the subject of the match" do
                @movie = double('a film of some repute', :title => 'Great movie', :director => 'Robert')
                @title = 'a film of some repute'
                expect(Movie).to receive(:find).with(@title).and_return(@movie)
                expect(@movie).to receive(:similar_movies)
                get :search, :title => @title
                expect(response).to render_template(:director)
            end
        end
        
        context "When the movie has no director" do
            it "should go to the home page" do
                @movie = double('a film of some repute').as_null_object
                expect(Movie).to receive(:find).with('a film of some repute').and_return(@movie)
                get :search, :title => @title
                expect(response).to redirect_to(movies_path)
            end
        end
    end
end