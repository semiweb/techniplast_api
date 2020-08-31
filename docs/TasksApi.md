# Tecniplast::TasksApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**jobs_get**](TasksApi.md#jobs_get) | **GET** /jobs | get list of tasks planned for today
[**jobs_uuid_close_post**](TasksApi.md#jobs_uuid_close_post) | **POST** /jobs/{uuid}/close | report task completion


# **jobs_get**
> WorkUnitsList jobs_get(opts)

get list of tasks planned for today

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::TasksApi.new
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
  puts "Exception when calling TasksApi->jobs_get: #{e}"
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

api_instance = Tecniplast::TasksApi.new
uuid = 'uuid_example' # String | id of task
user = 'user_example' # String | username of the user performing the change
opts = {
  body: Tecniplast::Body.new # Body | 
}

begin
  #report task completion
  api_instance.jobs_uuid_close_post(uuid, user, opts)
rescue Tecniplast::ApiError => e
  puts "Exception when calling TasksApi->jobs_uuid_close_post: #{e}"
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



