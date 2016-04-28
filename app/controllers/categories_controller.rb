class CategoriesController < ApplicationController
  before_action :admin_user, only: [:new, :create, :destroy]
  before_action :set_category, only: [:show, :destroy]

  # GET /categories/1
  def show
    @categories = Category.order("id ASC")
    @books = @category.books.order("id ASC")
  end

  # GET /categories/new
  def new
    @category = Category.new
    render layout: 'devise'
  end

  # POST /categories
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category, notice: '分类创建成功'
    else
      render :new, layout: 'devise'
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
    redirect_to root_url, notice: '分类删除成功'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:category)
    end
end
