class Model < ActiveRecord::Base
  belongs_to :feature
  has_and_belongs_to_many :profiles
  belongs_to :brand
  belongs_to :type
end
