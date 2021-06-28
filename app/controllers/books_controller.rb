class BooksController < ApplicationController
  def index
    render json: Book.all
  end

  def show
    book = Book.find(params[:id])
    render json: book, status: :ok
  end

  def create
    book = Book.new(book_params)
    if book.save
      render json: book, status: :created
    end
  end

  private

  def book_params
    params.permit(:title, :author, :description, :img_url, :price, :url)
  end
end
