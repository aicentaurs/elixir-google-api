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

defmodule GoogleApi.APIGateway.V1beta.Model.ApigatewayListLocationsResponse do
  @moduledoc """
  The response message for Locations.ListLocations.

  ## Attributes

  *   `locations` (*type:* `list(GoogleApi.APIGateway.V1beta.Model.ApigatewayLocation.t)`, *default:* `nil`) - A list of locations that matches the specified filter in the request.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The standard List next-page token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :locations => list(GoogleApi.APIGateway.V1beta.Model.ApigatewayLocation.t()),
          :nextPageToken => String.t()
        }

  field(:locations, as: GoogleApi.APIGateway.V1beta.Model.ApigatewayLocation, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.APIGateway.V1beta.Model.ApigatewayListLocationsResponse do
  def decode(value, options) do
    GoogleApi.APIGateway.V1beta.Model.ApigatewayListLocationsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.APIGateway.V1beta.Model.ApigatewayListLocationsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
