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

defmodule GoogleApi.HealthCare.V1beta1.Model.ConsentArtifact do
  @moduledoc """
  Documentation of a user's consent.

  ## Attributes

  *   `consentContentScreenshots` (*type:* `list(GoogleApi.HealthCare.V1beta1.Model.Image.t)`, *default:* `nil`) - Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  *   `consentContentVersion` (*type:* `String.t`, *default:* `nil`) - Optional. An string indicating the version of the consent information shown to the user.
  *   `guardianSignature` (*type:* `GoogleApi.HealthCare.V1beta1.Model.Signature.t`, *default:* `nil`) - Optional. A signature from a guardian.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - Required. User's UUID provided by the client.
  *   `userSignature` (*type:* `GoogleApi.HealthCare.V1beta1.Model.Signature.t`, *default:* `nil`) - Optional. User's signature.
  *   `witnessSignature` (*type:* `GoogleApi.HealthCare.V1beta1.Model.Signature.t`, *default:* `nil`) - Optional. A signature from a witness.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consentContentScreenshots => list(GoogleApi.HealthCare.V1beta1.Model.Image.t()) | nil,
          :consentContentVersion => String.t() | nil,
          :guardianSignature => GoogleApi.HealthCare.V1beta1.Model.Signature.t() | nil,
          :metadata => map() | nil,
          :name => String.t() | nil,
          :userId => String.t() | nil,
          :userSignature => GoogleApi.HealthCare.V1beta1.Model.Signature.t() | nil,
          :witnessSignature => GoogleApi.HealthCare.V1beta1.Model.Signature.t() | nil
        }

  field(:consentContentScreenshots, as: GoogleApi.HealthCare.V1beta1.Model.Image, type: :list)
  field(:consentContentVersion)
  field(:guardianSignature, as: GoogleApi.HealthCare.V1beta1.Model.Signature)
  field(:metadata, type: :map)
  field(:name)
  field(:userId)
  field(:userSignature, as: GoogleApi.HealthCare.V1beta1.Model.Signature)
  field(:witnessSignature, as: GoogleApi.HealthCare.V1beta1.Model.Signature)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.ConsentArtifact do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.ConsentArtifact.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.ConsentArtifact do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
