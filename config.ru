require './init'

UniversityAPI = Rack::Builder.new do
  map '/' do
    run Handler
  end
  map '/universities' do
    run University_Handler
  end
end

run UniversityAPI
