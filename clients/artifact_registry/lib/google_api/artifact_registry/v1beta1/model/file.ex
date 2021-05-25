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

defmodule GoogleApi.ArtifactRegistry.V1beta1.Model.File do
  @moduledoc """
  Files store content that is potentially associated with Packages or Versions.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the File was created.
  *   `hashes` (*type:* `list(GoogleApi.ArtifactRegistry.V1beta1.Model.Hash.t)`, *default:* `nil`) - The hashes of the file content.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the file, for example: "projects/p1/locations/us-central1/repositories/repo1/files/a%2Fb%2Fc.txt". If the file ID part contains slashes, they are escaped.
  *   `owner` (*type:* `String.t`, *default:* `nil`) - The name of the Package or Version that owns this file, if any.
  *   `sizeBytes` (*type:* `String.t`, *default:* `nil`) - The size of the File in bytes.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the File was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :hashes => list(GoogleApi.ArtifactRegistry.V1beta1.Model.Hash.t()) | nil,
          :name => String.t() | nil,
          :owner => String.t() | nil,
          :sizeBytes => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:hashes, as: GoogleApi.ArtifactRegistry.V1beta1.Model.Hash, type: :list)
  field(:name)
  field(:owner)
  field(:sizeBytes)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.ArtifactRegistry.V1beta1.Model.File do
  def decode(value, options) do
    GoogleApi.ArtifactRegistry.V1beta1.Model.File.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ArtifactRegistry.V1beta1.Model.File do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
