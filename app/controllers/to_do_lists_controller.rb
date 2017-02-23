class ToDoListsController < ApplicationController
  def index
  end

  def new
    @to_do_list = ToDoList.new
  end

  def create
    @to_do_list = ToDoList.new(to_do_list_params)
    if @to_do_list.save
      flash[:success] = 'To do list created successfully'
      render :show
    else
      flash[:error] = 'There is a problem in creating the to-do list'
      render :new
    end
  end

  def show
    @to_do_list = ToDoList.find(params[:id])
  end

  private
  def to_do_list_params
    params.require(:to_do_list).permit(:name)
  end
end
