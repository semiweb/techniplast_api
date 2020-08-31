# Tecniplast::UsersApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventory_users_get**](UsersApi.md#inventory_users_get) | **GET** /inventory/users | get list of users
[**inventory_users_post**](UsersApi.md#inventory_users_post) | **POST** /inventory/users | create a new user
[**inventory_users_username_delete**](UsersApi.md#inventory_users_username_delete) | **DELETE** /inventory/users/{username} | remove an existing user
[**inventory_users_username_get**](UsersApi.md#inventory_users_username_get) | **GET** /inventory/users/{username} | get an existing user
[**inventory_users_username_put**](UsersApi.md#inventory_users_username_put) | **PUT** /inventory/users/{username} | modify an existing user


# **inventory_users_get**
> UserList inventory_users_get

get list of users

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::UsersApi.new

begin
  #get list of users
  result = api_instance.inventory_users_get
  p result
rescue Tecniplast::ApiError => e
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
> UserResponse inventory_users_post(opts)

create a new user

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::UsersApi.new
opts = {
  user_create: Tecniplast::UserCreate.new # UserCreate | 
}

begin
  #create a new user
  result = api_instance.inventory_users_post(opts)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling UsersApi->inventory_users_post: #{e}"
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



# **inventory_users_username_delete**
> inventory_users_username_delete(username)

remove an existing user

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::UsersApi.new
username = 'username_example' # String | id of user

begin
  #remove an existing user
  api_instance.inventory_users_username_delete(username)
rescue Tecniplast::ApiError => e
  puts "Exception when calling UsersApi->inventory_users_username_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| id of user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **inventory_users_username_get**
> UserResponse inventory_users_username_get(username)

get an existing user

### Example
```ruby
# load the gem
require 'tecniplast'

api_instance = Tecniplast::UsersApi.new
username = 'username_example' # String | id of user

begin
  #get an existing user
  result = api_instance.inventory_users_username_get(username)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling UsersApi->inventory_users_username_get: #{e}"
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

api_instance = Tecniplast::UsersApi.new
username = 'username_example' # String | id of user
opts = {
  user_update: Tecniplast::UserUpdate.new # UserUpdate | 
}

begin
  #modify an existing user
  result = api_instance.inventory_users_username_put(username, opts)
  p result
rescue Tecniplast::ApiError => e
  puts "Exception when calling UsersApi->inventory_users_username_put: #{e}"
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



