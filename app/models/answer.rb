class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  
  validate :validate_answers_count

  private

  def validate_answers_count
    errors.add(:answers_count) unless (0..4).include?(question.answers.count)
  end
end
