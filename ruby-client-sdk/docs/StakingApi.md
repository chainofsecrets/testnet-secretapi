# SwaggerClient::StakingApi

All URIs are relative to *https://api.secrettestnet.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**staking_delegators_delegator_addr_delegations_get**](StakingApi.md#staking_delegators_delegator_addr_delegations_get) | **GET** /staking/delegators/{delegatorAddr}/delegations | Get all delegations from a delegator
[**staking_delegators_delegator_addr_delegations_post**](StakingApi.md#staking_delegators_delegator_addr_delegations_post) | **POST** /staking/delegators/{delegatorAddr}/delegations | Submit delegation
[**staking_delegators_delegator_addr_delegations_validator_addr_get**](StakingApi.md#staking_delegators_delegator_addr_delegations_validator_addr_get) | **GET** /staking/delegators/{delegatorAddr}/delegations/{validatorAddr} | Query the current delegation between a delegator and a validator
[**staking_delegators_delegator_addr_redelegations_post**](StakingApi.md#staking_delegators_delegator_addr_redelegations_post) | **POST** /staking/delegators/{delegatorAddr}/redelegations | Submit a redelegation
[**staking_delegators_delegator_addr_unbonding_delegations_get**](StakingApi.md#staking_delegators_delegator_addr_unbonding_delegations_get) | **GET** /staking/delegators/{delegatorAddr}/unbonding_delegations | Get all unbonding delegations from a delegator
[**staking_delegators_delegator_addr_unbonding_delegations_post**](StakingApi.md#staking_delegators_delegator_addr_unbonding_delegations_post) | **POST** /staking/delegators/{delegatorAddr}/unbonding_delegations | Submit an unbonding delegation
[**staking_delegators_delegator_addr_unbonding_delegations_validator_addr_get**](StakingApi.md#staking_delegators_delegator_addr_unbonding_delegations_validator_addr_get) | **GET** /staking/delegators/{delegatorAddr}/unbonding_delegations/{validatorAddr} | Query all unbonding delegations between a delegator and a validator
[**staking_delegators_delegator_addr_validators_get**](StakingApi.md#staking_delegators_delegator_addr_validators_get) | **GET** /staking/delegators/{delegatorAddr}/validators | Query all validators that a delegator is bonded to
[**staking_delegators_delegator_addr_validators_validator_addr_get**](StakingApi.md#staking_delegators_delegator_addr_validators_validator_addr_get) | **GET** /staking/delegators/{delegatorAddr}/validators/{validatorAddr} | Query a validator that a delegator is bonded to
[**staking_parameters_get**](StakingApi.md#staking_parameters_get) | **GET** /staking/parameters | Get the current staking parameter values
[**staking_pool_get**](StakingApi.md#staking_pool_get) | **GET** /staking/pool | Get the current state of the staking pool
[**staking_redelegations_get**](StakingApi.md#staking_redelegations_get) | **GET** /staking/redelegations | Get all redelegations (filter by query params)
[**staking_validators_get**](StakingApi.md#staking_validators_get) | **GET** /staking/validators | Get all validator candidates. By default it returns only the bonded validators.
[**staking_validators_validator_addr_delegations_get**](StakingApi.md#staking_validators_validator_addr_delegations_get) | **GET** /staking/validators/{validatorAddr}/delegations | Get all delegations from a validator
[**staking_validators_validator_addr_get**](StakingApi.md#staking_validators_validator_addr_get) | **GET** /staking/validators/{validatorAddr} | Query the information from a single validator
[**staking_validators_validator_addr_unbonding_delegations_get**](StakingApi.md#staking_validators_validator_addr_unbonding_delegations_get) | **GET** /staking/validators/{validatorAddr}/unbonding_delegations | Get all unbonding delegations from a validator


# **staking_delegators_delegator_addr_delegations_get**
> Array&lt;Delegation&gt; staking_delegators_delegator_addr_delegations_get(delegator_addr)

Get all delegations from a delegator

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator


begin
  #Get all delegations from a delegator
  result = api_instance.staking_delegators_delegator_addr_delegations_get(delegator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_delegators_delegator_addr_delegations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 

### Return type

[**Array&lt;Delegation&gt;**](Delegation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **staking_delegators_delegator_addr_delegations_post**
> StdTx staking_delegators_delegator_addr_delegations_post(delegator_addr, opts)

Submit delegation

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator

opts = { 
  delegation: SwaggerClient::Delegation.new # Delegation | The password of the account to remove from the KMS
}

begin
  #Submit delegation
  result = api_instance.staking_delegators_delegator_addr_delegations_post(delegator_addr, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_delegators_delegator_addr_delegations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 
 **delegation** | [**Delegation**](Delegation.md)| The password of the account to remove from the KMS | [optional] 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **staking_delegators_delegator_addr_delegations_validator_addr_get**
> Delegation staking_delegators_delegator_addr_delegations_validator_addr_get(delegator_addr, validator_addr)

Query the current delegation between a delegator and a validator

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator

validator_addr = 'validator_addr_example' # String | Bech32 OperatorAddress of validator


begin
  #Query the current delegation between a delegator and a validator
  result = api_instance.staking_delegators_delegator_addr_delegations_validator_addr_get(delegator_addr, validator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_delegators_delegator_addr_delegations_validator_addr_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 
 **validator_addr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**Delegation**](Delegation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **staking_delegators_delegator_addr_redelegations_post**
> StdTx staking_delegators_delegator_addr_redelegations_post(delegator_addr, opts)

Submit a redelegation

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator

opts = { 
  delegation: SwaggerClient::Delegation2.new # Delegation2 | The sender and tx information
}

begin
  #Submit a redelegation
  result = api_instance.staking_delegators_delegator_addr_redelegations_post(delegator_addr, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_delegators_delegator_addr_redelegations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 
 **delegation** | [**Delegation2**](Delegation2.md)| The sender and tx information | [optional] 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **staking_delegators_delegator_addr_unbonding_delegations_get**
> Array&lt;UnbondingDelegation&gt; staking_delegators_delegator_addr_unbonding_delegations_get(delegator_addr)

Get all unbonding delegations from a delegator

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator


begin
  #Get all unbonding delegations from a delegator
  result = api_instance.staking_delegators_delegator_addr_unbonding_delegations_get(delegator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_delegators_delegator_addr_unbonding_delegations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 

### Return type

[**Array&lt;UnbondingDelegation&gt;**](UnbondingDelegation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **staking_delegators_delegator_addr_unbonding_delegations_post**
> StdTx staking_delegators_delegator_addr_unbonding_delegations_post(delegator_addr, opts)

Submit an unbonding delegation

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator

opts = { 
  delegation: SwaggerClient::Delegation1.new # Delegation1 | The password of the account to remove from the KMS
}

begin
  #Submit an unbonding delegation
  result = api_instance.staking_delegators_delegator_addr_unbonding_delegations_post(delegator_addr, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_delegators_delegator_addr_unbonding_delegations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 
 **delegation** | [**Delegation1**](Delegation1.md)| The password of the account to remove from the KMS | [optional] 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **staking_delegators_delegator_addr_unbonding_delegations_validator_addr_get**
> UnbondingDelegationPair staking_delegators_delegator_addr_unbonding_delegations_validator_addr_get(delegator_addr, validator_addr)

Query all unbonding delegations between a delegator and a validator

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator

validator_addr = 'validator_addr_example' # String | Bech32 OperatorAddress of validator


begin
  #Query all unbonding delegations between a delegator and a validator
  result = api_instance.staking_delegators_delegator_addr_unbonding_delegations_validator_addr_get(delegator_addr, validator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_delegators_delegator_addr_unbonding_delegations_validator_addr_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 
 **validator_addr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**UnbondingDelegationPair**](UnbondingDelegationPair.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **staking_delegators_delegator_addr_validators_get**
> Array&lt;Validator&gt; staking_delegators_delegator_addr_validators_get(delegator_addr)

Query all validators that a delegator is bonded to

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator


begin
  #Query all validators that a delegator is bonded to
  result = api_instance.staking_delegators_delegator_addr_validators_get(delegator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_delegators_delegator_addr_validators_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 

### Return type

[**Array&lt;Validator&gt;**](Validator.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **staking_delegators_delegator_addr_validators_validator_addr_get**
> Validator staking_delegators_delegator_addr_validators_validator_addr_get(delegator_addr, validator_addr)

Query a validator that a delegator is bonded to

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

delegator_addr = 'delegator_addr_example' # String | Bech32 AccAddress of Delegator

validator_addr = 'validator_addr_example' # String | Bech32 ValAddress of Delegator


begin
  #Query a validator that a delegator is bonded to
  result = api_instance.staking_delegators_delegator_addr_validators_validator_addr_get(delegator_addr, validator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_delegators_delegator_addr_validators_validator_addr_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator_addr** | **String**| Bech32 AccAddress of Delegator | 
 **validator_addr** | **String**| Bech32 ValAddress of Delegator | 

### Return type

[**Validator**](Validator.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **staking_parameters_get**
> InlineResponse2006 staking_parameters_get

Get the current staking parameter values

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

begin
  #Get the current staking parameter values
  result = api_instance.staking_parameters_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_parameters_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **staking_pool_get**
> InlineResponse2005 staking_pool_get

Get the current state of the staking pool

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

begin
  #Get the current state of the staking pool
  result = api_instance.staking_pool_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_pool_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **staking_redelegations_get**
> Array&lt;Redelegation&gt; staking_redelegations_get(opts)

Get all redelegations (filter by query params)

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

opts = { 
  delegator: 'delegator_example', # String | Bech32 AccAddress of Delegator
  validator_from: 'validator_from_example', # String | Bech32 ValAddress of SrcValidator
  validator_to: 'validator_to_example' # String | Bech32 ValAddress of DstValidator
}

begin
  #Get all redelegations (filter by query params)
  result = api_instance.staking_redelegations_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_redelegations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delegator** | **String**| Bech32 AccAddress of Delegator | [optional] 
 **validator_from** | **String**| Bech32 ValAddress of SrcValidator | [optional] 
 **validator_to** | **String**| Bech32 ValAddress of DstValidator | [optional] 

### Return type

[**Array&lt;Redelegation&gt;**](Redelegation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **staking_validators_get**
> Array&lt;Validator&gt; staking_validators_get(opts)

Get all validator candidates. By default it returns only the bonded validators.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

opts = { 
  status: 'status_example', # String | The validator bond status. Must be either 'bonded', 'unbonded', or 'unbonding'.
  page: 56, # Integer | The page number.
  limit: 56 # Integer | The maximum number of items per page.
}

begin
  #Get all validator candidates. By default it returns only the bonded validators.
  result = api_instance.staking_validators_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_validators_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| The validator bond status. Must be either &#39;bonded&#39;, &#39;unbonded&#39;, or &#39;unbonding&#39;. | [optional] 
 **page** | **Integer**| The page number. | [optional] 
 **limit** | **Integer**| The maximum number of items per page. | [optional] 

### Return type

[**Array&lt;Validator&gt;**](Validator.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **staking_validators_validator_addr_delegations_get**
> Array&lt;Delegation&gt; staking_validators_validator_addr_delegations_get(validator_addr)

Get all delegations from a validator

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

validator_addr = 'validator_addr_example' # String | Bech32 OperatorAddress of validator


begin
  #Get all delegations from a validator
  result = api_instance.staking_validators_validator_addr_delegations_get(validator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_validators_validator_addr_delegations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validator_addr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**Array&lt;Delegation&gt;**](Delegation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **staking_validators_validator_addr_get**
> Validator staking_validators_validator_addr_get(validator_addr)

Query the information from a single validator

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

validator_addr = 'validator_addr_example' # String | Bech32 OperatorAddress of validator


begin
  #Query the information from a single validator
  result = api_instance.staking_validators_validator_addr_get(validator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_validators_validator_addr_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validator_addr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**Validator**](Validator.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **staking_validators_validator_addr_unbonding_delegations_get**
> Array&lt;UnbondingDelegation&gt; staking_validators_validator_addr_unbonding_delegations_get(validator_addr)

Get all unbonding delegations from a validator

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StakingApi.new

validator_addr = 'validator_addr_example' # String | Bech32 OperatorAddress of validator


begin
  #Get all unbonding delegations from a validator
  result = api_instance.staking_validators_validator_addr_unbonding_delegations_get(validator_addr)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StakingApi->staking_validators_validator_addr_unbonding_delegations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validator_addr** | **String**| Bech32 OperatorAddress of validator | 

### Return type

[**Array&lt;UnbondingDelegation&gt;**](UnbondingDelegation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



