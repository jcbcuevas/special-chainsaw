class CreateCongrats < ActiveRecord::Migration[5.0]
  def change
    create_table :congrats do |t|

      t.timestamps
    end
  end
end
