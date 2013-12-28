class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_url, :notice => "Thanks for adding a new book"
    else
      flash[:notice] = "There was a problem uploading this book."
      render :new
    end
  end

private

  def book_params
    params.require(:book).permit(:title, :author_first, :author_last, :description)
  end
end
