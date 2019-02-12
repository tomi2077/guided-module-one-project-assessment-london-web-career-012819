class CreateAddReviewToMedicines < ActiveRecord::Migration[5.2]
  def change
    add_column :medicines, :review_id, :integer
  end
end
