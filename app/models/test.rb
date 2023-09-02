class Test < ApplicationRecord
  has_many :usertests
  has_many :users, through: :usertests
  
  def self.test_of_category(category_name)
    Test.joins('JOIN categories on tests.category_id = categories.id').where(categories: { title: category_name}).order(title: :DESC).pluck('tests.title')    
  end
end
