class CreateDoses < ActiveRecord::Migration[5.0]
  def change
    create_table :doses do |t|
      t.string :ingredient
      t.text :description

      t.timestamps
    end
  end
end
