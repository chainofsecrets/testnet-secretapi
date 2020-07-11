# SwaggerClient::DistributionApi

All URIs are relative to *https://api.secrettestnet.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**distribution_community_pool_get**](DistributionApi.md#distribution_community_pool_get) | **GET** /distribution/community_pool | Community pool parameters
[**distribution_delegators_delegator_addr_rewards_get**](DistributionApi.md#distribution_delegators_delegator_addr_rewards_get) | **GET** /distribution/delegators/{delegatorAddr}/rewards | Get the total rewards balance from all delegations
[**distribution_delegators_delegator_addr_rewards_post**](DistributionApi.md#distribution_delegators_delegator_addr_rewards_post) | **POST** /distribution/delegators/{delegatorAddr}/rewards | Withdraw all the delegator&#39;s delegation rewards
[**distribution_delegators_delegator_addr_rewards_validator_addr_get**](DistributionApi.md#distribution_delegators_delegator_addr_rewards_validator_addr_get) | **GET** /distribution/delegators/{delegatorAddr}/rewards/{validatorAddr} | Query a delegation reward
[**distribution_delegators_delegator_addr_rewards_validator_addr_post**](DistributionApi.md#distribution_delegators_delegator_addr_rewards_validator_addr_post) | **POST** /distribution/delegators/{delegatorAddr}/rewards/{validatorAddr} | Withdraw a delegation reward
[**distribution_delegators_delegator_addr_withdraw_address_get**](DistributionApi.md#distribution_delegators_delegator_addr_withdraw_address_get) | **GET** /distribution/delegators/{delegatorAddr}/withdraw_address | Get the rewards withdrawal address
[**distribution_delegators_delegator_addr_withdraw_address_post**](DistributionApi.md#distribution_delegators_delegator_addr_withdraw_address_post) | **POST** /distribution/delegators/{delegatorAddr}/withdraw_address | Replace the rewards withdrawal address
[**distribution_parameters_get**](DistributionApi.md#distribution_parameters_get) | **GET** /distribution/parameters | Fee distribution parameters
[**distribution_validators_validator_addr_get**](DistributionApi.md#distribution_validators_validator_addr_get) | **GET** /distribution/validators/{validatorAddr} | Validator distribution information
[**distribution_validators_validator_addr_outstanding_rewards_get**](DistributionApi.md#distribution_validators_validator_addr_outstanding_rewards_get) | **GET** /distribution/validators/{validatorAddr}/outstanding_rewards | Fee distribution outstanding rewards of a single validator
[**distribution_validators_validator_addr_rewards_get**](DistributionApi.md#distribution_validators_validator_addr_rewards_get) | **GET** /distribution/validators/{validatorAddr}/rewards | Commission and self-delegation rewards of a single validator
[**distribution_validators_validator_addr_rewards_post**](DistributionApi.md#distribution_validators_validator_addr_rewards_post) | **POST** /distribution/validators/{validatorAddr}/rewards | Withdraw the validator&#39;s rewards


# **distribution_community_pool_get**
> Array&lt;Coin&gt; distribution_community_pool_get

Community pool parameters

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DistributionApi.new

begin
  #Community pool parameters
  result = api_instance.distribution_community_pool_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DistributionApi->distribution_community_pool_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Coin&gt;**](Coin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **distribution_delegators_delegator_addr_rewards_get**
> DelegatorTotalRewards distribution_delegators_delegator_addr_rewards_get(delegator_addr)

Get the total rewards balance from all delegations

Get the sum of all the rewards earned by delegations by a single delegator

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DistributionApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator


begin
  #Get the total rewards balance from all delegations
  result = api_instance.distribution_delegators_delegator_addr_rewards_get(delegator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DistributionApi->distribution_delegators_delegator_addr_rewards_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 

### Return type

[**DelegatorTotalRewards**](DelegatorTotalRewards.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **distribution_delegators_delegator_addr_rewards_post**
> StdTx distribution_delegators_delegator_addr_rewards_post(delegator_addr, opts)

Withdraw all the delegator's delegation rewards

Withdraw all the delegator's delegation rewards

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DistributionApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator

opts = { 
  withdraw_request_body: SwaggerClient::WithdrawRequestBody.new # WithdrawRequestBody | 
}

begin
  #Withdraw all the delegator's delegation rewards
  result = api_instance.distribution_delegators_delegator_addr_rewards_post(delegator_addr, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DistributionApi->distribution_delegators_delegator_addr_rewards_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 
 **withdraw_request_body** | [**WithdrawRequestBody**](WithdrawRequestBody.md)|  | [optional] 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **distribution_delegators_delegator_addr_rewards_validator_addr_get**
> Array&lt;Coin&gt; distribution_delegators_delegator_addr_rewards_validator_addr_get(delegator_addr, validator_addr)

Query a delegation reward

Query a single delegation reward by a delegator

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DistributionApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator

validator_addr = 'validator_addr_example' # String | Bech32 OperatorAddress of validator


begin
  #Query a delegation reward
  result = api_instance.distribution_delegators_delegator_addr_rewards_validator_addr_get(delegator_addr, validator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DistributionApi->distribution_delegators_delegator_addr_rewards_validator_addr_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 
 **validator_addr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**Array&lt;Coin&gt;**](Coin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **distribution_delegators_delegator_addr_rewards_validator_addr_post**
> StdTx distribution_delegators_delegator_addr_rewards_validator_addr_post(delegator_addr, validator_addr, opts)

Withdraw a delegation reward

Withdraw a delegator's delegation reward from a single validator

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DistributionApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator

validator_addr = 'validator_addr_example' # String | Bech32 OperatorAddress of validator

opts = { 
  withdraw_request_body: SwaggerClient::WithdrawRequestBody1.new # WithdrawRequestBody1 | 
}

begin
  #Withdraw a delegation reward
  result = api_instance.distribution_delegators_delegator_addr_rewards_validator_addr_post(delegator_addr, validator_addr, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DistributionApi->distribution_delegators_delegator_addr_rewards_validator_addr_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 
 **validator_addr** | **String**| Bech32 OperatorAddress of validator | 
 **withdraw_request_body** | [**WithdrawRequestBody1**](WithdrawRequestBody1.md)|  | [optional] 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **distribution_delegators_delegator_addr_withdraw_address_get**
> Address distribution_delegators_delegator_addr_withdraw_address_get(delegator_addr)

Get the rewards withdrawal address

Get the delegations' rewards withdrawal address. This is the address in which the user will receive the reward funds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DistributionApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator


begin
  #Get the rewards withdrawal address
  result = api_instance.distribution_delegators_delegator_addr_withdraw_address_get(delegator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DistributionApi->distribution_delegators_delegator_addr_withdraw_address_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 

### Return type

[**Address**](Address.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **distribution_delegators_delegator_addr_withdraw_address_post**
> StdTx distribution_delegators_delegator_addr_withdraw_address_post(delegator_addr, opts)

Replace the rewards withdrawal address

Replace the delegations' rewards withdrawal address for a new one.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DistributionApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator

opts = { 
  withdraw_request_body: SwaggerClient::WithdrawRequestBody2.new # WithdrawRequestBody2 | 
}

begin
  #Replace the rewards withdrawal address
  result = api_instance.distribution_delegators_delegator_addr_withdraw_address_post(delegator_addr, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DistributionApi->distribution_delegators_delegator_addr_withdraw_address_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 
 **withdraw_request_body** | [**WithdrawRequestBody2**](WithdrawRequestBody2.md)|  | [optional] 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **distribution_parameters_get**
> Object distribution_parameters_get

Fee distribution parameters

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DistributionApi.new

begin
  #Fee distribution parameters
  result = api_instance.distribution_parameters_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DistributionApi->distribution_parameters_get: #{e}"
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



# **distribution_validators_validator_addr_get**
> ValidatorDistInfo distribution_validators_validator_addr_get(validator_addr)

Validator distribution information

Query the distribution information of a single validator

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DistributionApi.new

validator_addr = 'validator_addr_example' # String | Bech32 OperatorAddress of validator


begin
  #Validator distribution information
  result = api_instance.distribution_validators_validator_addr_get(validator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DistributionApi->distribution_validators_validator_addr_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validator_addr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**ValidatorDistInfo**](ValidatorDistInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **distribution_validators_validator_addr_outstanding_rewards_get**
> Array&lt;Coin&gt; distribution_validators_validator_addr_outstanding_rewards_get(validator_addr)

Fee distribution outstanding rewards of a single validator

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DistributionApi.new

validator_addr = 'validator_addr_example' # String | Bech32 OperatorAddress of validator


begin
  #Fee distribution outstanding rewards of a single validator
  result = api_instance.distribution_validators_validator_addr_outstanding_rewards_get(validator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DistributionApi->distribution_validators_validator_addr_outstanding_rewards_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validator_addr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**Array&lt;Coin&gt;**](Coin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **distribution_validators_validator_addr_rewards_get**
> Array&lt;Coin&gt; distribution_validators_validator_addr_rewards_get(validator_addr)

Commission and self-delegation rewards of a single validator

Query the commission and self-delegation rewards of validator.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DistributionApi.new

validator_addr = 'validator_addr_example' # String | Bech32 OperatorAddress of validator


begin
  #Commission and self-delegation rewards of a single validator
  result = api_instance.distribution_validators_validator_addr_rewards_get(validator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DistributionApi->distribution_validators_validator_addr_rewards_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validator_addr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**Array&lt;Coin&gt;**](Coin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **distribution_validators_validator_addr_rewards_post**
> StdTx distribution_validators_validator_addr_rewards_post(validator_addr, opts)

Withdraw the validator's rewards

Withdraw the validator's self-delegation and commissions rewards

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DistributionApi.new

validator_addr = 'validator_addr_example' # String | Bech32 OperatorAddress of validator

opts = { 
  withdraw_request_body: SwaggerClient::WithdrawRequestBody3.new # WithdrawRequestBody3 | 
}

begin
  #Withdraw the validator's rewards
  result = api_instance.distribution_validators_validator_addr_rewards_post(validator_addr, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DistributionApi->distribution_validators_validator_addr_rewards_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validator_addr** | **String**| Bech32 OperatorAddress of validator | 
 **withdraw_request_body** | [**WithdrawRequestBody3**](WithdrawRequestBody3.md)|  | [optional] 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



