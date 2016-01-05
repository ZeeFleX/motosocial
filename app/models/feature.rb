class Feature < ActiveRecord::Base
  has_one :model
  belongs_to :engine_final_transmission
  belongs_to :engine_type
  belongs_to :engine_fuel_system
  belongs_to :engine_cylinder_placement
  belongs_to :engine_cooling_system
  belongs_to :ignition_system
  belongs_to :starter_system
  belongs_to :front_brake_type, :class_name => 'BrakeType', :foreign_key => 'front_brake_type_id'
  belongs_to :rear_brake_type, :class_name => 'BrakeType', :foreign_key => 'rear_brake_type_id'
end
