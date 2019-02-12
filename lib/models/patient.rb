class Patient < ActiveRecord::Base
  has_many :medicines
  has_many :reviews
  has_many :nurses, through: :medicines
end
