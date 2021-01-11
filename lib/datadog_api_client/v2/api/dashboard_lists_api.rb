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

require 'cgi'

module DatadogAPIClient::V2
  class DashboardListsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add Items to a Dashboard List
    # Add dashboards to an existing dashboard list.
    # @param dashboard_list_id [Integer] ID of the dashboard list to add items to.
    # @param body [DashboardListAddItemsRequest] Dashboards to add to the dashboard list.
    # @param [Hash] opts the optional parameters
    # @return [DashboardListAddItemsResponse]
    def create_dashboard_list_items(dashboard_list_id, body, opts = {})
      data, _status_code, _headers = create_dashboard_list_items_with_http_info(dashboard_list_id, body, opts)
      data
    end

    # Add Items to a Dashboard List
    # Add dashboards to an existing dashboard list.
    # @param dashboard_list_id [Integer] ID of the dashboard list to add items to.
    # @param body [DashboardListAddItemsRequest] Dashboards to add to the dashboard list.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DashboardListAddItemsResponse, Integer, Hash)>] DashboardListAddItemsResponse data, response status code and response headers
    def create_dashboard_list_items_with_http_info(dashboard_list_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_dashboard_list_items)
        unstable_enabled = @api_client.config.unstable_operations[:create_dashboard_list_items]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_dashboard_list_items")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "create_dashboard_list_items"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DashboardListsApi.create_dashboard_list_items ...'
      end
      # verify the required parameter 'dashboard_list_id' is set
      if @api_client.config.client_side_validation && dashboard_list_id.nil?
        fail ArgumentError, "Missing the required parameter 'dashboard_list_id' when calling DashboardListsApi.create_dashboard_list_items"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DashboardListsApi.create_dashboard_list_items"
      end
      # resource path
      local_var_path = '/api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards'.sub('{' + 'dashboard_list_id' + '}', CGI.escape(dashboard_list_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DashboardListAddItemsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"DashboardListsApi.create_dashboard_list_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DashboardListsApi#create_dashboard_list_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete items from a dashboard list
    # Delete dashboards from an existing dashboard list.
    # @param dashboard_list_id [Integer] ID of the dashboard list to delete items from.
    # @param body [DashboardListDeleteItemsRequest] Dashboards to delete from the dashboard list.
    # @param [Hash] opts the optional parameters
    # @return [DashboardListDeleteItemsResponse]
    def delete_dashboard_list_items(dashboard_list_id, body, opts = {})
      data, _status_code, _headers = delete_dashboard_list_items_with_http_info(dashboard_list_id, body, opts)
      data
    end

    # Delete items from a dashboard list
    # Delete dashboards from an existing dashboard list.
    # @param dashboard_list_id [Integer] ID of the dashboard list to delete items from.
    # @param body [DashboardListDeleteItemsRequest] Dashboards to delete from the dashboard list.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DashboardListDeleteItemsResponse, Integer, Hash)>] DashboardListDeleteItemsResponse data, response status code and response headers
    def delete_dashboard_list_items_with_http_info(dashboard_list_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_dashboard_list_items)
        unstable_enabled = @api_client.config.unstable_operations[:delete_dashboard_list_items]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_dashboard_list_items")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "delete_dashboard_list_items"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DashboardListsApi.delete_dashboard_list_items ...'
      end
      # verify the required parameter 'dashboard_list_id' is set
      if @api_client.config.client_side_validation && dashboard_list_id.nil?
        fail ArgumentError, "Missing the required parameter 'dashboard_list_id' when calling DashboardListsApi.delete_dashboard_list_items"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DashboardListsApi.delete_dashboard_list_items"
      end
      # resource path
      local_var_path = '/api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards'.sub('{' + 'dashboard_list_id' + '}', CGI.escape(dashboard_list_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DashboardListDeleteItemsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"DashboardListsApi.delete_dashboard_list_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DashboardListsApi#delete_dashboard_list_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Dashboard List
    # Fetch the dashboard list’s dashboard definitions.
    # @param dashboard_list_id [Integer] ID of the dashboard list to get items from.
    # @param [Hash] opts the optional parameters
    # @return [DashboardListItems]
    def get_dashboard_list_items(dashboard_list_id, opts = {})
      data, _status_code, _headers = get_dashboard_list_items_with_http_info(dashboard_list_id, opts)
      data
    end

    # Get a Dashboard List
    # Fetch the dashboard list’s dashboard definitions.
    # @param dashboard_list_id [Integer] ID of the dashboard list to get items from.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DashboardListItems, Integer, Hash)>] DashboardListItems data, response status code and response headers
    def get_dashboard_list_items_with_http_info(dashboard_list_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_dashboard_list_items)
        unstable_enabled = @api_client.config.unstable_operations[:get_dashboard_list_items]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_dashboard_list_items")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "get_dashboard_list_items"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DashboardListsApi.get_dashboard_list_items ...'
      end
      # verify the required parameter 'dashboard_list_id' is set
      if @api_client.config.client_side_validation && dashboard_list_id.nil?
        fail ArgumentError, "Missing the required parameter 'dashboard_list_id' when calling DashboardListsApi.get_dashboard_list_items"
      end
      # resource path
      local_var_path = '/api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards'.sub('{' + 'dashboard_list_id' + '}', CGI.escape(dashboard_list_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DashboardListItems'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"DashboardListsApi.get_dashboard_list_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DashboardListsApi#get_dashboard_list_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update items of a dashboard list
    # Update dashboards of an existing dashboard list.
    # @param dashboard_list_id [Integer] ID of the dashboard list to update items from.
    # @param body [DashboardListUpdateItemsRequest] New dashboards of the dashboard list.
    # @param [Hash] opts the optional parameters
    # @return [DashboardListUpdateItemsResponse]
    def update_dashboard_list_items(dashboard_list_id, body, opts = {})
      data, _status_code, _headers = update_dashboard_list_items_with_http_info(dashboard_list_id, body, opts)
      data
    end

    # Update items of a dashboard list
    # Update dashboards of an existing dashboard list.
    # @param dashboard_list_id [Integer] ID of the dashboard list to update items from.
    # @param body [DashboardListUpdateItemsRequest] New dashboards of the dashboard list.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DashboardListUpdateItemsResponse, Integer, Hash)>] DashboardListUpdateItemsResponse data, response status code and response headers
    def update_dashboard_list_items_with_http_info(dashboard_list_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_dashboard_list_items)
        unstable_enabled = @api_client.config.unstable_operations[:update_dashboard_list_items]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_dashboard_list_items")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "update_dashboard_list_items"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DashboardListsApi.update_dashboard_list_items ...'
      end
      # verify the required parameter 'dashboard_list_id' is set
      if @api_client.config.client_side_validation && dashboard_list_id.nil?
        fail ArgumentError, "Missing the required parameter 'dashboard_list_id' when calling DashboardListsApi.update_dashboard_list_items"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DashboardListsApi.update_dashboard_list_items"
      end
      # resource path
      local_var_path = '/api/v2/dashboard/lists/manual/{dashboard_list_id}/dashboards'.sub('{' + 'dashboard_list_id' + '}', CGI.escape(dashboard_list_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DashboardListUpdateItemsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"DashboardListsApi.update_dashboard_list_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DashboardListsApi#update_dashboard_list_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
