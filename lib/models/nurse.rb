class Nurse < ActiveRecord::Base
  has_many :patients
  has_many :medicines, through: :patients
end
