class CreateAddReviewToDrugs < ActiveRecord::Migration[5.2]
  def change
    add_column :drugs, :review_id, :integer
  end
end
