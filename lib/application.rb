class Application
  attr_reader :databases

  def initialize
    @databases = {}
  end

  def create_database(name)
    @databases[name] = Database.new
    "Database #{name} created"
  end
end
