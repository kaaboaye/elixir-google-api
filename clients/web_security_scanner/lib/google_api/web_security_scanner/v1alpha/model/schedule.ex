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

defmodule GoogleApi.WebSecurityScanner.V1alpha.Model.Schedule do
  @moduledoc """
  Scan schedule configuration.

  ## Attributes

  *   `intervalDurationDays` (*type:* `integer()`, *default:* `nil`) - Required. The duration of time between executions in days.
  *   `scheduleTime` (*type:* `DateTime.t`, *default:* `nil`) - A timestamp indicates when the next run will be scheduled. The value is
      refreshed by the server after each run. If unspecified, it will default
      to current server time, which means the scan will be scheduled to start
      immediately.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :intervalDurationDays => integer(),
          :scheduleTime => DateTime.t()
        }

  field(:intervalDurationDays)
  field(:scheduleTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.Schedule do
  def decode(value, options) do
    GoogleApi.WebSecurityScanner.V1alpha.Model.Schedule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.Schedule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
