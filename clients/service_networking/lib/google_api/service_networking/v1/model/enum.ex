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

defmodule GoogleApi.ServiceNetworking.V1.Model.Enum do
  @moduledoc """
  Enum type definition.

  ## Attributes

  *   `edition` (*type:* `String.t`, *default:* `nil`) - The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  *   `enumvalue` (*type:* `list(GoogleApi.ServiceNetworking.V1.Model.EnumValue.t)`, *default:* `nil`) - Enum value definitions.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Enum type name.
  *   `options` (*type:* `list(GoogleApi.ServiceNetworking.V1.Model.Option.t)`, *default:* `nil`) - Protocol buffer options.
  *   `sourceContext` (*type:* `GoogleApi.ServiceNetworking.V1.Model.SourceContext.t`, *default:* `nil`) - The source context.
  *   `syntax` (*type:* `String.t`, *default:* `nil`) - The source syntax.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :edition => String.t() | nil,
          :enumvalue => list(GoogleApi.ServiceNetworking.V1.Model.EnumValue.t()) | nil,
          :name => String.t() | nil,
          :options => list(GoogleApi.ServiceNetworking.V1.Model.Option.t()) | nil,
          :sourceContext => GoogleApi.ServiceNetworking.V1.Model.SourceContext.t() | nil,
          :syntax => String.t() | nil
        }

  field(:edition)
  field(:enumvalue, as: GoogleApi.ServiceNetworking.V1.Model.EnumValue, type: :list)
  field(:name)
  field(:options, as: GoogleApi.ServiceNetworking.V1.Model.Option, type: :list)
  field(:sourceContext, as: GoogleApi.ServiceNetworking.V1.Model.SourceContext)
  field(:syntax)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.Enum do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.Enum.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.Enum do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
