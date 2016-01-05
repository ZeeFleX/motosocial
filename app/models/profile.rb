class Profile < ActiveRecord::Base
  belongs_to :user, dependent: :destroy, autosave: true
  has_and_belongs_to_many :models
end
