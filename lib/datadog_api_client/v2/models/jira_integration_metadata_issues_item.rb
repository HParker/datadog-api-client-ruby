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
  # Item in the Jira integration metadata issue array.
  class JiraIntegrationMetadataIssuesItem
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # URL of issue's Jira account.
    attr_reader :account

    # Jira issue's issue key.
    attr_accessor :issue_key

    # Jira issue's issue type.
    attr_accessor :issuetype_id

    # Jira issue's project keys.
    attr_reader :project_key

    # URL redirecting to the Jira issue.
    attr_accessor :redirect_url

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'account' => :'account',
        :'issue_key' => :'issue_key',
        :'issuetype_id' => :'issuetype_id',
        :'project_key' => :'project_key',
        :'redirect_url' => :'redirect_url'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'account' => :'String',
        :'issue_key' => :'String',
        :'issuetype_id' => :'String',
        :'project_key' => :'String',
        :'redirect_url' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::JiraIntegrationMetadataIssuesItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::JiraIntegrationMetadataIssuesItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'issue_key')
        self.issue_key = attributes[:'issue_key']
      end

      if attributes.key?(:'issuetype_id')
        self.issuetype_id = attributes[:'issuetype_id']
      end

      if attributes.key?(:'project_key')
        self.project_key = attributes[:'project_key']
      end

      if attributes.key?(:'redirect_url')
        self.redirect_url = attributes[:'redirect_url']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @account.nil?
      return false if @project_key.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param account [Object] Object to be assigned
    # @!visibility private
    def account=(account)
      if account.nil?
        fail ArgumentError, 'invalid value for "account", account cannot be nil.'
      end
      @account = account
    end

    # Custom attribute writer method with validation
    # @param project_key [Object] Object to be assigned
    # @!visibility private
    def project_key=(project_key)
      if project_key.nil?
        fail ArgumentError, 'invalid value for "project_key", project_key cannot be nil.'
      end
      @project_key = project_key
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account == o.account &&
          issue_key == o.issue_key &&
          issuetype_id == o.issuetype_id &&
          project_key == o.project_key &&
          redirect_url == o.redirect_url
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [account, issue_key, issuetype_id, project_key, redirect_url].hash
    end
  end
end