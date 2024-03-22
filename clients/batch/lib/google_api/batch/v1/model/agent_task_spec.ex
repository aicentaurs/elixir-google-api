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

defmodule GoogleApi.Batch.V1.Model.AgentTaskSpec do
  @moduledoc """
  AgentTaskSpec is the user's TaskSpec representation between Agent and CLH communication.

  ## Attributes

  *   `environment` (*type:* `GoogleApi.Batch.V1.Model.AgentEnvironment.t`, *default:* `nil`) - Environment variables to set before running the Task.
  *   `maxRunDuration` (*type:* `String.t`, *default:* `nil`) - Maximum duration the task should run. The task will be killed and marked as FAILED if over this limit. The valid value range for max_run_duration in seconds is [0, 315576000000.999999999],
  *   `runnables` (*type:* `list(GoogleApi.Batch.V1.Model.AgentTaskRunnable.t)`, *default:* `nil`) - AgentTaskRunnable is runanbles that will be executed on the agent.
  *   `userAccount` (*type:* `GoogleApi.Batch.V1.Model.AgentTaskUserAccount.t`, *default:* `nil`) - User account on the VM to run the runnables in the agentTaskSpec. If not set, the runnable will be run under root user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :environment => GoogleApi.Batch.V1.Model.AgentEnvironment.t() | nil,
          :maxRunDuration => String.t() | nil,
          :runnables => list(GoogleApi.Batch.V1.Model.AgentTaskRunnable.t()) | nil,
          :userAccount => GoogleApi.Batch.V1.Model.AgentTaskUserAccount.t() | nil
        }

  field(:environment, as: GoogleApi.Batch.V1.Model.AgentEnvironment)
  field(:maxRunDuration)
  field(:runnables, as: GoogleApi.Batch.V1.Model.AgentTaskRunnable, type: :list)
  field(:userAccount, as: GoogleApi.Batch.V1.Model.AgentTaskUserAccount)
end

defimpl Poison.Decoder, for: GoogleApi.Batch.V1.Model.AgentTaskSpec do
  def decode(value, options) do
    GoogleApi.Batch.V1.Model.AgentTaskSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Batch.V1.Model.AgentTaskSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
