class CreateTa < ActiveRecord::Migration[5.2]
  def change
    create_table :ta do |t|

      t.timestamps
    end
  end
end
