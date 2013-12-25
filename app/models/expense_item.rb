class ExpenseItem < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :expense_category
end
