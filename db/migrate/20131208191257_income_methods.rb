class IncomeMethods < ActiveRecord::Migration
  def change
  	create_table :income_methods do |t|
  		t.string :method
  		t.references :user

  		t.timestamps
  	end
  end
end
