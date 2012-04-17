module Samedi
  class Date < ActiveResource::Base
    include Samedi::Common
    
    def self.find_by_event_category_id_and_event_type_id(event_category_id, event_type_id)
      find_every :params => { :event_category_id => event_category_id, :event_type_id => event_type_id }
    end
  end
end
