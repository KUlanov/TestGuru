class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  
  validate :validate_answers_count

  scope :correct_answers, -> {where(correct: true) }

  private

  def validate_answers_count
    errors.add(:answers_count) if question.answers.count > 4
  end
end