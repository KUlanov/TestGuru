class User < ApplicationRecord
  has_many :usertests
  has_many :tests, through: :usertests

  def user_level_test(level)
    tests.where(tests: {level: level})
  end
end
