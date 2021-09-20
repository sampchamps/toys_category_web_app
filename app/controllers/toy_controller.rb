#Create Toy controllers
class ToyController < ApplicationController

   def list
      @toys = Toy.all
   end

   def show
      @toy = Toy.find(params[:id])
   end
  
   def new
      @toy = Toy.new
      @types = Type.all
   end

   def toy_params
      params.require(:toys).permit(:title, :price, :type_id, :description)
   end

   def create
      @toy = Toy.new(toy_params)

      if @toy.save
         redirect_to :action => 'list'
      else
         @types = Type.all
         render :action => 'new'
      end
   end
   
   def edit
      @toy = Toy.find(params[:id])
      @type = Type.all
   end
   
   def toy_param
      params.require(:toy).permit(:title, :price, :type_id, :description)
   end
   
   def update
      @toy = Toy.find(params[:id])
      
      if @toy.update_attributes(toy_param)
         redirect_to :action => 'show', :id => @toy
      else
         @types = Type.all
         render :action => 'edit'
      end
   end
   
   def delete
      Toy.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
   
   def show_types
      @type = Type.find(params[:id])
   end

end
