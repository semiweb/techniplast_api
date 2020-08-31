=begin
#DVC AMS API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 2.0.0
Contact: marco.storto@tecniplast.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.0.0

=end

require 'uri'

module Tecniplast
  class LedsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # read led status
    # @param ams_cage_id id of cage to modify
    # @param [Hash] opts the optional parameters
    # @return [LedColorContainer]
    def inventory_cages_ams_cage_id_led_get(ams_cage_id, opts = {})
      data, _status_code, _headers = inventory_cages_ams_cage_id_led_get_with_http_info(ams_cage_id, opts)
      data
    end

    # read led status
    # @param ams_cage_id id of cage to modify
    # @param [Hash] opts the optional parameters
    # @return [Array<(LedColorContainer, Fixnum, Hash)>] LedColorContainer data, response status code and response headers
    def inventory_cages_ams_cage_id_led_get_with_http_info(ams_cage_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LedsApi.inventory_cages_ams_cage_id_led_get ...'
      end
      # verify the required parameter 'ams_cage_id' is set
      if @api_client.config.client_side_validation && ams_cage_id.nil?
        fail ArgumentError, "Missing the required parameter 'ams_cage_id' when calling LedsApi.inventory_cages_ams_cage_id_led_get"
      end
      # resource path
      local_var_path = '/inventory/cages/{AmsCageId}/led'.sub('{' + 'AmsCageId' + '}', ams_cage_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LedColorContainer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LedsApi#inventory_cages_ams_cage_id_led_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # change led state
    # @param ams_cage_id id of cage to modify
    # @param [Hash] opts the optional parameters
    # @option opts [LedBody] :led_body 
    # @return [nil]
    def inventory_cages_ams_cage_id_led_put(ams_cage_id, opts = {})
      inventory_cages_ams_cage_id_led_put_with_http_info(ams_cage_id, opts)
      nil
    end

    # change led state
    # @param ams_cage_id id of cage to modify
    # @param [Hash] opts the optional parameters
    # @option opts [LedBody] :led_body 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def inventory_cages_ams_cage_id_led_put_with_http_info(ams_cage_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LedsApi.inventory_cages_ams_cage_id_led_put ...'
      end
      # verify the required parameter 'ams_cage_id' is set
      if @api_client.config.client_side_validation && ams_cage_id.nil?
        fail ArgumentError, "Missing the required parameter 'ams_cage_id' when calling LedsApi.inventory_cages_ams_cage_id_led_put"
      end
      # resource path
      local_var_path = '/inventory/cages/{AmsCageId}/led'.sub('{' + 'AmsCageId' + '}', ams_cage_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'led_body'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LedsApi#inventory_cages_ams_cage_id_led_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # get rack LEDs status (top two rows)
    # @param ams_rack_id id of rack
    # @param [Hash] opts the optional parameters
    # @return [LedColorContainer]
    def inventory_racks_ams_rack_id_led_get(ams_rack_id, opts = {})
      data, _status_code, _headers = inventory_racks_ams_rack_id_led_get_with_http_info(ams_rack_id, opts)
      data
    end

    # get rack LEDs status (top two rows)
    # @param ams_rack_id id of rack
    # @param [Hash] opts the optional parameters
    # @return [Array<(LedColorContainer, Fixnum, Hash)>] LedColorContainer data, response status code and response headers
    def inventory_racks_ams_rack_id_led_get_with_http_info(ams_rack_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LedsApi.inventory_racks_ams_rack_id_led_get ...'
      end
      # verify the required parameter 'ams_rack_id' is set
      if @api_client.config.client_side_validation && ams_rack_id.nil?
        fail ArgumentError, "Missing the required parameter 'ams_rack_id' when calling LedsApi.inventory_racks_ams_rack_id_led_get"
      end
      # resource path
      local_var_path = '/inventory/racks/{amsRackId}/led'.sub('{' + 'amsRackId' + '}', ams_rack_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LedColorContainer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LedsApi#inventory_racks_ams_rack_id_led_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # activate rack LEDs (top two rows)
    # @param ams_rack_id id of rack
    # @param user username of the user performing the change
    # @param [Hash] opts the optional parameters
    # @option opts [LedBody] :led_body 
    # @return [LedColorContainer]
    def inventory_racks_ams_rack_id_led_put(ams_rack_id, user, opts = {})
      data, _status_code, _headers = inventory_racks_ams_rack_id_led_put_with_http_info(ams_rack_id, user, opts)
      data
    end

    # activate rack LEDs (top two rows)
    # @param ams_rack_id id of rack
    # @param user username of the user performing the change
    # @param [Hash] opts the optional parameters
    # @option opts [LedBody] :led_body 
    # @return [Array<(LedColorContainer, Fixnum, Hash)>] LedColorContainer data, response status code and response headers
    def inventory_racks_ams_rack_id_led_put_with_http_info(ams_rack_id, user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LedsApi.inventory_racks_ams_rack_id_led_put ...'
      end
      # verify the required parameter 'ams_rack_id' is set
      if @api_client.config.client_side_validation && ams_rack_id.nil?
        fail ArgumentError, "Missing the required parameter 'ams_rack_id' when calling LedsApi.inventory_racks_ams_rack_id_led_put"
      end
      # verify the required parameter 'user' is set
      if @api_client.config.client_side_validation && user.nil?
        fail ArgumentError, "Missing the required parameter 'user' when calling LedsApi.inventory_racks_ams_rack_id_led_put"
      end
      # resource path
      local_var_path = '/inventory/racks/{amsRackId}/led'.sub('{' + 'amsRackId' + '}', ams_rack_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'user'] = user

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'led_body'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LedColorContainer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LedsApi#inventory_racks_ams_rack_id_led_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
