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

defmodule GoogleApi.ServiceNetworking.V1.Model.Documentation do
  @moduledoc """
  `Documentation` provides the information for describing a service. Example: documentation: summary: > The Google Calendar API gives access to most calendar features. pages: - name: Overview content: (== include google/foo/overview.md ==) - name: Tutorial content: (== include google/foo/tutorial.md ==) subpages: - name: Java content: (== include google/foo/tutorial_java.md ==) rules: - selector: google.calendar.Calendar.Get description: > ... - selector: google.calendar.Calendar.Put description: > ... Documentation is provided in markdown syntax. In addition to standard markdown features, definition lists, tables and fenced code blocks are supported. Section headers can be provided and are interpreted relative to the section nesting of the context where a documentation fragment is embedded. Documentation from the IDL is merged with documentation defined via the config at normalization time, where documentation provided by config rules overrides IDL provided. A number of constructs specific to the API platform are supported in documentation text. In order to reference a proto element, the following notation can be used: [fully.qualified.proto.name][] To override the display text used for the link, this can be used: [display text][fully.qualified.proto.name] Text can be excluded from doc using the following notation: (-- internal comment --) A few directives are available in documentation. Note that directives must appear on a single line to be properly identified. The `include` directive includes a markdown file from an external source: (== include path/to/file ==) The `resource_for` directive marks a message to be the resource of a collection in REST view. If it is not specified, tools attempt to infer the resource from the operations in a collection: (== resource_for v1.shelves.books ==) The directive `suppress_warning` does not directly affect documentation and is documented together with service config validation.

  ## Attributes

  *   `documentationRootUrl` (*type:* `String.t`, *default:* `nil`) - The URL to the root of documentation.
  *   `overview` (*type:* `String.t`, *default:* `nil`) - Declares a single overview page. For example: documentation: summary: ... overview: (== include overview.md ==) This is a shortcut for the following declaration (using pages style): documentation: summary: ... pages: - name: Overview content: (== include overview.md ==) Note: you cannot specify both `overview` field and `pages` field.
  *   `pages` (*type:* `list(GoogleApi.ServiceNetworking.V1.Model.Page.t)`, *default:* `nil`) - The top level pages for the documentation set.
  *   `rules` (*type:* `list(GoogleApi.ServiceNetworking.V1.Model.DocumentationRule.t)`, *default:* `nil`) - A list of documentation rules that apply to individual API elements. **NOTE:** All service configuration rules follow "last one wins" order.
  *   `sectionOverrides` (*type:* `list(GoogleApi.ServiceNetworking.V1.Model.Page.t)`, *default:* `nil`) - Specifies section and content to override boilerplate content provided by go/api-docgen. Currently overrides following sections: 1. rest.service.client_libraries
  *   `serviceRootUrl` (*type:* `String.t`, *default:* `nil`) - Specifies the service root url if the default one (the service name from the yaml file) is not suitable. This can be seen in any fully specified service urls as well as sections that show a base that other urls are relative to.
  *   `summary` (*type:* `String.t`, *default:* `nil`) - A short description of what the service does. The summary must be plain text. It becomes the overview of the service displayed in Google Cloud Console. NOTE: This field is equivalent to the standard field `description`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documentationRootUrl => String.t() | nil,
          :overview => String.t() | nil,
          :pages => list(GoogleApi.ServiceNetworking.V1.Model.Page.t()) | nil,
          :rules => list(GoogleApi.ServiceNetworking.V1.Model.DocumentationRule.t()) | nil,
          :sectionOverrides => list(GoogleApi.ServiceNetworking.V1.Model.Page.t()) | nil,
          :serviceRootUrl => String.t() | nil,
          :summary => String.t() | nil
        }

  field(:documentationRootUrl)
  field(:overview)
  field(:pages, as: GoogleApi.ServiceNetworking.V1.Model.Page, type: :list)
  field(:rules, as: GoogleApi.ServiceNetworking.V1.Model.DocumentationRule, type: :list)
  field(:sectionOverrides, as: GoogleApi.ServiceNetworking.V1.Model.Page, type: :list)
  field(:serviceRootUrl)
  field(:summary)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.Documentation do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.Documentation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.Documentation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
