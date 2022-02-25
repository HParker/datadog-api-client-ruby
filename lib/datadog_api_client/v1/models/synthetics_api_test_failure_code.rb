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
  # Error code that can be returned by a Synthetic test.
  class SyntheticsApiTestFailureCode
    BODY_TOO_LARGE = "BODY_TOO_LARGE".freeze
    DENIED = "DENIED".freeze
    TOO_MANY_REDIRECTS = "TOO_MANY_REDIRECTS".freeze
    AUTHENTICATION_ERROR = "AUTHENTICATION_ERROR".freeze
    DECRYPTION = "DECRYPTION".freeze
    INVALID_CHAR_IN_HEADER = "INVALID_CHAR_IN_HEADER".freeze
    HEADER_TOO_LARGE = "HEADER_TOO_LARGE".freeze
    HEADERS_INCOMPATIBLE_CONTENT_LENGTH = "HEADERS_INCOMPATIBLE_CONTENT_LENGTH".freeze
    INVALID_REQUEST = "INVALID_REQUEST".freeze
    REQUIRES_UPDATE = "REQUIRES_UPDATE".freeze
    UNESCAPED_CHARACTERS_IN_REQUEST_PATH = "UNESCAPED_CHARACTERS_IN_REQUEST_PATH".freeze
    MALFORMED_RESPONSE = "MALFORMED_RESPONSE".freeze
    INCORRECT_ASSERTION = "INCORRECT_ASSERTION".freeze
    CONNREFUSED = "CONNREFUSED".freeze
    CONNRESET = "CONNRESET".freeze
    DNS = "DNS".freeze
    HOSTUNREACH = "HOSTUNREACH".freeze
    NETUNREACH = "NETUNREACH".freeze
    TIMEOUT = "TIMEOUT".freeze
    SSL = "SSL".freeze
    OCSP = "OCSP".freeze
    INVALID_TEST = "INVALID_TEST".freeze
    TUNNEL = "TUNNEL".freeze
    WEBSOCKET = "WEBSOCKET".freeze
    UNKNOWN = "UNKNOWN".freeze
    INTERNAL_ERROR = "INTERNAL_ERROR".freeze

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
      constantValues = SyntheticsApiTestFailureCode.constants.select { |c| SyntheticsApiTestFailureCode::const_get(c) == value }
      constantValues.empty? ? DatadogAPIClient::V1::UnparsedObject.new(value) : value
    end
  end
end
