# OpenapiClient::LedsApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_cages_ams_cage_id_led_get**](LedsApi.md#inventory_cages_ams_cage_id_led_get) | **GET** /inventory/cages/{AmsCageId}/led | read led status
[**inventory_cages_ams_cage_id_led_put**](LedsApi.md#inventory_cages_ams_cage_id_led_put) | **PUT** /inventory/cages/{AmsCageId}/led | change led state


# **inventory_cages_ams_cage_id_led_get**
> LedColor inventory_cages_ams_cage_id_led_get(ams_cage_id, opts)

read led status

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::LedsApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify
opts = {
  user: 'user_example' # String | id of the user performing the change
}

begin
  #read led status
  result = api_instance.inventory_cages_ams_cage_id_led_get(ams_cage_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling LedsApi->inventory_cages_ams_cage_id_led_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_cage_id** | **String**| id of cage to modify | 
 **user** | **String**| id of the user performing the change | [optional] 

### Return type

[**LedColor**](LedColor.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_cages_ams_cage_id_led_put**
> inventory_cages_ams_cage_id_led_put(ams_cage_id, opts)

change led state

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::LedsApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify
opts = {
  user: 'user_example', # String | id of the user performing the change
  led_body: OpenapiClient::LedBody.new # LedBody | 
}

begin
  #change led state
  api_instance.inventory_cages_ams_cage_id_led_put(ams_cage_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling LedsApi->inventory_cages_ams_cage_id_led_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_cage_id** | **String**| id of cage to modify | 
 **user** | **String**| id of the user performing the change | [optional] 
 **led_body** | [**LedBody**](LedBody.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



