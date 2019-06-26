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

defmodule GoogleApi.IAM.V1.Model.LintResult do
  @moduledoc """
  Structured response of a single validation unit.

  ## Attributes

  *   `bindingOrdinal` (*type:* `integer()`, *default:* `nil`) - 0-based index ordinality of the binding in the input object associated
      with this result.
      This field is populated only if the input object to lint is of type
      google.iam.v1.Policy, which can comprise more than one binding.
      It is set to -1 if the result is not associated with any particular
      binding and only targets the policy as a whole, such as results about
      policy size violations.
  *   `debugMessage` (*type:* `String.t`, *default:* `nil`) - Human readable debug message associated with the issue.
  *   `fieldName` (*type:* `String.t`, *default:* `nil`) - The name of the field for which this lint result is about.

      For nested messages, `field_name` consists of names of the embedded fields
      separated by period character. The top-level qualifier is the input object
      to lint in the request. For instance, if the lint request is on a
      google.iam.v1.Policy and this lint result is about a condition
      expression of one of the input policy bindings, the field would be
      populated as `policy.bindings.condition.expression`.

      This field does not identify the ordinality of the repetitive fields (for
      instance bindings in a policy).
  *   `level` (*type:* `String.t`, *default:* `nil`) - The validation unit level.
  *   `locationOffset` (*type:* `integer()`, *default:* `nil`) - 0-based character position of problematic construct within the object
      identified by `field_name`. Currently, this is populated only for condition
      expression.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - The validation unit severity.
  *   `validationUnitName` (*type:* `String.t`, *default:* `nil`) - The validation unit name, for instance
      “lintValidationUnits/ConditionComplexityCheck”.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bindingOrdinal => integer(),
          :debugMessage => String.t(),
          :fieldName => String.t(),
          :level => String.t(),
          :locationOffset => integer(),
          :severity => String.t(),
          :validationUnitName => String.t()
        }

  field(:bindingOrdinal)
  field(:debugMessage)
  field(:fieldName)
  field(:level)
  field(:locationOffset)
  field(:severity)
  field(:validationUnitName)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.LintResult do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.LintResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.LintResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
