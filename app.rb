require('bundler/setup')
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file}

get('/') do
  @stores = Store.all()
  erb(:index)
end

post('/') do
  name = params.fetch('name')
  store = Store.create({:name => name, :id => nil})
  redirect back
end

get('/stores/:id') do
  @shoes = Shoe.all()
  @store = Store.find(params.fetch('id').to_i())
  erb(:store)
end

get('/shoes') do
  @shoes = Shoe.all()
  erb(:shoes)
end

post('/shoes') do
  name = params.fetch('name')
  shoe = Shoe.create({:name => name, :id => nil})
  redirect back
end

get('/shoes/:id') do
  @stores = Store.all()
  @shoe = Shoe.find(params.fetch('id').to_i())
  erb(:shoe)
end
  
