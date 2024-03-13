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

defmodule GoogleApi.WalletObjects.V1.Model.LatLongPoint do
  @moduledoc """


  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string `"walletobjects#latLongPoint"`.
  *   `latitude` (*type:* `float()`, *default:* `nil`) - The latitude specified as any value in the range of -90.0 through +90.0, both inclusive. Values outside these bounds will be rejected.
  *   `longitude` (*type:* `float()`, *default:* `nil`) - The longitude specified in the range -180.0 through +180.0, both inclusive. Values outside these bounds will be rejected.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :latitude => float() | nil,
          :longitude => float() | nil
        }

  field(:kind)
  field(:latitude)
  field(:longitude)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.LatLongPoint do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.LatLongPoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.LatLongPoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
