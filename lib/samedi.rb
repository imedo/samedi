require 'active_support'
require 'active_resource'

module Samedi
  mattr_accessor :client_id

  def self.site=(site)
    ObjectSpace.each_object(Class) { |cls| cls.site = site if cls < Samedi::Common }
  end
end

require 'samedi/common'
require 'samedi/practice'
require 'samedi/event_category'
require 'samedi/event_type'
require 'samedi/date'
require 'samedi/time'
