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
  class PowerpackAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Create a new powerpack.
    #
    # @see #create_powerpack_with_http_info
    def create_powerpack(body, opts = {})
      data, _status_code, _headers = create_powerpack_with_http_info(body, opts)
      data
    end

    # Create a new powerpack.
    #
    # Create a powerpack.
    #
    # @param body [Powerpack] Create a powerpack request body.
    # @param opts [Hash] the optional parameters
    # @return [Array<(PowerpackResponse, Integer, Hash)>] PowerpackResponse data, response status code and response headers
    def create_powerpack_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PowerpackAPI.create_powerpack ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PowerpackAPI.create_powerpack"
      end
      # resource path
      local_var_path = '/api/v2/powerpacks'

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
      return_type = opts[:debug_return_type] || 'PowerpackResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :create_powerpack,
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
        @api_client.config.logger.debug "API called: PowerpackAPI#create_powerpack\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a powerpack.
    #
    # @see #delete_powerpack_with_http_info
    def delete_powerpack(powerpack_id, opts = {})
      delete_powerpack_with_http_info(powerpack_id, opts)
      nil
    end

    # Delete a powerpack.
    #
    # Delete a powerpack.
    #
    # @param powerpack_id [String] Powerpack id
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_powerpack_with_http_info(powerpack_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PowerpackAPI.delete_powerpack ...'
      end
      # verify the required parameter 'powerpack_id' is set
      if @api_client.config.client_side_validation && powerpack_id.nil?
        fail ArgumentError, "Missing the required parameter 'powerpack_id' when calling PowerpackAPI.delete_powerpack"
      end
      # resource path
      local_var_path = '/api/v2/powerpacks/{powerpack_id}'.sub('{powerpack_id}', CGI.escape(powerpack_id.to_s).gsub('%2F', '/'))

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
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :delete_powerpack,
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
        @api_client.config.logger.debug "API called: PowerpackAPI#delete_powerpack\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all powerpacks.
    #
    # @see #get_all_powerpacks_with_http_info
    def get_all_powerpacks(opts = {})
      data, _status_code, _headers = get_all_powerpacks_with_http_info(opts)
      data
    end

    # Get all powerpacks.
    #
    # Get a list of all powerpacks.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(GetAllPowerpacksResponse, Integer, Hash)>] GetAllPowerpacksResponse data, response status code and response headers
    def get_all_powerpacks_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PowerpackAPI.get_all_powerpacks ...'
      end
      # resource path
      local_var_path = '/api/v2/powerpacks'

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
      return_type = opts[:debug_return_type] || 'GetAllPowerpacksResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_all_powerpacks,
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
        @api_client.config.logger.debug "API called: PowerpackAPI#get_all_powerpacks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Powerpack.
    #
    # @see #get_powerpack_with_http_info
    def get_powerpack(powerpack_id, opts = {})
      data, _status_code, _headers = get_powerpack_with_http_info(powerpack_id, opts)
      data
    end

    # Get a Powerpack.
    #
    # Get a powerpack.
    #
    # @param powerpack_id [String] ID of the powerpack.
    # @param opts [Hash] the optional parameters
    # @return [Array<(PowerpackResponse, Integer, Hash)>] PowerpackResponse data, response status code and response headers
    def get_powerpack_with_http_info(powerpack_id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PowerpackAPI.get_powerpack ...'
      end
      # verify the required parameter 'powerpack_id' is set
      if @api_client.config.client_side_validation && powerpack_id.nil?
        fail ArgumentError, "Missing the required parameter 'powerpack_id' when calling PowerpackAPI.get_powerpack"
      end
      # resource path
      local_var_path = '/api/v2/powerpacks/{powerpack_id}'.sub('{powerpack_id}', CGI.escape(powerpack_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'PowerpackResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_powerpack,
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
        @api_client.config.logger.debug "API called: PowerpackAPI#get_powerpack\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a powerpack.
    #
    # @see #update_powerpack_with_http_info
    def update_powerpack(powerpack_id, body, opts = {})
      data, _status_code, _headers = update_powerpack_with_http_info(powerpack_id, body, opts)
      data
    end

    # Update a powerpack.
    #
    # Update a powerpack.
    #
    # @param powerpack_id [String] ID of the powerpack.
    # @param body [Powerpack] Update a powerpack request body.
    # @param opts [Hash] the optional parameters
    # @return [Array<(PowerpackResponse, Integer, Hash)>] PowerpackResponse data, response status code and response headers
    def update_powerpack_with_http_info(powerpack_id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PowerpackAPI.update_powerpack ...'
      end
      # verify the required parameter 'powerpack_id' is set
      if @api_client.config.client_side_validation && powerpack_id.nil?
        fail ArgumentError, "Missing the required parameter 'powerpack_id' when calling PowerpackAPI.update_powerpack"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PowerpackAPI.update_powerpack"
      end
      # resource path
      local_var_path = '/api/v2/powerpacks/{powerpack_id}'.sub('{powerpack_id}', CGI.escape(powerpack_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'PowerpackResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :update_powerpack,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Patch, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerpackAPI#update_powerpack\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
