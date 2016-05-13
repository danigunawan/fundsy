class NearbyCampaignsController < ApplicationController
  before_action :authenticate_user

  def index
    coordinates = [current_user.latitude, current_user.longitude]
    @campaigns = Campaign.near(coordinates, 40, units: :km)
    @markers = Gmaps4rails.build_markers(@campaigns) do |campaign, marker|
        marker.lat user.latitude
        marker.lng user.longitude
        marker.infowindow campaign.title
    end
  end
end
