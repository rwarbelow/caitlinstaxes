class ExpenseItems < ActiveRecord::Migration
  def change
  	create_table :expense_items do |t|
  		t.date :date
  		t.string :item
  		t.references :expense_category
  		t.float :amount
  		t.references :expense_source
  		t.string :comment
  		t.references :user

  		t.timestamps
  	end
  end
end
