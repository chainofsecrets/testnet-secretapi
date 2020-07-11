=begin
#Testnet Secret API for Secret Network

#A REST interface for state queries, transaction generation and broadcasting.

OpenAPI spec version: 3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'uri'

module SwaggerClient
  class SupplyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Total supply of a single coin denomination
    # @param denomination Coin denomination
    # @param [Hash] opts the optional parameters
    # @return [String]
    def supply_total_denomination_get(denomination, opts = {})
      data, _status_code, _headers = supply_total_denomination_get_with_http_info(denomination, opts)
      data
    end

    # Total supply of a single coin denomination
    # @param denomination Coin denomination
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def supply_total_denomination_get_with_http_info(denomination, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SupplyApi.supply_total_denomination_get ...'
      end
      # verify the required parameter 'denomination' is set
      if @api_client.config.client_side_validation && denomination.nil?
        fail ArgumentError, "Missing the required parameter 'denomination' when calling SupplyApi.supply_total_denomination_get"
      end
      # resource path
      local_var_path = '/supply/total/{denomination}'.sub('{' + 'denomination' + '}', denomination.to_s)

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
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SupplyApi#supply_total_denomination_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Total supply of coins in the chain
    # @param [Hash] opts the optional parameters
    # @return [Supply]
    def supply_total_get(opts = {})
      data, _status_code, _headers = supply_total_get_with_http_info(opts)
      data
    end

    # Total supply of coins in the chain
    # @param [Hash] opts the optional parameters
    # @return [Array<(Supply, Fixnum, Hash)>] Supply data, response status code and response headers
    def supply_total_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SupplyApi.supply_total_get ...'
      end
      # resource path
      local_var_path = '/supply/total'

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
        :return_type => 'Supply')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SupplyApi#supply_total_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end