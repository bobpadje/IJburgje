class AccessController < ApplicationController

  def attempt_login
      if params[:email].present?
          found_user = User.where(:email => params[:email]).first
      end
      if found_user
          flash[:notice] = "You are now logged in"
          redirect_to(:controller => 'home', :action => 'index')
      else
          flash[:notice] = "You are not authorized to visit this site"
          redirect_to(:action => 'logout')
      end
  end

  def login
  end

  def logout
      render :layout => false
      
  end
end
