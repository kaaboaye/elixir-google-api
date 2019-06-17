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

defmodule GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchase do
  @moduledoc """
  A SubscriptionPurchase resource indicates the status of a user's subscription purchase.

  ## Attributes

  - acknowledgementState (integer()): The acknowledgement state of the subscription product. Possible values are:  
  - Yet to be acknowledged 
  - Acknowledged Defaults to `nil`.
  - autoRenewing (boolean()): Whether the subscription will automatically be renewed when it reaches its current expiry time. Defaults to `nil`.
  - autoResumeTimeMillis (String.t): Time at which the subscription will be automatically resumed, in milliseconds since the Epoch. Only present if the user has requested to pause the subscription. Defaults to `nil`.
  - cancelReason (integer()): The reason why a subscription was canceled or is not auto-renewing. Possible values are:  
  - User canceled the subscription 
  - Subscription was canceled by the system, for example because of a billing problem 
  - Subscription was replaced with a new subscription 
  - Subscription was canceled by the developer Defaults to `nil`.
  - cancelSurveyResult (GoogleApi.AndroidPublisher.V3.Model.SubscriptionCancelSurveyResult.t): Information provided by the user when they complete the subscription cancellation flow (cancellation reason survey). Defaults to `nil`.
  - countryCode (String.t): ISO 3166-1 alpha-2 billing country/region code of the user at the time the subscription was granted. Defaults to `nil`.
  - developerPayload (String.t): A developer-specified string that contains supplemental information about an order. Defaults to `nil`.
  - emailAddress (String.t): The email address of the user when the subscription was purchased. Only present for purchases made with 'Subscribe with Google'. Defaults to `nil`.
  - expiryTimeMillis (String.t): Time at which the subscription will expire, in milliseconds since the Epoch. Defaults to `nil`.
  - familyName (String.t): The family name of the user when the subscription was purchased. Only present for purchases made with 'Subscribe with Google'. Defaults to `nil`.
  - givenName (String.t): The given name of the user when the subscription was purchased. Only present for purchases made with 'Subscribe with Google'. Defaults to `nil`.
  - kind (String.t): This kind represents a subscriptionPurchase object in the androidpublisher service. Defaults to `androidpublisher#subscriptionPurchase`.
  - linkedPurchaseToken (String.t): The purchase token of the originating purchase if this subscription is one of the following:  
  - Re-signup of a canceled but non-lapsed subscription 
  - Upgrade/downgrade from a previous subscription  For example, suppose a user originally signs up and you receive purchase token X, then the user cancels and goes through the resignup flow (before their subscription lapses) and you receive purchase token Y, and finally the user upgrades their subscription and you receive purchase token Z. If you call this API with purchase token Z, this field will be set to Y. If you call this API with purchase token Y, this field will be set to X. If you call this API with purchase token X, this field will not be set. Defaults to `nil`.
  - orderId (String.t): The order id of the latest recurring order associated with the purchase of the subscription. Defaults to `nil`.
  - paymentState (integer()): The payment state of the subscription. Possible values are:  
  - Payment pending 
  - Payment received 
  - Free trial 
  - Pending deferred upgrade/downgrade Defaults to `nil`.
  - priceAmountMicros (String.t): Price of the subscription, not including tax. Price is expressed in micro-units, where 1,000,000 micro-units represents one unit of the currency. For example, if the subscription price is €1.99, price_amount_micros is 1990000. Defaults to `nil`.
  - priceChange (GoogleApi.AndroidPublisher.V3.Model.SubscriptionPriceChange.t): The latest price change information available. This is present only when there is an upcoming price change for the subscription yet to be applied.

  Once the subscription renews with the new price or the subscription is canceled, no price change information will be returned. Defaults to `nil`.
  - priceCurrencyCode (String.t): ISO 4217 currency code for the subscription price. For example, if the price is specified in British pounds sterling, price_currency_code is "GBP". Defaults to `nil`.
  - profileId (String.t): The Google profile id of the user when the subscription was purchased. Only present for purchases made with 'Subscribe with Google'. Defaults to `nil`.
  - profileName (String.t): The profile name of the user when the subscription was purchased. Only present for purchases made with 'Subscribe with Google'. Defaults to `nil`.
  - purchaseType (integer()): The type of purchase of the subscription. This field is only set if this purchase was not made using the standard in-app billing flow. Possible values are:  
  - Test (i.e. purchased from a license testing account) Defaults to `nil`.
  - startTimeMillis (String.t): Time at which the subscription was granted, in milliseconds since the Epoch. Defaults to `nil`.
  - userCancellationTimeMillis (String.t): The time at which the subscription was canceled by the user, in milliseconds since the epoch. Only present if cancelReason is 0. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acknowledgementState => integer(),
          :autoRenewing => boolean(),
          :autoResumeTimeMillis => String.t(),
          :cancelReason => integer(),
          :cancelSurveyResult =>
            GoogleApi.AndroidPublisher.V3.Model.SubscriptionCancelSurveyResult.t(),
          :countryCode => String.t(),
          :developerPayload => String.t(),
          :emailAddress => String.t(),
          :expiryTimeMillis => String.t(),
          :familyName => String.t(),
          :givenName => String.t(),
          :kind => String.t(),
          :linkedPurchaseToken => String.t(),
          :orderId => String.t(),
          :paymentState => integer(),
          :priceAmountMicros => String.t(),
          :priceChange => GoogleApi.AndroidPublisher.V3.Model.SubscriptionPriceChange.t(),
          :priceCurrencyCode => String.t(),
          :profileId => String.t(),
          :profileName => String.t(),
          :purchaseType => integer(),
          :startTimeMillis => String.t(),
          :userCancellationTimeMillis => String.t()
        }

  field(:acknowledgementState)
  field(:autoRenewing)
  field(:autoResumeTimeMillis)
  field(:cancelReason)

  field(
    :cancelSurveyResult,
    as: GoogleApi.AndroidPublisher.V3.Model.SubscriptionCancelSurveyResult
  )

  field(:countryCode)
  field(:developerPayload)
  field(:emailAddress)
  field(:expiryTimeMillis)
  field(:familyName)
  field(:givenName)
  field(:kind)
  field(:linkedPurchaseToken)
  field(:orderId)
  field(:paymentState)
  field(:priceAmountMicros)
  field(:priceChange, as: GoogleApi.AndroidPublisher.V3.Model.SubscriptionPriceChange)
  field(:priceCurrencyCode)
  field(:profileId)
  field(:profileName)
  field(:purchaseType)
  field(:startTimeMillis)
  field(:userCancellationTimeMillis)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchase do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchase.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchase do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end