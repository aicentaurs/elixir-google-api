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

defmodule GoogleApi.Games.V1.Model.AchievementUpdateMultipleResponse do
  @moduledoc """
  This is a JSON template for an achievement unlock response.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `games#achievementUpdateMultipleResponse`) - Uniquely identifies the type of this resource. Value is always the fixed string games#achievementUpdateListResponse.
  *   `updatedAchievements` (*type:* `list(GoogleApi.Games.V1.Model.AchievementUpdateResponse.t)`, *default:* `nil`) - The updated state of the achievements.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :updatedAchievements => list(GoogleApi.Games.V1.Model.AchievementUpdateResponse.t())
        }

  field(:kind)
  field(:updatedAchievements, as: GoogleApi.Games.V1.Model.AchievementUpdateResponse, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.AchievementUpdateMultipleResponse do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.AchievementUpdateMultipleResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.AchievementUpdateMultipleResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
