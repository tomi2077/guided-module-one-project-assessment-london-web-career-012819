class CreateAddPatientToMedicines < ActiveRecord::Migration[5.2]
  def change
    add_column :medicines, :patient_id, :integer
  end
end
