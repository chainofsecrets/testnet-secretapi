=begin
#Testnet Secret API for Secret Network

#A REST interface for state queries, transaction generation and broadcasting.

OpenAPI spec version: 3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'date'

module SwaggerClient
  class Validator
    attr_accessor :operator_address

    attr_accessor :consensus_pubkey

    attr_accessor :jailed

    attr_accessor :status

    attr_accessor :tokens

    attr_accessor :delegator_shares

    attr_accessor :description

    attr_accessor :bond_height

    attr_accessor :bond_intra_tx_counter

    attr_accessor :unbonding_height

    attr_accessor :unbonding_time

    attr_accessor :commission

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'operator_address' => :'operator_address',
        :'consensus_pubkey' => :'consensus_pubkey',
        :'jailed' => :'jailed',
        :'status' => :'status',
        :'tokens' => :'tokens',
        :'delegator_shares' => :'delegator_shares',
        :'description' => :'description',
        :'bond_height' => :'bond_height',
        :'bond_intra_tx_counter' => :'bond_intra_tx_counter',
        :'unbonding_height' => :'unbonding_height',
        :'unbonding_time' => :'unbonding_time',
        :'commission' => :'commission'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'operator_address' => :'ValidatorAddress',
        :'consensus_pubkey' => :'String',
        :'jailed' => :'BOOLEAN',
        :'status' => :'Integer',
        :'tokens' => :'String',
        :'delegator_shares' => :'String',
        :'description' => :'ValidatorDescription',
        :'bond_height' => :'String',
        :'bond_intra_tx_counter' => :'Integer',
        :'unbonding_height' => :'String',
        :'unbonding_time' => :'String',
        :'commission' => :'ValidatorCommission'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'operator_address')
        self.operator_address = attributes[:'operator_address']
      end

      if attributes.has_key?(:'consensus_pubkey')
        self.consensus_pubkey = attributes[:'consensus_pubkey']
      end

      if attributes.has_key?(:'jailed')
        self.jailed = attributes[:'jailed']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'tokens')
        self.tokens = attributes[:'tokens']
      end

      if attributes.has_key?(:'delegator_shares')
        self.delegator_shares = attributes[:'delegator_shares']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'bond_height')
        self.bond_height = attributes[:'bond_height']
      end

      if attributes.has_key?(:'bond_intra_tx_counter')
        self.bond_intra_tx_counter = attributes[:'bond_intra_tx_counter']
      end

      if attributes.has_key?(:'unbonding_height')
        self.unbonding_height = attributes[:'unbonding_height']
      end

      if attributes.has_key?(:'unbonding_time')
        self.unbonding_time = attributes[:'unbonding_time']
      end

      if attributes.has_key?(:'commission')
        self.commission = attributes[:'commission']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          operator_address == o.operator_address &&
          consensus_pubkey == o.consensus_pubkey &&
          jailed == o.jailed &&
          status == o.status &&
          tokens == o.tokens &&
          delegator_shares == o.delegator_shares &&
          description == o.description &&
          bond_height == o.bond_height &&
          bond_intra_tx_counter == o.bond_intra_tx_counter &&
          unbonding_height == o.unbonding_height &&
          unbonding_time == o.unbonding_time &&
          commission == o.commission
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [operator_address, consensus_pubkey, jailed, status, tokens, delegator_shares, description, bond_height, bond_intra_tx_counter, unbonding_height, unbonding_time, commission].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
