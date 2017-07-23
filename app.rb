require "sinatra"
require "sinatra/reloader"

get '/' do
  'Hello world!'
end

get '/:name' do
  name_param = params[:name]
  "Hello #{name_param}"
end
