class CreateAddPatientToDrugs < ActiveRecord::Migration[5.2]
  def change
    add_column :drugs, :patient_id, :integer
  end
end
