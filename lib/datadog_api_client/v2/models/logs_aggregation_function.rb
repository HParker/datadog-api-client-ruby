=begin
#Datadog API V2 Collection

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

module DatadogAPIClient::V2
  class LogsAggregationFunction
    COUNT = "count".freeze
    CARDINALITY = "cardinality".freeze
    PERCENTILE_75 = "pc75".freeze
    PERCENTILE_90 = "pc90".freeze
    PERCENTILE_95 = "pc95".freeze
    PERCENTILE_98 = "pc98".freeze
    PERCENTILE_99 = "pc99".freeze
    SUM = "sum".freeze
    MIN = "min".freeze
    MAX = "max".freeze
    AVG = "avg".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = LogsAggregationFunction.constants.select { |c| LogsAggregationFunction::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #LogsAggregationFunction" if constantValues.empty?
      value
    end
  end
end
