class Grocerylist < ActiveRecord::Base
  validates :user, presence: true, length: { minimum: 4 }
end
