Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |movie, director|
    counter = 0
    movies_table.raw.each do |row|
        if row[0].equals movie
            break
        else
            counter += 1
        end
    end 
    expect(movies_table.hashes[counter]['director'].to eq(director)
end