=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Updated top list widget.
  class ToplistWidgetRequest
    attr_accessor :apm_query

    # List of conditional formats.
    attr_accessor :conditional_formats

    attr_accessor :event_query

    # List of formulas that operate on queries. **This feature is currently in beta.**
    attr_accessor :formulas

    attr_accessor :log_query

    attr_accessor :network_query

    attr_accessor :process_query

    attr_accessor :profile_metrics_query

    # Widget query.
    attr_accessor :q

    # List of queries that can be returned directly or used in formulas. **This feature is currently in beta.**
    attr_accessor :queries

    attr_accessor :response_format

    attr_accessor :rum_query

    attr_accessor :security_query

    attr_accessor :style

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'apm_query' => :'apm_query',
        :'conditional_formats' => :'conditional_formats',
        :'event_query' => :'event_query',
        :'formulas' => :'formulas',
        :'log_query' => :'log_query',
        :'network_query' => :'network_query',
        :'process_query' => :'process_query',
        :'profile_metrics_query' => :'profile_metrics_query',
        :'q' => :'q',
        :'queries' => :'queries',
        :'response_format' => :'response_format',
        :'rum_query' => :'rum_query',
        :'security_query' => :'security_query',
        :'style' => :'style'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'apm_query' => :'LogQueryDefinition',
        :'conditional_formats' => :'Array<WidgetConditionalFormat>',
        :'event_query' => :'LogQueryDefinition',
        :'formulas' => :'Array<WidgetFormula>',
        :'log_query' => :'LogQueryDefinition',
        :'network_query' => :'LogQueryDefinition',
        :'process_query' => :'ProcessQueryDefinition',
        :'profile_metrics_query' => :'LogQueryDefinition',
        :'q' => :'String',
        :'queries' => :'Array<FormulaAndFunctionQueryDefinition>',
        :'response_format' => :'FormulaAndFunctionResponseFormat',
        :'rum_query' => :'LogQueryDefinition',
        :'security_query' => :'LogQueryDefinition',
        :'style' => :'WidgetRequestStyle'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ToplistWidgetRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::ToplistWidgetRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'apm_query')
        self.apm_query = attributes[:'apm_query']
      end

      if attributes.key?(:'conditional_formats')
        if (value = attributes[:'conditional_formats']).is_a?(Array)
          self.conditional_formats = value
        end
      end

      if attributes.key?(:'event_query')
        self.event_query = attributes[:'event_query']
      end

      if attributes.key?(:'formulas')
        if (value = attributes[:'formulas']).is_a?(Array)
          self.formulas = value
        end
      end

      if attributes.key?(:'log_query')
        self.log_query = attributes[:'log_query']
      end

      if attributes.key?(:'network_query')
        self.network_query = attributes[:'network_query']
      end

      if attributes.key?(:'process_query')
        self.process_query = attributes[:'process_query']
      end

      if attributes.key?(:'profile_metrics_query')
        self.profile_metrics_query = attributes[:'profile_metrics_query']
      end

      if attributes.key?(:'q')
        self.q = attributes[:'q']
      end

      if attributes.key?(:'queries')
        if (value = attributes[:'queries']).is_a?(Array)
          self.queries = value
        end
      end

      if attributes.key?(:'response_format')
        self.response_format = attributes[:'response_format']
      end

      if attributes.key?(:'rum_query')
        self.rum_query = attributes[:'rum_query']
      end

      if attributes.key?(:'security_query')
        self.security_query = attributes[:'security_query']
      end

      if attributes.key?(:'style')
        self.style = attributes[:'style']
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
          apm_query == o.apm_query &&
          conditional_formats == o.conditional_formats &&
          event_query == o.event_query &&
          formulas == o.formulas &&
          log_query == o.log_query &&
          network_query == o.network_query &&
          process_query == o.process_query &&
          profile_metrics_query == o.profile_metrics_query &&
          q == o.q &&
          queries == o.queries &&
          response_format == o.response_format &&
          rum_query == o.rum_query &&
          security_query == o.security_query &&
          style == o.style
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [apm_query, conditional_formats, event_query, formulas, log_query, network_query, process_query, profile_metrics_query, q, queries, response_format, rum_query, security_query, style].hash
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
