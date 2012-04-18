require 'active_support'
require 'active_resource'

module SamediBookingApi
  mattr_accessor :client_id

  def self.site=(site)
    ObjectSpace.each_object(Class) { |cls| cls.site = site if cls < SamediBookingApi::Common }
  end
end

require 'samedi_booking_api/common'
require 'samedi_booking_api/practice'
require 'samedi_booking_api/event_category'
require 'samedi_booking_api/event_type'
require 'samedi_booking_api/date'
require 'samedi_booking_api/time'

