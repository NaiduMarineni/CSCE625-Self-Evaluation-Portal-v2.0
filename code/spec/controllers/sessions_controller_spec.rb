require 'spec_helper'
require 'rails_helper.rb'

describe SessionsController do
  fixtures :instructors
  before(:each) do
    @instructor = instructors(:admin)
    @other_instructor = instructors(:hang)
  end
  
  it "should not login with wrong credentials" do
    post :create, :params => { :session => { :email => @instructor.email, :password => '122', :remember_me => 1 } }
    expect(response).to render_template(:new)
    expect(flash.now[:danger]).to be_present
    #response.should be_failure
  end
  
  it "should get new" do
    post :create, :params => { :session => { :email => @instructor.email, :password => @instructor.password, :remember_me => 1 } }
    response.should be_success
  end
  
  context 'with user logged in' do
    it "destroy should work as expected" do
      post :destroy
      expect(response).to redirect_to('/')
    end
  end
    
end

