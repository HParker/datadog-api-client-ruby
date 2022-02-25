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
  # Assertion operator to apply.
  class SyntheticsAssertionOperator
    CONTAINS = "contains".freeze
    DOES_NOT_CONTAIN = "doesNotContain".freeze
    IS = "is".freeze
    IS_NOT = "isNot".freeze
    LESS_THAN = "lessThan".freeze
    LESS_THAN_OR_EQUAL = "lessThanOrEqual".freeze
    MORE_THAN = "moreThan".freeze
    MORE_THAN_OR_EQUAL = "moreThanOrEqual".freeze
    MATCHES = "matches".freeze
    DOES_NOT_MATCH = "doesNotMatch".freeze
    VALIDATES = "validates".freeze
    IS_IN_MORE_DAYS_THAN = "isInMoreThan".freeze
    IS_IN_LESS_DAYS_THAN = "isInLessThan".freeze

    # Builds the enum from string
    # @param value [String] The enum value in the form of the string
    # @return [String] The enum value
    # @!visibility private
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param value [String] The enum value in the form of the string
    # @return [String] The enum value
    # @!visibility private
    def build_from_hash(value)
      constantValues = SyntheticsAssertionOperator.constants.select { |c| SyntheticsAssertionOperator::const_get(c) == value }
      constantValues.empty? ? DatadogAPIClient::V1::UnparsedObject.new(value) : value
    end
  end
end
