# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Games.V1.Model.PushTokenId do
  @moduledoc """
  This is a JSON template for a push token ID resource.

  ## Attributes

  *   `ios` (*type:* `GoogleApi.Games.V1.Model.PushTokenIdIos.t`, *default:* `nil`) - A push token ID for iOS devices.
  *   `kind` (*type:* `String.t`, *default:* `games#pushTokenId`) - Uniquely identifies the type of this resource. Value is always the fixed string games#pushTokenId.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ios => GoogleApi.Games.V1.Model.PushTokenIdIos.t(),
          :kind => String.t()
        }

  field(:ios, as: GoogleApi.Games.V1.Model.PushTokenIdIos)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.PushTokenId do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.PushTokenId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.PushTokenId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
