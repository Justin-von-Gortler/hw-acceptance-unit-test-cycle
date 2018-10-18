movies = [{:title => 'Star Wars', :rating => 'PG', :release_date => '25-May-1977', :director => 'George Lucas'},
    	  {:title => 'The Phantom Menace', :rating => 'PG', :release_date => '16-May-1999', :director => 'George Lucas'},
    	  {:title => 'Raiders of the Lost Ark', :rating => 'PG', :release_date => '21-Jul-1989', :director => 'Steven Spielberg'},
      	  {:title => 'Indiana Jones and the Temple of Doom', :rating => 'PG-13', :release_date => '10-Aug-2011'},
  	 ]

movies.each do |movie|
  Movie.create!(movie)
end