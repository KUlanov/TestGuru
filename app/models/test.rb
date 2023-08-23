class Test < ApplicationRecord

  @@test_cat_name = []

  def self.test_of_category(category_n)
    @@test_cat_name = Test.joins('JOIN categories on tests.category_id = categories.id').where(categories.title: category_n).order(title: :DESC).pluck(test.title)
    @@test_cat_name
  end  
end
