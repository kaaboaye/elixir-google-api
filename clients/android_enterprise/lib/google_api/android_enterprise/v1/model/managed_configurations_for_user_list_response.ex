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

defmodule GoogleApi.AndroidEnterprise.V1.Model.ManagedConfigurationsForUserListResponse do
  @moduledoc """
  The managed configuration resources for the user.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `androidenterprise#managedConfigurationsForUserListResponse`) - Identifies what kind of resource this is. Value: the fixed string "androidenterprise#managedConfigurationsForUserListResponse".
  *   `managedConfigurationForUser` (*type:* `list(GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration.t)`, *default:* `nil`) - A managed configuration for an app for a specific user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :managedConfigurationForUser =>
            list(GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration.t())
        }

  field(:kind)

  field(:managedConfigurationForUser,
    as: GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AndroidEnterprise.V1.Model.ManagedConfigurationsForUserListResponse do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.ManagedConfigurationsForUserListResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AndroidEnterprise.V1.Model.ManagedConfigurationsForUserListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
