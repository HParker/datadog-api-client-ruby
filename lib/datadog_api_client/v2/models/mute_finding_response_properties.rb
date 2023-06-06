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
  # Information about the mute status of this finding.
  class MuteFindingResponseProperties
    include BaseGenericModel

    # Additional information about the reason why this finding is muted or unmuted.
    # This attribute will not be included in the response if the description is not provided in the request body.
    #
    attr_accessor :description

    # The expiration date of the mute or unmute action.
    # If the expiration date is not provided in the request body, this attribute will not be included in the response and the finding will be muted or unmuted indefinitely.
    #
    attr_accessor :expiration_date

    # Whether this finding is muted or unmuted.
    attr_accessor :muted

    # The reason why this finding is muted or unmuted.
    attr_accessor :reason

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'description' => :'description',
        :'expiration_date' => :'expiration_date',
        :'muted' => :'muted',
        :'reason' => :'reason'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'description' => :'String',
        :'expiration_date' => :'Integer',
        :'muted' => :'Boolean',
        :'reason' => :'FindingMuteReason'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::MuteFindingResponseProperties` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::MuteFindingResponseProperties`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
      end

      if attributes.key?(:'muted')
        self.muted = attributes[:'muted']
      end

      if attributes.key?(:'reason')
        self.reason = attributes[:'reason']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          description == o.description &&
          expiration_date == o.expiration_date &&
          muted == o.muted &&
          reason == o.reason
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [description, expiration_date, muted, reason].hash
    end
  end
end
