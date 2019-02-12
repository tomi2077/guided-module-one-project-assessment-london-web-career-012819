class Nurse < ActiveRecord::Base
  has_many :patient
  has_many :medicines, through: :patients
end
