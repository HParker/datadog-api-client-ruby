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

require 'cgi'

module DatadogAPIClient::V2
  class APIManagementAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Create a new API.
    #
    # @see #create_open_api_with_http_info
    def create_open_api(opts = {})
      data, _status_code, _headers = create_open_api_with_http_info(opts)
      data
    end

    # Create a new API.
    #
    # Create a new API from the [OpenAPI](https://spec.openapis.org/oas/latest.html) specification given.
    # It supports version `2.0`, `3.0` and `3.1` of the specification. A specific extension section, `x-datadog`,
    # let you specify the `teamHandle` for your team responsible for the API in Datadog.
    # It returns the created API ID.
    #
    #
    # @param opts [Hash] the optional parameters
    # @option opts [File] :openapi_spec_file Binary `OpenAPI` spec file
    # @return [Array<(CreateOpenAPIResponse, Integer, Hash)>] CreateOpenAPIResponse data, response status code and response headers
    def create_open_api_with_http_info(opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.create_open_api".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.create_open_api")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.create_open_api"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIManagementAPI.create_open_api ...'
      end
      # resource path
      local_var_path = '/api/v2/apicatalog/openapi'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['openapi_spec_file'] = opts[:'openapi_spec_file'] if !opts[:'openapi_spec_file'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CreateOpenAPIResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_open_api,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Post, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIManagementAPI#create_open_api\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an API.
    #
    # @see #delete_open_api_with_http_info
    def delete_open_api(id, opts = {})
      delete_open_api_with_http_info(id, opts)
      nil
    end

    # Delete an API.
    #
    # Delete a specific API by ID.
    #
    # @param id [UUID] ID of the API to delete
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_open_api_with_http_info(id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.delete_open_api".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.delete_open_api")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.delete_open_api"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIManagementAPI.delete_open_api ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling APIManagementAPI.delete_open_api"
      end
      # resource path
      local_var_path = '/api/v2/apicatalog/api/{id}'.sub('{id}', CGI.escape(id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :delete_open_api,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Delete, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIManagementAPI#delete_open_api\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an API.
    #
    # @see #get_open_api_with_http_info
    def get_open_api(id, opts = {})
      data, _status_code, _headers = get_open_api_with_http_info(id, opts)
      data
    end

    # Get an API.
    #
    # Retrieve information about a specific API in [OpenAPI](https://spec.openapis.org/oas/latest.html) format file.
    #
    # @param id [UUID] ID of the API to retrieve
    # @param opts [Hash] the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def get_open_api_with_http_info(id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.get_open_api".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.get_open_api")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.get_open_api"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIManagementAPI.get_open_api ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling APIManagementAPI.get_open_api"
      end
      # resource path
      local_var_path = '/api/v2/apicatalog/api/{id}/openapi'.sub('{id}', CGI.escape(id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_open_api,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIManagementAPI#get_open_api\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an API.
    #
    # @see #update_open_api_with_http_info
    def update_open_api(id, opts = {})
      data, _status_code, _headers = update_open_api_with_http_info(id, opts)
      data
    end

    # Update an API.
    #
    # Update information about a specific API. The given content will replace all API content of the given ID.
    # The ID is returned by the create API, or can be found in the URL in the API catalog UI.
    #
    #
    # @param id [UUID] ID of the API to modify
    # @param opts [Hash] the optional parameters
    # @option opts [File] :openapi_spec_file Binary `OpenAPI` spec file
    # @return [Array<(UpdateOpenAPIResponse, Integer, Hash)>] UpdateOpenAPIResponse data, response status code and response headers
    def update_open_api_with_http_info(id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.update_open_api".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.update_open_api")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.update_open_api"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: APIManagementAPI.update_open_api ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling APIManagementAPI.update_open_api"
      end
      # resource path
      local_var_path = '/api/v2/apicatalog/api/{id}/openapi'.sub('{id}', CGI.escape(id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['openapi_spec_file'] = opts[:'openapi_spec_file'] if !opts[:'openapi_spec_file'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UpdateOpenAPIResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_open_api,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Put, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIManagementAPI#update_open_api\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end