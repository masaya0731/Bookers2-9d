class CategoriesController < ApplicationController
  def index

    if params[:search]
      @books = Book.where("category LIKE ? ",'%' + params[:search] + '%')
    else
      @books = Book.all
    end

    @user = current_user
    @book = Book.new
  end
end