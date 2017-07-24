require "sinatra"
require "sinatra/reloader"
require 'mongoid'
module App
  class << self
    def require_all
      Dir['models/*.rb'].each {|file| require_relative file }
      Dir['handlers/*.rb'].each {|file| require_relative file }
    end

    def connect
      Mongoid.load!('mongoid.yml', :development)
    end
  end
end
