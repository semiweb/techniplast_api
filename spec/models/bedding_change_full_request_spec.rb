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

# Unit tests for Tecniplast::BeddingChangeFullRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BeddingChangeFullRequest' do
  before do
    # run before each test
    @instance = Tecniplast::BeddingChangeFullRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BeddingChangeFullRequest' do
    it 'should create an instance of BeddingChangeFullRequest' do
      expect(@instance).to be_instance_of(Tecniplast::BeddingChangeFullRequest)
    end
  end
  describe 'test attribute "token"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "feedback"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["TooClean", "TooDirty", "Fair", "NoFeedback", "Flooding", "PupsComing"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.feedback = value }.not_to raise_error
      # end
    end
  end

end
