# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.BigQueryDataTransfer.V1.Model.TransferRun do
  @moduledoc """
  Represents a data transfer run.

  ## Attributes

  - dataSourceId (String.t): Output only. Data source id. Defaults to: `null`.
  - destinationDatasetId (String.t): Output only. The BigQuery target dataset id. Defaults to: `null`.
  - endTime (DateTime.t): Output only. Time when transfer run ended. Parameter ignored by server for input requests. Defaults to: `null`.
  - errorStatus (Status): Status of the transfer run. Defaults to: `null`.
  - name (String.t): The resource name of the transfer run. Transfer run names have the form &#x60;projects/{project_id}/locations/{location}/transferConfigs/{config_id}/runs/{run_id}&#x60;. The name is ignored when creating a transfer run. Defaults to: `null`.
  - params (%{optional(String.t) &#x3D;&gt; String.t}): Output only. Data transfer specific parameters. Defaults to: `null`.
  - runTime (DateTime.t): For batch transfer runs, specifies the date and time that data should be ingested. Defaults to: `null`.
  - schedule (String.t): Output only. Describes the schedule of this transfer run if it was created as part of a regular schedule. For batch transfer runs that are scheduled manually, this is empty. NOTE: the system might choose to delay the schedule depending on the current load, so &#x60;schedule_time&#x60; doesn&#39;t always match this. Defaults to: `null`.
  - scheduleTime (DateTime.t): Minimum time after which a transfer run can be started. Defaults to: `null`.
  - startTime (DateTime.t): Output only. Time when transfer run was started. Parameter ignored by server for input requests. Defaults to: `null`.
  - state (String.t): Data transfer run state. Ignored for input requests. Defaults to: `null`.
    - Enum - one of [TRANSFER_STATE_UNSPECIFIED, PENDING, RUNNING, SUCCEEDED, FAILED, CANCELLED]
  - updateTime (DateTime.t): Output only. Last time the data transfer run state was updated. Defaults to: `null`.
  - userId (String.t): Output only. Unique ID of the user on whose behalf transfer is done. Applicable only to data sources that do not support service accounts. When set to 0, the data source service account credentials are used. May be negative. Note, that this identifier is not stable. It may change over time even for the same user. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataSourceId => any(),
          :destinationDatasetId => any(),
          :endTime => DateTime.t(),
          :errorStatus => GoogleApi.BigQueryDataTransfer.V1.Model.Status.t(),
          :name => any(),
          :params => map(),
          :runTime => DateTime.t(),
          :schedule => any(),
          :scheduleTime => DateTime.t(),
          :startTime => DateTime.t(),
          :state => any(),
          :updateTime => DateTime.t(),
          :userId => any()
        }

  field(:dataSourceId)
  field(:destinationDatasetId)
  field(:endTime, as: DateTime)
  field(:errorStatus, as: GoogleApi.BigQueryDataTransfer.V1.Model.Status)
  field(:name)
  field(:params, type: :map)
  field(:runTime, as: DateTime)
  field(:schedule)
  field(:scheduleTime, as: DateTime)
  field(:startTime, as: DateTime)
  field(:state)
  field(:updateTime, as: DateTime)
  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.TransferRun do
  def decode(value, options) do
    GoogleApi.BigQueryDataTransfer.V1.Model.TransferRun.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.TransferRun do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
