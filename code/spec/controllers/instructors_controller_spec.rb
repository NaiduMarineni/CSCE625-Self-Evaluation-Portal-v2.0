require 'spec_helper'
require 'rails_helper.rb'
#require 'test_helper'

describe InstructorsController do
  fixtures :instructors
  before(:each) do
    @instructor = instructors(:admin)
    @other_instructor = instructors(:hang)
    @user_1 = instructors(:user_1)
  end

  it "have name" do
    print (@instructor.name)
    expect(Instructor.find_by_name('Admin')).to be_present
    expect(@instructor.admin).to eq true
  end
  
  it "should get new" do
    get :activate
    expect(response).to render_template(:activate)
  end
  
  it "should redirect edit when not logged in" do
    get :edit, :params=> {:id => @instructor}
    expect(response).to redirect_to('/login')
  end

  it "should redirect update when not logged in" do
    get :update, :params =>{:id => @instructor}
    expect(response).to redirect_to('/login')
  end
  
  it "should redirect edit when logged in as wrong user" do
    @controller = SessionsController.new
      get :create, :params => { :session => { :email => @other_instructor.email, :password => @other_instructor.password, :remember_me => 1 } }
    @controller = InstructorsController.new
      get :edit, :params=> {:id => @instructor}
    expect(response).to redirect_to('/login')
    expect(flash.now[:danger]).to be_present
  end
  
  # it "should edit when logged in as correct instructor" do
  #   @controller = SessionsController.new
  #     get :create, :params => { :session => { :email => @instructor.email, :password => @instructor.password, :remember_me => 1 } }
  #   @controller = InstructorsController.new
  #     get :edit, :params=> {:id => @user_1}
  #   expect(response).to render_template(:edit)
  #   #expect(flash.now[:danger]).to be_present
  # end

  it "should redirect update when logged in as wrong user" do
    @controller = SessionsController.new
      get :create, :params => { :session => { :email => @other_instructor.email, :password => @other_instructor.password, :remember_me => 1 } }
    @controller = InstructorsController.new
      get :update, :params=> {:id => @instructor}
    expect(response).to redirect_to('/login')
    expect(flash.now[:danger]).to be_present
  end
  
  it "should redirect destroy when not logged in" do
    get :destroy, :params =>{:id => @instructor}
    expect(response).to redirect_to('/login')
  end

  it "should redirect destroy when logged in as a non-admin" do
    @controller = SessionsController.new
      get :create, :params => { :session => { :email => @other_instructor.email, :password => @other_instructor.password, :remember_me => 1 } }
    @controller = InstructorsController.new
      get :destroy, :params=> {:id => @instructor}
    expect(response).to redirect_to('/login')
    expect(flash.now[:danger]).to be_present
  end

end
