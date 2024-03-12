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

defmodule GoogleApi.NetworkSecurity.V1.Model.SeverityOverride do
  @moduledoc """
  Defines what action to take for a specific severity match.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - Required. Threat action override.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - Required. Severity level to match.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t() | nil,
          :severity => String.t() | nil
        }

  field(:action)
  field(:severity)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkSecurity.V1.Model.SeverityOverride do
  def decode(value, options) do
    GoogleApi.NetworkSecurity.V1.Model.SeverityOverride.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkSecurity.V1.Model.SeverityOverride do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
