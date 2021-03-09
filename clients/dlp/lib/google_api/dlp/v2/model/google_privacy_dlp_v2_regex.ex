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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Regex do
  @moduledoc """
  Message defining a custom regular expression.

  ## Attributes

  *   `groupIndexes` (*type:* `list(integer())`, *default:* `nil`) - The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included.
  *   `pattern` (*type:* `String.t`, *default:* `nil`) - Pattern defining the regular expression. Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :groupIndexes => list(integer()) | nil,
          :pattern => String.t() | nil
        }

  field(:groupIndexes, type: :list)
  field(:pattern)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Regex do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Regex.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Regex do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
