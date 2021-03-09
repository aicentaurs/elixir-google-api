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

defmodule GoogleApi.ServiceUsage.V1.Model.Context do
  @moduledoc """
  `Context` defines which contexts an API requests. Example: context: rules: - selector: "*" requested: - google.rpc.context.ProjectContext - google.rpc.context.OriginContext The above specifies that all methods in the API request `google.rpc.context.ProjectContext` and `google.rpc.context.OriginContext`. Available context types are defined in package `google.rpc.context`. This also provides mechanism to allowlist any protobuf message extension that can be sent in grpc metadata using “x-goog-ext--bin” and “x-goog-ext--jspb” format. For example, list any service specific protobuf types that can appear in grpc metadata as follows in your yaml file: Example: context: rules: - selector: "google.example.library.v1.LibraryService.CreateBook" allowed_request_extensions: - google.foo.v1.NewExtension allowed_response_extensions: - google.foo.v1.NewExtension You can also specify extension ID instead of fully qualified extension name here.

  ## Attributes

  *   `rules` (*type:* `list(GoogleApi.ServiceUsage.V1.Model.ContextRule.t)`, *default:* `nil`) - A list of RPC context rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :rules => list(GoogleApi.ServiceUsage.V1.Model.ContextRule.t()) | nil
        }

  field(:rules, as: GoogleApi.ServiceUsage.V1.Model.ContextRule, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUsage.V1.Model.Context do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.Context.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUsage.V1.Model.Context do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
