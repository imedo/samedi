module Samedi
  class EventType < ActiveResource::Base
    include Samedi::Common
    
    def dates(event_category_id)
      Samedi::Date.find_by_event_category_id_and_event_type_id(event_category_id, self.id)
    end

    def self.find_by_event_category_id(event_category_id)
      find_every :params => { :event_category_id => event_category_id }
    end
  end
end
