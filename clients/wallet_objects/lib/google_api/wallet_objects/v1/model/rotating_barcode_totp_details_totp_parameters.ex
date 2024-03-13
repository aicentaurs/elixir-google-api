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

defmodule GoogleApi.WalletObjects.V1.Model.RotatingBarcodeTotpDetailsTotpParameters do
  @moduledoc """
  Configuration for the key and value length. See https://www.rfc-editor.org/rfc/rfc4226#section-5.3

  ## Attributes

  *   `key` (*type:* `String.t`, *default:* `nil`) - The secret key used for the TOTP value generation, encoded as a Base16 string.
  *   `valueLength` (*type:* `integer()`, *default:* `nil`) - The length of the TOTP value in decimal digits.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => String.t() | nil,
          :valueLength => integer() | nil
        }

  field(:key)
  field(:valueLength)
end

defimpl Poison.Decoder,
  for: GoogleApi.WalletObjects.V1.Model.RotatingBarcodeTotpDetailsTotpParameters do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.RotatingBarcodeTotpDetailsTotpParameters.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.WalletObjects.V1.Model.RotatingBarcodeTotpDetailsTotpParameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
