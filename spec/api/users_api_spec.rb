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

# Unit tests for OpenapiClient::UsersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @instance = OpenapiClient::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instance of UsersApi' do
      expect(@instance).to be_instance_of(OpenapiClient::UsersApi)
    end
  end

  # unit tests for inventory_users_get
  # @param [Hash] opts the optional parameters
  # @return [UserList]
  describe 'inventory_users_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_users_post
  # @param [Hash] opts the optional parameters
  # @option opts [User] :user 
  # @return [User]
  describe 'inventory_users_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_users_username_delete
  # @param username id of user to modify
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'inventory_users_username_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for inventory_users_username_put
  # @param username id of user to modify
  # @param [Hash] opts the optional parameters
  # @option opts [User] :user 
  # @return [User]
  describe 'inventory_users_username_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
