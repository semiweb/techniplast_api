# Tecniplast::CagesApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_cages**](CagesApi.md#get_cages) | **GET** /inventory/cages | This path identifies the operation of searching for one or more cage
[**inventory_cages_ams_cage_id_delete**](CagesApi.md#inventory_cages_ams_cage_id_delete) | **DELETE** /inventory/cages/{AmsCageId} | Using the DELETE method you can force the dismiss of a cage
[**inventory_cages_ams_cage_id_get**](CagesApi.md#inventory_cages_ams_cage_id_get) | **GET** /inventory/cages/{AmsCageId} | Get single cage
[**inventory_cages_ams_cage_id_put**](CagesApi.md#inventory_cages_ams_cage_id_put) | **PUT** /inventory/cages/{AmsCageId} | This path allows the caller to change the data about exactly one cage.
[**inventory_cages_post**](CagesApi.md#inventory_cages_post) | **POST** /inventory/cages | By posting on this endpoint you may force the creation of a cage in the DVC system without requiring any operator action.
[**inventory_cages_split_post**](CagesApi.md#inventory_cages_split_post) | **POST** /inventory/cages/split | This enables to modify a list of cages in a single transaction


# **get_cages**
> CageList get_cages(opts)

This path identifies the operation of searching for one or more cage

Use one or more of the following parameter in the query to filter the result. If no parameter is given then all the cages known to the DVC that have been prepared, but not yet dismissed are returned<br>Parameter name is case insensitive

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::CagesApi.new
opts = {
  ams_protocol_id: 'ams_protocol_id_example', # String | Filters all cages assigned to the specified protocol
  ams_researcher_id: 'ams_researcher_id_example', # String | Filters all cages belonging to the specified researcher
  ams_mouse_id: 'ams_mouse_id_example', # String | Find the cage with the specified mouse
  ams_rack_id: 'ams_rack_id_example', # String | Find all the cages in this rack
  ams_room_id: 'ams_room_id_example', # String | Find all the cages in this room
  page: 1, # Integer | page number
  size: 1000 # Integer | page size
}

begin
  #This path identifies the operation of searching for one or more cage
  result = api_instance.get_cages(opts)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling CagesApi->get_cages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_protocol_id** | **String**| Filters all cages assigned to the specified protocol | [optional] 
 **ams_researcher_id** | **String**| Filters all cages belonging to the specified researcher | [optional] 
 **ams_mouse_id** | **String**| Find the cage with the specified mouse | [optional] 
 **ams_rack_id** | **String**| Find all the cages in this rack | [optional] 
 **ams_room_id** | **String**| Find all the cages in this room | [optional] 
 **page** | **Integer**| page number | [optional] [default to 1]
 **size** | **Integer**| page size | [optional] [default to 1000]

### Return type

[**CageList**](CageList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_cages_ams_cage_id_delete**
> inventory_cages_ams_cage_id_delete(ams_cage_id, user)

Using the DELETE method you can force the dismiss of a cage

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::CagesApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify
user = 'user_example' # String | username of the user performing the change

begin
  #Using the DELETE method you can force the dismiss of a cage
  api_instance.inventory_cages_ams_cage_id_delete(ams_cage_id, user)
rescue Tecniplast::ApiError => e
  puts "Exception when calling CagesApi->inventory_cages_ams_cage_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_cage_id** | **String**| id of cage to modify | 
 **user** | **String**| username of the user performing the change | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_cages_ams_cage_id_get**
> Cage inventory_cages_ams_cage_id_get(ams_cage_id)

Get single cage

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::CagesApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify

begin
  #Get single cage
  result = api_instance.inventory_cages_ams_cage_id_get(ams_cage_id)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling CagesApi->inventory_cages_ams_cage_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_cage_id** | **String**| id of cage to modify | 

### Return type

[**Cage**](Cage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_cages_ams_cage_id_put**
> CageLabel inventory_cages_ams_cage_id_put(ams_cage_id, user, opts)

This path allows the caller to change the data about exactly one cage.

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::CagesApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify
user = 'user_example' # String | username of the user performing the change
opts = {
  cage_label: Tecniplast::CageLabel.new # CageLabel | 
}

begin
  #This path allows the caller to change the data about exactly one cage.
  result = api_instance.inventory_cages_ams_cage_id_put(ams_cage_id, user, opts)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling CagesApi->inventory_cages_ams_cage_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ams_cage_id** | **String**| id of cage to modify | 
 **user** | **String**| username of the user performing the change | 
 **cage_label** | [**CageLabel**](CageLabel.md)|  | [optional] 

### Return type

[**CageLabel**](CageLabel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_cages_post**
> Cage inventory_cages_post(user, opts)

By posting on this endpoint you may force the creation of a cage in the DVC system without requiring any operator action.

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::CagesApi.new
user = 'user_example' # String | username of the user performing the change
opts = {
  body: nil # Object | 
}

begin
  #By posting on this endpoint you may force the creation of a cage in the DVC system without requiring any operator action.
  result = api_instance.inventory_cages_post(user, opts)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling CagesApi->inventory_cages_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| username of the user performing the change | 
 **body** | **Object**|  | [optional] 

### Return type

[**Cage**](Cage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_cages_split_post**
> CageList inventory_cages_split_post(opts)

This enables to modify a list of cages in a single transaction

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::CagesApi.new
opts = {
  cage_splits_inner: nil # Array<CageSplitsInner> | 
}

begin
  #This enables to modify a list of cages in a single transaction
  result = api_instance.inventory_cages_split_post(opts)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling CagesApi->inventory_cages_split_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cage_splits_inner** | [**Array&lt;CageSplitsInner&gt;**](Array.md)|  | [optional] 

### Return type

[**CageList**](CageList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



