=begin
#DVC AMS API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 2.0.0
Contact: marco.storto@tecniplast.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Tecniplast::AvailableApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AvailableApi' do
  before do
    # run before each test
    @instance = Tecniplast::AvailableApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AvailableApi' do
    it 'should create an instance of AvailableApi' do
      expect(@instance).to be_instance_of(Tecniplast::AvailableApi)
    end
  end

  # unit tests for get_cages
  # This path identifies the operation of searching for one or more cage
  # Use one or more of the following parameter in the query to filter the result. If no parameter is given then all the cages known to the DVC that have been prepared, but not yet dismissed are returned&lt;br&gt;Parameter name is case insensitive
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ams_protocol_id Filters all cages assigned to the specified protocol
  # @option opts [String] :ams_researcher_id Filters all cages belonging to the specified researcher
  # @option opts [String] :ams_mouse_id Find the cage with the specified mouse
  # @option opts [String] :ams_rack_id Find all the cages in this rack
  # @option opts [String] :ams_room_id Find all the cages in this room
  # @option opts [Integer] :page page number
  # @option opts [Integer] :size page size
  # @return [CageList]
  describe 'get_cages test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for hooks_post
  # By posting on this endpoint you will register a subscriber to the DVC. One subscriber can receive different kinds of events
  # @param [Hash] opts the optional parameters
  # @option opts [HooksRequest] :hooks_request 
  # @return [HooksResponse]
  describe 'hooks_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_cages_ams_cage_id_bedding_change_full_post
  # report change of full cage (top+bottom)
  # @param ams_cage_id id of cage to modify
  # @param user username of the user performing the change
  # @param [Hash] opts the optional parameters
  # @option opts [BeddingChangeFullRequest] :bedding_change_full_request 
  # @return [nil]
  describe 'inventory_cages_ams_cage_id_bedding_change_full_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_cages_ams_cage_id_bedding_change_partial_post
  # report change of bottom part only
  # @param ams_cage_id id of cage to modify
  # @param user username of the user performing the change
  # @param [Hash] opts the optional parameters
  # @option opts [BeddingChangePartialRequest] :bedding_change_partial_request 
  # @return [nil]
  describe 'inventory_cages_ams_cage_id_bedding_change_partial_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_cages_ams_cage_id_delete
  # Using the DELETE method you can force the dismiss of a cage
  # @param ams_cage_id id of cage to modify
  # @param user username of the user performing the change
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'inventory_cages_ams_cage_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_cages_ams_cage_id_get
  # Get single cage
  # @param ams_cage_id id of cage to modify
  # @param [Hash] opts the optional parameters
  # @return [Cage]
  describe 'inventory_cages_ams_cage_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_cages_ams_cage_id_led_get
  # read led status
  # @param ams_cage_id id of cage to modify
  # @param [Hash] opts the optional parameters
  # @return [LedColorContainer]
  describe 'inventory_cages_ams_cage_id_led_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_cages_ams_cage_id_led_put
  # change led state
  # @param ams_cage_id id of cage to modify
  # @param [Hash] opts the optional parameters
  # @option opts [LedBody] :led_body 
  # @return [nil]
  describe 'inventory_cages_ams_cage_id_led_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_cages_ams_cage_id_put
  # This path allows the caller to change the data about exactly one cage.
  # @param ams_cage_id id of cage to modify
  # @param user username of the user performing the change
  # @param [Hash] opts the optional parameters
  # @option opts [CageLabel] :cage_label 
  # @return [CageLabel]
  describe 'inventory_cages_ams_cage_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_cages_post
  # By posting on this endpoint you may force the creation of a cage in the DVC system without requiring any operator action.
  # @param user username of the user performing the change
  # @param [Hash] opts the optional parameters
  # @option opts [Object] :body 
  # @return [Cage]
  describe 'inventory_cages_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_cages_split_post
  # This enables to modify a list of cages in a single transaction
  # @param [Hash] opts the optional parameters
  # @option opts [Array<CageSplitsInner>] :cage_splits_inner 
  # @return [CageList]
  describe 'inventory_cages_split_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_racks_ams_rack_id_get
  # get rack information
  # @param ams_rack_id id of rack
  # @param [Hash] opts the optional parameters
  # @return [Rack]
  describe 'inventory_racks_ams_rack_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_racks_ams_rack_id_led_get
  # get rack LEDs status (top two rows)
  # @param ams_rack_id id of rack
  # @param [Hash] opts the optional parameters
  # @return [LedColorContainer]
  describe 'inventory_racks_ams_rack_id_led_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_racks_ams_rack_id_led_put
  # activate rack LEDs (top two rows)
  # @param ams_rack_id id of rack
  # @param user username of the user performing the change
  # @param [Hash] opts the optional parameters
  # @option opts [LedBody] :led_body 
  # @return [LedColorContainer]
  describe 'inventory_racks_ams_rack_id_led_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_racks_get
  # get racks information
  # @param [Hash] opts the optional parameters
  # @return [RacksList]
  describe 'inventory_racks_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_users_get
  # get list of users
  # @param [Hash] opts the optional parameters
  # @return [UserList]
  describe 'inventory_users_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_users_post
  # create a new user
  # @param [Hash] opts the optional parameters
  # @option opts [UserCreate] :user_create 
  # @return [UserResponse]
  describe 'inventory_users_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_users_username_get
  # get an existing user
  # @param username id of user
  # @param [Hash] opts the optional parameters
  # @return [UserResponse]
  describe 'inventory_users_username_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_users_username_put
  # modify an existing user
  # @param username id of user
  # @param [Hash] opts the optional parameters
  # @option opts [UserUpdate] :user_update 
  # @return [UserResponse]
  describe 'inventory_users_username_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for jobs_get
  # get list of tasks planned for today
  # @param [Hash] opts the optional parameters
  # @option opts [WorkUnitType] :work_unit_type Filters by type
  # @option opts [WorkUnitStatus] :work_unit_status Filters by status
  # @option opts [String] :planned_date Filter by planned date, in ISO 8601 format
  # @option opts [Integer] :start page start
  # @option opts [Integer] :size page size
  # @return [WorkUnitsList]
  describe 'jobs_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for jobs_uuid_close_post
  # report task completion
  # @param uuid id of task
  # @param user username of the user performing the change
  # @param [Hash] opts the optional parameters
  # @option opts [Body] :body 
  # @return [nil]
  describe 'jobs_uuid_close_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
