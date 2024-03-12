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

defmodule GoogleApi.HealthCare.V1.Model.AnalyzeEntitiesResponse do
  @moduledoc """
  Includes recognized entity mentions and relationships between them.

  ## Attributes

  *   `entities` (*type:* `list(GoogleApi.HealthCare.V1.Model.Entity.t)`, *default:* `nil`) - The union of all the candidate entities that the entity_mentions in this response could link to. These are UMLS concepts or normalized mention content.
  *   `entityMentions` (*type:* `list(GoogleApi.HealthCare.V1.Model.EntityMention.t)`, *default:* `nil`) - The `entity_mentions` field contains all the annotated medical entities that were mentioned in the provided document.
  *   `fhirBundle` (*type:* `String.t`, *default:* `nil`) - The FHIR bundle ([`R4`](http://hl7.org/fhir/R4/bundle.html)) that includes all the entities, the entity mentions, and the relationships in JSON format.
  *   `relationships` (*type:* `list(GoogleApi.HealthCare.V1.Model.EntityMentionRelationship.t)`, *default:* `nil`) - relationships contains all the binary relationships that were identified between entity mentions within the provided document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entities => list(GoogleApi.HealthCare.V1.Model.Entity.t()) | nil,
          :entityMentions => list(GoogleApi.HealthCare.V1.Model.EntityMention.t()) | nil,
          :fhirBundle => String.t() | nil,
          :relationships =>
            list(GoogleApi.HealthCare.V1.Model.EntityMentionRelationship.t()) | nil
        }

  field(:entities, as: GoogleApi.HealthCare.V1.Model.Entity, type: :list)
  field(:entityMentions, as: GoogleApi.HealthCare.V1.Model.EntityMention, type: :list)
  field(:fhirBundle)
  field(:relationships, as: GoogleApi.HealthCare.V1.Model.EntityMentionRelationship, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.AnalyzeEntitiesResponse do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.AnalyzeEntitiesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.AnalyzeEntitiesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
