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

require 'cgi'

module DatadogAPIClient::V1
  class PagerDutyIntegrationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new service object
    # Create a new service object in the PagerDuty integration.
    # @param body [PagerDutyService] Create a new service object request body.
    # @param [Hash] opts the optional parameters
    # @return [PagerDutyServiceName]
    def create_pager_duty_integration_service(body, opts = {})
      data, _status_code, _headers = create_pager_duty_integration_service_with_http_info(body, opts)
      data
    end

    # Create a new service object
    # Create a new service object in the PagerDuty integration.
    # @param body [PagerDutyService] Create a new service object request body.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PagerDutyServiceName, Integer, Hash)>] PagerDutyServiceName data, response status code and response headers
    def create_pager_duty_integration_service_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_pager_duty_integration_service)
        unstable_enabled = @api_client.config.unstable_operations[:create_pager_duty_integration_service]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_pager_duty_integration_service")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "create_pager_duty_integration_service"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PagerDutyIntegrationApi.create_pager_duty_integration_service ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PagerDutyIntegrationApi.create_pager_duty_integration_service"
      end
      # resource path
      local_var_path = '/api/v1/integration/pagerduty/configuration/services'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'PagerDutyServiceName'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"PagerDutyIntegrationApi.create_pager_duty_integration_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagerDutyIntegrationApi#create_pager_duty_integration_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a single service object
    # Delete a single service object in the Datadog-PagerDuty integration.
    # @param service_name [String] The service name
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_pager_duty_integration_service(service_name, opts = {})
      delete_pager_duty_integration_service_with_http_info(service_name, opts)
      nil
    end

    # Delete a single service object
    # Delete a single service object in the Datadog-PagerDuty integration.
    # @param service_name [String] The service name
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_pager_duty_integration_service_with_http_info(service_name, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_pager_duty_integration_service)
        unstable_enabled = @api_client.config.unstable_operations[:delete_pager_duty_integration_service]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_pager_duty_integration_service")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "delete_pager_duty_integration_service"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PagerDutyIntegrationApi.delete_pager_duty_integration_service ...'
      end
      # verify the required parameter 'service_name' is set
      if @api_client.config.client_side_validation && service_name.nil?
        fail ArgumentError, "Missing the required parameter 'service_name' when calling PagerDutyIntegrationApi.delete_pager_duty_integration_service"
      end
      # resource path
      local_var_path = '/api/v1/integration/pagerduty/configuration/services/{service_name}'.sub('{' + 'service_name' + '}', CGI.escape(service_name.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"PagerDutyIntegrationApi.delete_pager_duty_integration_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagerDutyIntegrationApi#delete_pager_duty_integration_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single service object
    # Get service name in the Datadog-PagerDuty integration.
    # @param service_name [String] The service name.
    # @param [Hash] opts the optional parameters
    # @return [PagerDutyServiceName]
    def get_pager_duty_integration_service(service_name, opts = {})
      data, _status_code, _headers = get_pager_duty_integration_service_with_http_info(service_name, opts)
      data
    end

    # Get a single service object
    # Get service name in the Datadog-PagerDuty integration.
    # @param service_name [String] The service name.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PagerDutyServiceName, Integer, Hash)>] PagerDutyServiceName data, response status code and response headers
    def get_pager_duty_integration_service_with_http_info(service_name, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_pager_duty_integration_service)
        unstable_enabled = @api_client.config.unstable_operations[:get_pager_duty_integration_service]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_pager_duty_integration_service")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "get_pager_duty_integration_service"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PagerDutyIntegrationApi.get_pager_duty_integration_service ...'
      end
      # verify the required parameter 'service_name' is set
      if @api_client.config.client_side_validation && service_name.nil?
        fail ArgumentError, "Missing the required parameter 'service_name' when calling PagerDutyIntegrationApi.get_pager_duty_integration_service"
      end
      # resource path
      local_var_path = '/api/v1/integration/pagerduty/configuration/services/{service_name}'.sub('{' + 'service_name' + '}', CGI.escape(service_name.to_s))

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
      return_type = opts[:debug_return_type] || 'PagerDutyServiceName'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"PagerDutyIntegrationApi.get_pager_duty_integration_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagerDutyIntegrationApi#get_pager_duty_integration_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a single service object
    # Update a single service object in the Datadog-PagerDuty integration.
    # @param service_name [String] The service name
    # @param body [PagerDutyServiceKey] Update an existing service object request body.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_pager_duty_integration_service(service_name, body, opts = {})
      update_pager_duty_integration_service_with_http_info(service_name, body, opts)
      nil
    end

    # Update a single service object
    # Update a single service object in the Datadog-PagerDuty integration.
    # @param service_name [String] The service name
    # @param body [PagerDutyServiceKey] Update an existing service object request body.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_pager_duty_integration_service_with_http_info(service_name, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_pager_duty_integration_service)
        unstable_enabled = @api_client.config.unstable_operations[:update_pager_duty_integration_service]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_pager_duty_integration_service")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "update_pager_duty_integration_service"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PagerDutyIntegrationApi.update_pager_duty_integration_service ...'
      end
      # verify the required parameter 'service_name' is set
      if @api_client.config.client_side_validation && service_name.nil?
        fail ArgumentError, "Missing the required parameter 'service_name' when calling PagerDutyIntegrationApi.update_pager_duty_integration_service"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PagerDutyIntegrationApi.update_pager_duty_integration_service"
      end
      # resource path
      local_var_path = '/api/v1/integration/pagerduty/configuration/services/{service_name}'.sub('{' + 'service_name' + '}', CGI.escape(service_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"PagerDutyIntegrationApi.update_pager_duty_integration_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagerDutyIntegrationApi#update_pager_duty_integration_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
