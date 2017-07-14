class MapsController < ApplicationController
   def index
    @users = User.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow render_to_string( partial: "/shared/map_box", locals: { user: user })

    end
  end
end


