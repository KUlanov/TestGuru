class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  
  validate :validate_answers_count

  private

  def validate_answers_count
    errors.add(:answer) if question.answers.count > 4
  end

end
