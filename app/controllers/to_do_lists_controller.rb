class ToDoListsController < ApplicationController
  def index
    @to_do_lists = ToDoList.all
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

  def edit
    @to_do_list = ToDoList.find(params[:id])
  end

  def update
    @to_do_list = ToDoList.find(params[:id])
    if @to_do_list.update(to_do_list_params)
      flash[:success] = 'To do list updated successfully'
      render :show
    else
      flash[:error] = 'There is a problem updating the to-do list'
      render :edit
    end
  end

  def destroy
    @to_do_list = ToDoList.find(params[:id])
    if @to_do_list.delete
      flash[:success] = 'To do list deleted successfully'
      redirect_to root_path
    else
      flash[:error] = 'There is a problem deleting the to-do list'
      render :show
    end

  end

  private
  def to_do_list_params
    params.require(:to_do_list).permit(:name)
  end
end
