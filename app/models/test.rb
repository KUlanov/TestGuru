class Test < ApplicationRecord
  has_many :tests_users
  has_many :users, through: :tests_users
  has_many :questions
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  
  scope :test_of_category, -> (category_name) {Category.find_by(title: category_name).tests.order(title: :DESC)}

  scope :easy_tests, -> {where(level: 0..1)}
  scope :medium_tests, -> {where(level: 2..4)}
  scope :hard_tests, -> {where(level: 5..Float::INFINITY)}
end