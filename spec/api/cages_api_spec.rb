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

# Unit tests for Tecniplast::CagesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CagesApi' do
  before do
    # run before each test
    @instance = Tecniplast::CagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CagesApi' do
    it 'should create an instance of CagesApi' do
      expect(@instance).to be_instance_of(Tecniplast::CagesApi)
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

end
