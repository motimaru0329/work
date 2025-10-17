class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:mypage]

  def top
  end

  def mypage
  end
end
