# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.YouTube.V3.Model.ChannelLocalization do
  @moduledoc """
  Channel localization setting

  ## Attributes

  - description (String.t): The localized strings for channel&#39;s description. Defaults to: `null`.
  - title (String.t): The localized strings for channel&#39;s title. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => any(),
          :title => any()
        }

  field(:description)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ChannelLocalization do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.ChannelLocalization.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ChannelLocalization do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
