class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV['HTTP_AUTH_NAME'], password: ENV['HTTP_AUTH_PASS'], except: :index

  def show
  end

end

