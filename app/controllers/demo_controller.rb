class DemoController < ApplicationController
  def index
  	#render(:action => 'muic')
  	#render(:template => 'demo/muic')
  	#render('demo/muic')
  	#render('muic')
  	#redirect_to(:action => 'comsci')
  end

  def muic
  	#render(:text => 'This is not from any file. Just a hardcoded text')
  	@array = [1,2,3,4,5]
  	@id = params[:id]
  	@mid = "u" + params[:major].to_s
  end

  def comsci
  	redirect_to(:action => 'user')
  end

  def user
    user = User.find(1)
    @u = user.first_name
    @l = params[:last_name]
    @l = user.last_name
    @e = user.email
  end
end
