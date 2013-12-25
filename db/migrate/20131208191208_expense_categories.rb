class ExpenseCategories < ActiveRecord::Migration
  def change
  	create_table :expense_categories do |t|
  		t.string :category_name
  		t.references :user
  		
  		t.timestamps
  	end
  end
end
