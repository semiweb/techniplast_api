# OpenapiClient::TasksApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**jobs_get**](TasksApi.md#jobs_get) | **GET** /jobs | get list of tasks planned for today
[**jobs_uuid_complete_post**](TasksApi.md#jobs_uuid_complete_post) | **POST** /jobs/{uuid}/complete | report task completion


# **jobs_get**
> WorkUnitsList jobs_get(opts)

get list of tasks planned for today

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::TasksApi.new
opts = {
  work_unit_type: OpenapiClient::WorkUnitType.new, # WorkUnitType | Filters by type
  work_unit_status: OpenapiClient::WorkUnitStatus.new # WorkUnitStatus | Filters by status
}

begin
  #get list of tasks planned for today
  result = api_instance.jobs_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TasksApi->jobs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **work_unit_type** | [**WorkUnitType**](.md)| Filters by type | [optional] 
 **work_unit_status** | [**WorkUnitStatus**](.md)| Filters by status | [optional] 

### Return type

[**WorkUnitsList**](WorkUnitsList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_complete_post**
> jobs_uuid_complete_post(uuid)

report task completion

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::TasksApi.new
uuid = 'uuid_example' # String | id of task

begin
  #report task completion
  api_instance.jobs_uuid_complete_post(uuid)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TasksApi->jobs_uuid_complete_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| id of task | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



