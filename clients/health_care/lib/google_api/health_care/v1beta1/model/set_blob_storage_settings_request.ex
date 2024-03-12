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

defmodule GoogleApi.HealthCare.V1beta1.Model.SetBlobStorageSettingsRequest do
  @moduledoc """
  Request message for `SetBlobStorageSettings` method.

  ## Attributes

  *   `blobStorageSettings` (*type:* `GoogleApi.HealthCare.V1beta1.Model.BlobStorageSettings.t`, *default:* `nil`) - The blob storage settings to update for the specified resources. Only fields listed in `update_mask` are applied.
  *   `filterConfig` (*type:* `GoogleApi.HealthCare.V1beta1.Model.DicomFilterConfig.t`, *default:* `nil`) - Optional. A filter configuration. If `filter_config` is specified, set the value of `resource` to the resource name of a DICOM store in the format `projects/{projectID}/datasets/{datasetID}/dicomStores/{dicomStoreID}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blobStorageSettings =>
            GoogleApi.HealthCare.V1beta1.Model.BlobStorageSettings.t() | nil,
          :filterConfig => GoogleApi.HealthCare.V1beta1.Model.DicomFilterConfig.t() | nil
        }

  field(:blobStorageSettings, as: GoogleApi.HealthCare.V1beta1.Model.BlobStorageSettings)
  field(:filterConfig, as: GoogleApi.HealthCare.V1beta1.Model.DicomFilterConfig)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.SetBlobStorageSettingsRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.SetBlobStorageSettingsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.SetBlobStorageSettingsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
