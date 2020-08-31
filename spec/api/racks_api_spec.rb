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

# Unit tests for Tecniplast::RacksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RacksApi' do
  before do
    # run before each test
    @instance = Tecniplast::RacksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RacksApi' do
    it 'should create an instance of RacksApi' do
      expect(@instance).to be_instance_of(Tecniplast::RacksApi)
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

end