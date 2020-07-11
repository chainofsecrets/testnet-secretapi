# SwaggerClient::SlashingApi

All URIs are relative to *https://api.secrettestnet.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**slashing_parameters_get**](SlashingApi.md#slashing_parameters_get) | **GET** /slashing/parameters | Get the current slashing parameters
[**slashing_signing_infos_get**](SlashingApi.md#slashing_signing_infos_get) | **GET** /slashing/signing_infos | Get sign info of given all validators
[**slashing_validators_validator_addr_unjail_post**](SlashingApi.md#slashing_validators_validator_addr_unjail_post) | **POST** /slashing/validators/{validatorAddr}/unjail | Unjail a jailed validator


# **slashing_parameters_get**
> InlineResponse2007 slashing_parameters_get

Get the current slashing parameters

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SlashingApi.new

begin
  #Get the current slashing parameters
  result = api_instance.slashing_parameters_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SlashingApi->slashing_parameters_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **slashing_signing_infos_get**
> Array&lt;SigningInfo&gt; slashing_signing_infos_get(page, limit)

Get sign info of given all validators

Get sign info of all validators

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SlashingApi.new

page = 56 # Integer | Page number

limit = 56 # Integer | Maximum number of items per page


begin
  #Get sign info of given all validators
  result = api_instance.slashing_signing_infos_get(page, limit)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SlashingApi->slashing_signing_infos_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number | 
 **limit** | **Integer**| Maximum number of items per page | 

### Return type

[**Array&lt;SigningInfo&gt;**](SigningInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **slashing_validators_validator_addr_unjail_post**
> StdTx slashing_validators_validator_addr_unjail_post(validator_addr, unjail_body)

Unjail a jailed validator

Send transaction to unjail a jailed validator

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SlashingApi.new

validator_addr = 'validator_addr_example' # String | Bech32 validator address

unjail_body = SwaggerClient::UnjailBody.new # UnjailBody | 


begin
  #Unjail a jailed validator
  result = api_instance.slashing_validators_validator_addr_unjail_post(validator_addr, unjail_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SlashingApi->slashing_validators_validator_addr_unjail_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validator_addr** | **String**| Bech32 validator address | 
 **unjail_body** | [**UnjailBody**](UnjailBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



