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

defmodule GoogleApi.CloudSearch.V1.Api.Debug do
  @moduledoc """
  API calls for all endpoints tagged `Debug`.
  """

  alias GoogleApi.CloudSearch.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Checks whether an item is accessible by specified principal.

  **Note:** This API requires an admin account to execute.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSearch.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Item name, format:
      datasources/{source_id}/items/{item_id}
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:"debugOptions.enableDebugging"` (*type:* `boolean()`) - If you are asked by Google to help with debugging, set this field.
          Otherwise, ignore this field.
      *   `:body` (*type:* `GoogleApi.CloudSearch.V1.Model.Principal.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSearch.V1.Model.CheckAccessResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsearch_debug_datasources_items_check_access(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSearch.V1.Model.CheckAccessResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def cloudsearch_debug_datasources_items_check_access(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :"debugOptions.enableDebugging" => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/debug/{+name}:checkAccess", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSearch.V1.Model.CheckAccessResponse{}])
  end

  @doc """
  Fetches the item whose viewUrl exactly matches that of the URL provided
  in the request.

  **Note:** This API requires an admin account to execute.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSearch.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Source name, format:
      datasources/{source_id}
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.CloudSearch.V1.Model.SearchItemsByViewUrlRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSearch.V1.Model.SearchItemsByViewUrlResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsearch_debug_datasources_items_search_by_view_url(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSearch.V1.Model.SearchItemsByViewUrlResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def cloudsearch_debug_datasources_items_search_by_view_url(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/debug/{+name}/items:searchByViewUrl", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudSearch.V1.Model.SearchItemsByViewUrlResponse{}]
    )
  end

  @doc """
  List all unmapped identities for a specific item.

  **Note:** This API requires an admin account to execute.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSearch.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - The name of the item, in the following format:
      datasources/{source_id}/items/{ID}
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:"debugOptions.enableDebugging"` (*type:* `boolean()`) - If you are asked by Google to help with debugging, set this field.
          Otherwise, ignore this field.
      *   `:pageSize` (*type:* `integer()`) - Maximum number of items to fetch in a request.
          Defaults to 100.
      *   `:pageToken` (*type:* `String.t`) - The next_page_token value returned from a previous List request, if any.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSearch.V1.Model.ListUnmappedIdentitiesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsearch_debug_datasources_items_unmappedids_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSearch.V1.Model.ListUnmappedIdentitiesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def cloudsearch_debug_datasources_items_unmappedids_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :"debugOptions.enableDebugging" => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/debug/{+parent}/unmappedids", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudSearch.V1.Model.ListUnmappedIdentitiesResponse{}]
    )
  end

  @doc """
  Lists names of items associated with an unmapped identity.

  **Note:** This API requires an admin account to execute.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSearch.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - The name of the identity source, in the following format:
      identitysources/{source_id}}
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:"debugOptions.enableDebugging"` (*type:* `boolean()`) - If you are asked by Google to help with debugging, set this field.
          Otherwise, ignore this field.
      *   `:groupResourceName` (*type:* `String.t`) - 
      *   `:pageSize` (*type:* `integer()`) - Maximum number of items to fetch in a request.
          Defaults to 100.
      *   `:pageToken` (*type:* `String.t`) - The next_page_token value returned from a previous List request, if any.
      *   `:userResourceName` (*type:* `String.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSearch.V1.Model.ListItemNamesForUnmappedIdentityResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsearch_debug_identitysources_items_list_forunmappedidentity(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSearch.V1.Model.ListItemNamesForUnmappedIdentityResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def cloudsearch_debug_identitysources_items_list_forunmappedidentity(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :"debugOptions.enableDebugging" => :query,
      :groupResourceName => :query,
      :pageSize => :query,
      :pageToken => :query,
      :userResourceName => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/debug/{+parent}/items:forunmappedidentity", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudSearch.V1.Model.ListItemNamesForUnmappedIdentityResponse{}]
    )
  end

  @doc """
  Lists unmapped user identities for an identity source.

  **Note:** This API requires an admin account to execute.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSearch.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - The name of the identity source, in the following format:
      identitysources/{source_id}
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:"debugOptions.enableDebugging"` (*type:* `boolean()`) - If you are asked by Google to help with debugging, set this field.
          Otherwise, ignore this field.
      *   `:pageSize` (*type:* `integer()`) - Maximum number of items to fetch in a request.
          Defaults to 100.
      *   `:pageToken` (*type:* `String.t`) - The next_page_token value returned from a previous List request, if any.
      *   `:resolutionStatusCode` (*type:* `String.t`) - Limit users selection to this status.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSearch.V1.Model.ListUnmappedIdentitiesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsearch_debug_identitysources_unmappedids_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSearch.V1.Model.ListUnmappedIdentitiesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def cloudsearch_debug_identitysources_unmappedids_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :"debugOptions.enableDebugging" => :query,
      :pageSize => :query,
      :pageToken => :query,
      :resolutionStatusCode => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/debug/{+parent}/unmappedids", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudSearch.V1.Model.ListUnmappedIdentitiesResponse{}]
    )
  end
end
