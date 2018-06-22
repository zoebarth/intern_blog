class PostsController < ApplicationController
  
  def index
  	@posts = Post.all.order("created_at desc").limit(5)
  end

  def show 
  	set_post
  end

  def new
  	@post = Post.new
  end

  def edit
  	set_post
  end

  def create
    @post= Post.new(post_params)
  	respond_to do |format|
  	if @post.save
  		format.html { redirect_to @post, notice: "Blog post was successfully created."}
  	else
  		format.html {render :new}
  	end
  end

  end

  def update
  	set_post
  	respond_to do |format|
  	if @post.update(post_params)
  		format.html { redirect_to @post, notice: "Blog post was successfully updated."}
  	else
  		format.html {render :edit}
  	end
  end
end

  private
  def set_post
  	@post = Post.find(params[:id])
  end

  def post_params
  	params.fetch(:post, {}).permit(:title, :body, :author_id)
  end

end
