class Drug < ActiveRecord::Base
  belongs_to :patients
  belongs_to :nurse
end
