class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
	render layout: "adminarea"
  end

end
