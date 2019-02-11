class Drug < ActiveRecord::Base
  belongs_to :patient
  belongs_to :review
end
