class CreateAddNurseToMedicine < ActiveRecord::Migration[5.2]
  def change
    add_column :medicines, :nurse_id, :integer
  end
end
