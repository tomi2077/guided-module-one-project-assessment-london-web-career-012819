class Patient < ActiveRecord::Base
  has_many :drugs
  has_many :reviews
  has_many :nurses, through: :drugs
end
