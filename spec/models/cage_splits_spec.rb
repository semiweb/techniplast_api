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

# Unit tests for Tecniplast::CageSplits
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CageSplits' do
  before do
    # run before each test
    @instance = Tecniplast::CageSplits.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CageSplits' do
    it 'should create an instance of CageSplits' do
      expect(@instance).to be_instance_of(Tecniplast::CageSplits)
    end
  end
end