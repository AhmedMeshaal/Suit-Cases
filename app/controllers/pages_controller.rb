class PagesController < ApplicationController
  def home
    @val= current_user.role
  end
end
