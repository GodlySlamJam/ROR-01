class CalcController < ApplicationController
  def index()
  end

  def calculate()
    if params[:func] == "+"
      finish = params[:x].to_f + params[:y].to_f
      render plain: finish

    elsif params[:func] == "*"
      finish = params[:x].to_f * params[:y].to_f
      render plain: finish

    elsif params[:func] == "/"
      finish = params[:x].to_f / params[:y].to_f
      render plain: finish

    elsif params[:func] == "-"
      finish = params[:x].to_f - params[:y].to_f
      render plain: finish

    else
      render plain: "sorry?"
    end
  end

  #def multiply()
  #    multiple = params[:fact].to_i * params[:factor].to_i
  #    render plain: multiple
  #end
end
