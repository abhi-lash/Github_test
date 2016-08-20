class UsersController < ApplicationController

  def index
  	client = Octokit::Client.new(:access_token => "7a8b800282c41c63ce959ed41b7bc7bd9c289a4a")
  	user = client.user
  	@events = client.search_users('abhilash', options = {})
  end

  def show
  	@details =  HTTParty.get(params[:url])
  end
end
