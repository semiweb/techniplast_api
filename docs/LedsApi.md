# Tecniplast::LedsApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_cages_ams_cage_id_led_get**](LedsApi.md#inventory_cages_ams_cage_id_led_get) | **GET** /inventory/cages/{AmsCageId}/led | read led status
[**inventory_cages_ams_cage_id_led_put**](LedsApi.md#inventory_cages_ams_cage_id_led_put) | **PUT** /inventory/cages/{AmsCageId}/led | change led state
[**inventory_racks_ams_rack_id_led_get**](LedsApi.md#inventory_racks_ams_rack_id_led_get) | **GET** /inventory/racks/{amsRackId}/led | get rack LEDs status (top two rows)
[**inventory_racks_ams_rack_id_led_put**](LedsApi.md#inventory_racks_ams_rack_id_led_put) | **PUT** /inventory/racks/{amsRackId}/led | activate rack LEDs (top two rows)


# **inventory_cages_ams_cage_id_led_get**
> LedColorContainer inventory_cages_ams_cage_id_led_get(ams_cage_id)

read led status

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::LedsApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify

begin
  #read led status
  result = api_instance.inventory_cages_ams_cage_id_led_get(ams_cage_id)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling LedsApi->inventory_cages_ams_cage_id_led_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_cage_id** | **String**| id of cage to modify | 

### Return type

[**LedColorContainer**](LedColorContainer.md)

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
require 'tecniplast'

api_instance = Tecniplast::LedsApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify
opts = {
  led_body: Tecniplast::LedBody.new # LedBody | 
}

begin
  #change led state
  api_instance.inventory_cages_ams_cage_id_led_put(ams_cage_id, opts)
rescue Tecniplast::ApiError => e
  puts "Exception when calling LedsApi->inventory_cages_ams_cage_id_led_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_cage_id** | **String**| id of cage to modify | 
 **led_body** | [**LedBody**](LedBody.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_racks_ams_rack_id_led_get**
> LedColorContainer inventory_racks_ams_rack_id_led_get(ams_rack_id)

get rack LEDs status (top two rows)

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::LedsApi.new
ams_rack_id = 'ams_rack_id_example' # String | id of rack

begin
  #get rack LEDs status (top two rows)
  result = api_instance.inventory_racks_ams_rack_id_led_get(ams_rack_id)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling LedsApi->inventory_racks_ams_rack_id_led_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_rack_id** | **String**| id of rack | 

### Return type

[**LedColorContainer**](LedColorContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_racks_ams_rack_id_led_put**
> LedColorContainer inventory_racks_ams_rack_id_led_put(ams_rack_id, user, opts)

activate rack LEDs (top two rows)

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::LedsApi.new
ams_rack_id = 'ams_rack_id_example' # String | id of rack
user = 'user_example' # String | username of the user performing the change
opts = {
  led_body: Tecniplast::LedBody.new # LedBody | 
}

begin
  #activate rack LEDs (top two rows)
  result = api_instance.inventory_racks_ams_rack_id_led_put(ams_rack_id, user, opts)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling LedsApi->inventory_racks_ams_rack_id_led_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_rack_id** | **String**| id of rack | 
 **user** | **String**| username of the user performing the change | 
 **led_body** | [**LedBody**](LedBody.md)|  | [optional] 

### Return type

[**LedColorContainer**](LedColorContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



