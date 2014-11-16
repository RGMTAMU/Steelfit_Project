class GrocerylistsController < ApplicationController
  def index
    @grocerylists = Grocerylist.all
  end

  def show
	@grocerylist = Grocerylist.find(params[:id])
  end
  
  def new
	@grocerylist = Grocerylist.new
  end
  
  def edit
    @grocerylist = Grocerylist.find(params[:id])
  end
  
  def create
    @grocerylist = Grocerylist.new(grocerylist_params)
	if @grocerylist.save
      redirect_to @grocerylist
	else
	  render 'new'
    end
  end
  
  def update
    @grocerylist = Grocerylist.find(params[:id])
    if @grocerylist.update(grocerylist_params)
		redirect_to @grocerylist
	else
		render 'edit'
	end
  end

  def destroy
	@grocerylist = Grocerylist.find(params[:id])
	@grocerylist.destroy!
	redirect_to grocerylists_path
  end
  
  private
	def grocerylist_params
		params.require(:grocerylist).permit(:user, :grocerylist)
	end
  
end
