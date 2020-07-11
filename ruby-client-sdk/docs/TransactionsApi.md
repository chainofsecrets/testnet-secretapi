# SwaggerClient::TransactionsApi

All URIs are relative to *https://api.secrettestnet.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**txs_decode_post**](TransactionsApi.md#txs_decode_post) | **POST** /txs/decode | Decode a transaction from the Amino wire format
[**txs_encode_post**](TransactionsApi.md#txs_encode_post) | **POST** /txs/encode | Encode a transaction to the Amino wire format
[**txs_get**](TransactionsApi.md#txs_get) | **GET** /txs | Search transactions
[**txs_hash_get**](TransactionsApi.md#txs_hash_get) | **GET** /txs/{hash} | Get a Tx by hash
[**txs_post**](TransactionsApi.md#txs_post) | **POST** /txs | Broadcast a signed tx


# **txs_decode_post**
> StdTx txs_decode_post(tx)

Decode a transaction from the Amino wire format

Decode a transaction (signed or not) from base64-encoded Amino serialized bytes to JSON

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TransactionsApi.new

tx = SwaggerClient::Tx1.new # Tx1 | The tx to decode


begin
  #Decode a transaction from the Amino wire format
  result = api_instance.txs_decode_post(tx)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionsApi->txs_decode_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tx** | [**Tx1**](Tx1.md)| The tx to decode | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **txs_encode_post**
> InlineResponse2003 txs_encode_post(tx)

Encode a transaction to the Amino wire format

Encode a transaction (signed or not) from JSON to base64-encoded Amino serialized bytes

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TransactionsApi.new

tx = SwaggerClient::Tx.new # Tx | The tx to encode


begin
  #Encode a transaction to the Amino wire format
  result = api_instance.txs_encode_post(tx)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionsApi->txs_encode_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tx** | [**Tx**](Tx.md)| The tx to encode | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **txs_get**
> PaginatedQueryTxs txs_get(opts)

Search transactions

Search transactions by events.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TransactionsApi.new

opts = { 
  message_action: 'message_action_example', # String | transaction events such as 'message.action=send' which results in the following endpoint: 'GET /txs?message.action=send'. note that each module documents its own events. look for xx_events.md in the corresponding cosmos-sdk/docs/spec directory
  message_sender: 'message_sender_example', # String | transaction tags with sender: 'GET /txs?message.action=send&message.sender=secret16xyempempp92x9hyzz9wrgf94r6j9h5f06pxxv'
  page: 56, # Integer | Page number
  limit: 56, # Integer | Maximum number of items per page
  tx_minheight: 56, # Integer | transactions on blocks with height greater or equal this value
  tx_maxheight: 56 # Integer | transactions on blocks with height less than or equal this value
}

begin
  #Search transactions
  result = api_instance.txs_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionsApi->txs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_action** | **String**| transaction events such as &#39;message.action&#x3D;send&#39; which results in the following endpoint: &#39;GET /txs?message.action&#x3D;send&#39;. note that each module documents its own events. look for xx_events.md in the corresponding cosmos-sdk/docs/spec directory | [optional] 
 **message_sender** | **String**| transaction tags with sender: &#39;GET /txs?message.action&#x3D;send&amp;message.sender&#x3D;secret16xyempempp92x9hyzz9wrgf94r6j9h5f06pxxv&#39; | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **limit** | **Integer**| Maximum number of items per page | [optional] 
 **tx_minheight** | **Integer**| transactions on blocks with height greater or equal this value | [optional] 
 **tx_maxheight** | **Integer**| transactions on blocks with height less than or equal this value | [optional] 

### Return type

[**PaginatedQueryTxs**](PaginatedQueryTxs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **txs_hash_get**
> TxQuery txs_hash_get(hash)

Get a Tx by hash

Retrieve a transaction using its hash.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TransactionsApi.new

hash = 'hash_example' # String | Tx hash


begin
  #Get a Tx by hash
  result = api_instance.txs_hash_get(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionsApi->txs_hash_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Tx hash | 

### Return type

[**TxQuery**](TxQuery.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **txs_post**
> BroadcastTxCommitResult txs_post(tx_broadcast)

Broadcast a signed tx

Broadcast a signed tx to a full node

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TransactionsApi.new

tx_broadcast = SwaggerClient::TxBroadcast.new # TxBroadcast | The tx must be a signed StdTx. The supported broadcast modes include `\"block\"`(return after tx commit), `\"sync\"`(return afer CheckTx) and `\"async\"`(return right away).


begin
  #Broadcast a signed tx
  result = api_instance.txs_post(tx_broadcast)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionsApi->txs_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tx_broadcast** | [**TxBroadcast**](TxBroadcast.md)| The tx must be a signed StdTx. The supported broadcast modes include &#x60;\&quot;block\&quot;&#x60;(return after tx commit), &#x60;\&quot;sync\&quot;&#x60;(return afer CheckTx) and &#x60;\&quot;async\&quot;&#x60;(return right away). | 

### Return type

[**BroadcastTxCommitResult**](BroadcastTxCommitResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



