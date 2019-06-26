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

defmodule GoogleApi.Games.V1.Model.PlayerAchievement do
  @moduledoc """
  This is a JSON template for an achievement object.

  ## Attributes

  *   `achievementState` (*type:* `String.t`, *default:* `nil`) - The state of the achievement.
      Possible values are:  
      - "HIDDEN" - Achievement is hidden. 
      - "REVEALED" - Achievement is revealed. 
      - "UNLOCKED" - Achievement is unlocked.
  *   `currentSteps` (*type:* `integer()`, *default:* `nil`) - The current steps for an incremental achievement.
  *   `experiencePoints` (*type:* `String.t`, *default:* `nil`) - Experience points earned for the achievement. This field is absent for achievements that have not yet been unlocked and 0 for achievements that have been unlocked by testers but that are unpublished.
  *   `formattedCurrentStepsString` (*type:* `String.t`, *default:* `nil`) - The current steps for an incremental achievement as a string.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the achievement.
  *   `kind` (*type:* `String.t`, *default:* `games#playerAchievement`) - Uniquely identifies the type of this resource. Value is always the fixed string games#playerAchievement.
  *   `lastUpdatedTimestamp` (*type:* `String.t`, *default:* `nil`) - The timestamp of the last modification to this achievement's state.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :achievementState => String.t(),
          :currentSteps => integer(),
          :experiencePoints => String.t(),
          :formattedCurrentStepsString => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :lastUpdatedTimestamp => String.t()
        }

  field(:achievementState)
  field(:currentSteps)
  field(:experiencePoints)
  field(:formattedCurrentStepsString)
  field(:id)
  field(:kind)
  field(:lastUpdatedTimestamp)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.PlayerAchievement do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.PlayerAchievement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.PlayerAchievement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
