class CreateHaunts < ActiveRecord::Migration[5.2]
  def change
    create_table :haunts do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :description

      t.timestamps
    end
  end
end
