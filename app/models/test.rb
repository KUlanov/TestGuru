class Test < ApplicationRecord
  has_many :tests_users
  has_many :users, through: :tests_users
  has_many :questions
  belongs_to :category
  belongs_to :user
  
  def self.test_of_category(category_name)
    Test.joins('JOIN categories on tests.category_id = categories.id').where(categories: { title: category_name}).order(title: :DESC).pluck('tests.title')    
  end
end