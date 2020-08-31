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

# Unit tests for Tecniplast::AlarmEventsEvents
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AlarmEventsEvents' do
  before do
    # run before each test
    @instance = Tecniplast::AlarmEventsEvents.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AlarmEventsEvents' do
    it 'should create an instance of AlarmEventsEvents' do
      expect(@instance).to be_instance_of(Tecniplast::AlarmEventsEvents)
    end
  end
  describe 'test attribute "timestamp"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ams_cage_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "alarm_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["MISSING_BOTTLE_ALARM_TYPE", "MISSING_FOOD_ALARM_TYPE", "MISSING_CAGE_ALARM_TYPE", "FLOODING_ALARM_TYPE"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.alarm_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "alarm_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["OPENED", "CLOSED"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.alarm_status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "position"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
