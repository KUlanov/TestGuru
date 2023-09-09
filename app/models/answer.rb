class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  
  validate :validate_answers_count

  scope :correct_answers, -> {where(correct: true) }

  private

  def validate_answers_count
    errors.add(:answers_count) unless question.answers.count <5
  end
end
