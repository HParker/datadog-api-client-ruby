# Create a tag configuration returns "Created" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:create_tag_configuration] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new

body = DatadogAPIClient::V2::MetricTagConfigurationCreateRequest.new({
  data: DatadogAPIClient::V2::MetricTagConfigurationCreateData.new({
    type: DatadogAPIClient::V2::MetricTagConfigurationType::MANAGE_TAGS,
    id: "ExampleCreateatagconfigurationreturnsCreatedresponse",
    attributes: DatadogAPIClient::V2::MetricTagConfigurationCreateAttributes.new({
      tags: [
        "app",
        "datacenter",
      ],
      metric_type: DatadogAPIClient::V2::MetricTagConfigurationMetricTypes::DISTRIBUTION,
    }),
  }),
})
p api_instance.create_tag_configuration("ExampleCreateatagconfigurationreturnsCreatedresponse", body)