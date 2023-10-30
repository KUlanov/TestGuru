class User < ApplicationRecord
  #has_many :tests_users
  has_many :test_passages
  #has_many :tests, through: :tests_users
  has_many :tests, through: :test_passages
  has_many :authors_tests, inverse_of: 'author'

  validates :name, presence: true,
                   uniqueness: true
  validates :email, presence: true,
                   uniqueness: true

  

  def user_level_test(level)
    tests.where(tests: {level: level})
  end

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end
end