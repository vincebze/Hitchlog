class Trip
  include Gmaps

  def get_country_distance
    countries = Gmaps.countries(from, to)
     
    if %w(ZERO_RESULTS OFFLINE OVER_QUERY_LIMIT REQUEST_DENIED INVALID_REQUEST).include? countries
      [['Unknown', 10000]]
    else
      countries.each do |country_distance|
        cd = CountryDistance.where(:country => country_distance[0],
                                   :trip_id => self.id)
        if cd.empty?
          self.country_distances.create(:country  => country_distance[0],
                                        :distance => country_distance[1])
        elsif cd.first.distance != country_distance
          cd.first.update_attribute :distance, country_distance[1]
        end
      end
    end
  end

  def get_distance!
    get_distance
    save!
  end

  def get_city
    self.from_city = Gmaps.city(from)
    self.to_city   = Gmaps.city(to)
  end

  def get_city!
    get_city
    save!
  end

  def get_country
    self.from_country = Gmaps.country(from)
    self.to_country   = Gmaps.country(to)
  end

  def get_country!
    get_country
    save!
  end

  def get_formatted_addresses
    self.from_formatted_address = Gmaps.formatted_address(from)
    self.to_formatted_address = Gmaps.formatted_address(to)
  end

  def get_formatted_addresses!
    get_formatted_addresses
    save!
  end
end
