=begin
#Testnet Secret API for Secret Network

#A REST interface for state queries, transaction generation and broadcasting.

OpenAPI spec version: 3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'date'

module SwaggerClient
  class TextProposal
    attr_accessor :proposal_id

    attr_accessor :title

    attr_accessor :description

    attr_accessor :proposal_type

    attr_accessor :proposal_status

    attr_accessor :final_tally_result

    attr_accessor :submit_time

    attr_accessor :total_deposit

    attr_accessor :voting_start_time

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'proposal_id' => :'proposal_id',
        :'title' => :'title',
        :'description' => :'description',
        :'proposal_type' => :'proposal_type',
        :'proposal_status' => :'proposal_status',
        :'final_tally_result' => :'final_tally_result',
        :'submit_time' => :'submit_time',
        :'total_deposit' => :'total_deposit',
        :'voting_start_time' => :'voting_start_time'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'proposal_id' => :'Integer',
        :'title' => :'String',
        :'description' => :'String',
        :'proposal_type' => :'String',
        :'proposal_status' => :'String',
        :'final_tally_result' => :'TallyResult',
        :'submit_time' => :'String',
        :'total_deposit' => :'Array<Coin>',
        :'voting_start_time' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'proposal_id')
        self.proposal_id = attributes[:'proposal_id']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'proposal_type')
        self.proposal_type = attributes[:'proposal_type']
      end

      if attributes.has_key?(:'proposal_status')
        self.proposal_status = attributes[:'proposal_status']
      end

      if attributes.has_key?(:'final_tally_result')
        self.final_tally_result = attributes[:'final_tally_result']
      end

      if attributes.has_key?(:'submit_time')
        self.submit_time = attributes[:'submit_time']
      end

      if attributes.has_key?(:'total_deposit')
        if (value = attributes[:'total_deposit']).is_a?(Array)
          self.total_deposit = value
        end
      end

      if attributes.has_key?(:'voting_start_time')
        self.voting_start_time = attributes[:'voting_start_time']
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
          proposal_id == o.proposal_id &&
          title == o.title &&
          description == o.description &&
          proposal_type == o.proposal_type &&
          proposal_status == o.proposal_status &&
          final_tally_result == o.final_tally_result &&
          submit_time == o.submit_time &&
          total_deposit == o.total_deposit &&
          voting_start_time == o.voting_start_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [proposal_id, title, description, proposal_type, proposal_status, final_tally_result, submit_time, total_deposit, voting_start_time].hash
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