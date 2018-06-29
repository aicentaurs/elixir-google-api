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

defmodule GoogleApi.YouTube.V3.Model.I18nLanguage do
  @moduledoc """
  An i18nLanguage resource identifies a UI language currently supported by YouTube.

  ## Attributes

  - etag (String.t): Etag of this resource. Defaults to: `null`.
  - id (String.t): The ID that YouTube uses to uniquely identify the i18n language. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;youtube#i18nLanguage\&quot;. Defaults to: `null`.
  - snippet (I18nLanguageSnippet): The snippet object contains basic details about the i18n language, such as language code and human-readable name. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => any(),
          :id => any(),
          :kind => any(),
          :snippet => GoogleApi.YouTube.V3.Model.I18nLanguageSnippet.t()
        }

  field(:etag)
  field(:id)
  field(:kind)
  field(:snippet, as: GoogleApi.YouTube.V3.Model.I18nLanguageSnippet)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.I18nLanguage do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.I18nLanguage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.I18nLanguage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
