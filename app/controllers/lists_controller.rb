class ListsController < ApplicationController
  before_action :set_list, only: [:create]

  def index
  end

  def new
    @list = List.new
  end

  def create 
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

end