class IncomeItems < ActiveRecord::Migration
  def change
  	create_table :income_items do |t|
  		t.date :date
  		t.string :item
  		t.references :income_category
  		t.float :amount
  		t.references :income_method
  		t.string :comment

  		t.timestamps
  	end
  end
end
