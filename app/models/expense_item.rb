class ExpenseItem < ActiveRecord::Base
  attr_accessible :date, :item, :expense_source_id, :amount, :comment, :user_id, :expense_category_id
  belongs_to :expense_category
end
