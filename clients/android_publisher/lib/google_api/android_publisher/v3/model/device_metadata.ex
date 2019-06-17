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

defmodule GoogleApi.AndroidPublisher.V3.Model.DeviceMetadata do
  @moduledoc """


  ## Attributes

  - cpuMake (String.t): Device CPU make e.g. "Qualcomm" Defaults to `nil`.
  - cpuModel (String.t): Device CPU model e.g. "MSM8974" Defaults to `nil`.
  - deviceClass (String.t): Device class (e.g. tablet) Defaults to `nil`.
  - glEsVersion (integer()): OpenGL version Defaults to `nil`.
  - manufacturer (String.t): Device manufacturer (e.g. Motorola) Defaults to `nil`.
  - nativePlatform (String.t): Comma separated list of native platforms (e.g. "arm", "arm7") Defaults to `nil`.
  - productName (String.t): Device model name (e.g. Droid) Defaults to `nil`.
  - ramMb (integer()): Device RAM in Megabytes e.g. "2048" Defaults to `nil`.
  - screenDensityDpi (integer()): Screen density in DPI Defaults to `nil`.
  - screenHeightPx (integer()): Screen height in pixels Defaults to `nil`.
  - screenWidthPx (integer()): Screen width in pixels Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cpuMake => String.t(),
          :cpuModel => String.t(),
          :deviceClass => String.t(),
          :glEsVersion => integer(),
          :manufacturer => String.t(),
          :nativePlatform => String.t(),
          :productName => String.t(),
          :ramMb => integer(),
          :screenDensityDpi => integer(),
          :screenHeightPx => integer(),
          :screenWidthPx => integer()
        }

  field(:cpuMake)
  field(:cpuModel)
  field(:deviceClass)
  field(:glEsVersion)
  field(:manufacturer)
  field(:nativePlatform)
  field(:productName)
  field(:ramMb)
  field(:screenDensityDpi)
  field(:screenHeightPx)
  field(:screenWidthPx)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.DeviceMetadata do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.DeviceMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.DeviceMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end