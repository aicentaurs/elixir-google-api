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

defmodule GoogleApi.Plus.V1.Model.ActivityObject do
  @moduledoc """
  The object of this activity.

  ## Attributes

  *   `actor` (*type:* `GoogleApi.Plus.V1.Model.ActivityObjectActor.t`, *default:* `nil`) - If this activity's object is itself another activity, such as when a person reshares an activity, this property specifies the original activity's actor.
  *   `attachments` (*type:* `list(GoogleApi.Plus.V1.Model.ActivityObjectAttachments.t)`, *default:* `nil`) - The media objects attached to this activity.
  *   `content` (*type:* `String.t`, *default:* `nil`) - The HTML-formatted content, which is suitable for display.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the object. When resharing an activity, this is the ID of the activity that is being reshared.
  *   `objectType` (*type:* `String.t`, *default:* `nil`) - The type of the object. Possible values include, but are not limited to, the following values:  
      - "note" - Textual content. 
      - "activity" - A Google+ activity.
  *   `originalContent` (*type:* `String.t`, *default:* `nil`) - The content (text) as provided by the author, which is stored without any HTML formatting. When creating or updating an activity, this value must be supplied as plain text in the request.
  *   `plusoners` (*type:* `GoogleApi.Plus.V1.Model.ActivityObjectPlusoners.t`, *default:* `nil`) - People who +1'd this activity.
  *   `replies` (*type:* `GoogleApi.Plus.V1.Model.ActivityObjectReplies.t`, *default:* `nil`) - Comments in reply to this activity.
  *   `resharers` (*type:* `GoogleApi.Plus.V1.Model.ActivityObjectResharers.t`, *default:* `nil`) - People who reshared this activity.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The URL that points to the linked resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actor => GoogleApi.Plus.V1.Model.ActivityObjectActor.t(),
          :attachments => list(GoogleApi.Plus.V1.Model.ActivityObjectAttachments.t()),
          :content => String.t(),
          :id => String.t(),
          :objectType => String.t(),
          :originalContent => String.t(),
          :plusoners => GoogleApi.Plus.V1.Model.ActivityObjectPlusoners.t(),
          :replies => GoogleApi.Plus.V1.Model.ActivityObjectReplies.t(),
          :resharers => GoogleApi.Plus.V1.Model.ActivityObjectResharers.t(),
          :url => String.t()
        }

  field(:actor, as: GoogleApi.Plus.V1.Model.ActivityObjectActor)
  field(:attachments, as: GoogleApi.Plus.V1.Model.ActivityObjectAttachments, type: :list)
  field(:content)
  field(:id)
  field(:objectType)
  field(:originalContent)
  field(:plusoners, as: GoogleApi.Plus.V1.Model.ActivityObjectPlusoners)
  field(:replies, as: GoogleApi.Plus.V1.Model.ActivityObjectReplies)
  field(:resharers, as: GoogleApi.Plus.V1.Model.ActivityObjectResharers)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.Plus.V1.Model.ActivityObject do
  def decode(value, options) do
    GoogleApi.Plus.V1.Model.ActivityObject.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Plus.V1.Model.ActivityObject do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
