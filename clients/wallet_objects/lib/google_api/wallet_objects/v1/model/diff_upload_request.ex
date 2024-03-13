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

defmodule GoogleApi.WalletObjects.V1.Model.DiffUploadRequest do
  @moduledoc """
  A Diff upload request. For details on the Scotty Diff protocol, visit http://go/scotty-diff-protocol.

  ## Attributes

  *   `checksumsInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.CompositeMedia.t`, *default:* `nil`) - The location of the checksums for the new object. Agents must clone the object located here, as the upload server will delete the contents once a response is received. For details on the format of the checksums, see http://go/scotty-diff-protocol.
  *   `objectInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.CompositeMedia.t`, *default:* `nil`) - The location of the new object. Agents must clone the object located here, as the upload server will delete the contents once a response is received.
  *   `objectVersion` (*type:* `String.t`, *default:* `nil`) - The object version of the object that is the base version the incoming diff script will be applied to. This field will always be filled in.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :checksumsInfo => GoogleApi.WalletObjects.V1.Model.CompositeMedia.t() | nil,
          :objectInfo => GoogleApi.WalletObjects.V1.Model.CompositeMedia.t() | nil,
          :objectVersion => String.t() | nil
        }

  field(:checksumsInfo, as: GoogleApi.WalletObjects.V1.Model.CompositeMedia)
  field(:objectInfo, as: GoogleApi.WalletObjects.V1.Model.CompositeMedia)
  field(:objectVersion)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.DiffUploadRequest do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.DiffUploadRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.DiffUploadRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
