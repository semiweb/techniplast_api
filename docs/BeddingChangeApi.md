# Tecniplast::BeddingChangeApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_cages_ams_cage_id_bedding_change_full_post**](BeddingChangeApi.md#inventory_cages_ams_cage_id_bedding_change_full_post) | **POST** /inventory/cages/{AmsCageId}/beddingChangeFull | report change of full cage (top+bottom)
[**inventory_cages_ams_cage_id_bedding_change_partial_post**](BeddingChangeApi.md#inventory_cages_ams_cage_id_bedding_change_partial_post) | **POST** /inventory/cages/{AmsCageId}/beddingChangePartial | report change of bottom part only


# **inventory_cages_ams_cage_id_bedding_change_full_post**
> inventory_cages_ams_cage_id_bedding_change_full_post(ams_cage_id, user, opts)

report change of full cage (top+bottom)

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::BeddingChangeApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify
user = 'user_example' # String | username of the user performing the change
opts = {
  bedding_change_full_request: Tecniplast::BeddingChangeFullRequest.new # BeddingChangeFullRequest | 
}

begin
  #report change of full cage (top+bottom)
  api_instance.inventory_cages_ams_cage_id_bedding_change_full_post(ams_cage_id, user, opts)
rescue Tecniplast::ApiError => e
  puts "Exception when calling BeddingChangeApi->inventory_cages_ams_cage_id_bedding_change_full_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_cage_id** | **String**| id of cage to modify | 
 **user** | **String**| username of the user performing the change | 
 **bedding_change_full_request** | [**BeddingChangeFullRequest**](BeddingChangeFullRequest.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_cages_ams_cage_id_bedding_change_partial_post**
> inventory_cages_ams_cage_id_bedding_change_partial_post(ams_cage_id, user, opts)

report change of bottom part only

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::BeddingChangeApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify
user = 'user_example' # String | username of the user performing the change
opts = {
  bedding_change_partial_request: Tecniplast::BeddingChangePartialRequest.new # BeddingChangePartialRequest | 
}

begin
  #report change of bottom part only
  api_instance.inventory_cages_ams_cage_id_bedding_change_partial_post(ams_cage_id, user, opts)
rescue Tecniplast::ApiError => e
  puts "Exception when calling BeddingChangeApi->inventory_cages_ams_cage_id_bedding_change_partial_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_cage_id** | **String**| id of cage to modify | 
 **user** | **String**| username of the user performing the change | 
 **bedding_change_partial_request** | [**BeddingChangePartialRequest**](BeddingChangePartialRequest.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



