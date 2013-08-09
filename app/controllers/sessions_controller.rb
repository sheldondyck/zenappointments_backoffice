class SessionsController < ApplicationController
  def new
    @name
  end

  def create
    @name = params.require(:session).permit(:name)[:name]
    @password = params.require(:session).permit(:password)[:password]
    if @name == 'admin' and @password == 'admin123'
      sign_in
      redirect_to stats_path
    else
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to signin_path
  end
end
