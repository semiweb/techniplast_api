# openapi_client

OpenapiClient - the Ruby gem for the DVC AMS API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0.0_alpha1
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```
(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'openapi_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'openapi_client'

api_instance = OpenapiClient::BeddingChangeApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify
opts = {
  user: 'user_example', # String | id of the user performing the change
  bedding_change_request: OpenapiClient::BeddingChangeRequest.new # BeddingChangeRequest | 
}

begin
  #report change of full cage (top+bottom)
  api_instance.inventory_cages_ams_cage_id_bedding_change_full_post(ams_cage_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling BeddingChangeApi->inventory_cages_ams_cage_id_bedding_change_full_post: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://localhost/api/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::BeddingChangeApi* | [**inventory_cages_ams_cage_id_bedding_change_full_post**](docs/BeddingChangeApi.md#inventory_cages_ams_cage_id_bedding_change_full_post) | **POST** /inventory/cages/{AmsCageId}/beddingChangeFull | report change of full cage (top+bottom)
*OpenapiClient::BeddingChangeApi* | [**inventory_cages_ams_cage_id_bedding_change_partial_post**](docs/BeddingChangeApi.md#inventory_cages_ams_cage_id_bedding_change_partial_post) | **POST** /inventory/cages/{AmsCageId}/beddingChangePartial | report change of bottom part only
*OpenapiClient::CagesApi* | [**get_cages**](docs/CagesApi.md#get_cages) | **GET** /inventory/cages | This path identifies the operation of searching for one or more cage
*OpenapiClient::CagesApi* | [**inventory_cages_ams_cage_id_delete**](docs/CagesApi.md#inventory_cages_ams_cage_id_delete) | **DELETE** /inventory/cages/{AmsCageId} | Using the DELETE method you can force the dismiss of a cage
*OpenapiClient::CagesApi* | [**inventory_cages_ams_cage_id_put**](docs/CagesApi.md#inventory_cages_ams_cage_id_put) | **PUT** /inventory/cages/{AmsCageId} | This path allows the caller to change the data about exactly one cage.
*OpenapiClient::CagesApi* | [**inventory_cages_post**](docs/CagesApi.md#inventory_cages_post) | **POST** /inventory/cages | By posting on this endpoint you may force the creation of a cage in the DVC system without requiring any operator action.
*OpenapiClient::HooksApi* | [**hooks_post**](docs/HooksApi.md#hooks_post) | **POST** /hooks | By posting on this endpoint you will register a subscriber to the DVC. One subscriber can receive different kinds of events
*OpenapiClient::LedsApi* | [**inventory_cages_ams_cage_id_led_get**](docs/LedsApi.md#inventory_cages_ams_cage_id_led_get) | **GET** /inventory/cages/{AmsCageId}/led | read led status
*OpenapiClient::LedsApi* | [**inventory_cages_ams_cage_id_led_put**](docs/LedsApi.md#inventory_cages_ams_cage_id_led_put) | **PUT** /inventory/cages/{AmsCageId}/led | change led state
*OpenapiClient::TasksApi* | [**jobs_get**](docs/TasksApi.md#jobs_get) | **GET** /jobs | get list of tasks planned for today
*OpenapiClient::TasksApi* | [**jobs_uuid_complete_post**](docs/TasksApi.md#jobs_uuid_complete_post) | **POST** /jobs/{uuid}/complete | report task completion
*OpenapiClient::UsersApi* | [**inventory_users_get**](docs/UsersApi.md#inventory_users_get) | **GET** /inventory/users | 
*OpenapiClient::UsersApi* | [**inventory_users_post**](docs/UsersApi.md#inventory_users_post) | **POST** /inventory/users | 
*OpenapiClient::UsersApi* | [**inventory_users_username_delete**](docs/UsersApi.md#inventory_users_username_delete) | **DELETE** /inventory/users/{username} | 
*OpenapiClient::UsersApi* | [**inventory_users_username_put**](docs/UsersApi.md#inventory_users_username_put) | **PUT** /inventory/users/{username} | 


## Documentation for Models

 - [OpenapiClient::AuthenticationAnonymous](docs/AuthenticationAnonymous.md)
 - [OpenapiClient::AuthenticationBasic](docs/AuthenticationBasic.md)
 - [OpenapiClient::AuthenticationToken](docs/AuthenticationToken.md)
 - [OpenapiClient::BeddingChangeRequest](docs/BeddingChangeRequest.md)
 - [OpenapiClient::CageLabel](docs/CageLabel.md)
 - [OpenapiClient::CageMovementEvent](docs/CageMovementEvent.md)
 - [OpenapiClient::CageMovementEventRack](docs/CageMovementEventRack.md)
 - [OpenapiClient::CageMovementEventReader](docs/CageMovementEventReader.md)
 - [OpenapiClient::CageMovementEvents](docs/CageMovementEvents.md)
 - [OpenapiClient::CagePosition](docs/CagePosition.md)
 - [OpenapiClient::CagePreparedEvent](docs/CagePreparedEvent.md)
 - [OpenapiClient::CageType](docs/CageType.md)
 - [OpenapiClient::CagesList](docs/CagesList.md)
 - [OpenapiClient::HookPurpose](docs/HookPurpose.md)
 - [OpenapiClient::HooksRequest](docs/HooksRequest.md)
 - [OpenapiClient::HooksRequestEndpoints](docs/HooksRequestEndpoints.md)
 - [OpenapiClient::HooksResponse](docs/HooksResponse.md)
 - [OpenapiClient::HooksResponseInner](docs/HooksResponseInner.md)
 - [OpenapiClient::InlineResponse404](docs/InlineResponse404.md)
 - [OpenapiClient::InlineResponse4041](docs/InlineResponse4041.md)
 - [OpenapiClient::LedBody](docs/LedBody.md)
 - [OpenapiClient::LedColor](docs/LedColor.md)
 - [OpenapiClient::Mouse](docs/Mouse.md)
 - [OpenapiClient::NewCage](docs/NewCage.md)
 - [OpenapiClient::NewCageHood](docs/NewCageHood.md)
 - [OpenapiClient::NewCageRack](docs/NewCageRack.md)
 - [OpenapiClient::User](docs/User.md)
 - [OpenapiClient::UserList](docs/UserList.md)
 - [OpenapiClient::WorkUnit](docs/WorkUnit.md)
 - [OpenapiClient::WorkUnitStatus](docs/WorkUnitStatus.md)
 - [OpenapiClient::WorkUnitType](docs/WorkUnitType.md)
 - [OpenapiClient::WorkUnitsList](docs/WorkUnitsList.md)


## Documentation for Authorization

 All endpoints do not require authorization.
