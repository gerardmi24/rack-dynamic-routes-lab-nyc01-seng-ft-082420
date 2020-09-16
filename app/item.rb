class Item
  attr_accessor :name, :price

  def initialize(name,price)
    @name = name
    @price = price

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path=="/items"
      resp.write "Here are your items"
    elsif resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end
