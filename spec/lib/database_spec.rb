describe Database do
  it 'initializes with an empty tables hash' do
    expect(Database.new.tables).to eq({})
  end

  it 'creates a new table' do
    database = Database.new

    database.create_table('test', %w[name age])

    expect(database.tables).to have_key('test')
  end

  it 'has tables' do
    database = Database.new
    database.create_table('test', %w[name age])
    database.create_table('test2', %w[title author])

    expect(database.tables.keys).to eq(%w[test test2])
  end

  it '.table_names' do
    database = Database.new
    database.create_table('test', %w[name age])
    database.create_table('test2', %w[title author])
    expect(database.table_names).to eq(%w[test test2])
  end
end
