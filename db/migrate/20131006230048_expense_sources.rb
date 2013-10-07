class ExpenseSources < ActiveRecord::Migration
  def change
  	create_table :expense_sources do |t|
  		t.string :source

  		t.timestamps
  	end
  end
end
