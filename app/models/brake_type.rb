class BrakeType < ActiveRecord::Base
  has_many :front_brake_type , class_name: "Feature", foreign_key: "front_brake_type_id"
  has_many :rear_brake_type , class_name: "Feature", foreign_key: "rear_brake_type_id"
end
