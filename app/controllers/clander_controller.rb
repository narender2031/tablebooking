class ClanderController < ApplicationController
    def index
        @reservation = Reservation.new
        @table = TableSetting.where(status: "Free")
    end
    def reserveTable

    end
end
