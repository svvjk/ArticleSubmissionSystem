class LoginController < ApplicationController
  

def create
  user = Reg.find_by(user_params)
  
  if user
   session[:user_id] = user.id 
    redirect_to "/articles/index"
  else
    redirect_to "localhost:3000"
  end
end
private

def user_params
  params.require(:lg).permit(:RegID,:password)
end
end
