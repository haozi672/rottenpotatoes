# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'}
]

more_movies.each do |movie|
  Movie.find_or_create_by(title: movie[:title]) do |m|
    m.rating = movie[:rating]
    m.release_date = movie[:release_date]
  end
end

additional_movies = [
  { title: "Inception", rating: "PG-13", release_date: "16-July-2010" },
  { title: "The Dark Knight", rating: "PG-13", release_date: "18-July-2008" },
  { title: "Interstellar", rating: "PG-13", release_date: "07-November-2014" }
]
  
additional_movies.each do |movie|
  Movie.find_or_create_by(title: movie[:title]) do |m|
    m.rating = movie[:rating]
    m.release_date = movie[:release_date]
  end
end