# Update a powerpack returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::PowerpackAPI.new

# there is a valid "powerpack" in the system
POWERPACK_DATA_ID = ENV["POWERPACK_DATA_ID"]

body = DatadogAPIClient::V2::Powerpack.new({
  data: DatadogAPIClient::V2::PowerpackData.new({
    attributes: DatadogAPIClient::V2::PowerpackAttributes.new({
      description: "Sample powerpack",
      group_widget: {
        "definition": "{'layout_type': 'ordered', 'show_title': True, 'title': 'Sample Powerpack', 'type': 'group', 'widgets': [{'definition': {'content': 'test', 'type': 'note'}}]}", "layout": "{'height': 3, 'width': 12, 'x': 0, 'y': 0}",
      },
      name: "Sample Powerpack",
      tags: [
        "tag:sample",
      ],
      template_variables: [
        DatadogAPIClient::V2::PowerpackTemplateVariable.new({
          defaults: [
            "*",
          ],
          name: "sample",
        }),
      ],
    }),
    type: "powerpack",
  }),
})
p api_instance.update_powerpack(POWERPACK_DATA_ID, body)
