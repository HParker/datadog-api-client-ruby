=begin
#Datadog API V1 Collection

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

module DatadogAPIClient::V1
  # Number of RUM Units used for each hour for a given organization (data available as of November 1, 2021).
  class UsageRumUnitsHour
    include BaseGenericModel

    # The number of browser RUM units.
    attr_accessor :browser_rum_units

    # The number of mobile RUM units.
    attr_accessor :mobile_rum_units

    # The organization name.
    attr_accessor :org_name

    # The organization public ID.
    attr_accessor :public_id

    # Total RUM units across mobile and browser RUM.
    attr_accessor :rum_units

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'browser_rum_units' => :'browser_rum_units',
        :'mobile_rum_units' => :'mobile_rum_units',
        :'org_name' => :'org_name',
        :'public_id' => :'public_id',
        :'rum_units' => :'rum_units'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'browser_rum_units' => :'Integer',
        :'mobile_rum_units' => :'Integer',
        :'org_name' => :'String',
        :'public_id' => :'String',
        :'rum_units' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'browser_rum_units',
        :'mobile_rum_units',
        :'rum_units',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageRumUnitsHour` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::UsageRumUnitsHour`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'browser_rum_units')
        self.browser_rum_units = attributes[:'browser_rum_units']
      end

      if attributes.key?(:'mobile_rum_units')
        self.mobile_rum_units = attributes[:'mobile_rum_units']
      end

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end

      if attributes.key?(:'rum_units')
        self.rum_units = attributes[:'rum_units']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          browser_rum_units == o.browser_rum_units &&
          mobile_rum_units == o.mobile_rum_units &&
          org_name == o.org_name &&
          public_id == o.public_id &&
          rum_units == o.rum_units
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [browser_rum_units, mobile_rum_units, org_name, public_id, rum_units].hash
    end
  end
end
