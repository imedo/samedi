require 'active_support'
require 'active_resource'

module Samedi
  mattr_accessor :client_id
end

require 'samedi/common'
require 'samedi/practice'
require 'samedi/event_category'
require 'samedi/event_type'
require 'samedi/date'
