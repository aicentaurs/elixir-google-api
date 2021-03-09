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

defmodule GoogleApi.ServiceUsage.V1.Model.AdminQuotaPolicy do
  @moduledoc """
  Quota policy created by quota administrator.

  ## Attributes

  *   `container` (*type:* `String.t`, *default:* `nil`) - The cloud resource container at which the quota policy is created. The format is {container_type}/{container_number}
  *   `dimensions` (*type:* `map()`, *default:* `nil`) -  If this map is nonempty, then this policy applies only to specific values for dimensions defined in the limit unit. For example, an policy on a limit with the unit 1/{project}/{region} could contain an entry with the key "region" and the value "us-east-1"; the policy is only applied to quota consumed in that region. This map has the following restrictions: * If "region" appears as a key, its value must be a valid Cloud region. * If "zone" appears as a key, its value must be a valid Cloud zone. * Keys other than "region" or "zone" are not valid.
  *   `metric` (*type:* `String.t`, *default:* `nil`) - The name of the metric to which this policy applies. An example name would be: `compute.googleapis.com/cpus`
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the policy. This name is generated by the server when the policy is created. Example names would be: `organizations/123/services/compute.googleapis.com/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/adminQuotaPolicies/4a3f2c1d`
  *   `policyValue` (*type:* `String.t`, *default:* `nil`) - The quota policy value. Can be any nonnegative integer, or -1 (unlimited quota).
  *   `unit` (*type:* `String.t`, *default:* `nil`) - The limit unit of the limit to which this policy applies. An example unit would be: `1/{project}/{region}` Note that `{project}` and `{region}` are not placeholders in this example; the literal characters `{` and `}` occur in the string.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :container => String.t() | nil,
          :dimensions => map() | nil,
          :metric => String.t() | nil,
          :name => String.t() | nil,
          :policyValue => String.t() | nil,
          :unit => String.t() | nil
        }

  field(:container)
  field(:dimensions, type: :map)
  field(:metric)
  field(:name)
  field(:policyValue)
  field(:unit)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUsage.V1.Model.AdminQuotaPolicy do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.AdminQuotaPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUsage.V1.Model.AdminQuotaPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
