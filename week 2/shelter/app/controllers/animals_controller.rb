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

  def check()
  @a.name = params[:name]
  @a.age = params[:age]
  @a.smell = params[:smell]
  @a.fave_snack = params[:snack]
  @a.spieces = params[:spieces]

  if @a.valid?
    @a.save
    @a = Animal.all
    render action: :collection
  end
end

  def edit()
    @a = Animal.find(params[:idy])
  end

  def show()
    @a = Animal.find(params[:id])
  end

  def collection()
    @a = Animal.all
  end


end
