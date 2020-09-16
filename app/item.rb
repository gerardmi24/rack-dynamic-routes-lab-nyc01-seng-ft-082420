class Item
  attr_accessor :name, :price

  def initialize(name,price)
    @name = name
    @price = price

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path=="/songs"
      resp.write "You requested the songs"
    elsif resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end