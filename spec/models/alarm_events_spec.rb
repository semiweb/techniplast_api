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
require 'date'

# Unit tests for Tecniplast::AlarmEvents
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AlarmEvents' do
  before do
    # run before each test
    @instance = Tecniplast::AlarmEvents.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AlarmEvents' do
    it 'should create an instance of AlarmEvents' do
      expect(@instance).to be_instance_of(Tecniplast::AlarmEvents)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NOTIFY_ALARMS"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "triggered_by"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["TIME_LIMIT", "COUNT_LIMIT"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.triggered_by = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "events"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
