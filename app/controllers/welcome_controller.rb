class WelcomeController < ApplicationController
  include Chart

  def home
    @chart_image = chart_image(Trip.all)
    @trips = Trip.all
    @paginated_trips = Trip.paginate :per_page => 5, :page => 1
    @trip_size = @trips.size
    @country_size = CountryDistance.all.map(&:country).uniq.size
    @active_hitchhikers = User.all.size
    @hitchhike_size = Ride.all.size
    @story_size = Ride.all.collect(&:story).flatten.compact.delete_if{|x|x==''}.size
    @photo_size = Ride.with_photo.size
    @hitchhiked_km = @trips.collect{|t| t.distance}.flatten.compact.sum / 1000
    @trips_with_story = Trip.with_story.order("created_at DESC").paginate :per_page => 5, :page => params[:page]
    @hitchhikers = User.order("created_at DESC").paginate :per_page => 5, :page => 1
  end
  
  def about
    @flov = User.find_by_username('flov')
    @hitchhikers_with_trips = User.all.collect{|user| user unless user.trips.nil? }.compact
  end
end
