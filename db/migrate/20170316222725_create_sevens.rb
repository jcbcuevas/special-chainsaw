class CreateSevens < ActiveRecord::Migration[5.0]
  def change
    create_table :sevens do |t|

      t.timestamps
    end
  end
end
