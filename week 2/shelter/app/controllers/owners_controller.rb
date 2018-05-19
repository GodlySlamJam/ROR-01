class OwnersController < ApplicationController
  def newer()
  end

  def ocreate()
    @o = Owner.new
    @o.first = params[:First]
    @o.last = params[:Last]
    @a = Animal.new
    @a = Animal.all
    if @o.valid?
      @o.save
      render action: :ownersall
    else
      render action :newer
    end
  end

  def ownersall()
    @o = Owner.new
    @o = Owner.all
  end
end
