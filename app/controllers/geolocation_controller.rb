class GeolocationController < ApplicationController
    def index

        if params[:lat] && params[:long]
        address = Geocoder.address([params[:lat], params[:long]])
        else 
        address = nil
        end
        
        if params[:market_id]
            @markets = Market.find(params[:market_id])
        else
            @markets = Market.all
        end

        @markers =  Gmaps4rails.build_markers(@markets) do |market, marker| 
                        coord = Geocoder.coordinates(market.address)            
            
                        marker.lat(coord[0])
                        marker.lng(coord[1])
                        marker.infowindow(market.name)
                        marker.picture({
                            url: helpers.asset_path('pin'), 
                            width: 32, 
                            height: 32
                        })
                    end

        respond_to do |format|
        format.html {  }
        format.json { render json: { address: address, markers: @markers }}
        end
    end
end

