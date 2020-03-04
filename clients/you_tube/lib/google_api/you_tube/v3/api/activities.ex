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

defmodule GoogleApi.YouTube.V3.Api.Activities do
  @moduledoc """
  API calls for all endpoints tagged `Activities`.
  """

  alias GoogleApi.YouTube.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Posts a bulletin for a specific channel. (The user submitting the request must be authorized to act on the channel's behalf.)

  Note: Even though an activity resource can contain information about actions like a user rating a video or marking a video as a favorite, you need to use other API methods to generate those activity resources. For example, you would use the API's videos.rate() method to rate a video and the playlistItems.insert() method to mark a video as a favorite.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTube.V3.Connection.t`) - Connection to server
  *   `part` (*type:* `String.t`) - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.YouTube.V3.Model.Activity.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTube.V3.Model.Activity{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtube_activities_insert(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.Activity.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def youtube_activities_insert(connection, part, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/youtube/v3/activities", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.Activity{}])
  end

  @doc """
  Returns a list of channel activity events that match the request criteria. For example, you can retrieve events associated with a particular channel, events associated with the user's subscriptions and Google+ friends, or the YouTube home page feed, which is customized for each user.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.YouTube.V3.Connection.t`) - Connection to server
  *   `part` (*type:* `String.t`) - The part parameter specifies a comma-separated list of one or more activity resource properties that the API response will include.

      If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in an activity resource, the snippet property contains other properties that identify the type of activity, a display title for the activity, and so forth. If you set part=snippet, the API response will also contain all of those nested properties.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:channelId` (*type:* `String.t`) - The channelId parameter specifies a unique YouTube channel ID. The API will then return a list of that channel's activities.
      *   `:home` (*type:* `boolean()`) - Set this parameter's value to true to retrieve the activity feed that displays on the YouTube home page for the currently authenticated user.
      *   `:maxResults` (*type:* `integer()`) - The maxResults parameter specifies the maximum number of items that should be returned in the result set.
      *   `:mine` (*type:* `boolean()`) - Set this parameter's value to true to retrieve a feed of the authenticated user's activities.
      *   `:pageToken` (*type:* `String.t`) - The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
      *   `:publishedAfter` (*type:* `DateTime.t`) - The publishedAfter parameter specifies the earliest date and time that an activity could have occurred for that activity to be included in the API response. If the parameter value specifies a day, but not a time, then any activities that occurred that day will be included in the result set. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
      *   `:publishedBefore` (*type:* `DateTime.t`) - The publishedBefore parameter specifies the date and time before which an activity must have occurred for that activity to be included in the API response. If the parameter value specifies a day, but not a time, then any activities that occurred that day will be excluded from the result set. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
      *   `:regionCode` (*type:* `String.t`) - The regionCode parameter instructs the API to return results for the specified country. The parameter value is an ISO 3166-1 alpha-2 country code. YouTube uses this value when the authorized user's previous activity on YouTube does not provide enough information to generate the activity feed.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.YouTube.V3.Model.ActivityListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec youtube_activities_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.ActivityListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def youtube_activities_list(connection, part, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :channelId => :query,
      :home => :query,
      :maxResults => :query,
      :mine => :query,
      :pageToken => :query,
      :publishedAfter => :query,
      :publishedBefore => :query,
      :regionCode => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/youtube/v3/activities", %{})
      |> Request.add_param(:query, :part, part)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.ActivityListResponse{}])
  end
end
