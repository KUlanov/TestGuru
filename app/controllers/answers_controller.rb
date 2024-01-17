class AnswersController < ApplicationController
  before_action :set_answer, only: %i[ show edit update destroy ]
  before_action :find_question, only: %i[ new create]
  
  # GET /answers/1 or /answers/1.json
  def show
  end
end
