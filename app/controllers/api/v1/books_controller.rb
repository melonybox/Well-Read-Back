class Api::V1::BooksController < ApplicationController

  def create
    bookInDB = Book.all.find{|book| book.title === params[:title] && book.authors === params[:authors].join(", ")}

    bookInDB ? book = bookInDB :
    book = Book.create(title: params[:title], authors: params[:authors].join(", "), publisher: params[:publisher], publishedDate: params[:publishedDate], description: params[:description], pageCount: params[:pageCount], maturityRating: params[:maturityRating], thumbnail_url: params[:thumbnail_url])

    render json: book
  end

end
