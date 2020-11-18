# DatadogAPIClient::V2::RelationshipToIncidentIntegrationMetadatas

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Array&lt;RelationshipToIncidentIntegrationMetadataData&gt;**](RelationshipToIncidentIntegrationMetadataData.md) | The integration metadata relationship array | 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::RelationshipToIncidentIntegrationMetadatas.new(data: [{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;incident_integration_metadata&quot;},{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;incident_integration_metadata&quot;}])
```

