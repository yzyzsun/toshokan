class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  def index
    @books = Book.all
  end

  # GET /books/1
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
    render layout: 'devise'
  end

  # GET /books/1/edit
  def edit
    render layout: 'devise'
  end

  # POST /books
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: '图书创建成功'
    else
      render :new, layout: 'devise'
    end
  end

  # PATCH/PUT /books/1
  def update
    if @book.update(book_params)
      redirect_to @book, notice: '图书信息更新成功'
    else
      render :edit, layout: 'devise'
    end
  end

  # DELETE /books/1
  def destroy
    @book.destroy
    redirect_to root_url, notice: '图书删除成功'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:isbn, :title, :author, :publisher, :image_url, :introduction)
    end
end
