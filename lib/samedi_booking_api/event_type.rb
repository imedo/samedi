module SamediBookingApi
  class EventType < ActiveResource::Base
    include SamediBookingApi::Common

    def dates(event_category_id, options = {})
      SamediBookingApi::Date.find_by_event_category_id_and_event_type_id(event_category_id, self.id, options)
    end

    def times(event_category_id, options = {})
      SamediBookingApi::Time.find_by_event_category_id_and_event_type_id(event_category_id, self.id, options)
    end

    def self.find_by_event_category_id(event_category_id)
      find_every :params => { :event_category_id => event_category_id }
    end

    def self.find_by_healer_id(healer_id)
      find_every :params => { :healer_id => healer_id }
    end
  end
end
