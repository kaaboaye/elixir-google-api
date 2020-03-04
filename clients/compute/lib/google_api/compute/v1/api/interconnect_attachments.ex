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

defmodule GoogleApi.Compute.V1.Api.InterconnectAttachments do
  @moduledoc """
  API calls for all endpoints tagged `InterconnectAttachments`.
  """

  alias GoogleApi.Compute.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves an aggregated list of interconnect attachments.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Compute.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID for this request.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:filter` (*type:* `String.t`) - A filter expression that filters resources listed in the response. The expression must specify the field name, a comparison operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The comparison operator must be either =, !=, >, or <.

          For example, if you are filtering Compute Engine instances, you can exclude instances named example-instance by specifying name != example-instance.

          You can also filter nested fields. For example, you could specify scheduling.automaticRestart = false to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels.

          To filter on multiple expressions, provide each separate expression within parentheses. For example, (scheduling.automaticRestart = true) (cpuPlatform = "Intel Skylake"). By default, each expression is an AND expression. However, you can include AND and OR expressions explicitly. For example, (cpuPlatform = "Intel Skylake") OR (cpuPlatform = "Intel Broadwell") AND (scheduling.automaticRestart = true).
      *   `:maxResults` (*type:* `integer()`) - The maximum number of results per page that should be returned. If the number of available results is larger than maxResults, Compute Engine returns a nextPageToken that can be used to get the next page of results in subsequent list requests. Acceptable values are 0 to 500, inclusive. (Default: 500)
      *   `:orderBy` (*type:* `String.t`) - Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name.

          You can also sort results in descending order based on the creation timestamp using orderBy="creationTimestamp desc". This sorts results based on the creationTimestamp field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first.

          Currently, only sorting by name or creationTimestamp desc is supported.
      *   `:pageToken` (*type:* `String.t`) - Specifies a page token to use. Set pageToken to the nextPageToken returned by a previous list request to get the next page of results.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Compute.V1.Model.InterconnectAttachmentAggregatedList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec compute_interconnect_attachments_aggregated_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.InterconnectAttachmentAggregatedList.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def compute_interconnect_attachments_aggregated_list(
        connection,
        project,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :filter => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/aggregated/interconnectAttachments", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Compute.V1.Model.InterconnectAttachmentAggregatedList{}]
    )
  end

  @doc """
  Deletes the specified interconnect attachment.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Compute.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID for this request.
  *   `region` (*type:* `String.t`) - Name of the region for this request.
  *   `interconnect_attachment` (*type:* `String.t`) - Name of the interconnect attachment to delete.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:requestId` (*type:* `String.t`) - An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.

          For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.

          The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Compute.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec compute_interconnect_attachments_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.Operation.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def compute_interconnect_attachments_delete(
        connection,
        project,
        region,
        interconnect_attachment,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :requestId => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url(
        "/{project}/regions/{region}/interconnectAttachments/{interconnectAttachment}",
        %{
          "project" => URI.encode(project, &URI.char_unreserved?/1),
          "region" => URI.encode(region, &URI.char_unreserved?/1),
          "interconnectAttachment" => URI.encode(interconnect_attachment, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end

  @doc """
  Returns the specified interconnect attachment.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Compute.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID for this request.
  *   `region` (*type:* `String.t`) - Name of the region for this request.
  *   `interconnect_attachment` (*type:* `String.t`) - Name of the interconnect attachment to return.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Compute.V1.Model.InterconnectAttachment{}}` on success
  *   `{:error, info}` on failure
  """
  @spec compute_interconnect_attachments_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.InterconnectAttachment.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def compute_interconnect_attachments_get(
        connection,
        project,
        region,
        interconnect_attachment,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/{project}/regions/{region}/interconnectAttachments/{interconnectAttachment}",
        %{
          "project" => URI.encode(project, &URI.char_unreserved?/1),
          "region" => URI.encode(region, &URI.char_unreserved?/1),
          "interconnectAttachment" => URI.encode(interconnect_attachment, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.InterconnectAttachment{}])
  end

  @doc """
  Creates an InterconnectAttachment in the specified project using the data included in the request.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Compute.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID for this request.
  *   `region` (*type:* `String.t`) - Name of the region for this request.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:requestId` (*type:* `String.t`) - An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.

          For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.

          The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
      *   `:validateOnly` (*type:* `boolean()`) - If true, the request will not be committed.
      *   `:body` (*type:* `GoogleApi.Compute.V1.Model.InterconnectAttachment.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Compute.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec compute_interconnect_attachments_insert(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.Operation.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def compute_interconnect_attachments_insert(
        connection,
        project,
        region,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :requestId => :query,
      :validateOnly => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/regions/{region}/interconnectAttachments", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end

  @doc """
  Retrieves the list of interconnect attachments contained within the specified region.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Compute.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID for this request.
  *   `region` (*type:* `String.t`) - Name of the region for this request.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:filter` (*type:* `String.t`) - A filter expression that filters resources listed in the response. The expression must specify the field name, a comparison operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The comparison operator must be either =, !=, >, or <.

          For example, if you are filtering Compute Engine instances, you can exclude instances named example-instance by specifying name != example-instance.

          You can also filter nested fields. For example, you could specify scheduling.automaticRestart = false to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels.

          To filter on multiple expressions, provide each separate expression within parentheses. For example, (scheduling.automaticRestart = true) (cpuPlatform = "Intel Skylake"). By default, each expression is an AND expression. However, you can include AND and OR expressions explicitly. For example, (cpuPlatform = "Intel Skylake") OR (cpuPlatform = "Intel Broadwell") AND (scheduling.automaticRestart = true).
      *   `:maxResults` (*type:* `integer()`) - The maximum number of results per page that should be returned. If the number of available results is larger than maxResults, Compute Engine returns a nextPageToken that can be used to get the next page of results in subsequent list requests. Acceptable values are 0 to 500, inclusive. (Default: 500)
      *   `:orderBy` (*type:* `String.t`) - Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name.

          You can also sort results in descending order based on the creation timestamp using orderBy="creationTimestamp desc". This sorts results based on the creationTimestamp field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first.

          Currently, only sorting by name or creationTimestamp desc is supported.
      *   `:pageToken` (*type:* `String.t`) - Specifies a page token to use. Set pageToken to the nextPageToken returned by a previous list request to get the next page of results.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Compute.V1.Model.InterconnectAttachmentList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec compute_interconnect_attachments_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.InterconnectAttachmentList.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def compute_interconnect_attachments_list(
        connection,
        project,
        region,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :filter => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/regions/{region}/interconnectAttachments", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.InterconnectAttachmentList{}])
  end

  @doc """
  Updates the specified interconnect attachment with the data included in the request. This method supports PATCH semantics and uses the JSON merge patch format and processing rules.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Compute.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID for this request.
  *   `region` (*type:* `String.t`) - Name of the region scoping this request.
  *   `interconnect_attachment` (*type:* `String.t`) - Name of the interconnect attachment to patch.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:requestId` (*type:* `String.t`) - An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.

          For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.

          The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
      *   `:body` (*type:* `GoogleApi.Compute.V1.Model.InterconnectAttachment.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Compute.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec compute_interconnect_attachments_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.Operation.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def compute_interconnect_attachments_patch(
        connection,
        project,
        region,
        interconnect_attachment,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :requestId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url(
        "/{project}/regions/{region}/interconnectAttachments/{interconnectAttachment}",
        %{
          "project" => URI.encode(project, &URI.char_unreserved?/1),
          "region" => URI.encode(region, &URI.char_unreserved?/1),
          "interconnectAttachment" => URI.encode(interconnect_attachment, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end
end
