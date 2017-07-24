require_relative 'handler'

class University_Handler < Handler
  get '/' do

  end

  get '/:country' do
    country = params[:country]
    universities = University.where(alpha_two_code: country.upcase).as_json
    universities.to_json
  end
end
