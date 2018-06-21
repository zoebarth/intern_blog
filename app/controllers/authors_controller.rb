class AuthorsController < ApplicationController
  
  def show 
  	set_author
  end

  def new
  	@author = Author.new
  end

  def edit
  	set_author
  end

  def create
    @author= Author.new(author_params)
  	respond_to do |format|
  	if @author.save
  		format.html { redirect_to @author, notice: "Author was successfully created."}
  	else
  		format.html {render :new}
  	end
  end

  end

  def update
  	set_author
  	respond_to do |format|
  	if @author.update(author_params)
  		format.html { redirect_to @author, notice: "Author was successfully updated."}
  	else
  		format.html {render :edit}
  	end
  end
end

  private
  def set_author
  	@author = Author.find(params[:id])
  end

  def author_params
  	params.fetch(:author, {}).permit(:first_name, :last_name, :born_on)
  end

end