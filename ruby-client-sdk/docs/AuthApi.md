# SwaggerClient::AuthApi

All URIs are relative to *https://api.secrettestnet.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth_accounts_address_get**](AuthApi.md#auth_accounts_address_get) | **GET** /auth/accounts/{address} | Get the account information on blockchain


# **auth_accounts_address_get**
> InlineResponse2004 auth_accounts_address_get(address)

Get the account information on blockchain

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AuthApi.new

address = 'address_example' # String | Account address


begin
  #Get the account information on blockchain
  result = api_instance.auth_accounts_address_get(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthApi->auth_accounts_address_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



