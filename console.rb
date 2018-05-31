require_relative( 'models/casting' )
require_relative( 'models/star' )
require_relative( 'models/movie' )

require('pry-byebug')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

star1 = Star.new({'first_name' => 'Jack', 'last_name' => 'Nicholson'})
star1.save()
star2 = Star.new({'first_name' => 'Shelley', 'last_name' => 'Duvall'})
star2.save()
star3 = Star.new({'first_name' => 'Tim', 'last_name' => 'Robbins'})
star3.save()
star4 = Star.new({'first_name' => 'Morgan', 'last_name' => 'Freeman'})
star4.save()
star4 = Star.new({'first_name' => 'Angelina', 'last_name' => 'Blyth'})
star4.save()

movie1 = Movie.new({'title' => 'The Shining', 'genre' => 'Horror', 'ratings' => '8'})
movie1.save()
movie2 = Movie.new({'title' => 'The Shawshank Redemption', 'genre' => 'Crime', 'ratings' => '9'})
movie2.save()
movie3 = Movie.new({'title' => 'Pulp Fiction', 'genre' => 'Crime', 'ratings' => '8'})
movie3.save()

casting1 = Casting.new({'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => '2000'})
casting1.save()
casting2 = Casting.new({'movie_id' => movie1.id, 'star_id' => star2.id, 'fee' => '2000'})
casting2.save()
casting3 = Casting.new({'movie_id' => movie2.id, 'star_id' => star3.id, 'fee' => '5000'})
casting3.save()
casting4 = Casting.new({'movie_id' => movie1.id, 'star_id' => star4.id, 'fee' => '5000'})
casting4.save()

star1.first_name = "Bob"
star1.update

movie1.genre = "Drama"
movie1.update


binding.pry
nil
