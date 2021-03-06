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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridContentItem do
  @moduledoc """
  An individual hybrid item to inspect. Will be stored temporarily during
  processing.
  Early access feature is in a pre-release state and might change or have
  limited support. For more information, see
  https://cloud.google.com/products#product-launch-stages.

  ## Attributes

  *   `findingDetails` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridFindingDetails.t`, *default:* `nil`) - Supplementary information that will be added to each finding.
  *   `item` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentItem.t`, *default:* `nil`) - The item to inspect.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :findingDetails => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridFindingDetails.t(),
          :item => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentItem.t()
        }

  field(:findingDetails, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridFindingDetails)
  field(:item, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentItem)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridContentItem do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridContentItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridContentItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
