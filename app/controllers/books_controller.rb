class BooksController < ApplicationController
  before_action :admin_user, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_book, only: [:show, :edit, :update, :destroy, :borrow, :return]
  before_action :set_categories, only: [:index, :new, :create, :edit, :update]

  # GET /books
  def index
    @books = Book.order("id ASC")
  end

  # GET /books/1
  def show
    flash.now[:notice] = "借书请登录" if current_user.nil?
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

  # GET /books/1/borrow
  def borrow
    if @book.user.nil?
      @book.user = current_user
      @book.last_borrowed_at = Time.zone.now
      @book.borrow_count += 1
      @book.save
      redirect_to @book, notice: '图书借阅成功'
    else
      redirect_to @book, alert: '图书已被他人借阅'
    end
  end

  # GET /books/1/return
  def return
    if @book.user == current_user
      @book.user = nil
      @book.last_returned_at = Time.zone.now
      @book.save
      redirect_to @book, notice: '图书归还成功'
    else
      redirect_to @book, alert: '您不是图书当前的借阅者'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    def set_categories
      @categories = Category.order("id ASC")
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:isbn, :title, :author, :publisher, :publishing_date,
                                   :category_id, :language, :image_url, :introduction)
    end
end
