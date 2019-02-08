=begin
#DVC AMS API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 2.0.0_alpha1
Contact: marco.storto@tecniplast.it
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::LedsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LedsApi' do
  before do
    # run before each test
    @instance = OpenapiClient::LedsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LedsApi' do
    it 'should create an instance of LedsApi' do
      expect(@instance).to be_instance_of(OpenapiClient::LedsApi)
    end
  end

  # unit tests for inventory_cages_ams_cage_id_led_get
  # read led status
  # @param ams_cage_id id of cage to modify
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user id of the user performing the change
  # @return [LedColor]
  describe 'inventory_cages_ams_cage_id_led_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_cages_ams_cage_id_led_put
  # change led state
  # @param ams_cage_id id of cage to modify
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user id of the user performing the change
  # @option opts [LedBody] :led_body 
  # @return [nil]
  describe 'inventory_cages_ams_cage_id_led_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
