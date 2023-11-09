class TestPassagesController < ApplicationController

  before_action :set_test_passage, only: %i[show result update]

  def show

  end

  def result

  end

  def update
    
  end

  private

  def set_test_passage
    @test_passage = Test.find_by(params [:id])
  end
  
end
