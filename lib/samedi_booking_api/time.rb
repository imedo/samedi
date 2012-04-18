module SamediBookingApi
  class Time < ActiveResource::Base
    include SamediBookingApi::Common

    def self.find_by_event_category_id_and_event_type_id(event_category_id, event_type_id, options = {})
      find_every :params => options.merge(:event_category_id => event_category_id, :event_type_id => event_type_id)
    end
  end
end
