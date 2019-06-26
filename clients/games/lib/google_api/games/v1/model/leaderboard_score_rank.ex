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

defmodule GoogleApi.Games.V1.Model.LeaderboardScoreRank do
  @moduledoc """
  This is a JSON template for a score rank in a leaderboard.

  ## Attributes

  *   `formattedNumScores` (*type:* `String.t`, *default:* `nil`) - The number of scores in the leaderboard as a string.
  *   `formattedRank` (*type:* `String.t`, *default:* `nil`) - The rank in the leaderboard as a string.
  *   `kind` (*type:* `String.t`, *default:* `games#leaderboardScoreRank`) - Uniquely identifies the type of this resource. Value is always the fixed string games#leaderboardScoreRank.
  *   `numScores` (*type:* `String.t`, *default:* `nil`) - The number of scores in the leaderboard.
  *   `rank` (*type:* `String.t`, *default:* `nil`) - The rank in the leaderboard.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :formattedNumScores => String.t(),
          :formattedRank => String.t(),
          :kind => String.t(),
          :numScores => String.t(),
          :rank => String.t()
        }

  field(:formattedNumScores)
  field(:formattedRank)
  field(:kind)
  field(:numScores)
  field(:rank)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.LeaderboardScoreRank do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.LeaderboardScoreRank.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.LeaderboardScoreRank do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
