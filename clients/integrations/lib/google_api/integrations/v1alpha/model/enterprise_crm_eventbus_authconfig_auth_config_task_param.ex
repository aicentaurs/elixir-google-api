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

defmodule GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusAuthconfigAuthConfigTaskParam do
  @moduledoc """


  ## Attributes

  *   `allowedCredentialTypes` (*type:* `list(String.t)`, *default:* `nil`) - Defines the credential types to be supported as Task may restrict specific types to use, e.g. Cloud SQL Task will use username/password type only.
  *   `allowedServiceAccountInContext` (*type:* `boolean()`, *default:* `nil`) - 
  *   `authConfigId` (*type:* `String.t`, *default:* `nil`) - UUID of the AuthConfig.
  *   `scope` (*type:* `String.t`, *default:* `nil`) - A space-delimited list of requested scope permissions.
  *   `useServiceAccountInContext` (*type:* `boolean()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedCredentialTypes => list(String.t()) | nil,
          :allowedServiceAccountInContext => boolean() | nil,
          :authConfigId => String.t() | nil,
          :scope => String.t() | nil,
          :useServiceAccountInContext => boolean() | nil
        }

  field(:allowedCredentialTypes, type: :list)
  field(:allowedServiceAccountInContext)
  field(:authConfigId)
  field(:scope)
  field(:useServiceAccountInContext)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusAuthconfigAuthConfigTaskParam do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusAuthconfigAuthConfigTaskParam.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusAuthconfigAuthConfigTaskParam do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
