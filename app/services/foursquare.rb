class Foursquare

  def self.search_venues(longitude_latitude, text)
    client.search_venues(:ll => longitude_latitude , :query => text)
  end

  def self.client
    @client ||= Foursquare2::Client.new(:client_id => 'S2NHUEK3TGEHH5NBZGXGRWKYMCGJK3FFJVBLHMMVDOX0QVB5', :client_secret => 'PSEQGPS1DJI1C1GPSCCPKQT2MUCVUYYRIL4PNWKSTM1OVDX3')
  end

end