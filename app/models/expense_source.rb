class ExpenseSource < ActiveRecord::Base
  attr_accessible :source, :user_id
end
