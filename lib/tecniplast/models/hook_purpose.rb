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
  class HookPurpose
    
    CAGE_MOVEMENT = 'NOTIFY_CAGE_MOVEMENT'.freeze
    CAGE_PREPARED = 'NOTIFY_CAGE_PREPARED'.freeze
    NEW_TASKS = 'NOTIFY_NEW_TASKS'.freeze
    ALARMS = 'NOTIFY_ALARMS'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = HookPurpose.constants.select { |c| HookPurpose::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #HookPurpose" if constantValues.empty?
      value
    end
  end
end