# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.YouTube.V3.Model.VideoListResponse do
  @moduledoc """


  ## Attributes

  - etag (String.t): Etag of this resource. Defaults to: `null`.
  - eventId (String.t): Serialized EventId of the request which produced this response. Defaults to: `null`.
  - items ([Video]): A list of videos that match the request criteria. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;youtube#videoListResponse\&quot;. Defaults to: `null`.
  - nextPageToken (String.t): The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. Defaults to: `null`.
  - pageInfo (PageInfo):  Defaults to: `null`.
  - prevPageToken (String.t): The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. Defaults to: `null`.
  - tokenPagination (TokenPagination):  Defaults to: `null`.
  - visitorId (String.t): The visitorId identifies the visitor. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => any(),
          :eventId => any(),
          :items => list(GoogleApi.YouTube.V3.Model.Video.t()),
          :kind => any(),
          :nextPageToken => any(),
          :pageInfo => GoogleApi.YouTube.V3.Model.PageInfo.t(),
          :prevPageToken => any(),
          :tokenPagination => GoogleApi.YouTube.V3.Model.TokenPagination.t(),
          :visitorId => any()
        }

  field(:etag)
  field(:eventId)
  field(:items, as: GoogleApi.YouTube.V3.Model.Video, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:pageInfo, as: GoogleApi.YouTube.V3.Model.PageInfo)
  field(:prevPageToken)
  field(:tokenPagination, as: GoogleApi.YouTube.V3.Model.TokenPagination)
  field(:visitorId)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoListResponse do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.VideoListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
