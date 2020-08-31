# Tecniplast::HooksRequestEndpoints

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**purpose** | [**HookPurpose**](HookPurpose.md) |  | [optional] 
**min_per_message** | **Integer** | optionally tells DVC how many events may be collected in a single message (API request). This is intended to avoid sending too many events in a single message | [optional] 
**collect_for** | **Integer** | optionally tells the DVC to wait for some time before sending the event. This is intended for avoiding to issue a single message for a single event | [optional] 
**authentication** | **Object** |  | [optional] 


