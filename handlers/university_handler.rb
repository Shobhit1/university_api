require 'json'
require_relative 'handler'

class UniversityHandler < Handler
  attr_accessor :countries
  before do
    content_type :json
  end

  # provides a lits of all the countries in the api
  get '/countries' do
    all_uni = University.all.as_json
    @@countries = extract_countries(all_uni.as_json).to_a.sort
    puts @@countries
    @@countries.to_set.to_json
  end

  get '/:country' do
    country = params[:country]
    universities = University.where(alpha_two_code: country.upcase).as_json
    universities.to_json
  end

  private
  def extract_countries uni_data
    uni_data.map do |university_object|
      university_object["country"]
    end
  end
end
