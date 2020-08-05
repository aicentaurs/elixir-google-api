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

defmodule GoogleApi.YouTube.V3.Model.LiveStreamContentDetails do
  @moduledoc """
  Detailed settings of a stream.

  ## Attributes

  *   `closedCaptionsIngestionUrl` (*type:* `String.t`, *default:* `nil`) - The ingestion URL where the closed captions of this stream are sent.
  *   `isReusable` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the stream is reusable, which means that it can be bound to multiple broadcasts. It is common for broadcasters to reuse the same stream for many different broadcasts if those broadcasts occur at different times. If you set this value to false, then the stream will not be reusable, which means that it can only be bound to one broadcast. Non-reusable streams differ from reusable streams in the following ways: - A non-reusable stream can only be bound to one broadcast. - A non-reusable stream might be deleted by an automated process after the broadcast ends. - The liveStreams.list method does not list non-reusable streams if you call the method and set the mine parameter to true. The only way to use that method to retrieve the resource for a non-reusable stream is to use the id parameter to identify the stream. 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :closedCaptionsIngestionUrl => String.t(),
          :isReusable => boolean()
        }

  field(:closedCaptionsIngestionUrl)
  field(:isReusable)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.LiveStreamContentDetails do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.LiveStreamContentDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.LiveStreamContentDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
