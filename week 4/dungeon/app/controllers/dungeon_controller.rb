class DungeonController < ApplicationController
  def openraids()
    @dung = Raid.new
    @dung = Raid.all
  end

  def login()
  end

  def signup()
  end

  def create()
  end

  def play()
    @dung = Raid.new
    @dung = Raid.find(params[:id])
  end

  def make()
    @dung = Raid.new
    @dung.dungeon = params[:save]
    @dung.username = params[:user]
    @dung.played = params[:played]
    @dung.success = params[:success]
    if @dung.valid?
    @dung.save
    @dung = Raid.all
    render action: :openraids
  else
    render action: :create
  end
  end

end
