class NavigatorController < ApplicationController
  before_action :require_login

  def index
    @courses = Enrollment.where(user_id: current_user.id)
  end

end
