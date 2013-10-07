class IncomeMethods < ActiveRecord::Migration
  def change
  	create_table :income_methods do |t|
  		t.string :method

  		t.timestamps
  	end
  end
end
