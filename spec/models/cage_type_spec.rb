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

# Unit tests for OpenapiClient::CageType
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CageType' do
  before do
    # run before each test
    @instance = OpenapiClient::CageType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CageType' do
    it 'should create an instance of CageType' do
      expect(@instance).to be_instance_of(OpenapiClient::CageType)
    end
  end
end