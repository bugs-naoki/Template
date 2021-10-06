class Mypage::MypageApplicationController < ApplicationController
  before_action :authenticate_user!
end
