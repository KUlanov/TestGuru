class TestsController < ApplicationController

  def index
    #render html:  '<h1>All tests</h1>'.html_safe
    render json: { tests: Test.all }
  end
  
  def new
  end
  
  def create
    result = ["Class: #{params.class}","Parameters: #{params.inspect}"]
  
    render plain: result.join("\n")
  end
end
