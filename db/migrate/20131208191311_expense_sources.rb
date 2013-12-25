class ExpenseSources < ActiveRecord::Migration
  def change
  	create_table :expense_sources do |t|
  		t.string :source
  		t.references :user

  		t.timestamps
  	end
  end
end
