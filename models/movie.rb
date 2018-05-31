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

  def self.delete_all()
  sql = "DELETE FROM movies"
  SqlRunner.run(sql)
end

def self.all()
  sql = "SELECT * FROM movies"
  movies = SqlRunner.run(sql)
  result = movies.map { |movie| Movie.new( movie ) }
  return result
end

end
