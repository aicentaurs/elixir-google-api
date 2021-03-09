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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_ParameterSpec do
  @moduledoc """
  Represents a single hyperparameter to optimize.

  ## Attributes

  *   `categoricalValues` (*type:* `list(String.t)`, *default:* `nil`) - Required if type is `CATEGORICAL`. The list of possible categories.
  *   `discreteValues` (*type:* `list(float())`, *default:* `nil`) - Required if type is `DISCRETE`. A list of feasible points. The list should be in strictly increasing order. For instance, this parameter might have possible settings of 1.5, 2.5, and 4.0. This list should not contain more than 1,000 values.
  *   `maxValue` (*type:* `float()`, *default:* `nil`) - Required if type is `DOUBLE` or `INTEGER`. This field should be unset if type is `CATEGORICAL`. This value should be integers if type is `INTEGER`.
  *   `minValue` (*type:* `float()`, *default:* `nil`) - Required if type is `DOUBLE` or `INTEGER`. This field should be unset if type is `CATEGORICAL`. This value should be integers if type is INTEGER.
  *   `parameterName` (*type:* `String.t`, *default:* `nil`) - Required. The parameter name must be unique amongst all ParameterConfigs in a HyperparameterSpec message. E.g., "learning_rate".
  *   `scaleType` (*type:* `String.t`, *default:* `nil`) - Optional. How the parameter should be scaled to the hypercube. Leave unset for categorical parameters. Some kind of scaling is strongly recommended for real or integral parameters (e.g., `UNIT_LINEAR_SCALE`).
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. The type of the parameter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :categoricalValues => list(String.t()) | nil,
          :discreteValues => list(float()) | nil,
          :maxValue => float() | nil,
          :minValue => float() | nil,
          :parameterName => String.t() | nil,
          :scaleType => String.t() | nil,
          :type => String.t() | nil
        }

  field(:categoricalValues, type: :list)
  field(:discreteValues, type: :list)
  field(:maxValue)
  field(:minValue)
  field(:parameterName)
  field(:scaleType)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_ParameterSpec do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_ParameterSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_ParameterSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
