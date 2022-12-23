=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V2
  # The object describing a timeseries response.
  class TimeseriesResponseAttributes
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Array of response series. The index here corresponds to the index in the `formulas` or `queries` array from the request.
    attr_accessor :series

    # Array of times, 1-1 match with individual values arrays.
    attr_accessor :times

    # Array of value-arrays. The index here corresponds to the index in the `formulas` or `queries` array from the request.
    attr_accessor :values

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'series' => :'series',
        :'times' => :'times',
        :'values' => :'values'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'series' => :'Array<TimeseriesResponseSeries>',
        :'times' => :'Array<Integer>',
        :'values' => :'Array<Array<Float>>'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::TimeseriesResponseAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::TimeseriesResponseAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'series')
        if (value = attributes[:'series']).is_a?(Array)
          self.series = value
        end
      end

      if attributes.key?(:'times')
        if (value = attributes[:'times']).is_a?(Array)
          self.times = value
        end
      end

      if attributes.key?(:'values')
        if (value = attributes[:'values']).is_a?(Array)
          self.values = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          series == o.series &&
          times == o.times &&
          values == o.values
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [series, times, values].hash
    end
  end
end
