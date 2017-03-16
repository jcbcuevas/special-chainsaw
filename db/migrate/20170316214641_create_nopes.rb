class CreateNopes < ActiveRecord::Migration[5.0]
  def change
    create_table :nopes do |t|

      t.timestamps
    end
  end
end
