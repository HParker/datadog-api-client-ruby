=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Fields in Usage Summary by tag(s).
  class UsageAttributionValues
    # The percentage of synthetic API test usage by tag(s).
    attr_accessor :api_percentage

    # The synthetic API test usage by tag(s).
    attr_accessor :api_usage

    # The percentage of APM host usage by tag(s).
    attr_accessor :apm_host_percentage

    # The APM host usage by tag(s).
    attr_accessor :apm_host_usage

    # The percentage of synthetic browser test usage by tag(s).
    attr_accessor :browser_percentage

    # The synthetic browser test usage by tag(s).
    attr_accessor :browser_usage

    # The percentage of container usage by tag(s).
    attr_accessor :container_percentage

    # The container usage by tag(s).
    attr_accessor :container_usage

    # The percentage of custom metrics usage by tag(s).
    attr_accessor :custom_timeseries_percentage

    # The custom metrics usage by tag(s).
    attr_accessor :custom_timeseries_usage

    # The percentage of infrastructure host usage by tag(s).
    attr_accessor :infra_host_percentage

    # The infrastructure host usage by tag(s).
    attr_accessor :infra_host_usage

    # The percentage of lambda function usage by tag(s).
    attr_accessor :lambda_percentage

    # The lambda function usage by tag(s).
    attr_accessor :lambda_usage

    # The percentage of network host usage by tag(s).
    attr_accessor :npm_host_percentage

    # The network host usage by tag(s).
    attr_accessor :npm_host_usage

    # The percentage of network device usage by tag(s).
    attr_accessor :snmp_percentage

    # The network device usage by tag(s).
    attr_accessor :snmp_usage

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'api_percentage' => :'api_percentage',
        :'api_usage' => :'api_usage',
        :'apm_host_percentage' => :'apm_host_percentage',
        :'apm_host_usage' => :'apm_host_usage',
        :'browser_percentage' => :'browser_percentage',
        :'browser_usage' => :'browser_usage',
        :'container_percentage' => :'container_percentage',
        :'container_usage' => :'container_usage',
        :'custom_timeseries_percentage' => :'custom_timeseries_percentage',
        :'custom_timeseries_usage' => :'custom_timeseries_usage',
        :'infra_host_percentage' => :'infra_host_percentage',
        :'infra_host_usage' => :'infra_host_usage',
        :'lambda_percentage' => :'lambda_percentage',
        :'lambda_usage' => :'lambda_usage',
        :'npm_host_percentage' => :'npm_host_percentage',
        :'npm_host_usage' => :'npm_host_usage',
        :'snmp_percentage' => :'snmp_percentage',
        :'snmp_usage' => :'snmp_usage'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'api_percentage' => :'Float',
        :'api_usage' => :'Float',
        :'apm_host_percentage' => :'Float',
        :'apm_host_usage' => :'Float',
        :'browser_percentage' => :'Float',
        :'browser_usage' => :'Float',
        :'container_percentage' => :'Float',
        :'container_usage' => :'Float',
        :'custom_timeseries_percentage' => :'Float',
        :'custom_timeseries_usage' => :'Float',
        :'infra_host_percentage' => :'Float',
        :'infra_host_usage' => :'Float',
        :'lambda_percentage' => :'Float',
        :'lambda_usage' => :'Float',
        :'npm_host_percentage' => :'Float',
        :'npm_host_usage' => :'Float',
        :'snmp_percentage' => :'Float',
        :'snmp_usage' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageAttributionValues` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::UsageAttributionValues`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'api_percentage')
        self.api_percentage = attributes[:'api_percentage']
      end

      if attributes.key?(:'api_usage')
        self.api_usage = attributes[:'api_usage']
      end

      if attributes.key?(:'apm_host_percentage')
        self.apm_host_percentage = attributes[:'apm_host_percentage']
      end

      if attributes.key?(:'apm_host_usage')
        self.apm_host_usage = attributes[:'apm_host_usage']
      end

      if attributes.key?(:'browser_percentage')
        self.browser_percentage = attributes[:'browser_percentage']
      end

      if attributes.key?(:'browser_usage')
        self.browser_usage = attributes[:'browser_usage']
      end

      if attributes.key?(:'container_percentage')
        self.container_percentage = attributes[:'container_percentage']
      end

      if attributes.key?(:'container_usage')
        self.container_usage = attributes[:'container_usage']
      end

      if attributes.key?(:'custom_timeseries_percentage')
        self.custom_timeseries_percentage = attributes[:'custom_timeseries_percentage']
      end

      if attributes.key?(:'custom_timeseries_usage')
        self.custom_timeseries_usage = attributes[:'custom_timeseries_usage']
      end

      if attributes.key?(:'infra_host_percentage')
        self.infra_host_percentage = attributes[:'infra_host_percentage']
      end

      if attributes.key?(:'infra_host_usage')
        self.infra_host_usage = attributes[:'infra_host_usage']
      end

      if attributes.key?(:'lambda_percentage')
        self.lambda_percentage = attributes[:'lambda_percentage']
      end

      if attributes.key?(:'lambda_usage')
        self.lambda_usage = attributes[:'lambda_usage']
      end

      if attributes.key?(:'npm_host_percentage')
        self.npm_host_percentage = attributes[:'npm_host_percentage']
      end

      if attributes.key?(:'npm_host_usage')
        self.npm_host_usage = attributes[:'npm_host_usage']
      end

      if attributes.key?(:'snmp_percentage')
        self.snmp_percentage = attributes[:'snmp_percentage']
      end

      if attributes.key?(:'snmp_usage')
        self.snmp_usage = attributes[:'snmp_usage']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          api_percentage == o.api_percentage &&
          api_usage == o.api_usage &&
          apm_host_percentage == o.apm_host_percentage &&
          apm_host_usage == o.apm_host_usage &&
          browser_percentage == o.browser_percentage &&
          browser_usage == o.browser_usage &&
          container_percentage == o.container_percentage &&
          container_usage == o.container_usage &&
          custom_timeseries_percentage == o.custom_timeseries_percentage &&
          custom_timeseries_usage == o.custom_timeseries_usage &&
          infra_host_percentage == o.infra_host_percentage &&
          infra_host_usage == o.infra_host_usage &&
          lambda_percentage == o.lambda_percentage &&
          lambda_usage == o.lambda_usage &&
          npm_host_percentage == o.npm_host_percentage &&
          npm_host_usage == o.npm_host_usage &&
          snmp_percentage == o.snmp_percentage &&
          snmp_usage == o.snmp_usage
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [api_percentage, api_usage, apm_host_percentage, apm_host_usage, browser_percentage, browser_usage, container_percentage, container_usage, custom_timeseries_percentage, custom_timeseries_usage, infra_host_percentage, infra_host_usage, lambda_percentage, lambda_usage, npm_host_percentage, npm_host_usage, snmp_percentage, snmp_usage].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = DatadogAPIClient::V1.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
