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

defmodule GoogleApi.FirebaseHosting.V1beta1.Model.Redirect do
  @moduledoc """
  A [`redirect`](/docs/hosting/full-config#redirects) represents the
  configuration for returning an HTTP redirect response given a matching
  request URL path.

  ## Attributes

  *   `glob` (*type:* `String.t`, *default:* `nil`) - The user-supplied [glob
      pattern](/docs/hosting/full-config#glob_pattern_matching) to match
      against the request URL path.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Required. The value to put in the HTTP location header of the response.
      <br>The location can contain capture group values from the pattern using
      a `:` prefix to identify the segment and an optional `*` to capture the
      rest of the URL.
      For example:
      <code>"glob": "/:capture*",
      <br>"statusCode": 301,
      <br>"location": "https://example.com/foo/:capture"</code>
  *   `regex` (*type:* `String.t`, *default:* `nil`) - The user-supplied RE2 regular expression to match against the request
      URL path.
  *   `statusCode` (*type:* `integer()`, *default:* `nil`) - Required. The status HTTP code to return in the response. It must be a
      valid 3xx status code.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :glob => String.t(),
          :location => String.t(),
          :regex => String.t(),
          :statusCode => integer()
        }

  field(:glob)
  field(:location)
  field(:regex)
  field(:statusCode)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.Redirect do
  def decode(value, options) do
    GoogleApi.FirebaseHosting.V1beta1.Model.Redirect.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.Redirect do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
