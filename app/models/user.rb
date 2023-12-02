require 'digest/sha1'

class User < ApplicationRecord

  has_many :test_passages
  has_many :tests, through: :test_passages
  has_many :authors_tests, class_name: 'Test', foreign_key: :user_id

  has_secure_password
  
  VALID_EMAIL = /\w+@/ # Для упрощения тестирования
  
  validates :email, presence: true,
             uniqueness: true,
             format: { with: VALID_EMAIL}
          

  def user_level_test(level)
    tests.where(tests: {level: level})
  end

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end
end