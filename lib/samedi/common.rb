module Samedi
  module Common
    def self.included(receiver)
      receiver.site = "https://www.samedi.de/api/booking/v3"
      receiver.format = :json

      receiver.extend ClassMethods
      (class << receiver; self; end).send :alias_method_chain, :query_string, :client_id
    end

    module ClassMethods
    private
      def query_string_with_client_id(options)
        query_string_without_client_id(options.merge(:client_id => Samedi.client_id))
      end

      def find_every(options)
        begin
          case from = options[:from]
          when Symbol
            instantiate_collection(get(from, options[:params]))
          when String
            path = "#{from}#{query_string(options[:params])}"
            instantiate_collection(format.decode(connection.get(path, headers)['data']) || [])
          else
            prefix_options, query_options = split_options(options[:params])
            path = collection_path(prefix_options, query_options)
            instantiate_collection( (connection.get(path, headers)['data'] || []), prefix_options )
          end
        rescue ActiveResource::ResourceNotFound
          # Swallowing ResourceNotFound exceptions and return nil - as per
          # ActiveRecord.
          nil
        end
      end

      def collection_path(prefix_options = {}, query_options = nil)
        prefix_options, query_options = split_options(prefix_options) if query_options.nil?
        "#{prefix(prefix_options)}#{collection_name}#{query_string(query_options)}"
      end
    end
  end
end
