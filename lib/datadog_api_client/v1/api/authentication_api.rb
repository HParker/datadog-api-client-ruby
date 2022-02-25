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

require 'cgi'

module DatadogAPIClient::V1
  class AuthenticationAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end

    # Validate API key
    # Check if the API key (not the APP key) is valid. If invalid, a 403 is returned.
    # @param opts [Hash] the optional parameters
    # @return [AuthenticationValidationResponse]
    def validate(opts = {})
      data, _status_code, _headers = validate_with_http_info(opts)
      data
    end

    # Validate API key
    # Check if the API key (not the APP key) is valid. If invalid, a 403 is returned.
    # @param opts [Hash] the optional parameters
    # @return [Array<(AuthenticationValidationResponse, Integer, Hash)>] AuthenticationValidationResponse data, response status code and response headers
    def validate_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:validate)
        unstable_enabled = @api_client.config.unstable_operations[:validate]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "validate")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "validate"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationAPI.validate ...'
      end
      # resource path
      local_var_path = '/api/v1/validate'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AuthenticationValidationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :validate,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationAPI#validate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
