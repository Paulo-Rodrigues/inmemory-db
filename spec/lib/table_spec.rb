describe Table do
  it 'should have columns' do
    table = Table.new(%w[name age])

    expect(table.columns).to eq(%w[name age])
  end

  it 'initializes rows to an empty hash' do
    table = Table.new(%w[name age])

    expect(table.rows).to eq([])
  end

  it '.add_column' do
    table = Table.new(%w[name age])

    table.add_column('height')

    expect(table.columns).to eq(%w[name age height])
  end

  it 'insert' do
    table = Table.new(%w[name age])

    table.insert('name': 'John', 'age': 25)

    table.insert('name': 'Jane', 'age': 22)

    expect(table.rows).to eq(
      [
        { 'id': 1, 'name': 'John', 'age': 25 },
        { 'id': 2, 'name': 'Jane', 'age': 22 }
      ]
    )
  end
end
