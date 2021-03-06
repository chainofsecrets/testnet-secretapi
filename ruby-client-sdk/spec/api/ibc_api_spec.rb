=begin
#Testnet Secret API for Secret Network

#A REST interface for state queries, transaction generation and broadcasting.

OpenAPI spec version: 3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::IBCApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IBCApi' do
  before do
    # run before each test
    @instance = SwaggerClient::IBCApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IBCApi' do
    it 'should create an instance of IBCApi' do
      expect(@instance).to be_instance_of(SwaggerClient::IBCApi)
    end
  end

  # unit tests for ibc_channels_open_init_post
  # Channel open-init
  # @param channel_open_init_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_channels_open_init_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_channels_open_try_post
  # Channel open-try
  # @param channel_open_try_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_channels_open_try_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_clients_client_id_client_state_get
  # Query client state
  # @param client_id Client ID
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :prove Proof of result
  # @return [InlineResponse20010]
  describe 'ibc_clients_client_id_client_state_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_clients_client_id_connections_get
  # Query connections of a client
  # @param client_id Client ID
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :prove Proof of result
  # @return [ClientConnectionsResponse]
  describe 'ibc_clients_client_id_connections_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_clients_client_id_consensus_state_get
  # Query cliet consensus-state
  # @param client_id Client ID
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :prove Proof of result
  # @return [InlineResponse2009]
  describe 'ibc_clients_client_id_consensus_state_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_clients_client_id_misbehaviour_post
  # Submit misbehaviour
  # @param client_id Client ID
  # @param submit_misbehaviour_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_clients_client_id_misbehaviour_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_clients_client_id_roots_height_get
  # Query client root
  # @param client_id Client ID
  # @param height Root height
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :prove Proof of result
  # @return [InlineResponse20011]
  describe 'ibc_clients_client_id_roots_height_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_clients_client_id_update_post
  # Update client
  # @param client_id Client ID
  # @param update_client_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_clients_client_id_update_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_clients_post
  # Create client
  # @param create_client_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_clients_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_connections_connection_id_get
  # Query connection
  # @param connection_id Connection ID
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :prove Proof of result
  # @return [ConnectionResponse]
  describe 'ibc_connections_connection_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_connections_connection_id_open_ack_post
  # Connection open-ack
  # @param connection_id Connection ID
  # @param connection_open_ack_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_connections_connection_id_open_ack_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_connections_connection_id_open_confirm_post
  # Connection open-confirm
  # @param connection_id Connection ID
  # @param connection_open_confirm_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_connections_connection_id_open_confirm_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_connections_get
  # Query all connections
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :limit Maximum number of items per page
  # @return [Array<Connection>]
  describe 'ibc_connections_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_connections_open_init_post
  # Connection open-init
  # @param connection_open_init_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_connections_open_init_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_connections_open_try_post
  # Connection open-try
  # @param connection_open_try_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_connections_open_try_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_header_get
  # Query header
  # @param [Hash] opts the optional parameters
  # @return [Header]
  describe 'ibc_header_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_node_state_get
  # Query node consensus-state
  # @param [Hash] opts the optional parameters
  # @return [ConsensusState]
  describe 'ibc_node_state_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_packets_receive_post
  # Receive packet
  # @param receive_packet_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_packets_receive_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_path_get
  # Query IBC path
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'ibc_path_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_ports_port_id_channels_channel_id_close_confirm_post
  # Channel close-confirm
  # @param port_id Port ID
  # @param channel_id Channel ID
  # @param channel_close_confirm_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_ports_port_id_channels_channel_id_close_confirm_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_ports_port_id_channels_channel_id_close_init_post
  # Channel close-init
  # @param port_id Port ID
  # @param channel_id Channel ID
  # @param channel_close_init_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_ports_port_id_channels_channel_id_close_init_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_ports_port_id_channels_channel_id_get
  # Query channel
  # @param port_id Port ID
  # @param channel_id Channel ID
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :prove Proof of result
  # @return [ChannelResponse]
  describe 'ibc_ports_port_id_channels_channel_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_ports_port_id_channels_channel_id_next_sequence_recv_get
  # Query next sequence receive
  # @param port_id Port ID
  # @param channel_id Channel ID
  # @param [Hash] opts the optional parameters
  # @return [Integer]
  describe 'ibc_ports_port_id_channels_channel_id_next_sequence_recv_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_ports_port_id_channels_channel_id_open_ack_post
  # Channel open-ack
  # @param port_id Port ID
  # @param channel_id Channel ID
  # @param channel_open_ack_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_ports_port_id_channels_channel_id_open_ack_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_ports_port_id_channels_channel_id_open_confirm_post
  # Channel open-confirm
  # @param port_id Port ID
  # @param channel_id Channel ID
  # @param channel_open_confirm_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_ports_port_id_channels_channel_id_open_confirm_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ibc_ports_port_id_channels_channel_id_transfer_post
  # Transfer token
  # @param port_id Port ID
  # @param channel_id Channel ID
  # @param transfer_token_request_body 
  # @param [Hash] opts the optional parameters
  # @return [StdTx]
  describe 'ibc_ports_port_id_channels_channel_id_transfer_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
