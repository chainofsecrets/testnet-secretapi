# SwaggerClient::SecretRESTApi

All URIs are relative to *https://api.secrettestnet.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**node_info_get**](SecretRESTApi.md#node_info_get) | **GET** /node_info | The properties of the connected node


# **node_info_get**
> InlineResponse200 node_info_get

The properties of the connected node

Information about the connected node

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecretRESTApi.new

begin
  #The properties of the connected node
  result = api_instance.node_info_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecretRESTApi->node_info_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



