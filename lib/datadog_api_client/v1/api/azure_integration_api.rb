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
  class AzureIntegrationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an Azure integration
    # Create a Datadog-Azure integration.  Using the `POST` method updates your integration configuration by adding your new configuration to the existing one in your Datadog organization.  Using the `PUT` method updates your integration configuration by replacing your current configuration with the new one sent to your Datadog organization.
    # @param body [AzureAccount] Create a Datadog-Azure integration for your Datadog account request body.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def create_azure_integration(body, opts = {})
      data, _status_code, _headers = create_azure_integration_with_http_info(body, opts)
      data
    end

    # Create an Azure integration
    # Create a Datadog-Azure integration.  Using the &#x60;POST&#x60; method updates your integration configuration by adding your new configuration to the existing one in your Datadog organization.  Using the &#x60;PUT&#x60; method updates your integration configuration by replacing your current configuration with the new one sent to your Datadog organization.
    # @param body [AzureAccount] Create a Datadog-Azure integration for your Datadog account request body.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def create_azure_integration_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_azure_integration)
        unstable_enabled = @api_client.config.unstable_operations[:create_azure_integration]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_azure_integration")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "create_azure_integration"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AzureIntegrationApi.create_azure_integration ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AzureIntegrationApi.create_azure_integration"
      end
      # resource path
      local_var_path = '/api/v1/integration/azure'

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"AzureIntegrationApi.create_azure_integration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AzureIntegrationApi#create_azure_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an Azure integration
    # Delete a given Datadog-Azure integration from your Datadog account.
    # @param body [AzureAccount] Delete a given Datadog-Azure integration request body.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_azure_integration(body, opts = {})
      data, _status_code, _headers = delete_azure_integration_with_http_info(body, opts)
      data
    end

    # Delete an Azure integration
    # Delete a given Datadog-Azure integration from your Datadog account.
    # @param body [AzureAccount] Delete a given Datadog-Azure integration request body.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_azure_integration_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_azure_integration)
        unstable_enabled = @api_client.config.unstable_operations[:delete_azure_integration]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_azure_integration")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "delete_azure_integration"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AzureIntegrationApi.delete_azure_integration ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AzureIntegrationApi.delete_azure_integration"
      end
      # resource path
      local_var_path = '/api/v1/integration/azure'

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"AzureIntegrationApi.delete_azure_integration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AzureIntegrationApi#delete_azure_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all Azure integrations
    # List all Datadog-Azure integrations configured in your Datadog account.
    # @param [Hash] opts the optional parameters
    # @return [Array<AzureAccount>]
    def list_azure_integration(opts = {})
      data, _status_code, _headers = list_azure_integration_with_http_info(opts)
      data
    end

    # List all Azure integrations
    # List all Datadog-Azure integrations configured in your Datadog account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AzureAccount>, Integer, Hash)>] Array<AzureAccount> data, response status code and response headers
    def list_azure_integration_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_azure_integration)
        unstable_enabled = @api_client.config.unstable_operations[:list_azure_integration]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_azure_integration")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "list_azure_integration"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AzureIntegrationApi.list_azure_integration ...'
      end
      # resource path
      local_var_path = '/api/v1/integration/azure'

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
      return_type = opts[:debug_return_type] || 'Array<AzureAccount>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"AzureIntegrationApi.list_azure_integration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AzureIntegrationApi#list_azure_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Azure integration host filters
    # Update the defined list of host filters for a given Datadog-Azure integration.
    # @param body [AzureAccount] Update a Datadog-Azure integration&#39;s host filters request body.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def update_azure_host_filters(body, opts = {})
      data, _status_code, _headers = update_azure_host_filters_with_http_info(body, opts)
      data
    end

    # Update Azure integration host filters
    # Update the defined list of host filters for a given Datadog-Azure integration.
    # @param body [AzureAccount] Update a Datadog-Azure integration&#39;s host filters request body.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_azure_host_filters_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_azure_host_filters)
        unstable_enabled = @api_client.config.unstable_operations[:update_azure_host_filters]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_azure_host_filters")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "update_azure_host_filters"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AzureIntegrationApi.update_azure_host_filters ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AzureIntegrationApi.update_azure_host_filters"
      end
      # resource path
      local_var_path = '/api/v1/integration/azure/host_filters'

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"AzureIntegrationApi.update_azure_host_filters",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AzureIntegrationApi#update_azure_host_filters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an Azure integration
    # Update a Datadog-Azure integration. Requires an existing `tenant_name` and `client_id`. Any other fields supplied will overwrite existing values. To overwrite `tenant_name` or `client_id`, use `new_tenant_name` and `new_client_id`. To leave a field unchanged, do not supply that field in the payload.
    # @param body [AzureAccount] Update a Datadog-Azure integration request body.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def update_azure_integration(body, opts = {})
      data, _status_code, _headers = update_azure_integration_with_http_info(body, opts)
      data
    end

    # Update an Azure integration
    # Update a Datadog-Azure integration. Requires an existing &#x60;tenant_name&#x60; and &#x60;client_id&#x60;. Any other fields supplied will overwrite existing values. To overwrite &#x60;tenant_name&#x60; or &#x60;client_id&#x60;, use &#x60;new_tenant_name&#x60; and &#x60;new_client_id&#x60;. To leave a field unchanged, do not supply that field in the payload.
    # @param body [AzureAccount] Update a Datadog-Azure integration request body.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_azure_integration_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_azure_integration)
        unstable_enabled = @api_client.config.unstable_operations[:update_azure_integration]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_azure_integration")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "update_azure_integration"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AzureIntegrationApi.update_azure_integration ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AzureIntegrationApi.update_azure_integration"
      end
      # resource path
      local_var_path = '/api/v1/integration/azure'

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"AzureIntegrationApi.update_azure_integration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AzureIntegrationApi#update_azure_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
