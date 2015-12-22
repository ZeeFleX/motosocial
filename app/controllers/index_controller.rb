class IndexController < ApplicationController
  def index
    @user = User.all().first
  end

  def create
    @tests = [1,2,3,4,5,6,5,34,5,46,46,4,64,64,6,4,3]
  end
end
