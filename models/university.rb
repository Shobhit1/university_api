class University
  include Mongoid::Document
  field :alpha_two_code
  field :country
  field :domain
  field :name
  field :web_page
  store_in collection: "universities"
end
