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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1Product do
  @moduledoc """
  A Product contains ReferenceImages.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - User-provided metadata to be stored with this product. Must be at most 4096
      characters long.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The user-provided name for this Product. Must not be empty. Must be at most
      4096 characters long.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the product.

      Format is:
      `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.

      This field is ignored when creating a product.
  *   `productCategory` (*type:* `String.t`, *default:* `nil`) - Immutable. The category for the product identified by the reference image. This should
      be either "homegoods-v2", "apparel-v2", or "toys-v2". The legacy categories
      "homegoods", "apparel", and "toys" are still supported, but these should
      not be used for new products.
  *   `productLabels` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1ProductKeyValue.t)`, *default:* `nil`) - Key-value pairs that can be attached to a product. At query time,
      constraints can be specified based on the product_labels.

      Note that integer values can be provided as strings, e.g. "1199". Only
      strings with integer values can match a range-based restriction which is
      to be supported soon.

      Multiple values can be assigned to the same key. One product may have up to
      500 product_labels.

      Notice that the total number of distinct product_labels over all products
      in one ProductSet cannot exceed 1M, otherwise the product search pipeline
      will refuse to work for that ProductSet.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :displayName => String.t(),
          :name => String.t(),
          :productCategory => String.t(),
          :productLabels =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1ProductKeyValue.t())
        }

  field(:description)
  field(:displayName)
  field(:name)
  field(:productCategory)

  field(:productLabels,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1ProductKeyValue,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1Product do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1Product.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1Product do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
