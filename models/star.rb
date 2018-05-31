require_relative('../db/sql_runner')

class Star

  attr_reader :id
  attr_accessor :first_name, :last_name

  def initalize(options)
    @id = options['id'][0].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options ['last_name']
  end

end
