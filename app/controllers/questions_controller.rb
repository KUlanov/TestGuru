class QuestionsController < ApplicationController

  before_action :find_test, only: %i[index new create]
  before_action :find_question, only: %i[show destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found
  
  def index
    render plain: @tests.questions.pluck(:id, :body)
  end

  def show
    render plain: @question.body
  end

  def new

  end

  def create
    question = @tests.questions.new(question_params)
    question.save!
    render plain: question.inspect
  end

  def destroy
    @question.destroy!
    render plain 'Question destroy.'
  end

private

  def rescue_with_question_not_found
    render plain: 'Question not faund'
  end

  def find_test
    @tests = Test.find(params[:test_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

end
