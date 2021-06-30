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

  def update
    book = Book.find(params[:id])
    book[:title] = book_params[:title]
    book.save
    render json: book
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    head :no_content
  end
  private

  def book_params
    params.permit(:title, :author, :description, :img_url, :price, :url)
  end
end
