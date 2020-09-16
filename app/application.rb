class Application
  @@items = [Item.new("Candy", 4.25), Item.new("Fruit", 3.75)]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/).last
      item_name = req.path.split("/items/").last
      if item = @@items.find {|i| i.name == item_name}
        resp.write item.price
      else 
        resp.write "Item not available"
        resp.status = 400
      end
    else
      resp.status = 404
      resp.write "Item not available"
    end
    resp.finish
  end
end
