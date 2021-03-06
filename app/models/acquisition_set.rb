class AcquisitionSet
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :zone
  has_many :acquisitions

  accepts_nested_attributes_for :acquisitions

  field :normalization_algorithm, type: String
  field :time_interval, type: Float
  field :measures_per_point, type: Integer

  field :zone_id, type: String
end
