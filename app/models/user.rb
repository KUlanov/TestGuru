class User < ApplicationRecord
  has_many :tests_users
  has_many :tests, through: :tests_users
  has_many :tests

  def user_level_test(level)
    tests.where(tests: {level: level})
  end
end
