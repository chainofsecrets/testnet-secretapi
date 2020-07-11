# SwaggerClient::BankApi

All URIs are relative to *https://api.secrettestnet.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bank_accounts_address_transfers_post**](BankApi.md#bank_accounts_address_transfers_post) | **POST** /bank/accounts/{address}/transfers | Send coins from one account to another
[**bank_balances_address_get**](BankApi.md#bank_balances_address_get) | **GET** /bank/balances/{address} | Get the account balances


# **bank_accounts_address_transfers_post**
> StdTx bank_accounts_address_transfers_post(address, account)

Send coins from one account to another

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BankApi.new

address = 'address_example' # String | Account address in bech32 format

account = SwaggerClient::Account.new # Account | The sender and tx information


begin
  #Send coins from one account to another
  result = api_instance.bank_accounts_address_transfers_post(address, account)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BankApi->bank_accounts_address_transfers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address in bech32 format | 
 **account** | [**Account**](Account.md)| The sender and tx information | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bank_balances_address_get**
> Array&lt;Coin&gt; bank_balances_address_get(address)

Get the account balances

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BankApi.new

address = 'address_example' # String | Account address in bech32 format


begin
  #Get the account balances
  result = api_instance.bank_balances_address_get(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BankApi->bank_balances_address_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address in bech32 format | 

### Return type

[**Array&lt;Coin&gt;**](Coin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



