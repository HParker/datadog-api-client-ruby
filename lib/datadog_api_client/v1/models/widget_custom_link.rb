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
  # Custom links help you connect a data value to a URL, like a Datadog page or your AWS console.
  class WidgetCustomLink
    include BaseGenericModel

    # The flag for toggling context menu link visibility.
    attr_accessor :is_hidden

    # The label for the custom link URL. Keep the label short and descriptive. Use metrics and tags as variables.
    attr_accessor :label

    # The URL of the custom link. URL must include `http` or `https`. A relative URL must start with `/`.
    attr_accessor :link

    # The label ID that refers to a context menu link. Can be `logs`, `hosts`, `traces`, `profiles`, `processes`, `containers`, or `rum`.
    attr_accessor :override_label

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'is_hidden' => :'is_hidden',
        :'label' => :'label',
        :'link' => :'link',
        :'override_label' => :'override_label'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'is_hidden' => :'Boolean',
        :'label' => :'String',
        :'link' => :'String',
        :'override_label' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::WidgetCustomLink` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::WidgetCustomLink`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_hidden')
        self.is_hidden = attributes[:'is_hidden']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'link')
        self.link = attributes[:'link']
      end

      if attributes.key?(:'override_label')
        self.override_label = attributes[:'override_label']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_hidden == o.is_hidden &&
          label == o.label &&
          link == o.link &&
          override_label == o.override_label
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [is_hidden, label, link, override_label].hash
    end
  end
end
