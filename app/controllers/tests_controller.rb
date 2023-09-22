class TestsController < ApplicationController

  def index
    #render html:  '<h1>All tests</h1>'.html_safe
    #render json: { tests: Test.all }
    @tests = Test.all
  end
  
  def show
    @test = Test.find(params[:id])
  end
  
  def new
    @test = Test.new
  end

  def edit
    @test = Test.find(params[:id])
  end

  def create
    @test = Test.new(test_params)
    @test.user_id= User.first.id
    if @test.save
      redirect_to @test
    else
      render :new
    end
  end

  def update
    @test = Test.find(params[:id])
    if @test.update(test_params)   
      redirect_to @test
    else
      render :edit
    end
  end

  def destroy
    @test = Test.find(params[:id])
    @test.destroy
    redirect_to tests_path
  end

  private

  def test_params
    params.require(:test).permit(:title, :level, :category_id)
  end

end
