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

defmodule GoogleApi.NetworkSecurity.V1.Model.UrlList do
  @moduledoc """
  UrlList proto helps users to set reusable, independently manageable lists of hosts, host patterns, URLs, URL patterns.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the security policy was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Free-text description of the resource.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Name of the resource provided by the user. Name is of the form projects/{project}/locations/{location}/urlLists/{url_list} url_list should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the security policy was updated.
  *   `values` (*type:* `list(String.t)`, *default:* `nil`) - Required. FQDNs and URLs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :name => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :values => list(String.t()) | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:name)
  field(:updateTime, as: DateTime)
  field(:values, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkSecurity.V1.Model.UrlList do
  def decode(value, options) do
    GoogleApi.NetworkSecurity.V1.Model.UrlList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkSecurity.V1.Model.UrlList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
