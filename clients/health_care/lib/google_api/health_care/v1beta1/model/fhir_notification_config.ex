# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.HealthCare.V1beta1.Model.FhirNotificationConfig do
  @moduledoc """
  Contains the configuration for FHIR notifications.

  ## Attributes

  *   `pubsubTopic` (*type:* `String.t`, *default:* `nil`) - The [Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that notifications of changes are published on. Supplied by the client. The notification is a `PubsubMessage` with the following fields: * `PubsubMessage.Data` contains the resource name. * `PubsubMessage.MessageId` is the ID of this notification. It is guaranteed to be unique within the topic. * `PubsubMessage.PublishTime` is the time when the message was published. Note that notifications are only sent if the topic is non-empty. [Topic names](https://cloud.google.com/pubsub/docs/overview#names) must be scoped to a project. The Cloud Healthcare API service account, service-@gcp-sa-healthcare.iam.gserviceaccount.com, must have publisher permissions on the given Pub/Sub topic. Not having adequate permissions causes the calls that send notifications to fail (https://cloud.google.com/healthcare-api/docs/permissions-healthcare-api-gcp-products#dicom_fhir_and_hl7v2_store_cloud_pubsub_permissions). If a notification can't be published to Pub/Sub, errors are logged to Cloud Logging. For more information, see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare-api/docs/how-tos/logging).
  *   `sendFullResource` (*type:* `boolean()`, *default:* `nil`) - Whether to send full FHIR resource to this Pub/Sub topic for Create and Update operation. Note that setting this to true does not guarantee that all resources will be sent in the format of full FHIR resource. When a resource change is too large or during heavy traffic, only the resource name will be sent. Clients should always check the "payloadType" label from a Pub/Sub message to determine whether it needs to fetch the full resource as a separate operation.
  *   `sendPreviousResourceOnDelete` (*type:* `boolean()`, *default:* `nil`) - Whether to send full FHIR resource to this Pub/Sub topic for deleting FHIR resource. Note that setting this to true does not guarantee that all previous resources will be sent in the format of full FHIR resource. When a resource change is too large or during heavy traffic, only the resource name will be sent. Clients should always check the "payloadType" label from a Pub/Sub message to determine whether it needs to fetch the full previous resource as a separate operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pubsubTopic => String.t() | nil,
          :sendFullResource => boolean() | nil,
          :sendPreviousResourceOnDelete => boolean() | nil
        }

  field(:pubsubTopic)
  field(:sendFullResource)
  field(:sendPreviousResourceOnDelete)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.FhirNotificationConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.FhirNotificationConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.FhirNotificationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
