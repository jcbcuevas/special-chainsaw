class CreateWells < ActiveRecord::Migration[5.0]
  def change
    create_table :wells do |t|

      t.timestamps
    end
  end
end
