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

defmodule GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry do
  @moduledoc """


  ## Attributes

  *   `attributes` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoAttributes.t`, *default:* `nil`) - Metadata information about the parameters.
  *   `children` (*type:* `list(GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry.t)`, *default:* `nil`) - Child parameters nested within this parameter. This field only applies to protobuf parameters
  *   `containsLargeData` (*type:* `boolean()`, *default:* `nil`) - Indicates whether this variable contains large data and need to be uploaded to Cloud Storage.
  *   `dataType` (*type:* `String.t`, *default:* `nil`) - The data type of the parameter.
  *   `defaultValue` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoParameterValueType.t`, *default:* `nil`) - Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The description about the parameter
  *   `inOutType` (*type:* `String.t`, *default:* `nil`) - Specifies the input/output type for the parameter.
  *   `isTransient` (*type:* `boolean()`, *default:* `nil`) - Whether this parameter is a transient parameter.
  *   `jsonSchema` (*type:* `String.t`, *default:* `nil`) - This schema will be used to validate runtime JSON-typed values of this parameter.
  *   `key` (*type:* `String.t`, *default:* `nil`) - Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is "foo.bar.myName", then the name would be "myName".
  *   `producedBy` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoNodeIdentifier.t`, *default:* `nil`) - The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a transient param or a copy of an input param.
  *   `producer` (*type:* `String.t`, *default:* `nil`) - 
  *   `protoDefName` (*type:* `String.t`, *default:* `nil`) - The name of the protobuf type if the parameter has a protobuf data type.
  *   `protoDefPath` (*type:* `String.t`, *default:* `nil`) - If the data type is of type proto or proto array, this field needs to be populated with the fully qualified proto name. This message, for example, would be "enterprise.crm.frontends.eventbus.proto.WorkflowParameterEntry".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoAttributes.t() | nil,
          :children =>
            list(
              GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry.t()
            )
            | nil,
          :containsLargeData => boolean() | nil,
          :dataType => String.t() | nil,
          :defaultValue =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoParameterValueType.t()
            | nil,
          :description => String.t() | nil,
          :inOutType => String.t() | nil,
          :isTransient => boolean() | nil,
          :jsonSchema => String.t() | nil,
          :key => String.t() | nil,
          :name => String.t() | nil,
          :producedBy =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoNodeIdentifier.t()
            | nil,
          :producer => String.t() | nil,
          :protoDefName => String.t() | nil,
          :protoDefPath => String.t() | nil
        }

  field(:attributes, as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoAttributes)

  field(:children,
    as:
      GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry,
    type: :list
  )

  field(:containsLargeData)
  field(:dataType)

  field(:defaultValue,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoParameterValueType
  )

  field(:description)
  field(:inOutType)
  field(:isTransient)
  field(:jsonSchema)
  field(:key)
  field(:name)

  field(:producedBy,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoNodeIdentifier
  )

  field(:producer)
  field(:protoDefName)
  field(:protoDefPath)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
