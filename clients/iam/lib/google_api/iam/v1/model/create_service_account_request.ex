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

defmodule GoogleApi.IAM.V1.Model.CreateServiceAccountRequest do
  @moduledoc """
  The service account create request.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Required. The account id that is used to generate the service account
      email address and a stable unique id. It is unique within a project,
      must be 6-30 characters long, and match the regular expression
      `[a-z]([-a-z0-9]*[a-z0-9])` to comply with RFC1035.
  *   `serviceAccount` (*type:* `GoogleApi.IAM.V1.Model.ServiceAccount.t`, *default:* `nil`) - The ServiceAccount resource to
      create. Currently, only the following values are user assignable:
      `display_name` .
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :serviceAccount => GoogleApi.IAM.V1.Model.ServiceAccount.t()
        }

  field(:accountId)
  field(:serviceAccount, as: GoogleApi.IAM.V1.Model.ServiceAccount)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.CreateServiceAccountRequest do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.CreateServiceAccountRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.CreateServiceAccountRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
