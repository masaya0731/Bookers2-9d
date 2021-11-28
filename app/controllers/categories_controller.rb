class CategoriesController < ApplicationController
  def index
    @books = Book.where("category LIKE ? ",'%' + params[:search] + '%')
    @user = current_user
    @book = Book.new
  end
end