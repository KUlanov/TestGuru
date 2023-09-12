class User < ApplicationRecord
  has_many :tests_users
  has_many :tests, through: :tests_users
  has_many :authors_tests, inverse_of: 'author'

  validates :name, presence: true,
                   uniqueness: true
  validates :email, presence: true,
                   uniqueness: true

  

  def user_level_test(level)
    tests.where(tests: {level: level})
  end
end