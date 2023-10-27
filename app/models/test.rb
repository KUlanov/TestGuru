class Test < ApplicationRecord
  has_many :tests_users
  has_many :users, through: :tests_passages
  has_many :questions
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'

  validates :title, presence: true
  validates :level, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :title, uniqueness: {scope: :level}            

  scope :test_of_category, -> (category_name) {Test.joins(:category).where(categories: {title: category_name})}

  scope :easy_tests, -> {where(level: 0..1)}
  scope :medium_tests, -> {where(level: 2..4)}
  scope :hard_tests, -> {where(level: 5..Float::INFINITY)}

  def self.test_of_category_order(category_name)
    test_of_category(category_name).order(title: :DESC).pluck(:title)
  end
end