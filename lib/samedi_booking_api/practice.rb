module SamediBookingApi
  class Practice
    attr_reader :id

    def initialize(id)
      @id = id
    end

    def event_categories
      SamediBookingApi::EventCategory.find_by_practice_id(self.id)
    end
  end
end
