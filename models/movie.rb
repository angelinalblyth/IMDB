require_relative('../db/sql_runner')

class Movie

  attr_reader :id
  attr_accessor :title, :genre, :ratings

  def initialize(options)
    @id = options['id'][0].to_i if options['id']
    @title = options['title']
    @genre = options ['genre']
    @ratings =  options ['ratings']
  end

  def save()
    sql = "INSERT INTO movies (title, genre, ratings) VALUES ($1, $2, $3) RETURNING id"
    values = [@title, @genre, @ratings]
    movie = SqlRunner.run( sql, values ).first
    @id = movie['id'].to_i
  end

end
