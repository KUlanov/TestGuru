class Question < ApplicationRecord
  has_many :answers
  belongs_to :test

  validates :body, presence: true

  scope :correct_answers, -> {answers.where(correct: true) }
end