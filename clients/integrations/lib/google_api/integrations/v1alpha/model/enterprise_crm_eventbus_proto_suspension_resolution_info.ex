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

defmodule GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionResolutionInfo do
  @moduledoc """


  ## Attributes

  *   `audit` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit.t`, *default:* `nil`) - 
  *   `clientId` (*type:* `String.t`, *default:* `nil`) - The event data user sends as request.
  *   `cloudKmsConfig` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoCloudKmsConfig.t`, *default:* `nil`) - KMS info, used by cmek/gmek integration
  *   `createdTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - Auto-generated.
  *   `encryptedSuspensionResolutionInfo` (*type:* `String.t`, *default:* `nil`) - Encrypted SuspensionResolutionInfo
  *   `eventExecutionInfoId` (*type:* `String.t`, *default:* `nil`) - Required. ID of the associated execution.
  *   `externalTraffic` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoExternalTraffic.t`, *default:* `nil`) - The origin of the suspension for periodic notifications.
  *   `lastModifiedTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - Auto-generated.
  *   `product` (*type:* `String.t`, *default:* `nil`) - Which Google product the suspension belongs to. If not set, the suspension belongs to Integration Platform by default.
  *   `status` (*type:* `String.t`, *default:* `nil`) - 
  *   `suspensionConfig` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionConfig.t`, *default:* `nil`) - 
  *   `suspensionId` (*type:* `String.t`, *default:* `nil`) - Primary key for the SuspensionResolutionInfoTable.
  *   `taskNumber` (*type:* `String.t`, *default:* `nil`) - Required. Task number of the associated SuspensionTask.
  *   `workflowName` (*type:* `String.t`, *default:* `nil`) - Required. The name of the originating workflow.
  *   `wrappedDek` (*type:* `String.t`, *default:* `nil`) - Wrapped dek
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audit =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit.t()
            | nil,
          :clientId => String.t() | nil,
          :cloudKmsConfig =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoCloudKmsConfig.t()
            | nil,
          :createdTimestamp => DateTime.t() | nil,
          :encryptedSuspensionResolutionInfo => String.t() | nil,
          :eventExecutionInfoId => String.t() | nil,
          :externalTraffic =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoExternalTraffic.t()
            | nil,
          :lastModifiedTimestamp => DateTime.t() | nil,
          :product => String.t() | nil,
          :status => String.t() | nil,
          :suspensionConfig =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionConfig.t()
            | nil,
          :suspensionId => String.t() | nil,
          :taskNumber => String.t() | nil,
          :workflowName => String.t() | nil,
          :wrappedDek => String.t() | nil
        }

  field(:audit,
    as:
      GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit
  )

  field(:clientId)

  field(:cloudKmsConfig,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoCloudKmsConfig
  )

  field(:createdTimestamp, as: DateTime)
  field(:encryptedSuspensionResolutionInfo)
  field(:eventExecutionInfoId)

  field(:externalTraffic,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoExternalTraffic
  )

  field(:lastModifiedTimestamp, as: DateTime)
  field(:product)
  field(:status)

  field(:suspensionConfig,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionConfig
  )

  field(:suspensionId)
  field(:taskNumber)
  field(:workflowName)
  field(:wrappedDek)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionResolutionInfo do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionResolutionInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionResolutionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
