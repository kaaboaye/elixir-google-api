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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2RequestMetadata do
  @moduledoc """
  An optional Metadata to attach to any RPC request to tell the server about an
  external context of the request. The server may use this for logging or other
  purposes. To use it, the client attaches the header to the call using the
  canonical proto serialization:

  * name: `build.bazel.remote.execution.v2.requestmetadata-bin`
  * contents: the base64 encoded binary `RequestMetadata` message.
  Note: the gRPC library serializes binary headers encoded in base 64 by
  default (https://github.com/grpc/grpc/blob/master/doc/PROTOCOL-HTTP2.md#requests).
  Therefore, if the gRPC library is used to pass/retrieve this
  metadata, the user may ignore the base64 encoding and assume it is simply
  serialized as a binary message.

  ## Attributes

  *   `actionId` (*type:* `String.t`, *default:* `nil`) - An identifier that ties multiple requests to the same action.
      For example, multiple requests to the CAS, Action Cache, and Execution
      API are used in order to compile foo.cc.
  *   `correlatedInvocationsId` (*type:* `String.t`, *default:* `nil`) - An identifier to tie multiple tool invocations together. For example,
      runs of foo_test, bar_test and baz_test on a post-submit of a given patch.
  *   `toolDetails` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ToolDetails.t`, *default:* `nil`) - The details for the tool invoking the requests.
  *   `toolInvocationId` (*type:* `String.t`, *default:* `nil`) - An identifier that ties multiple actions together to a final result.
      For example, multiple actions are required to build and run foo_test.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionId => String.t(),
          :correlatedInvocationsId => String.t(),
          :toolDetails =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ToolDetails.t(),
          :toolInvocationId => String.t()
        }

  field(:actionId)
  field(:correlatedInvocationsId)

  field(:toolDetails,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ToolDetails
  )

  field(:toolInvocationId)
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2RequestMetadata do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2RequestMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2RequestMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
