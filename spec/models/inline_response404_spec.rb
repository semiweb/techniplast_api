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
require 'date'

# Unit tests for OpenapiClient::InlineResponse404
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InlineResponse404' do
  before do
    # run before each test
    @instance = OpenapiClient::InlineResponse404.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse404' do
    it 'should create an instance of InlineResponse404' do
      expect(@instance).to be_instance_of(OpenapiClient::InlineResponse404)
    end
  end
  describe 'test attribute "reason"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["RESEARCHER_ID_NOT_FOUND", "PROTOCOL_ID_NOT_FOUND", "MOUSE_ID_NOT_FOUND", "RACK_ID_NOT_FOUND", "ROOM_ID_NOT_FOUND", "RACK_NOT_CONNECTED", "CAGE_NOT_LOCALIZABLE"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.reason = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "missing"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
