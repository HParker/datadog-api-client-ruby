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
  # Response with monthly summary of data billed by Datadog.
  class UsageBillableSummaryHour
    include BaseGenericModel

    # The billing plan.
    attr_accessor :billing_plan

    # Shows the last date of usage.
    attr_accessor :end_date

    # The number of organizations.
    attr_accessor :num_orgs

    # The organization name.
    attr_accessor :org_name

    # The organization public ID.
    attr_accessor :public_id

    # Shows usage aggregation for a billing period.
    attr_accessor :ratio_in_month

    # The region of the organization.
    attr_accessor :region

    # Shows the first date of usage.
    attr_accessor :start_date

    # Response with aggregated usage types.
    attr_accessor :usage

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'billing_plan' => :'billing_plan',
        :'end_date' => :'end_date',
        :'num_orgs' => :'num_orgs',
        :'org_name' => :'org_name',
        :'public_id' => :'public_id',
        :'ratio_in_month' => :'ratio_in_month',
        :'region' => :'region',
        :'start_date' => :'start_date',
        :'usage' => :'usage'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'billing_plan' => :'String',
        :'end_date' => :'Time',
        :'num_orgs' => :'Integer',
        :'org_name' => :'String',
        :'public_id' => :'String',
        :'ratio_in_month' => :'Float',
        :'region' => :'String',
        :'start_date' => :'Time',
        :'usage' => :'UsageBillableSummaryKeys'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageBillableSummaryHour` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::UsageBillableSummaryHour`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'billing_plan')
        self.billing_plan = attributes[:'billing_plan']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'num_orgs')
        self.num_orgs = attributes[:'num_orgs']
      end

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end

      if attributes.key?(:'ratio_in_month')
        self.ratio_in_month = attributes[:'ratio_in_month']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'usage')
        self.usage = attributes[:'usage']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          billing_plan == o.billing_plan &&
          end_date == o.end_date &&
          num_orgs == o.num_orgs &&
          org_name == o.org_name &&
          public_id == o.public_id &&
          ratio_in_month == o.ratio_in_month &&
          region == o.region &&
          start_date == o.start_date &&
          usage == o.usage
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [billing_plan, end_date, num_orgs, org_name, public_id, ratio_in_month, region, start_date, usage].hash
    end
  end
end
