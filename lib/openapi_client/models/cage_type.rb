=begin
#DVC AMS API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 2.0.0_alpha1
Contact: marco.storto@tecniplast.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.0.0

=end

require 'date'

module OpenapiClient
  class CageType
    
    UNDEFINED = 'CAGE_TYPE_UNDEFINED'.freeze
    STOCK = 'CAGE_TYPE_STOCK'.freeze
    BREEDING = 'CAGE_TYPE_BREEDING'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = CageType.constants.select { |c| CageType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CageType" if constantValues.empty?
      value
    end
  end
end
