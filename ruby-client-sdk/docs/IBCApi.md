# SwaggerClient::IBCApi

All URIs are relative to *https://api.secrettestnet.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ibc_channels_open_init_post**](IBCApi.md#ibc_channels_open_init_post) | **POST** /ibc/channels/open-init | Channel open-init
[**ibc_channels_open_try_post**](IBCApi.md#ibc_channels_open_try_post) | **POST** /ibc/channels/open-try | Channel open-try
[**ibc_clients_client_id_client_state_get**](IBCApi.md#ibc_clients_client_id_client_state_get) | **GET** /ibc/clients/{client-id}/client-state | Query client state
[**ibc_clients_client_id_connections_get**](IBCApi.md#ibc_clients_client_id_connections_get) | **GET** /ibc/clients/{client-id}/connections | Query connections of a client
[**ibc_clients_client_id_consensus_state_get**](IBCApi.md#ibc_clients_client_id_consensus_state_get) | **GET** /ibc/clients/{client-id}/consensus-state | Query cliet consensus-state
[**ibc_clients_client_id_misbehaviour_post**](IBCApi.md#ibc_clients_client_id_misbehaviour_post) | **POST** /ibc/clients/{client-id}/misbehaviour | Submit misbehaviour
[**ibc_clients_client_id_roots_height_get**](IBCApi.md#ibc_clients_client_id_roots_height_get) | **GET** /ibc/clients/{client-id}/roots/{height} | Query client root
[**ibc_clients_client_id_update_post**](IBCApi.md#ibc_clients_client_id_update_post) | **POST** /ibc/clients/{client-id}/update | Update client
[**ibc_clients_post**](IBCApi.md#ibc_clients_post) | **POST** /ibc/clients | Create client
[**ibc_connections_connection_id_get**](IBCApi.md#ibc_connections_connection_id_get) | **GET** /ibc/connections/{connection-id} | Query connection
[**ibc_connections_connection_id_open_ack_post**](IBCApi.md#ibc_connections_connection_id_open_ack_post) | **POST** /ibc/connections/{connection-id}/open-ack | Connection open-ack
[**ibc_connections_connection_id_open_confirm_post**](IBCApi.md#ibc_connections_connection_id_open_confirm_post) | **POST** /ibc/connections/{connection-id}/open-confirm | Connection open-confirm
[**ibc_connections_get**](IBCApi.md#ibc_connections_get) | **GET** /ibc/connections | Query all connections
[**ibc_connections_open_init_post**](IBCApi.md#ibc_connections_open_init_post) | **POST** /ibc/connections/open-init | Connection open-init
[**ibc_connections_open_try_post**](IBCApi.md#ibc_connections_open_try_post) | **POST** /ibc/connections/open-try | Connection open-try
[**ibc_header_get**](IBCApi.md#ibc_header_get) | **GET** /ibc/header | Query header
[**ibc_node_state_get**](IBCApi.md#ibc_node_state_get) | **GET** /ibc/node-state | Query node consensus-state
[**ibc_packets_receive_post**](IBCApi.md#ibc_packets_receive_post) | **POST** /ibc/packets/receive | Receive packet
[**ibc_path_get**](IBCApi.md#ibc_path_get) | **GET** /ibc/path | Query IBC path
[**ibc_ports_port_id_channels_channel_id_close_confirm_post**](IBCApi.md#ibc_ports_port_id_channels_channel_id_close_confirm_post) | **POST** /ibc/ports/{port-id}/channels/{channel-id}/close-confirm | Channel close-confirm
[**ibc_ports_port_id_channels_channel_id_close_init_post**](IBCApi.md#ibc_ports_port_id_channels_channel_id_close_init_post) | **POST** /ibc/ports/{port-id}/channels/{channel-id}/close-init | Channel close-init
[**ibc_ports_port_id_channels_channel_id_get**](IBCApi.md#ibc_ports_port_id_channels_channel_id_get) | **GET** /ibc/ports/{port-id}/channels/{channel-id} | Query channel
[**ibc_ports_port_id_channels_channel_id_next_sequence_recv_get**](IBCApi.md#ibc_ports_port_id_channels_channel_id_next_sequence_recv_get) | **GET** /ibc/ports/{port-id}/channels/{channel-id}/next-sequence-recv | Query next sequence receive
[**ibc_ports_port_id_channels_channel_id_open_ack_post**](IBCApi.md#ibc_ports_port_id_channels_channel_id_open_ack_post) | **POST** /ibc/ports/{port-id}/channels/{channel-id}/open-ack | Channel open-ack
[**ibc_ports_port_id_channels_channel_id_open_confirm_post**](IBCApi.md#ibc_ports_port_id_channels_channel_id_open_confirm_post) | **POST** /ibc/ports/{port-id}/channels/{channel-id}/open-confirm | Channel open-confirm
[**ibc_ports_port_id_channels_channel_id_transfer_post**](IBCApi.md#ibc_ports_port_id_channels_channel_id_transfer_post) | **POST** /ibc/ports/{port-id}/channels/{channel-id}/transfer | Transfer token


# **ibc_channels_open_init_post**
> StdTx ibc_channels_open_init_post(channel_open_init_request_body)

Channel open-init

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

channel_open_init_request_body = SwaggerClient::ChannelOpeninitRequestBody.new # ChannelOpeninitRequestBody | 


begin
  #Channel open-init
  result = api_instance.ibc_channels_open_init_post(channel_open_init_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_channels_open_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_open_init_request_body** | [**ChannelOpeninitRequestBody**](ChannelOpeninitRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ibc_channels_open_try_post**
> StdTx ibc_channels_open_try_post(channel_open_try_request_body)

Channel open-try

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

channel_open_try_request_body = SwaggerClient::ChannelOpentryRequestBody.new # ChannelOpentryRequestBody | 


begin
  #Channel open-try
  result = api_instance.ibc_channels_open_try_post(channel_open_try_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_channels_open_try_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_open_try_request_body** | [**ChannelOpentryRequestBody**](ChannelOpentryRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ibc_clients_client_id_client_state_get**
> InlineResponse20010 ibc_clients_client_id_client_state_get(client_id, opts)

Query client state

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

client_id = 'client_id_example' # String | Client ID

opts = { 
  prove: true # BOOLEAN | Proof of result
}

begin
  #Query client state
  result = api_instance.ibc_clients_client_id_client_state_get(client_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_clients_client_id_client_state_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| Client ID | 
 **prove** | **BOOLEAN**| Proof of result | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ibc_clients_client_id_connections_get**
> ClientConnectionsResponse ibc_clients_client_id_connections_get(client_id, opts)

Query connections of a client

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

client_id = 'client_id_example' # String | Client ID

opts = { 
  prove: true # BOOLEAN | Proof of result
}

begin
  #Query connections of a client
  result = api_instance.ibc_clients_client_id_connections_get(client_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_clients_client_id_connections_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| Client ID | 
 **prove** | **BOOLEAN**| Proof of result | [optional] 

### Return type

[**ClientConnectionsResponse**](ClientConnectionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ibc_clients_client_id_consensus_state_get**
> InlineResponse2009 ibc_clients_client_id_consensus_state_get(client_id, opts)

Query cliet consensus-state

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

client_id = 'client_id_example' # String | Client ID

opts = { 
  prove: true # BOOLEAN | Proof of result
}

begin
  #Query cliet consensus-state
  result = api_instance.ibc_clients_client_id_consensus_state_get(client_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_clients_client_id_consensus_state_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| Client ID | 
 **prove** | **BOOLEAN**| Proof of result | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ibc_clients_client_id_misbehaviour_post**
> StdTx ibc_clients_client_id_misbehaviour_post(client_id, submit_misbehaviour_request_body)

Submit misbehaviour

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

client_id = 'client_id_example' # String | Client ID

submit_misbehaviour_request_body = SwaggerClient::SubmitMisbehaviourRequestBody.new # SubmitMisbehaviourRequestBody | 


begin
  #Submit misbehaviour
  result = api_instance.ibc_clients_client_id_misbehaviour_post(client_id, submit_misbehaviour_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_clients_client_id_misbehaviour_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| Client ID | 
 **submit_misbehaviour_request_body** | [**SubmitMisbehaviourRequestBody**](SubmitMisbehaviourRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ibc_clients_client_id_roots_height_get**
> InlineResponse20011 ibc_clients_client_id_roots_height_get(client_id, height, opts)

Query client root

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

client_id = 'client_id_example' # String | Client ID

height = 8.14 # Float | Root height

opts = { 
  prove: true # BOOLEAN | Proof of result
}

begin
  #Query client root
  result = api_instance.ibc_clients_client_id_roots_height_get(client_id, height, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_clients_client_id_roots_height_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| Client ID | 
 **height** | **Float**| Root height | 
 **prove** | **BOOLEAN**| Proof of result | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ibc_clients_client_id_update_post**
> StdTx ibc_clients_client_id_update_post(client_id, update_client_request_body)

Update client

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

client_id = 'client_id_example' # String | Client ID

update_client_request_body = SwaggerClient::UpdateClientRequestBody.new # UpdateClientRequestBody | 


begin
  #Update client
  result = api_instance.ibc_clients_client_id_update_post(client_id, update_client_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_clients_client_id_update_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| Client ID | 
 **update_client_request_body** | [**UpdateClientRequestBody**](UpdateClientRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ibc_clients_post**
> StdTx ibc_clients_post(create_client_request_body)

Create client

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

create_client_request_body = SwaggerClient::CreateClientRequestBody.new # CreateClientRequestBody | 


begin
  #Create client
  result = api_instance.ibc_clients_post(create_client_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_clients_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_client_request_body** | [**CreateClientRequestBody**](CreateClientRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ibc_connections_connection_id_get**
> ConnectionResponse ibc_connections_connection_id_get(connection_id, opts)

Query connection

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

connection_id = 'connection_id_example' # String | Connection ID

opts = { 
  prove: true # BOOLEAN | Proof of result
}

begin
  #Query connection
  result = api_instance.ibc_connections_connection_id_get(connection_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_connections_connection_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_id** | **String**| Connection ID | 
 **prove** | **BOOLEAN**| Proof of result | [optional] 

### Return type

[**ConnectionResponse**](ConnectionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ibc_connections_connection_id_open_ack_post**
> StdTx ibc_connections_connection_id_open_ack_post(connection_id, connection_open_ack_request_body)

Connection open-ack

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

connection_id = 'connection_id_example' # String | Connection ID

connection_open_ack_request_body = SwaggerClient::ConnectionOpenackRequestBody.new # ConnectionOpenackRequestBody | 


begin
  #Connection open-ack
  result = api_instance.ibc_connections_connection_id_open_ack_post(connection_id, connection_open_ack_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_connections_connection_id_open_ack_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_id** | **String**| Connection ID | 
 **connection_open_ack_request_body** | [**ConnectionOpenackRequestBody**](ConnectionOpenackRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ibc_connections_connection_id_open_confirm_post**
> StdTx ibc_connections_connection_id_open_confirm_post(connection_id, connection_open_confirm_request_body)

Connection open-confirm

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

connection_id = 'connection_id_example' # String | Connection ID

connection_open_confirm_request_body = SwaggerClient::ConnectionOpenconfirmRequestBody.new # ConnectionOpenconfirmRequestBody | 


begin
  #Connection open-confirm
  result = api_instance.ibc_connections_connection_id_open_confirm_post(connection_id, connection_open_confirm_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_connections_connection_id_open_confirm_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_id** | **String**| Connection ID | 
 **connection_open_confirm_request_body** | [**ConnectionOpenconfirmRequestBody**](ConnectionOpenconfirmRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ibc_connections_get**
> Array&lt;Connection&gt; ibc_connections_get(opts)

Query all connections

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

opts = { 
  page: 56, # Integer | Page number
  limit: 56 # Integer | Maximum number of items per page
}

begin
  #Query all connections
  result = api_instance.ibc_connections_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_connections_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number | [optional] 
 **limit** | **Integer**| Maximum number of items per page | [optional] 

### Return type

[**Array&lt;Connection&gt;**](Connection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ibc_connections_open_init_post**
> StdTx ibc_connections_open_init_post(connection_open_init_request_body)

Connection open-init

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

connection_open_init_request_body = SwaggerClient::ConnectionOpeninitRequestBody.new # ConnectionOpeninitRequestBody | 


begin
  #Connection open-init
  result = api_instance.ibc_connections_open_init_post(connection_open_init_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_connections_open_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_open_init_request_body** | [**ConnectionOpeninitRequestBody**](ConnectionOpeninitRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ibc_connections_open_try_post**
> StdTx ibc_connections_open_try_post(connection_open_try_request_body)

Connection open-try

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

connection_open_try_request_body = SwaggerClient::ConnectionOpentryRequestBody.new # ConnectionOpentryRequestBody | 


begin
  #Connection open-try
  result = api_instance.ibc_connections_open_try_post(connection_open_try_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_connections_open_try_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_open_try_request_body** | [**ConnectionOpentryRequestBody**](ConnectionOpentryRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ibc_header_get**
> Header ibc_header_get

Query header

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

begin
  #Query header
  result = api_instance.ibc_header_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_header_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Header**](Header.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ibc_node_state_get**
> ConsensusState ibc_node_state_get

Query node consensus-state

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

begin
  #Query node consensus-state
  result = api_instance.ibc_node_state_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_node_state_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConsensusState**](ConsensusState.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ibc_packets_receive_post**
> StdTx ibc_packets_receive_post(receive_packet_request_body)

Receive packet

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

receive_packet_request_body = SwaggerClient::ReceivePacketRequestBody.new # ReceivePacketRequestBody | 


begin
  #Receive packet
  result = api_instance.ibc_packets_receive_post(receive_packet_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_packets_receive_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receive_packet_request_body** | [**ReceivePacketRequestBody**](ReceivePacketRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ibc_path_get**
> String ibc_path_get

Query IBC path

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

begin
  #Query IBC path
  result = api_instance.ibc_path_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_path_get: #{e}"
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



# **ibc_ports_port_id_channels_channel_id_close_confirm_post**
> StdTx ibc_ports_port_id_channels_channel_id_close_confirm_post(port_id, channel_id, channel_close_confirm_request_body)

Channel close-confirm

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

port_id = 'port_id_example' # String | Port ID

channel_id = 'channel_id_example' # String | Channel ID

channel_close_confirm_request_body = SwaggerClient::ChannelCloseconfirmRequestBody.new # ChannelCloseconfirmRequestBody | 


begin
  #Channel close-confirm
  result = api_instance.ibc_ports_port_id_channels_channel_id_close_confirm_post(port_id, channel_id, channel_close_confirm_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_ports_port_id_channels_channel_id_close_confirm_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **port_id** | **String**| Port ID | 
 **channel_id** | **String**| Channel ID | 
 **channel_close_confirm_request_body** | [**ChannelCloseconfirmRequestBody**](ChannelCloseconfirmRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ibc_ports_port_id_channels_channel_id_close_init_post**
> StdTx ibc_ports_port_id_channels_channel_id_close_init_post(port_id, channel_id, channel_close_init_request_body)

Channel close-init

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

port_id = 'port_id_example' # String | Port ID

channel_id = 'channel_id_example' # String | Channel ID

channel_close_init_request_body = SwaggerClient::ChannelCloseinitRequestBody.new # ChannelCloseinitRequestBody | 


begin
  #Channel close-init
  result = api_instance.ibc_ports_port_id_channels_channel_id_close_init_post(port_id, channel_id, channel_close_init_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_ports_port_id_channels_channel_id_close_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **port_id** | **String**| Port ID | 
 **channel_id** | **String**| Channel ID | 
 **channel_close_init_request_body** | [**ChannelCloseinitRequestBody**](ChannelCloseinitRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ibc_ports_port_id_channels_channel_id_get**
> ChannelResponse ibc_ports_port_id_channels_channel_id_get(port_id, channel_id, opts)

Query channel

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

port_id = 'port_id_example' # String | Port ID

channel_id = 'channel_id_example' # String | Channel ID

opts = { 
  prove: true # BOOLEAN | Proof of result
}

begin
  #Query channel
  result = api_instance.ibc_ports_port_id_channels_channel_id_get(port_id, channel_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_ports_port_id_channels_channel_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **port_id** | **String**| Port ID | 
 **channel_id** | **String**| Channel ID | 
 **prove** | **BOOLEAN**| Proof of result | [optional] 

### Return type

[**ChannelResponse**](ChannelResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ibc_ports_port_id_channels_channel_id_next_sequence_recv_get**
> Integer ibc_ports_port_id_channels_channel_id_next_sequence_recv_get(port_id, channel_id)

Query next sequence receive

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

port_id = 'port_id_example' # String | Port ID

channel_id = 'channel_id_example' # String | Channel ID


begin
  #Query next sequence receive
  result = api_instance.ibc_ports_port_id_channels_channel_id_next_sequence_recv_get(port_id, channel_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_ports_port_id_channels_channel_id_next_sequence_recv_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **port_id** | **String**| Port ID | 
 **channel_id** | **String**| Channel ID | 

### Return type

**Integer**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ibc_ports_port_id_channels_channel_id_open_ack_post**
> StdTx ibc_ports_port_id_channels_channel_id_open_ack_post(port_id, channel_id, channel_open_ack_request_body)

Channel open-ack

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

port_id = 'port_id_example' # String | Port ID

channel_id = 'channel_id_example' # String | Channel ID

channel_open_ack_request_body = SwaggerClient::ChannelOpenackRequestBody.new # ChannelOpenackRequestBody | 


begin
  #Channel open-ack
  result = api_instance.ibc_ports_port_id_channels_channel_id_open_ack_post(port_id, channel_id, channel_open_ack_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_ports_port_id_channels_channel_id_open_ack_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **port_id** | **String**| Port ID | 
 **channel_id** | **String**| Channel ID | 
 **channel_open_ack_request_body** | [**ChannelOpenackRequestBody**](ChannelOpenackRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ibc_ports_port_id_channels_channel_id_open_confirm_post**
> StdTx ibc_ports_port_id_channels_channel_id_open_confirm_post(port_id, channel_id, channel_open_confirm_request_body)

Channel open-confirm

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

port_id = 'port_id_example' # String | Port ID

channel_id = 'channel_id_example' # String | Channel ID

channel_open_confirm_request_body = SwaggerClient::ChannelOpenconfirmRequestBody.new # ChannelOpenconfirmRequestBody | 


begin
  #Channel open-confirm
  result = api_instance.ibc_ports_port_id_channels_channel_id_open_confirm_post(port_id, channel_id, channel_open_confirm_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_ports_port_id_channels_channel_id_open_confirm_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **port_id** | **String**| Port ID | 
 **channel_id** | **String**| Channel ID | 
 **channel_open_confirm_request_body** | [**ChannelOpenconfirmRequestBody**](ChannelOpenconfirmRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ibc_ports_port_id_channels_channel_id_transfer_post**
> StdTx ibc_ports_port_id_channels_channel_id_transfer_post(port_id, channel_id, transfer_token_request_body)

Transfer token

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IBCApi.new

port_id = 'port_id_example' # String | Port ID

channel_id = 'channel_id_example' # String | Channel ID

transfer_token_request_body = SwaggerClient::TransferTokenRequestBody.new # TransferTokenRequestBody | 


begin
  #Transfer token
  result = api_instance.ibc_ports_port_id_channels_channel_id_transfer_post(port_id, channel_id, transfer_token_request_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IBCApi->ibc_ports_port_id_channels_channel_id_transfer_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **port_id** | **String**| Port ID | 
 **channel_id** | **String**| Channel ID | 
 **transfer_token_request_body** | [**TransferTokenRequestBody**](TransferTokenRequestBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



