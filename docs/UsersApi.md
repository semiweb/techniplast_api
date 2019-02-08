# OpenapiClient::UsersApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_users_get**](UsersApi.md#inventory_users_get) | **GET** /inventory/users | 
[**inventory_users_post**](UsersApi.md#inventory_users_post) | **POST** /inventory/users | 
[**inventory_users_username_delete**](UsersApi.md#inventory_users_username_delete) | **DELETE** /inventory/users/{username} | 
[**inventory_users_username_put**](UsersApi.md#inventory_users_username_put) | **PUT** /inventory/users/{username} | 


# **inventory_users_get**
> UserList inventory_users_get



### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::UsersApi.new

begin
  result = api_instance.inventory_users_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling UsersApi->inventory_users_get: #{e}"
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
> User inventory_users_post(opts)



### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::UsersApi.new
opts = {
  user: OpenapiClient::User.new # User | 
}

begin
  result = api_instance.inventory_users_post(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling UsersApi->inventory_users_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **inventory_users_username_delete**
> inventory_users_username_delete(username)



### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::UsersApi.new
username = 'username_example' # String | id of user to modify

begin
  api_instance.inventory_users_username_delete(username)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling UsersApi->inventory_users_username_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| id of user to modify | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **inventory_users_username_put**
> User inventory_users_username_put(username, opts)



### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::UsersApi.new
username = 'username_example' # String | id of user to modify
opts = {
  user: OpenapiClient::User.new # User | 
}

begin
  result = api_instance.inventory_users_username_put(username, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling UsersApi->inventory_users_username_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| id of user to modify | 
 **user** | [**User**](User.md)|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



