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

# Unit tests for Tecniplast::InlineResponse4094
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InlineResponse4094' do
  before do
    # run before each test
    @instance = Tecniplast::InlineResponse4094.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse4094' do
    it 'should create an instance of InlineResponse4094' do
      expect(@instance).to be_instance_of(Tecniplast::InlineResponse4094)
    end
  end
  describe 'test attribute "reason"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["DIRTY_CAGE_NOT_REGISTERED"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.reason = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end