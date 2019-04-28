require 'spec_helper'
require 'rails_helper.rb'
#require 'test_helper'

describe InstructorsController do
  fixtures :instructors
#   before(:each) do
#     @instructor = instructors(:admin)
#     @other_instructor = instructors(:hang)
#   end
  
#   before(:each) do
#     @instructor1 = create(:instructor, name:'admin', email:'admin@admin.com', password:'123456', 
#     password_confirmation:'123456', admin: true, activated: true)
                                            
#     @admin = FactoryGirl::Syntax::create(:admin)
#     @hana = create(:hana)
#     #@mock_results = [double(''), double('movie2')]
#   end

  it "have name" do
    @instructor = instructors(:admin)
    print (@instructor.name)
    expect(Instructor.find_by_name('Admin')).to be_present
    expect(@instructor.admin).to eq true
   #expect(Teacher.count).to eq 0

   #(:dan)

#   expect(Student.find_by_name(@james.name).to be_blank
#   expect(Student.count).to eq 2
#   expect(Teacher.count).to eq 1
#   it "should redirect index when not logged in" do
#     get instructors_path
#     #redirect_to login_url
#     expect(response).to redirect_to(login_url)
  end
  
#   it "should get new" do
#     get signup_path
#     expect(response).to redirect_to(:success)
#   end
  
#   it "should redirect edit when not logged in" do
#     get edit_instructor_path(@instructor)
#     assert_not flash.empty?
#     redirect_to login_url
#     #expect(response).to redirect_to(login_url)
#   end

#   it "should redirect update when not logged in" do
#     patch instructor_path(@instructor), params: { instructor: { name: @instructor.name,
#                                               email: @instructor.email } }
#     #assert_not flash.empty?
#     #assert_redirected_to login_url
#     expect(response).to redirect_to(login_url)
#   end
  
#   it "should redirect edit when logged in as wrong user" do
#     log_in_as(@other_instructor)
#     get edit_instructor_path(@instructor)
#     #assert flash.empty?
#     #assert_redirected_to root_url
#     expect(response).to redirect_to(root_url)
#   end

#   it "should redirect update when logged in as wrong user" do
#     log_in_as(@other_instructor)
#     patch instructor_path(@instructor), params: { instructor: { name: @instructor.name,
#                                               email: @instructor.email } }
#     #assert flash.empty?
#     #assert_redirected_to root_url
#     expect(response).to redirect_to(root_url)
#   end
  
#   it "should redirect destroy when not logged in" do
#     assert_no_difference 'Instructor.count' do
#       delete instructor_path(@instructor)
#     end
#     #assert_redirected_to login_url
#     expect(response).to redirect_to(root_url)
#   end

#   it "should redirect destroy when logged in as a non-admin" do
#     log_in_as(@other_instructor)
#     assert_no_difference 'Instructor.count' do
#       delete instructor_path(@instructor)
#     end
#     #assert_redirected_to root_url
#     expect(response).to redirect_to(root_url)
#   end
  
end
