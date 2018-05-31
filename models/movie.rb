require_relative('../db/sql_runner')

class Movie

  attr_reader :id
  attr_accessor :title, :genre, :ratings

  def initalize(options)
    @id = options['id'][0].to_i if options['id']
    @title = options['title']
    @genre = options ['genre']
    @ratings =  options ['ratings']
  end

end
