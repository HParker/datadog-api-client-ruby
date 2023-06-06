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
  # List of the different monitor threshold available.
  class MonitorThresholds
    include BaseGenericModel

    # The monitor `CRITICAL` threshold.
    attr_accessor :critical

    # The monitor `CRITICAL` recovery threshold.
    attr_accessor :critical_recovery

    # The monitor `OK` threshold.
    attr_accessor :ok

    # The monitor UNKNOWN threshold.
    attr_accessor :unknown

    # The monitor `WARNING` threshold.
    attr_accessor :warning

    # The monitor `WARNING` recovery threshold.
    attr_accessor :warning_recovery

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'critical' => :'critical',
        :'critical_recovery' => :'critical_recovery',
        :'ok' => :'ok',
        :'unknown' => :'unknown',
        :'warning' => :'warning',
        :'warning_recovery' => :'warning_recovery'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'critical' => :'Float',
        :'critical_recovery' => :'Float',
        :'ok' => :'Float',
        :'unknown' => :'Float',
        :'warning' => :'Float',
        :'warning_recovery' => :'Float'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'critical_recovery',
        :'ok',
        :'unknown',
        :'warning',
        :'warning_recovery',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::MonitorThresholds` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::MonitorThresholds`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'critical')
        self.critical = attributes[:'critical']
      end

      if attributes.key?(:'critical_recovery')
        self.critical_recovery = attributes[:'critical_recovery']
      end

      if attributes.key?(:'ok')
        self.ok = attributes[:'ok']
      end

      if attributes.key?(:'unknown')
        self.unknown = attributes[:'unknown']
      end

      if attributes.key?(:'warning')
        self.warning = attributes[:'warning']
      end

      if attributes.key?(:'warning_recovery')
        self.warning_recovery = attributes[:'warning_recovery']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          critical == o.critical &&
          critical_recovery == o.critical_recovery &&
          ok == o.ok &&
          unknown == o.unknown &&
          warning == o.warning &&
          warning_recovery == o.warning_recovery
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [critical, critical_recovery, ok, unknown, warning, warning_recovery].hash
    end
  end
end
