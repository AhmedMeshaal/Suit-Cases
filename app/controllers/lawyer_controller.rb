class LawyerController < ApplicationController
  def index
    @lawyers = Lawyer.all
  end
end
