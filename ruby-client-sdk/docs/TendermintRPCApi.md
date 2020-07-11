# SwaggerClient::TendermintRPCApi

All URIs are relative to *https://api.secrettestnet.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**blocks_height_get**](TendermintRPCApi.md#blocks_height_get) | **GET** /blocks/{height} | Get a block at a certain height
[**blocks_latest_get**](TendermintRPCApi.md#blocks_latest_get) | **GET** /blocks/latest | Get the latest block
[**syncing_get**](TendermintRPCApi.md#syncing_get) | **GET** /syncing | Syncing state of node
[**validatorsets_height_get**](TendermintRPCApi.md#validatorsets_height_get) | **GET** /validatorsets/{height} | Get a validator set a certain height
[**validatorsets_latest_get**](TendermintRPCApi.md#validatorsets_latest_get) | **GET** /validatorsets/latest | Get the latest validator set


# **blocks_height_get**
> BlockQuery blocks_height_get(height)

Get a block at a certain height

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TendermintRPCApi.new

height = 8.14 # Float | Block height


begin
  #Get a block at a certain height
  result = api_instance.blocks_height_get(height)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TendermintRPCApi->blocks_height_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **Float**| Block height | 

### Return type

[**BlockQuery**](BlockQuery.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **blocks_latest_get**
> BlockQuery blocks_latest_get

Get the latest block

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TendermintRPCApi.new

begin
  #Get the latest block
  result = api_instance.blocks_latest_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TendermintRPCApi->blocks_latest_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BlockQuery**](BlockQuery.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **syncing_get**
> InlineResponse2001 syncing_get

Syncing state of node

Get if the node is currently syning with other nodes

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TendermintRPCApi.new

begin
  #Syncing state of node
  result = api_instance.syncing_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TendermintRPCApi->syncing_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **validatorsets_height_get**
> InlineResponse2002 validatorsets_height_get(height)

Get a validator set a certain height

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TendermintRPCApi.new

height = 8.14 # Float | Block height


begin
  #Get a validator set a certain height
  result = api_instance.validatorsets_height_get(height)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TendermintRPCApi->validatorsets_height_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **Float**| Block height | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **validatorsets_latest_get**
> InlineResponse2002 validatorsets_latest_get

Get the latest validator set

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TendermintRPCApi.new

begin
  #Get the latest validator set
  result = api_instance.validatorsets_latest_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TendermintRPCApi->validatorsets_latest_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



