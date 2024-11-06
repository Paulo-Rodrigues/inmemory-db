describe Application do
  it 'initializes with a empty databases hash' do
    expect(Application.new.databases).to eq({})
  end

  it 'creates a new database' do
    application = Application.new

    expect(application.create_database('test')).to eq('Database test created')
    expect(application.databases).to have_key('test')
    expect(application.databases['test']).to be_a(Database)
  end
end
