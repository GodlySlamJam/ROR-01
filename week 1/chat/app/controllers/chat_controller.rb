class ChatController < ApplicationController
  def chatapp()
  end

  def story()
    finish = "!!" + params[:x] + " !!"
    render plain: finish
  end


end
