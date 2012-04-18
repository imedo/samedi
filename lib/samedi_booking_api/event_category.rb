module SamediBookingApi
  class EventCategory < ActiveResource::Base
    include SamediBookingApi::Common

    def event_types
      SamediBookingApi::EventType.find_by_event_category_id(self.id)
    end

    def self.find_by_practice_id(practice_id)
      find_every :params => { :practice_id => practice_id }
    end
  end
end
