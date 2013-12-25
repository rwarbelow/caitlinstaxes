class ExpenseCategory < ActiveRecord::Base
  attr_accessible :category_name, :user_id
  has_many :expense_items

  def total
  	total = 0
  	self.expense_items.each do |i|
  		total += i.amount
  	end
  	total
  end
end
