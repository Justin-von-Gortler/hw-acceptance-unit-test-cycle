Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |movie_title, director|
  movie = Movie.find_by(title: movie_title) #Grab the movie based on title
  visit movie_path(movie) #go to specific movie path
  expect(page.body).to match(/Director:\s#{director}/)
end