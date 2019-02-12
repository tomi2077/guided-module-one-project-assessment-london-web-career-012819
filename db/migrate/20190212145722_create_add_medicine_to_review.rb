class CreateAddMedicineToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :medicine_id, :integer
  end
end
