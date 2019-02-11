class Nurse < ActiveRecord::Base
  has_many :patient
  has_many :drugs, through: :patients
end
