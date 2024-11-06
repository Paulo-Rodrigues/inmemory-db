class Database
  attr_reader :tables

  def initialize
    @tables = {}
  end

  def create_table(name, columns)
    tables[name] = Table.new(columns)
  end

  def table_names
    tables.keys
  end
end
