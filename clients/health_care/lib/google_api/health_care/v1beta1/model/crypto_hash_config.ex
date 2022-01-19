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

defmodule GoogleApi.HealthCare.V1beta1.Model.CryptoHashConfig do
  @moduledoc """
  Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. Outputs a base64-encoded representation of the hashed output. For example, `L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=`.

  ## Attributes

  *   `cryptoKey` (*type:* `String.t`, *default:* `nil`) - An AES 128/192/256 bit key. Causes the hash to be computed based on this key. A default key is generated for each Deidentify operation and is used when neither `crypto_key` nor `kms_wrapped` is specified. Must not be set if `kms_wrapped` is set.
  *   `kmsWrapped` (*type:* `GoogleApi.HealthCare.V1beta1.Model.KmsWrappedCryptoKey.t`, *default:* `nil`) - KMS wrapped key. Must not be set if `crypto_key` is set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cryptoKey => String.t() | nil,
          :kmsWrapped => GoogleApi.HealthCare.V1beta1.Model.KmsWrappedCryptoKey.t() | nil
        }

  field(:cryptoKey)
  field(:kmsWrapped, as: GoogleApi.HealthCare.V1beta1.Model.KmsWrappedCryptoKey)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.CryptoHashConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.CryptoHashConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.CryptoHashConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
