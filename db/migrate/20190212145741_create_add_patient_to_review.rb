class CreateAddPatientToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :patient_id, :integer
  end
end
