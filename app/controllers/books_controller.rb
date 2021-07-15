class BooksController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @books = Book.all

  end
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
