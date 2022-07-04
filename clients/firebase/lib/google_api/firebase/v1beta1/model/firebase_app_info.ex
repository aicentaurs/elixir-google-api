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

defmodule GoogleApi.Firebase.V1beta1.Model.FirebaseAppInfo do
  @moduledoc """
  A high-level summary of an App.

  ## Attributes

  *   `appId` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. The globally unique, Firebase-assigned identifier for the `WebApp`. This identifier should be treated as an opaque token, as the data format is not specified.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The user-assigned display name of the Firebase App.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the Firebase App, in the format: projects/PROJECT_ID /iosApps/APP_ID or projects/PROJECT_ID/androidApps/APP_ID or projects/ PROJECT_ID/webApps/APP_ID
  *   `namespace` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. The platform-specific identifier of the App. *Note:* For most use cases, use `appId`, which is the canonical, globally unique identifier for referencing an App. This string is derived from a native identifier for each platform: `packageName` for an `AndroidApp`, `bundleId` for an `IosApp`, and `webId` for a `WebApp`. Its contents should be treated as opaque, as the native identifier format may change as platforms evolve. This string is only unique within a `FirebaseProject` and its associated Apps.
  *   `platform` (*type:* `String.t`, *default:* `nil`) - The platform of the Firebase App.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The lifecycle state of the App.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appId => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :namespace => String.t() | nil,
          :platform => String.t() | nil,
          :state => String.t() | nil
        }

  field(:appId)
  field(:displayName)
  field(:name)
  field(:namespace)
  field(:platform)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.FirebaseAppInfo do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.FirebaseAppInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.FirebaseAppInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
