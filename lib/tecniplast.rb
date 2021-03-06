=begin
#DVC AMS API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 2.0.0
Contact: marco.storto@tecniplast.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.0.0

=end

# Common files
require 'tecniplast/api_client'
require 'tecniplast/api_error'
require 'tecniplast/version'
require 'tecniplast/configuration'

# Models
require 'tecniplast/models/alarm_events'
require 'tecniplast/models/alarm_events_events'
require 'tecniplast/models/ams_preparation_response'
require 'tecniplast/models/authentication_anonymous'
require 'tecniplast/models/authentication_basic'
require 'tecniplast/models/authentication_token'
require 'tecniplast/models/bedding_change_full_request'
require 'tecniplast/models/bedding_change_partial_request'
require 'tecniplast/models/body'
require 'tecniplast/models/cage'
require 'tecniplast/models/cage_creation'
require 'tecniplast/models/cage_hood'
require 'tecniplast/models/cage_label'
require 'tecniplast/models/cage_list'
require 'tecniplast/models/cage_movement_event'
require 'tecniplast/models/cage_movement_event_rack'
require 'tecniplast/models/cage_movement_event_reader'
require 'tecniplast/models/cage_movement_events'
require 'tecniplast/models/cage_position'
require 'tecniplast/models/cage_prepared_event'
require 'tecniplast/models/cage_rack'
require 'tecniplast/models/cage_splits'
require 'tecniplast/models/cage_splits_inner'
require 'tecniplast/models/cage_type'
require 'tecniplast/models/cage_unknown'
require 'tecniplast/models/hook_purpose'
require 'tecniplast/models/hooks_request'
require 'tecniplast/models/hooks_request_endpoints'
require 'tecniplast/models/hooks_response'
require 'tecniplast/models/hooks_response_inner'
require 'tecniplast/models/inline_response400'
require 'tecniplast/models/inline_response4001'
require 'tecniplast/models/inline_response4002'
require 'tecniplast/models/inline_response4003'
require 'tecniplast/models/inline_response4004'
require 'tecniplast/models/inline_response4005'
require 'tecniplast/models/inline_response404'
require 'tecniplast/models/inline_response4041'
require 'tecniplast/models/inline_response40410'
require 'tecniplast/models/inline_response40411'
require 'tecniplast/models/inline_response4042'
require 'tecniplast/models/inline_response4043'
require 'tecniplast/models/inline_response4044'
require 'tecniplast/models/inline_response4045'
require 'tecniplast/models/inline_response4046'
require 'tecniplast/models/inline_response4047'
require 'tecniplast/models/inline_response4048'
require 'tecniplast/models/inline_response4049'
require 'tecniplast/models/inline_response409'
require 'tecniplast/models/inline_response4091'
require 'tecniplast/models/inline_response4092'
require 'tecniplast/models/inline_response4093'
require 'tecniplast/models/inline_response4094'
require 'tecniplast/models/inline_response4095'
require 'tecniplast/models/inline_response4096'
require 'tecniplast/models/inline_response4097'
require 'tecniplast/models/inline_response503'
require 'tecniplast/models/led_body'
require 'tecniplast/models/led_color'
require 'tecniplast/models/led_color_container'
require 'tecniplast/models/mouse'
require 'tecniplast/models/rack'
require 'tecniplast/models/rack_geometry'
require 'tecniplast/models/racks_list'
require 'tecniplast/models/user_create'
require 'tecniplast/models/user_list'
require 'tecniplast/models/user_response'
require 'tecniplast/models/user_update'
require 'tecniplast/models/work_unit'
require 'tecniplast/models/work_unit_status'
require 'tecniplast/models/work_unit_type'
require 'tecniplast/models/work_units_list'

# APIs
require 'tecniplast/api/available_api'
require 'tecniplast/api/bedding_change_api'
require 'tecniplast/api/cages_api'
require 'tecniplast/api/hooks_api'
require 'tecniplast/api/leds_api'
require 'tecniplast/api/racks_api'
require 'tecniplast/api/tasks_api'
require 'tecniplast/api/users_api'

module Tecniplast
  class << self
    # Customize default settings for the SDK using block.
    #   Tecniplast.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
