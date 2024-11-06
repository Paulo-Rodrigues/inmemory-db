class Table
  attr_reader :columns, :rows

  def initialize(columns)
    @columns = columns
    @rows = []
    @id = 1
  end

  def add_column(column)
    columns << column
  end

  def insert(row)
    row.merge!('id': @id)
    rows << row
    @id += 1
  end
end
