class ToDoListsController < ApplicationController
  def index
  end

  def new
    @to_do_list = ToDoList.new
  end
end
