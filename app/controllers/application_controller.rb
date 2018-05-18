class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  #모든 액션을 하기 전에 무조건 로그인이 먼저 되어야 함
  before_action :authenticate_user!
end
