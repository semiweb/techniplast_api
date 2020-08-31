# Tecniplast::AvailableApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_cages**](AvailableApi.md#get_cages) | **GET** /inventory/cages | This path identifies the operation of searching for one or more cage
[**hooks_post**](AvailableApi.md#hooks_post) | **POST** /hooks | By posting on this endpoint you will register a subscriber to the DVC. One subscriber can receive different kinds of events
[**inventory_cages_ams_cage_id_bedding_change_full_post**](AvailableApi.md#inventory_cages_ams_cage_id_bedding_change_full_post) | **POST** /inventory/cages/{AmsCageId}/beddingChangeFull | report change of full cage (top+bottom)
[**inventory_cages_ams_cage_id_bedding_change_partial_post**](AvailableApi.md#inventory_cages_ams_cage_id_bedding_change_partial_post) | **POST** /inventory/cages/{AmsCageId}/beddingChangePartial | report change of bottom part only
[**inventory_cages_ams_cage_id_delete**](AvailableApi.md#inventory_cages_ams_cage_id_delete) | **DELETE** /inventory/cages/{AmsCageId} | Using the DELETE method you can force the dismiss of a cage
[**inventory_cages_ams_cage_id_get**](AvailableApi.md#inventory_cages_ams_cage_id_get) | **GET** /inventory/cages/{AmsCageId} | Get single cage
[**inventory_cages_ams_cage_id_led_get**](AvailableApi.md#inventory_cages_ams_cage_id_led_get) | **GET** /inventory/cages/{AmsCageId}/led | read led status
[**inventory_cages_ams_cage_id_led_put**](AvailableApi.md#inventory_cages_ams_cage_id_led_put) | **PUT** /inventory/cages/{AmsCageId}/led | change led state
[**inventory_cages_ams_cage_id_put**](AvailableApi.md#inventory_cages_ams_cage_id_put) | **PUT** /inventory/cages/{AmsCageId} | This path allows the caller to change the data about exactly one cage.
[**inventory_cages_post**](AvailableApi.md#inventory_cages_post) | **POST** /inventory/cages | By posting on this endpoint you may force the creation of a cage in the DVC system without requiring any operator action.
[**inventory_cages_split_post**](AvailableApi.md#inventory_cages_split_post) | **POST** /inventory/cages/split | This enables to modify a list of cages in a single transaction
[**inventory_racks_ams_rack_id_get**](AvailableApi.md#inventory_racks_ams_rack_id_get) | **GET** /inventory/racks/{amsRackId} | get rack information
[**inventory_racks_ams_rack_id_led_get**](AvailableApi.md#inventory_racks_ams_rack_id_led_get) | **GET** /inventory/racks/{amsRackId}/led | get rack LEDs status (top two rows)
[**inventory_racks_ams_rack_id_led_put**](AvailableApi.md#inventory_racks_ams_rack_id_led_put) | **PUT** /inventory/racks/{amsRackId}/led | activate rack LEDs (top two rows)
[**inventory_racks_get**](AvailableApi.md#inventory_racks_get) | **GET** /inventory/racks | get racks information
[**inventory_users_get**](AvailableApi.md#inventory_users_get) | **GET** /inventory/users | get list of users
[**inventory_users_post**](AvailableApi.md#inventory_users_post) | **POST** /inventory/users | create a new user
[**inventory_users_username_get**](AvailableApi.md#inventory_users_username_get) | **GET** /inventory/users/{username} | get an existing user
[**inventory_users_username_put**](AvailableApi.md#inventory_users_username_put) | **PUT** /inventory/users/{username} | modify an existing user
[**jobs_get**](AvailableApi.md#jobs_get) | **GET** /jobs | get list of tasks planned for today
[**jobs_uuid_close_post**](AvailableApi.md#jobs_uuid_close_post) | **POST** /jobs/{uuid}/close | report task completion


# **get_cages**
> CageList get_cages(opts)

This path identifies the operation of searching for one or more cage

Use one or more of the following parameter in the query to filter the result. If no parameter is given then all the cages known to the DVC that have been prepared, but not yet dismissed are returned<br>Parameter name is case insensitive

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::AvailableApi.new
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
  puts "Exception when calling AvailableApi->get_cages: #{e}"
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



# **hooks_post**
> HooksResponse hooks_post(opts)

By posting on this endpoint you will register a subscriber to the DVC. One subscriber can receive different kinds of events

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::AvailableApi.new
opts = {
  hooks_request: Tecniplast::HooksRequest.new # HooksRequest | 
}

begin
  #By posting on this endpoint you will register a subscriber to the DVC. One subscriber can receive different kinds of events
  result = api_instance.hooks_post(opts)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->hooks_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hooks_request** | [**HooksRequest**](HooksRequest.md)|  | [optional] 

### Return type

[**HooksResponse**](HooksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_cages_ams_cage_id_bedding_change_full_post**
> inventory_cages_ams_cage_id_bedding_change_full_post(ams_cage_id, user, opts)

report change of full cage (top+bottom)

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::AvailableApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify
user = 'user_example' # String | username of the user performing the change
opts = {
  bedding_change_full_request: Tecniplast::BeddingChangeFullRequest.new # BeddingChangeFullRequest | 
}

begin
  #report change of full cage (top+bottom)
  api_instance.inventory_cages_ams_cage_id_bedding_change_full_post(ams_cage_id, user, opts)
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_cages_ams_cage_id_bedding_change_full_post: #{e}"
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

api_instance = Tecniplast::AvailableApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify
user = 'user_example' # String | username of the user performing the change
opts = {
  bedding_change_partial_request: Tecniplast::BeddingChangePartialRequest.new # BeddingChangePartialRequest | 
}

begin
  #report change of bottom part only
  api_instance.inventory_cages_ams_cage_id_bedding_change_partial_post(ams_cage_id, user, opts)
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_cages_ams_cage_id_bedding_change_partial_post: #{e}"
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



# **inventory_cages_ams_cage_id_delete**
> inventory_cages_ams_cage_id_delete(ams_cage_id, user)

Using the DELETE method you can force the dismiss of a cage

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::AvailableApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify
user = 'user_example' # String | username of the user performing the change

begin
  #Using the DELETE method you can force the dismiss of a cage
  api_instance.inventory_cages_ams_cage_id_delete(ams_cage_id, user)
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_cages_ams_cage_id_delete: #{e}"
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

api_instance = Tecniplast::AvailableApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify

begin
  #Get single cage
  result = api_instance.inventory_cages_ams_cage_id_get(ams_cage_id)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_cages_ams_cage_id_get: #{e}"
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



# **inventory_cages_ams_cage_id_led_get**
> LedColorContainer inventory_cages_ams_cage_id_led_get(ams_cage_id)

read led status

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::AvailableApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify

begin
  #read led status
  result = api_instance.inventory_cages_ams_cage_id_led_get(ams_cage_id)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_cages_ams_cage_id_led_get: #{e}"
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

api_instance = Tecniplast::AvailableApi.new
ams_cage_id = 'ams_cage_id_example' # String | id of cage to modify
opts = {
  led_body: Tecniplast::LedBody.new # LedBody | 
}

begin
  #change led state
  api_instance.inventory_cages_ams_cage_id_led_put(ams_cage_id, opts)
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_cages_ams_cage_id_led_put: #{e}"
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



# **inventory_cages_ams_cage_id_put**
> CageLabel inventory_cages_ams_cage_id_put(ams_cage_id, user, opts)

This path allows the caller to change the data about exactly one cage.

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::AvailableApi.new
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
  puts "Exception when calling AvailableApi->inventory_cages_ams_cage_id_put: #{e}"
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

api_instance = Tecniplast::AvailableApi.new
user = 'user_example' # String | username of the user performing the change
opts = {
  body: nil # Object | 
}

begin
  #By posting on this endpoint you may force the creation of a cage in the DVC system without requiring any operator action.
  result = api_instance.inventory_cages_post(user, opts)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_cages_post: #{e}"
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

api_instance = Tecniplast::AvailableApi.new
opts = {
  cage_splits_inner: nil # Array<CageSplitsInner> | 
}

begin
  #This enables to modify a list of cages in a single transaction
  result = api_instance.inventory_cages_split_post(opts)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_cages_split_post: #{e}"
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



# **inventory_racks_ams_rack_id_get**
> Rack inventory_racks_ams_rack_id_get(ams_rack_id)

get rack information

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::AvailableApi.new
ams_rack_id = 'ams_rack_id_example' # String | id of rack

begin
  #get rack information
  result = api_instance.inventory_racks_ams_rack_id_get(ams_rack_id)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_racks_ams_rack_id_get: #{e}"
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

api_instance = Tecniplast::AvailableApi.new
ams_rack_id = 'ams_rack_id_example' # String | id of rack

begin
  #get rack LEDs status (top two rows)
  result = api_instance.inventory_racks_ams_rack_id_led_get(ams_rack_id)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_racks_ams_rack_id_led_get: #{e}"
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

api_instance = Tecniplast::AvailableApi.new
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
  puts "Exception when calling AvailableApi->inventory_racks_ams_rack_id_led_put: #{e}"
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

api_instance = Tecniplast::AvailableApi.new

begin
  #get racks information
  result = api_instance.inventory_racks_get
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_racks_get: #{e}"
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



# **inventory_users_get**
> UserList inventory_users_get

get list of users

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::AvailableApi.new

begin
  #get list of users
  result = api_instance.inventory_users_get
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_users_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserList**](UserList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_users_post**
> UserResponse inventory_users_post(opts)

create a new user

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::AvailableApi.new
opts = {
  user_create: Tecniplast::UserCreate.new # UserCreate | 
}

begin
  #create a new user
  result = api_instance.inventory_users_post(opts)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_users_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_create** | [**UserCreate**](UserCreate.md)|  | [optional] 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_users_username_get**
> UserResponse inventory_users_username_get(username)

get an existing user

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::AvailableApi.new
username = 'username_example' # String | id of user

begin
  #get an existing user
  result = api_instance.inventory_users_username_get(username)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_users_username_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| id of user | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_users_username_put**
> UserResponse inventory_users_username_put(username, opts)

modify an existing user

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::AvailableApi.new
username = 'username_example' # String | id of user
opts = {
  user_update: Tecniplast::UserUpdate.new # UserUpdate | 
}

begin
  #modify an existing user
  result = api_instance.inventory_users_username_put(username, opts)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->inventory_users_username_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| id of user | 
 **user_update** | [**UserUpdate**](UserUpdate.md)|  | [optional] 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **jobs_get**
> WorkUnitsList jobs_get(opts)

get list of tasks planned for today

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::AvailableApi.new
opts = {
  work_unit_type: Tecniplast::WorkUnitType.new, # WorkUnitType | Filters by type
  work_unit_status: Tecniplast::WorkUnitStatus.new, # WorkUnitStatus | Filters by status
  planned_date: 'planned_date_example', # String | Filter by planned date, in ISO 8601 format
  start: 0, # Integer | page start
  size: 1000 # Integer | page size
}

begin
  #get list of tasks planned for today
  result = api_instance.jobs_get(opts)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->jobs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **work_unit_type** | [**WorkUnitType**](.md)| Filters by type | [optional] 
 **work_unit_status** | [**WorkUnitStatus**](.md)| Filters by status | [optional] 
 **planned_date** | **String**| Filter by planned date, in ISO 8601 format | [optional] 
 **start** | **Integer**| page start | [optional] [default to 0]
 **size** | **Integer**| page size | [optional] [default to 1000]

### Return type

[**WorkUnitsList**](WorkUnitsList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_close_post**
> jobs_uuid_close_post(uuid, user, opts)

report task completion

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::AvailableApi.new
uuid = 'uuid_example' # String | id of task
user = 'user_example' # String | username of the user performing the change
opts = {
  body: Tecniplast::Body.new # Body | 
}

begin
  #report task completion
  api_instance.jobs_uuid_close_post(uuid, user, opts)
rescue Tecniplast::ApiError => e
  puts "Exception when calling AvailableApi->jobs_uuid_close_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| id of task | 
 **user** | **String**| username of the user performing the change | 
 **body** | [**Body**](Body.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



