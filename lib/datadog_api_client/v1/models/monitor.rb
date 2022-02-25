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
  # Object describing a monitor.
  class Monitor
    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Timestamp of the monitor creation.
    attr_accessor :created

    # Object describing the creator of the shared element.
    attr_accessor :creator

    # Whether or not the monitor is deleted. (Always `null`)
    attr_accessor :deleted

    # ID of this monitor.
    attr_accessor :id

    # A message to include with notifications for this monitor.
    attr_accessor :message

    # Last timestamp when the monitor was edited.
    attr_accessor :modified

    # Whether or not the monitor is broken down on different groups.
    attr_accessor :multi

    # The monitor name.
    attr_accessor :name

    # List of options associated with your monitor.
    attr_accessor :options

    # The different states your monitor can be in.
    attr_accessor :overall_state

    # Integer from 1 (high) to 5 (low) indicating alert severity.
    attr_accessor :priority

    # The monitor query.
    attr_accessor :query

    # A list of role identifiers that can be pulled from the Roles API. Cannot be used with `locked` option.
    attr_accessor :restricted_roles

    # Wrapper object with the different monitor states.
    attr_accessor :state

    # Tags associated to your monitor.
    attr_accessor :tags

    # The type of the monitor. For more information about `type`, see the [monitor options](https://docs.datadoghq.com/monitors/guide/monitor_api_options/) docs.
    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'created' => :'created',
        :'creator' => :'creator',
        :'deleted' => :'deleted',
        :'id' => :'id',
        :'message' => :'message',
        :'modified' => :'modified',
        :'multi' => :'multi',
        :'name' => :'name',
        :'options' => :'options',
        :'overall_state' => :'overall_state',
        :'priority' => :'priority',
        :'query' => :'query',
        :'restricted_roles' => :'restricted_roles',
        :'state' => :'state',
        :'tags' => :'tags',
        :'type' => :'type'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'created' => :'Time',
        :'creator' => :'Creator',
        :'deleted' => :'Time',
        :'id' => :'Integer',
        :'message' => :'String',
        :'modified' => :'Time',
        :'multi' => :'Boolean',
        :'name' => :'String',
        :'options' => :'MonitorOptions',
        :'overall_state' => :'MonitorOverallStates',
        :'priority' => :'Integer',
        :'query' => :'String',
        :'restricted_roles' => :'Array<String>',
        :'state' => :'MonitorState',
        :'tags' => :'Array<String>',
        :'type' => :'MonitorType'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'deleted',
        :'priority',
        :'restricted_roles',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::Monitor` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::Monitor`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'creator')
        self.creator = attributes[:'creator']
      end

      if attributes.key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'modified')
        self.modified = attributes[:'modified']
      end

      if attributes.key?(:'multi')
        self.multi = attributes[:'multi']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.key?(:'overall_state')
        self.overall_state = attributes[:'overall_state']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'restricted_roles')
        if (value = attributes[:'restricted_roles']).is_a?(Array)
          self.restricted_roles = value
        end
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      if !@priority.nil? && @priority > 5
        invalid_properties.push('invalid value for "priority", must be smaller than or equal to 5.')
      end
      if !@priority.nil? && @priority < 1
        invalid_properties.push('invalid value for "priority", must be greater than or equal to 1.')
      end
      if @query.nil?
        invalid_properties.push('invalid value for "query", query cannot be nil.')
      end
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@priority.nil? && @priority > 5
      return false if !@priority.nil? && @priority < 1
      return false if @query.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param priority [Object] Object to be assigned
    # @!visibility private
    def priority=(priority)
      if !priority.nil? && priority > 5
        fail ArgumentError, 'invalid value for "priority", must be smaller than or equal to 5.'
      end
      if !priority.nil? && priority < 1
        fail ArgumentError, 'invalid value for "priority", must be greater than or equal to 1.'
      end
      @priority = priority
    end

    # Custom attribute writer method with validation
    # @param query [Object] Object to be assigned
    # @!visibility private
    def query=(query)
      if query.nil?
        fail ArgumentError, 'invalid value for "query", query cannot be nil.'
      end
      @query = query
    end

    # Custom attribute writer method with validation
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created == o.created &&
          creator == o.creator &&
          deleted == o.deleted &&
          id == o.id &&
          message == o.message &&
          modified == o.modified &&
          multi == o.multi &&
          name == o.name &&
          options == o.options &&
          overall_state == o.overall_state &&
          priority == o.priority &&
          query == o.query &&
          restricted_roles == o.restricted_roles &&
          state == o.state &&
          tags == o.tags &&
          type == o.type
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [created, creator, deleted, id, message, modified, multi, name, options, overall_state, priority, query, restricted_roles, state, tags, type].hash
    end

    # Builds the object from hash
    # @param attributes [Hash] Model attributes in the form of hash
    # @return [Object] Returns the model itself
    # @!visibility private
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param attributes [Hash] Model attributes in the form of hash
    # @return [Object] Returns the model itself
    # @!visibility private
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
    # @param type [string] Data type
    # @param value [string] Value to be deserialized
    # @return [Object] Deserialized data
    # @!visibility private
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
      when :Array
        # generic array, return directly
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
        res = klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
        if res.instance_of? DatadogAPIClient::V1::UnparsedObject
          self._unparsed = true
        end
        res
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    # @!visibility private
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
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
    # @param value [Object] Any valid value
    # @return [Hash] Returns the value in the form of hash
    # @!visibility private
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
