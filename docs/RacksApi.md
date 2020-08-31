# Tecniplast::RacksApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_racks_ams_rack_id_get**](RacksApi.md#inventory_racks_ams_rack_id_get) | **GET** /inventory/racks/{amsRackId} | get rack information
[**inventory_racks_ams_rack_id_led_get**](RacksApi.md#inventory_racks_ams_rack_id_led_get) | **GET** /inventory/racks/{amsRackId}/led | get rack LEDs status (top two rows)
[**inventory_racks_ams_rack_id_led_put**](RacksApi.md#inventory_racks_ams_rack_id_led_put) | **PUT** /inventory/racks/{amsRackId}/led | activate rack LEDs (top two rows)
[**inventory_racks_get**](RacksApi.md#inventory_racks_get) | **GET** /inventory/racks | get racks information


# **inventory_racks_ams_rack_id_get**
> Rack inventory_racks_ams_rack_id_get(ams_rack_id)

get rack information

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::RacksApi.new
ams_rack_id = 'ams_rack_id_example' # String | id of rack

begin
  #get rack information
  result = api_instance.inventory_racks_ams_rack_id_get(ams_rack_id)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling RacksApi->inventory_racks_ams_rack_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_rack_id** | **String**| id of rack | 

### Return type

[**Rack**](Rack.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_racks_ams_rack_id_led_get**
> LedColorContainer inventory_racks_ams_rack_id_led_get(ams_rack_id)

get rack LEDs status (top two rows)

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::RacksApi.new
ams_rack_id = 'ams_rack_id_example' # String | id of rack

begin
  #get rack LEDs status (top two rows)
  result = api_instance.inventory_racks_ams_rack_id_led_get(ams_rack_id)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling RacksApi->inventory_racks_ams_rack_id_led_get: #{e}"
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

api_instance = Tecniplast::RacksApi.new
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
  puts "Exception when calling RacksApi->inventory_racks_ams_rack_id_led_put: #{e}"
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



# **inventory_racks_get**
> RacksList inventory_racks_get

get racks information

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::RacksApi.new

begin
  #get racks information
  result = api_instance.inventory_racks_get
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling RacksApi->inventory_racks_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RacksList**](RacksList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



