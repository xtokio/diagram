get "/api/:key" do |env|
  diagram = ""

  key = env.params.url["key"]
  record = Controller::Diagrams.get_by_key(key)
  if record.size > 0
    diagram = record[0].diagram
  end

  diagram
end

post "/api/:key" do |env|
  puts Controller::Diagrams.create(env)
end