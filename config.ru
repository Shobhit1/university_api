require './init'

UniversityAPI = Rack::Builder.new do
  map '/' do
    run Handler
  end
  map '/universities' do
    run UniversityHandler
  end
end

run UniversityAPI
