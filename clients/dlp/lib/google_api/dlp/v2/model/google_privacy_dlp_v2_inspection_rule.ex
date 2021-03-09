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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectionRule do
  @moduledoc """
  A single inspection rule to be applied to infoTypes, specified in `InspectionRuleSet`.

  ## Attributes

  *   `exclusionRule` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ExclusionRule.t`, *default:* `nil`) - Exclusion rule.
  *   `hotwordRule` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HotwordRule.t`, *default:* `nil`) - Hotword-based detection rule.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exclusionRule => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ExclusionRule.t() | nil,
          :hotwordRule => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HotwordRule.t() | nil
        }

  field(:exclusionRule, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ExclusionRule)
  field(:hotwordRule, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HotwordRule)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectionRule do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectionRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectionRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
