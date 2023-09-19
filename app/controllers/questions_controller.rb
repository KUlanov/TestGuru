class QuestionsController < ApplicationController

  def index
    render json: { questions: Question.all }
  end

  def new

  end

  def create

  end
end
