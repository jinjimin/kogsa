class MainController < ApplicationController
  def home
  	respond_to do |format|
      format.html # home.html
    end
  end
end 