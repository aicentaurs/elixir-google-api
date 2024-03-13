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

defmodule GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode do
  @moduledoc """
  The OAuth Type where the client sends request with the client id and requested scopes to auth endpoint. User sees a consent screen and auth code is received at specified redirect url afterwards. The auth code is then combined with the client id and secret and sent to the token endpoint in exchange for the access and refresh token. The refresh token can be used to fetch new access tokens.

  ## Attributes

  *   `accessToken` (*type:* `GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaAccessToken.t`, *default:* `nil`) - The access token received from the token endpoint.
  *   `applyReauthPolicy` (*type:* `boolean()`, *default:* `nil`) - Indicates if the user has opted in Google Reauth Policy. If opted in, the refresh token will be valid for 20 hours, after which time users must re-authenticate in order to obtain a new one.
  *   `authCode` (*type:* `String.t`, *default:* `nil`) - The Auth Code that is used to initially retrieve the access token.
  *   `authEndpoint` (*type:* `String.t`, *default:* `nil`) - The auth url endpoint to send the auth code request to.
  *   `authParams` (*type:* `GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaParameterMap.t`, *default:* `nil`) - The auth parameters sent along with the auth code request.
  *   `clientId` (*type:* `String.t`, *default:* `nil`) - The client's id.
  *   `clientSecret` (*type:* `String.t`, *default:* `nil`) - The client's secret.
  *   `requestType` (*type:* `String.t`, *default:* `nil`) - Represent how to pass parameters to fetch access token
  *   `scope` (*type:* `String.t`, *default:* `nil`) - A space-delimited list of requested scope permissions.
  *   `tokenEndpoint` (*type:* `String.t`, *default:* `nil`) - The token url endpoint to send the token request to.
  *   `tokenParams` (*type:* `GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaParameterMap.t`, *default:* `nil`) - The token parameters sent along with the token request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessToken =>
            GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaAccessToken.t()
            | nil,
          :applyReauthPolicy => boolean() | nil,
          :authCode => String.t() | nil,
          :authEndpoint => String.t() | nil,
          :authParams =>
            GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaParameterMap.t()
            | nil,
          :clientId => String.t() | nil,
          :clientSecret => String.t() | nil,
          :requestType => String.t() | nil,
          :scope => String.t() | nil,
          :tokenEndpoint => String.t() | nil,
          :tokenParams =>
            GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaParameterMap.t()
            | nil
        }

  field(:accessToken,
    as: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaAccessToken
  )

  field(:applyReauthPolicy)
  field(:authCode)
  field(:authEndpoint)

  field(:authParams,
    as: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaParameterMap
  )

  field(:clientId)
  field(:clientSecret)
  field(:requestType)
  field(:scope)
  field(:tokenEndpoint)

  field(:tokenParams,
    as: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaParameterMap
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
