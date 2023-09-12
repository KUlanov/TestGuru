class TestsController < ApplicationController

  def index
    #render html:  '<h1>All tests</h1>'.html_safe
    render json: { tests: Test.all }
  end
end
