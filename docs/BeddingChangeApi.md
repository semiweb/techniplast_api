# OpenapiClient::BeddingChangeApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_cages_ams_cage_id_bedding_change_full_post**](BeddingChangeApi.md#inventory_cages_ams_cage_id_bedding_change_full_post) | **POST** /inventory/cages/{AmsCageId}/beddingChangeFull | report change of full cage (top+bottom)
[**inventory_cages_ams_cage_id_bedding_change_partial_post**](BeddingChangeApi.md#inventory_cages_ams_cage_id_bedding_change_partial_post) | **POST** /inventory/cages/{AmsCageId}/beddingChangePartial | report change of bottom part only


# **inventory_cages_ams_cage_id_bedding_change_full_post**
> inventory_cages_ams_cage_id_bedding_change_full_post(ams_cage_id, opts)

report change of full cage (top+bottom)

### Example
```ruby
# load the gem
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_cage_id** | **String**| id of cage to modify | 
 **user** | **String**| id of the user performing the change | [optional] 
 **bedding_change_request** | [**BeddingChangeRequest**](BeddingChangeRequest.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **inventory_cages_ams_cage_id_bedding_change_partial_post**
> inventory_cages_ams_cage_id_bedding_change_partial_post(ams_cage_id, opts)

report change of bottom part only

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::BeddingChangeApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify
opts = {
  user: 'user_example', # String | id of the user performing the change
  bedding_change_request: OpenapiClient::BeddingChangeRequest.new # BeddingChangeRequest | 
}

begin
  #report change of bottom part only
  api_instance.inventory_cages_ams_cage_id_bedding_change_partial_post(ams_cage_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling BeddingChangeApi->inventory_cages_ams_cage_id_bedding_change_partial_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_cage_id** | **String**| id of cage to modify | 
 **user** | **String**| id of the user performing the change | [optional] 
 **bedding_change_request** | [**BeddingChangeRequest**](BeddingChangeRequest.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



