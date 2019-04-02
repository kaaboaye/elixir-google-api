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

defmodule GoogleApi.Compute.V1.Model.NetworkEndpointGroup do
  @moduledoc """
  Represents a collection of network endpoints.

  ## Attributes

  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - defaultPort (integer()): The default port used if the port number is not specified in the network endpoint. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - kind (String.t): [Output Only] Type of the resource. Always compute#networkEndpointGroup for network endpoint group. Defaults to: `null`.
  - name (String.t): Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60; which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to: `null`.
  - network (String.t): The URL of the network to which all network endpoints in the NEG belong. Uses \&quot;default\&quot; project network if unspecified. Defaults to: `null`.
  - networkEndpointType (String.t): Type of network endpoints in this network endpoint group. Currently the only supported value is GCE_VM_IP_PORT. Defaults to: `null`.
    - Enum - one of [GCE_VM_IP_PORT]
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  - size (integer()): [Output only] Number of network endpoints in the network endpoint group. Defaults to: `null`.
  - subnetwork (String.t): Optional URL of the subnetwork to which all network endpoints in the NEG belong. Defaults to: `null`.
  - zone (String.t): [Output Only] The URL of the zone where the network endpoint group is located. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => any(),
          :defaultPort => any(),
          :description => any(),
          :id => any(),
          :kind => any(),
          :name => any(),
          :network => any(),
          :networkEndpointType => any(),
          :selfLink => any(),
          :size => any(),
          :subnetwork => any(),
          :zone => any()
        }

  field(:creationTimestamp)
  field(:defaultPort)
  field(:description)
  field(:id)
  field(:kind)
  field(:name)
  field(:network)
  field(:networkEndpointType)
  field(:selfLink)
  field(:size)
  field(:subnetwork)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NetworkEndpointGroup do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NetworkEndpointGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NetworkEndpointGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end