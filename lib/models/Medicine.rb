class Medicine < ActiveRecord::Base
  belongs_to :patient
  belongs_to :nurse
  # belongs_to :patient
  # belongs_to :review
  # belongs_to :nurse
end
