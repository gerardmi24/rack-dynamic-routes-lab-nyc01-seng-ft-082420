class Application
  @@items = [Item.new("Candy", 4.25), Item.new("Fruit", 3.75)]

def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new(env)

  if req.path=="/items"
    resp.write "Here are your items"
  elsif resp.write "Route not found"
    resp.status = 404
  end
  resp.finish
end
end
