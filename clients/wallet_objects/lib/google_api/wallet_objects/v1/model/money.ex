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

defmodule GoogleApi.WalletObjects.V1.Model.Money do
  @moduledoc """


  ## Attributes

  *   `currencyCode` (*type:* `String.t`, *default:* `nil`) - The currency code, such as "USD" or "EUR."
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string `"walletobjects#money"`.
  *   `micros` (*type:* `String.t`, *default:* `nil`) - The unit of money amount in micros. For example, $1 USD would be represented as 1000000 micros.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currencyCode => String.t() | nil,
          :kind => String.t() | nil,
          :micros => String.t() | nil
        }

  field(:currencyCode)
  field(:kind)
  field(:micros)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.Money do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.Money.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.Money do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
