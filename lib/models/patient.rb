class Patient < ActiveRecord::Base
  has_many :medicines
  has_many :reviews
  has_many :medicines, through: :reviews
  has_many :nurses, through: :medicines
end


#has_many :medicines   - Previously commented out
#has_many :reviews     - Previously commented out
