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

defmodule GoogleApi.Games.V1.Model.RoomParticipant do
  @moduledoc """
  This is a JSON template for a participant in a room.

  ## Attributes

  *   `autoMatched` (*type:* `boolean()`, *default:* `nil`) - True if this participant was auto-matched with the requesting player.
  *   `autoMatchedPlayer` (*type:* `GoogleApi.Games.V1.Model.AnonymousPlayer.t`, *default:* `nil`) - Information about a player that has been anonymously auto-matched against the requesting player. (Either player or autoMatchedPlayer will be set.)
  *   `capabilities` (*type:* `list(String.t)`, *default:* `nil`) - The capabilities which can be used when communicating with this participant.
  *   `clientAddress` (*type:* `GoogleApi.Games.V1.Model.RoomClientAddress.t`, *default:* `nil`) - Client address for the participant.
  *   `connected` (*type:* `boolean()`, *default:* `nil`) - True if this participant is in the fully connected set of peers in the room.
  *   `id` (*type:* `String.t`, *default:* `nil`) - An identifier for the participant in the scope of the room. Cannot be used to identify a player across rooms or in other contexts.
  *   `kind` (*type:* `String.t`, *default:* `games#roomParticipant`) - Uniquely identifies the type of this resource. Value is always the fixed string games#roomParticipant.
  *   `leaveReason` (*type:* `String.t`, *default:* `nil`) - The reason the participant left the room; populated if the participant status is PARTICIPANT_LEFT.
      Possible values are:  
      - "PLAYER_LEFT" - The player explicitly chose to leave the room. 
      - "GAME_LEFT" - The game chose to remove the player from the room. 
      - "ABANDONED" - The player switched to another application and abandoned the room.
      - "PEER_CONNECTION_FAILURE" - The client was unable to establish or maintain a connection to other peer(s) in the room.
      - "SERVER_ERROR" - The client received an error response when it tried to communicate with the server. 
      - "TIMEOUT" - The client timed out while waiting for players to join and connect. 
      - "PRESENCE_FAILURE" - The client's XMPP connection ended abruptly.
  *   `player` (*type:* `GoogleApi.Games.V1.Model.Player.t`, *default:* `nil`) - Information about the player. Not populated if this player was anonymously auto-matched against the requesting player. (Either player or autoMatchedPlayer will be set.)
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the participant with respect to the room.
      Possible values are:  
      - "PARTICIPANT_INVITED" - The participant has been invited to join the room, but has not yet responded. 
      - "PARTICIPANT_JOINED" - The participant has joined the room (either after creating it or accepting an invitation.) 
      - "PARTICIPANT_DECLINED" - The participant declined an invitation to join the room. 
      - "PARTICIPANT_LEFT" - The participant joined the room and then left it.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoMatched => boolean(),
          :autoMatchedPlayer => GoogleApi.Games.V1.Model.AnonymousPlayer.t(),
          :capabilities => list(String.t()),
          :clientAddress => GoogleApi.Games.V1.Model.RoomClientAddress.t(),
          :connected => boolean(),
          :id => String.t(),
          :kind => String.t(),
          :leaveReason => String.t(),
          :player => GoogleApi.Games.V1.Model.Player.t(),
          :status => String.t()
        }

  field(:autoMatched)
  field(:autoMatchedPlayer, as: GoogleApi.Games.V1.Model.AnonymousPlayer)
  field(:capabilities, type: :list)
  field(:clientAddress, as: GoogleApi.Games.V1.Model.RoomClientAddress)
  field(:connected)
  field(:id)
  field(:kind)
  field(:leaveReason)
  field(:player, as: GoogleApi.Games.V1.Model.Player)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.RoomParticipant do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.RoomParticipant.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.RoomParticipant do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
