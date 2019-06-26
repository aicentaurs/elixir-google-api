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

defmodule GoogleApi.Games.V1.Api.Revisions do
  @moduledoc """
  API calls for all endpoints tagged `Revisions`.
  """

  alias GoogleApi.Games.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Checks whether the games client is out of date.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `client_revision` (*type:* `String.t`) - The revision of the client SDK used by your application. Format:
      [PLATFORM_TYPE]:[VERSION_NUMBER]. Possible values of PLATFORM_TYPE are:
       
      - "ANDROID" - Client is running the Android SDK. 
      - "IOS" - Client is running the iOS SDK. 
      - "WEB_APP" - Client is running as a Web App.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.RevisionCheckResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_revisions_check(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.RevisionCheckResponse.t()} | {:error, Tesla.Env.t()}
  def games_revisions_check(connection, client_revision, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/revisions/check", %{})
      |> Request.add_param(:query, :clientRevision, client_revision)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.RevisionCheckResponse{}])
  end
end
