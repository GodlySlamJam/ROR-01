class AnimalsController < ApplicationController
  def new()
    @a=Animal.new
  end

  def create()
    params.permit!
   @a = Animal.new(params[:animal])
   #session[:name] = @a.name
   if @a.valid?
      @a.save
      @a = Animal.all
   render action: :collection
 else
   render action: :new
 end
  end

  # def collection()
  #   @a = Animal.new
  #   @a.name = "Bob"
  #   @a.age ="20"
  #   @a.smell="Bad"
  #   @a.spieces = "Whales"
  #   @a.fave_snack = "Krill"
  # end
  def edit()
    params.permit!
   @a = Animal.new(params[:animal])
   #session[:name] = @a.name
   if @a.valid?
   render action: :show
 else
   render action: :new
 end
end

  def show()
    @a = Animal.find(params[:id])
  end

  def collection()
          @a = Animal.all
  end
end
