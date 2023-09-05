class Test < ApplicationRecord
  has_many :tests_users
  has_many :users, through: :tests_users
  has_many :questions
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  
  def self.test_of_category(category_name)
    Category.find_by(title: category_name).tests.order(title: :DESC).pluck(:title)
  end
end