class RecreationCenterDataObject
  include Virtus.model

  attribute :x, Float
  attribute :y, Float
  attribute :objectid, Integer
  attribute :name, String
  attribute :address, String
  attribute :use_type, String
  attribute :ward_id, Integer
  attribute :school_site, String
  attribute :pool, String
  attribute :pool_name, String
  attribute :child_care, String
  attribute :senior_services, String
  attribute :web_url, String
  attribute :phone, String
  attribute :status, String
  attribute :xcoord, Float
  attribute :ycoord, Float
  attribute :addrid, Integer
  attribute :fitness_center, String
end
