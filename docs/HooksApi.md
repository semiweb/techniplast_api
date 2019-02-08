# OpenapiClient::HooksApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**hooks_post**](HooksApi.md#hooks_post) | **POST** /hooks | By posting on this endpoint you will register a subscriber to the DVC. One subscriber can receive different kinds of events


# **hooks_post**
> HooksResponse hooks_post(opts)

By posting on this endpoint you will register a subscriber to the DVC. One subscriber can receive different kinds of events

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::HooksApi.new
opts = {
  hooks_request: OpenapiClient::HooksRequest.new # HooksRequest | 
}

begin
  #By posting on this endpoint you will register a subscriber to the DVC. One subscriber can receive different kinds of events
  result = api_instance.hooks_post(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling HooksApi->hooks_post: #{e}"
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



