class MainController < ApplicationController
  def home
  	respond_to do |format|
      format.html # home.html
    end
  end
  
  def uva
  	respond_to do |format|
      format.html # uva.html.erb
    end
  end
  
  def ksa
  	respond_to do |format|
  		format.html #ksa.html.erb
  	end
  end
  
  def kogsa
  	respond_to do |format|
  		format.html #kogsa.html.erb
  	end
  end
  
  def making
  	respond_to do |format|
      format.html # making.html.erb
    end
  end
  
  def qna
  	respond_to do |format|
  		format.html #qna.html.erb
  	end
  end
  
  def recruit
  	respond_to do |format|
  		format.html #recruit.html.erb
  	end
  end
  
  def living
  	respond_to do |format|
  		format.html #living.html.erb
  	end
  end
  

  def ksa
  	respond_to do |format|
  		format.html #kogsafree.html.erb
  	end
  end
  
  def market
  	respond_to do |format|
  		format.html #market.html.erb
  	end
  end
  
  def gallery
  	respond_to do |format|
  		format.html #gallery.html.erb
  	end
  end
  
  def organization
  	respond_to do |format|
  		format.html #organization.html.erb
  	end
  end
  
  def sponsor
  	respond_to do |format|
  		format.html #sponsor.html.erb
    end
  end
  
  def contact
  	respond_to do |format|
  		format.html #contact.html.erb
  	end
  end
  
end 