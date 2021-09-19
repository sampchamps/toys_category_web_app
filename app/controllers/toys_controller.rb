#Create Toy controllers
class ToysController < ApplicationController
	layout 'standard'

   def list
      @toys = Toys.all
   end

   def show
      @Toys = Toys.find(params[:id])
   end
  
   def new
      @Toys = Toys.new
      @categories = Category.all
   end

   def Toys_params
      params.require(:Toys).permit(:title, :price, :Category_id, :description)
   end

   def create
      @Toys = Toys.new(Toys_params)

      if @Toys.save
         redirect_to :action => 'list'
      else
         @categories = Category.all
         render :action => 'new'
      end
   end
   
   def edit
      @Toys = Toys.find(params[:id])
      @categories = Category.all
   end
   
   def Toys_param
      params.require(:Toys).permit(:title, :price, :Category_id, :description)
   end
   
   def update
      @Toys = Toys.find(params[:id])
      
      if @Toys.update_attributes(Toys_param)
         redirect_to :action => 'show', :id => @Toys
      else
         @categories = Category.all
         render :action => 'edit'
      end
   end
   
   def delete
      Toys.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
   
   def show_Categorys
      @Category = Category.find(params[:id])
   end

end
