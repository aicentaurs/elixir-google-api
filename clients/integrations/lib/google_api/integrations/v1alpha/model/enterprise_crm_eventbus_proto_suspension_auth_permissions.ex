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

defmodule GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionAuthPermissions do
  @moduledoc """
  LINT.IfChange

  ## Attributes

  *   `gaiaIdentity` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity.t`, *default:* `nil`) - Represents a Gaia identity for a person or service account.
  *   `googleGroup` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity.t`, *default:* `nil`) - 
  *   `loasRole` (*type:* `String.t`, *default:* `nil`) - 
  *   `mdbGroup` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gaiaIdentity =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity.t()
            | nil,
          :googleGroup =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity.t()
            | nil,
          :loasRole => String.t() | nil,
          :mdbGroup => String.t() | nil
        }

  field(:gaiaIdentity,
    as:
      GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity
  )

  field(:googleGroup,
    as:
      GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity
  )

  field(:loasRole)
  field(:mdbGroup)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionAuthPermissions do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionAuthPermissions.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuspensionAuthPermissions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
