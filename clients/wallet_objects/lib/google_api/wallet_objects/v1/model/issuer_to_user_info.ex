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

defmodule GoogleApi.WalletObjects.V1.Model.IssuerToUserInfo do
  @moduledoc """


  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - 
  *   `signUpInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.SignUpInfo.t`, *default:* `nil`) - 
  *   `url` (*type:* `String.t`, *default:* `nil`) - Currently not used, consider deprecating.
  *   `value` (*type:* `String.t`, *default:* `nil`) - JSON web token for action S2AP.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t() | nil,
          :signUpInfo => GoogleApi.WalletObjects.V1.Model.SignUpInfo.t() | nil,
          :url => String.t() | nil,
          :value => String.t() | nil
        }

  field(:action)
  field(:signUpInfo, as: GoogleApi.WalletObjects.V1.Model.SignUpInfo)
  field(:url)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.IssuerToUserInfo do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.IssuerToUserInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.IssuerToUserInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
