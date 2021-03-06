=begin
#DVC AMS API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 2.0.0
Contact: marco.storto@tecniplast.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.0.0

=end

require 'date'

module Tecniplast
  class CageMovementEventRack
    attr_accessor :timestamp

    attr_accessor :cage_id

    attr_accessor :movement_type

    attr_accessor :position

    attr_accessor :rack

    attr_accessor :ams_rack_id

    attr_accessor :room

    attr_accessor :floor

    attr_accessor :building

    attr_accessor :facility

    attr_accessor :cage_online

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'timestamp' => :'timestamp',
        :'cage_id' => :'cageId',
        :'movement_type' => :'movementType',
        :'position' => :'position',
        :'rack' => :'rack',
        :'ams_rack_id' => :'amsRackId',
        :'room' => :'room',
        :'floor' => :'floor',
        :'building' => :'building',
        :'facility' => :'facility',
        :'cage_online' => :'cageOnline'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'timestamp' => :'String',
        :'cage_id' => :'String',
        :'movement_type' => :'String',
        :'position' => :'String',
        :'rack' => :'String',
        :'ams_rack_id' => :'String',
        :'room' => :'String',
        :'floor' => :'String',
        :'building' => :'String',
        :'facility' => :'String',
        :'cage_online' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'cageId')
        self.cage_id = attributes[:'cageId']
      end

      if attributes.has_key?(:'movementType')
        self.movement_type = attributes[:'movementType']
      end

      if attributes.has_key?(:'position')
        self.position = attributes[:'position']
      end

      if attributes.has_key?(:'rack')
        self.rack = attributes[:'rack']
      end

      if attributes.has_key?(:'amsRackId')
        self.ams_rack_id = attributes[:'amsRackId']
      end

      if attributes.has_key?(:'room')
        self.room = attributes[:'room']
      end

      if attributes.has_key?(:'floor')
        self.floor = attributes[:'floor']
      end

      if attributes.has_key?(:'building')
        self.building = attributes[:'building']
      end

      if attributes.has_key?(:'facility')
        self.facility = attributes[:'facility']
      end

      if attributes.has_key?(:'cageOnline')
        self.cage_online = attributes[:'cageOnline']
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
      movement_type_validator = EnumAttributeValidator.new('String', ['REMOVED_FROM_RACK', 'INSERTED_INTO_RACK'])
      return false unless movement_type_validator.valid?(@movement_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] movement_type Object to be assigned
    def movement_type=(movement_type)
      validator = EnumAttributeValidator.new('String', ['REMOVED_FROM_RACK', 'INSERTED_INTO_RACK'])
      unless validator.valid?(movement_type)
        fail ArgumentError, 'invalid value for "movement_type", must be one of #{validator.allowable_values}.'
      end
      @movement_type = movement_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          timestamp == o.timestamp &&
          cage_id == o.cage_id &&
          movement_type == o.movement_type &&
          position == o.position &&
          rack == o.rack &&
          ams_rack_id == o.ams_rack_id &&
          room == o.room &&
          floor == o.floor &&
          building == o.building &&
          facility == o.facility &&
          cage_online == o.cage_online
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [timestamp, cage_id, movement_type, position, rack, ams_rack_id, room, floor, building, facility, cage_online].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
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
        temp_model = Tecniplast.const_get(type).new
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
