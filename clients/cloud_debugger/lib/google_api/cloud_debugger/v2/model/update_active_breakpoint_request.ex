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

defmodule GoogleApi.CloudDebugger.V2.Model.UpdateActiveBreakpointRequest do
  @moduledoc """
  Request to update an active breakpoint.

  ## Attributes

  *   `breakpoint` (*type:* `GoogleApi.CloudDebugger.V2.Model.Breakpoint.t`, *default:* `nil`) - Required. Updated breakpoint information.
      The field `id` must be set.
      The agent must echo all Breakpoint specification fields in the update.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :breakpoint => GoogleApi.CloudDebugger.V2.Model.Breakpoint.t()
        }

  field(:breakpoint, as: GoogleApi.CloudDebugger.V2.Model.Breakpoint)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDebugger.V2.Model.UpdateActiveBreakpointRequest do
  def decode(value, options) do
    GoogleApi.CloudDebugger.V2.Model.UpdateActiveBreakpointRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDebugger.V2.Model.UpdateActiveBreakpointRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
