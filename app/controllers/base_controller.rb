class BaseController < ApplicationController
  before_action :authenticate_user!

  private
end
