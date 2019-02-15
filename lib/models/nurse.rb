class Nurse < ActiveRecord::Base
  # has_many :patients
  # has_many :medicines, through: :patients
  has_many :medicines
  has_many :patients, through: :medicines


# def self.most_patients
#   Nurse.all.max_by {|nurse| nurse.patients.count}
# end
end


#has_many :medicines was previously commented out
