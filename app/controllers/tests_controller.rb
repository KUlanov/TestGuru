class TestsController < ApplicationController

  def index
    #render html:  '<h1>All tests</h1>'.html_safe
    render json: { tests: Test.all }
  end
  
  def new
  end
  
  def create
    test = Test.new(test_params)
    test.user_id= 1
    test.category_id = 1
    test.save!
    render plain: test.inspect
  end

  private

  def test_params
    params.require(:test).permit(:title, :level)
  end

end
