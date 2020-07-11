# SwaggerClient::SupplyApi

All URIs are relative to *https://api.secrettestnet.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**supply_total_denomination_get**](SupplyApi.md#supply_total_denomination_get) | **GET** /supply/total/{denomination} | Total supply of a single coin denomination
[**supply_total_get**](SupplyApi.md#supply_total_get) | **GET** /supply/total | Total supply of coins in the chain


# **supply_total_denomination_get**
> String supply_total_denomination_get(denomination)

Total supply of a single coin denomination

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SupplyApi.new

denomination = 'denomination_example' # String | Coin denomination


begin
  #Total supply of a single coin denomination
  result = api_instance.supply_total_denomination_get(denomination)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SupplyApi->supply_total_denomination_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **denomination** | **String**| Coin denomination | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **supply_total_get**
> Supply supply_total_get

Total supply of coins in the chain

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SupplyApi.new

begin
  #Total supply of coins in the chain
  result = api_instance.supply_total_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SupplyApi->supply_total_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Supply**](Supply.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



