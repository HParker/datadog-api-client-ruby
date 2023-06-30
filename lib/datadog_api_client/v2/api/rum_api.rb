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
  class RUMAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Aggregate RUM events.
    #
    # @see #aggregate_rum_events_with_http_info
    def aggregate_rum_events(body, opts = {})
      data, _status_code, _headers = aggregate_rum_events_with_http_info(body, opts)
      data
    end

    # Aggregate RUM events.
    #
    # The API endpoint to aggregate RUM events into buckets of computed metrics and timeseries.
    #
    # @param body [RUMAggregateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(RUMAnalyticsAggregateResponse, Integer, Hash)>] RUMAnalyticsAggregateResponse data, response status code and response headers
    def aggregate_rum_events_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RUMAPI.aggregate_rum_events ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RUMAPI.aggregate_rum_events"
      end
      # resource path
      local_var_path = '/api/v2/rum/analytics/aggregate'

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
      return_type = opts[:debug_return_type] || 'RUMAnalyticsAggregateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :aggregate_rum_events,
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
        @api_client.config.logger.debug "API called: RUMAPI#aggregate_rum_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new RUM application.
    #
    # @see #create_rum_application_with_http_info
    def create_rum_application(body, opts = {})
      data, _status_code, _headers = create_rum_application_with_http_info(body, opts)
      data
    end

    # Create a new RUM application.
    #
    # Create a new RUM application in your organization.
    #
    # @param body [RUMApplicationCreateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(RUMApplicationResponse, Integer, Hash)>] RUMApplicationResponse data, response status code and response headers
    def create_rum_application_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RUMAPI.create_rum_application ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RUMAPI.create_rum_application"
      end
      # resource path
      local_var_path = '/api/v2/rum/applications'

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
      return_type = opts[:debug_return_type] || 'RUMApplicationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_rum_application,
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
        @api_client.config.logger.debug "API called: RUMAPI#create_rum_application\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a RUM application.
    #
    # @see #delete_rum_application_with_http_info
    def delete_rum_application(id, opts = {})
      delete_rum_application_with_http_info(id, opts)
      nil
    end

    # Delete a RUM application.
    #
    # Delete an existing RUM application in your organization.
    #
    # @param id [String] RUM application ID.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_rum_application_with_http_info(id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RUMAPI.delete_rum_application ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RUMAPI.delete_rum_application"
      end
      # resource path
      local_var_path = '/api/v2/rum/applications/{id}'.sub('{id}', CGI.escape(id.to_s).gsub('%2F', '/'))

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
        :operation => :delete_rum_application,
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
        @api_client.config.logger.debug "API called: RUMAPI#delete_rum_application\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a RUM application.
    #
    # @see #get_rum_application_with_http_info
    def get_rum_application(id, opts = {})
      data, _status_code, _headers = get_rum_application_with_http_info(id, opts)
      data
    end

    # Get a RUM application.
    #
    # Get the RUM application with given ID in your organization.
    #
    # @param id [String] RUM application ID.
    # @param opts [Hash] the optional parameters
    # @return [Array<(RUMApplicationResponse, Integer, Hash)>] RUMApplicationResponse data, response status code and response headers
    def get_rum_application_with_http_info(id, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RUMAPI.get_rum_application ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RUMAPI.get_rum_application"
      end
      # resource path
      local_var_path = '/api/v2/rum/applications/{id}'.sub('{id}', CGI.escape(id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'RUMApplicationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_rum_application,
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
        @api_client.config.logger.debug "API called: RUMAPI#get_rum_application\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all the RUM applications.
    #
    # @see #get_rum_applications_with_http_info
    def get_rum_applications(opts = {})
      data, _status_code, _headers = get_rum_applications_with_http_info(opts)
      data
    end

    # List all the RUM applications.
    #
    # List all the RUM applications in your organization.
    #
    # @param opts [Hash] the optional parameters
    # @return [Array<(RUMApplicationsResponse, Integer, Hash)>] RUMApplicationsResponse data, response status code and response headers
    def get_rum_applications_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RUMAPI.get_rum_applications ...'
      end
      # resource path
      local_var_path = '/api/v2/rum/applications'

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
      return_type = opts[:debug_return_type] || 'RUMApplicationsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_rum_applications,
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
        @api_client.config.logger.debug "API called: RUMAPI#get_rum_applications\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of RUM events.
    #
    # @see #list_rum_events_with_http_info
    def list_rum_events(opts = {})
      data, _status_code, _headers = list_rum_events_with_http_info(opts)
      data
    end

    # Get a list of RUM events.
    #
    # List endpoint returns events that match a RUM search query.
    # [Results are paginated][1].
    #
    # Use this endpoint to see your latest RUM events.
    #
    # [1]: https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination
    #
    # @param opts [Hash] the optional parameters
    # @option opts [String] :filter_query Search query following RUM syntax.
    # @option opts [Time] :filter_from Minimum timestamp for requested events.
    # @option opts [Time] :filter_to Maximum timestamp for requested events.
    # @option opts [RUMSort] :sort Order of events in results.
    # @option opts [String] :page_cursor List following results with a cursor provided in the previous query.
    # @option opts [Integer] :page_limit Maximum number of events in the response.
    # @return [Array<(RUMEventsResponse, Integer, Hash)>] RUMEventsResponse data, response status code and response headers
    def list_rum_events_with_http_info(opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RUMAPI.list_rum_events ...'
      end
      allowable_values = ['timestamp', '-timestamp']
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'page_limit'].nil? && opts[:'page_limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_limit"]" when calling RUMAPI.list_rum_events, must be smaller than or equal to 1000.'
      end
      # resource path
      local_var_path = '/api/v2/rum/events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[query]'] = opts[:'filter_query'] if !opts[:'filter_query'].nil?
      query_params[:'filter[from]'] = opts[:'filter_from'] if !opts[:'filter_from'].nil?
      query_params[:'filter[to]'] = opts[:'filter_to'] if !opts[:'filter_to'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'page[cursor]'] = opts[:'page_cursor'] if !opts[:'page_cursor'].nil?
      query_params[:'page[limit]'] = opts[:'page_limit'] if !opts[:'page_limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RUMEventsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_rum_events,
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
        @api_client.config.logger.debug "API called: RUMAPI#list_rum_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of RUM events.
    #
    # Provide a paginated version of {#list_rum_events}, returning all items.
    #
    # To use it you need to use a block: list_rum_events_with_pagination { |item| p item }
    #
    # @yield [RUMEvent] Paginated items
    def list_rum_events_with_pagination(opts = {})
        api_version = "V2"
        page_size = @api_client.get_attribute_from_path(opts, "page_limit", 10)
        @api_client.set_attribute_from_path(api_version, opts, "page_limit", Integer, page_size)
        while true do
            response = list_rum_events(opts)
            @api_client.get_attribute_from_path(response, "data").each { |item| yield(item) }
            if @api_client.get_attribute_from_path(response, "data").length < page_size
              break
            end
            @api_client.set_attribute_from_path(api_version, opts, "page_cursor", Integer, @api_client.get_attribute_from_path(response, "meta.page.after"))
        end
    end

    # Search RUM events.
    #
    # @see #search_rum_events_with_http_info
    def search_rum_events(body, opts = {})
      data, _status_code, _headers = search_rum_events_with_http_info(body, opts)
      data
    end

    # Search RUM events.
    #
    # List endpoint returns RUM events that match a RUM search query.
    # [Results are paginated][1].
    #
    # Use this endpoint to build complex RUM events filtering and search.
    #
    # [1]: https://docs.datadoghq.com/logs/guide/collect-multiple-logs-with-pagination
    #
    # @param body [RUMSearchEventsRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(RUMEventsResponse, Integer, Hash)>] RUMEventsResponse data, response status code and response headers
    def search_rum_events_with_http_info(body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RUMAPI.search_rum_events ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RUMAPI.search_rum_events"
      end
      # resource path
      local_var_path = '/api/v2/rum/events/search'

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
      return_type = opts[:debug_return_type] || 'RUMEventsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :search_rum_events,
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
        @api_client.config.logger.debug "API called: RUMAPI#search_rum_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search RUM events.
    #
    # Provide a paginated version of {#search_rum_events}, returning all items.
    #
    # To use it you need to use a block: search_rum_events_with_pagination { |item| p item }
    #
    # @yield [RUMEvent] Paginated items
    def search_rum_events_with_pagination(body, opts = {})
        api_version = "V2"
        page_size = @api_client.get_attribute_from_path(body, "page.limit", 10)
        @api_client.set_attribute_from_path(api_version, body, "page.limit", RUMQueryPageOptions, page_size)
        while true do
            response = search_rum_events(body, opts)
            @api_client.get_attribute_from_path(response, "data").each { |item| yield(item) }
            if @api_client.get_attribute_from_path(response, "data").length < page_size
              break
            end
            @api_client.set_attribute_from_path(api_version, body, "page.cursor", RUMQueryPageOptions, @api_client.get_attribute_from_path(response, "meta.page.after"))
        end
    end

    # Update a RUM application.
    #
    # @see #update_rum_application_with_http_info
    def update_rum_application(id, body, opts = {})
      data, _status_code, _headers = update_rum_application_with_http_info(id, body, opts)
      data
    end

    # Update a RUM application.
    #
    # Update the RUM application with given ID in your organization.
    #
    # @param id [String] RUM application ID.
    # @param body [RUMApplicationUpdateRequest] 
    # @param opts [Hash] the optional parameters
    # @return [Array<(RUMApplicationResponse, Integer, Hash)>] RUMApplicationResponse data, response status code and response headers
    def update_rum_application_with_http_info(id, body, opts = {})

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RUMAPI.update_rum_application ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RUMAPI.update_rum_application"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RUMAPI.update_rum_application"
      end
      # resource path
      local_var_path = '/api/v2/rum/applications/{id}'.sub('{id}', CGI.escape(id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'RUMApplicationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_rum_application,
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
        @api_client.config.logger.debug "API called: RUMAPI#update_rum_application\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
