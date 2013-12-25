class ExpenseCategory < ActiveRecord::Base
  attr_accessible :category_name, :user_id
  has_many :expense_items
end
