class Nurse < ActiveRecord::Base
  has_many :patients
  has_many :drugs, through: :patients
end
