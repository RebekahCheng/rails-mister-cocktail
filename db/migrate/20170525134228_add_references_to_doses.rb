class AddReferencesToDoses < ActiveRecord::Migration[5.0]
  def change
    remove_column :doses, :ingredient, :string
    add_reference :doses, :ingredient, index: true
    add_reference :doses, :cocktail, index: true
  end
end
