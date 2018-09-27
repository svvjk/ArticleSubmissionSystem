class RegController < ApplicationController
  def index
  end
  
  def show
  @reg = Reg.find(params[:id])
  end

  def new 
  end

  def create
   @reg = Reg.new(reg_params)
 
  @reg.save
  redirect_to @reg
  end

  private
  def reg_params
    params.require(:rg).permit(:name,:contactno,:Emailid,:currentsemester,:Regid,:password)
  end
 
end
