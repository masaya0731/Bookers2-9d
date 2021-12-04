class CategoriesController < ApplicationController
  def index

    if params[:search]
      @books = Book.where("category LIKE ? ",'%' + params[:search] + '%')
    else
      @books = Book.where(category: :search)
    end

    @user = current_user
    @book = Book.new
  end
end