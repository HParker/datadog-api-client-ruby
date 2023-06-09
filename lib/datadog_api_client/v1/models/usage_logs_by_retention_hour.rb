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
  # The number of indexed logs for each hour for a given organization broken down by retention period.
  class UsageLogsByRetentionHour
    include BaseGenericModel

    # Total logs indexed with this retention period during a given hour.
    attr_accessor :indexed_events_count

    # Live logs indexed with this retention period during a given hour.
    attr_accessor :live_indexed_events_count

    # The organization name.
    attr_accessor :org_name

    # The organization public ID.
    attr_accessor :public_id

    # Rehydrated logs indexed with this retention period during a given hour.
    attr_accessor :rehydrated_indexed_events_count

    # The retention period in days or "custom" for all custom retention usage.
    attr_accessor :retention

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'indexed_events_count' => :'indexed_events_count',
        :'live_indexed_events_count' => :'live_indexed_events_count',
        :'org_name' => :'org_name',
        :'public_id' => :'public_id',
        :'rehydrated_indexed_events_count' => :'rehydrated_indexed_events_count',
        :'retention' => :'retention'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'indexed_events_count' => :'Integer',
        :'live_indexed_events_count' => :'Integer',
        :'org_name' => :'String',
        :'public_id' => :'String',
        :'rehydrated_indexed_events_count' => :'Integer',
        :'retention' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'indexed_events_count',
        :'live_indexed_events_count',
        :'rehydrated_indexed_events_count',
        :'retention',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageLogsByRetentionHour` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::UsageLogsByRetentionHour`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'indexed_events_count')
        self.indexed_events_count = attributes[:'indexed_events_count']
      end

      if attributes.key?(:'live_indexed_events_count')
        self.live_indexed_events_count = attributes[:'live_indexed_events_count']
      end

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end

      if attributes.key?(:'rehydrated_indexed_events_count')
        self.rehydrated_indexed_events_count = attributes[:'rehydrated_indexed_events_count']
      end

      if attributes.key?(:'retention')
        self.retention = attributes[:'retention']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          indexed_events_count == o.indexed_events_count &&
          live_indexed_events_count == o.live_indexed_events_count &&
          org_name == o.org_name &&
          public_id == o.public_id &&
          rehydrated_indexed_events_count == o.rehydrated_indexed_events_count &&
          retention == o.retention
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [indexed_events_count, live_indexed_events_count, org_name, public_id, rehydrated_indexed_events_count, retention].hash
    end
  end
end
