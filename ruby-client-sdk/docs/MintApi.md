# SwaggerClient::MintApi

All URIs are relative to *https://api.secrettestnet.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**minting_annual_provisions_get**](MintApi.md#minting_annual_provisions_get) | **GET** /minting/annual-provisions | Current minting annual provisions value
[**minting_inflation_get**](MintApi.md#minting_inflation_get) | **GET** /minting/inflation | Current minting inflation value
[**minting_parameters_get**](MintApi.md#minting_parameters_get) | **GET** /minting/parameters | Minting module parameters


# **minting_annual_provisions_get**
> String minting_annual_provisions_get

Current minting annual provisions value

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MintApi.new

begin
  #Current minting annual provisions value
  result = api_instance.minting_annual_provisions_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MintApi->minting_annual_provisions_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **minting_inflation_get**
> String minting_inflation_get

Current minting inflation value

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MintApi.new

begin
  #Current minting inflation value
  result = api_instance.minting_inflation_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MintApi->minting_inflation_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **minting_parameters_get**
> Object minting_parameters_get

Minting module parameters

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MintApi.new

begin
  #Minting module parameters
  result = api_instance.minting_parameters_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MintApi->minting_parameters_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



