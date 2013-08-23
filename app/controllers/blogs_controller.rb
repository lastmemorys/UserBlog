class BlogsController < ApplicationController
  before_filter :set_blog, :only => [:show, :edit, :destroy, :update]

  def index
    @blogs=Blog.all
  end

  def show
  end

  def new
    @blog=Blog.new
  end

  def create
    @blog=Blog.new(blog_param)
    if @blog.save
      redirect_to blogs_path
    end
  end

  def edit
  end

  def update
    if @blog.update(blog_param)
      redirect_to blogs_path
    end

  end

  def destroy
    if @blog.delete
      redirect_to blogs_path
    end
  end

  private
  def set_blog
    @blog=Blog.find(params[:id])
  end

  def blog_param
    params.require(:blog).permit(:title, :content)
  end
end
