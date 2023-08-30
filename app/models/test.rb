class Test < ApplicationRecord

  @@test_cat_name = []

  def self.test_of_category(category_name)
    @@test_cat_name = Test.joins('JOIN categories on tests.category_id = categories.id').where(categories: { title: category_name}).order(title: :DESC).pluck('tests.title')
    @@test_cat_name
  end  
end
