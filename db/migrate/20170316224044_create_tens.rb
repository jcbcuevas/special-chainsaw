class CreateTens < ActiveRecord::Migration[5.0]
  def change
    create_table :tens do |t|

      t.timestamps
    end
  end
end
