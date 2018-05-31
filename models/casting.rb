require_relative('../db/sql_runner')

class Casting

  attr_reader :id, :movie_id, :star_id
  attr_accessor :fee

  def initalize(options)
    @id = options['id'][0].to_i if options['id']
    @movie_id = options['movie_id']
    @star_id = options ['star_id']
    @fee = options['fee']
  end



end
