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

defmodule GoogleApi.WalletObjects.V1.Model.GiftCardObject do
  @moduledoc """


  ## Attributes

  *   `appLinkData` (*type:* `GoogleApi.WalletObjects.V1.Model.AppLinkData.t`, *default:* `nil`) - Optional information about the partner app link.
  *   `balance` (*type:* `GoogleApi.WalletObjects.V1.Model.Money.t`, *default:* `nil`) - The card's monetary balance.
  *   `balanceUpdateTime` (*type:* `GoogleApi.WalletObjects.V1.Model.DateTime.t`, *default:* `nil`) - The date and time when the balance was last updated. Offset is required. If balance is updated and this property is not provided, system will default to the current time.
  *   `barcode` (*type:* `GoogleApi.WalletObjects.V1.Model.Barcode.t`, *default:* `nil`) - The barcode type and value.
  *   `cardNumber` (*type:* `String.t`, *default:* `nil`) - Required. The card's number.
  *   `classId` (*type:* `String.t`, *default:* `nil`) - Required. The class associated with this object. The class must be of the same type as this object, must already exist, and must be approved. Class IDs should follow the format issuer ID.identifier where the former is issued by Google and latter is chosen by you.
  *   `classReference` (*type:* `GoogleApi.WalletObjects.V1.Model.GiftCardClass.t`, *default:* `nil`) - A copy of the inherited fields of the parent class. These fields are retrieved during a GET.
  *   `disableExpirationNotification` (*type:* `boolean()`, *default:* `nil`) - Indicates if notifications should explicitly be suppressed. If this field is set to true, regardless of the `messages` field, expiration notifications to the user will be suppressed. By default, this field is set to false. Currently, this can only be set for offers.
  *   `eventNumber` (*type:* `String.t`, *default:* `nil`) - The card's event number, an optional field used by some gift cards.
  *   `groupingInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.GroupingInfo.t`, *default:* `nil`) - Information that controls how passes are grouped together.
  *   `hasLinkedDevice` (*type:* `boolean()`, *default:* `nil`) - Whether this object is currently linked to a single device. This field is set by the platform when a user saves the object, linking it to their device. Intended for use by select partners. Contact support for additional information.
  *   `hasUsers` (*type:* `boolean()`, *default:* `nil`) - Indicates if the object has users. This field is set by the platform.
  *   `heroImage` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Optional banner image displayed on the front of the card. If none is present, hero image of the class, if present, will be displayed. If hero image of the class is also not present, nothing will be displayed.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should follow the format issuer ID.identifier where the former is issued by Google and latter is chosen by you. The unique identifier should only include alphanumeric characters, '.', '_', or '-'.
  *   `imageModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t)`, *default:* `nil`) - Image module data. The maximum number of these fields displayed is 1 from object level and 1 for class object level.
  *   `infoModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.InfoModuleData.t`, *default:* `nil`) - Deprecated. Use textModulesData instead.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string `"walletobjects#giftCardObject"`.
  *   `linksModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.LinksModuleData.t`, *default:* `nil`) - Links module data. If links module data is also defined on the class, both will be displayed.
  *   `locations` (*type:* `list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t)`, *default:* `nil`) - Note: This field is currently not supported to trigger geo notifications.
  *   `messages` (*type:* `list(GoogleApi.WalletObjects.V1.Model.Message.t)`, *default:* `nil`) - An array of messages displayed in the app. All users of this object will receive its associated messages. The maximum number of these fields is 10.
  *   `passConstraints` (*type:* `GoogleApi.WalletObjects.V1.Model.PassConstraints.t`, *default:* `nil`) - Pass constraints for the object. Includes limiting NFC and screenshot behaviors.
  *   `pin` (*type:* `String.t`, *default:* `nil`) - The card's PIN.
  *   `rotatingBarcode` (*type:* `GoogleApi.WalletObjects.V1.Model.RotatingBarcode.t`, *default:* `nil`) - The rotating barcode type and value.
  *   `smartTapRedemptionValue` (*type:* `String.t`, *default:* `nil`) - The value that will be transmitted to a Smart Tap certified terminal over NFC for this object. The class level fields `enableSmartTap` and `redemptionIssuers` must also be set up correctly in order for the pass to support Smart Tap. Only ASCII characters are supported.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Required. The state of the object. This field is used to determine how an object is displayed in the app. For example, an `inactive` object is moved to the "Expired passes" section.
  *   `textModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t)`, *default:* `nil`) - Text module data. If text module data is also defined on the class, both will be displayed. The maximum number of these fields displayed is 10 from the object and 10 from the class.
  *   `validTimeInterval` (*type:* `GoogleApi.WalletObjects.V1.Model.TimeInterval.t`, *default:* `nil`) - The time period this object will be `active` and object can be used. An object's state will be changed to `expired` when this time period has passed.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Deprecated
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appLinkData => GoogleApi.WalletObjects.V1.Model.AppLinkData.t() | nil,
          :balance => GoogleApi.WalletObjects.V1.Model.Money.t() | nil,
          :balanceUpdateTime => GoogleApi.WalletObjects.V1.Model.DateTime.t() | nil,
          :barcode => GoogleApi.WalletObjects.V1.Model.Barcode.t() | nil,
          :cardNumber => String.t() | nil,
          :classId => String.t() | nil,
          :classReference => GoogleApi.WalletObjects.V1.Model.GiftCardClass.t() | nil,
          :disableExpirationNotification => boolean() | nil,
          :eventNumber => String.t() | nil,
          :groupingInfo => GoogleApi.WalletObjects.V1.Model.GroupingInfo.t() | nil,
          :hasLinkedDevice => boolean() | nil,
          :hasUsers => boolean() | nil,
          :heroImage => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :id => String.t() | nil,
          :imageModulesData => list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t()) | nil,
          :infoModuleData => GoogleApi.WalletObjects.V1.Model.InfoModuleData.t() | nil,
          :kind => String.t() | nil,
          :linksModuleData => GoogleApi.WalletObjects.V1.Model.LinksModuleData.t() | nil,
          :locations => list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t()) | nil,
          :messages => list(GoogleApi.WalletObjects.V1.Model.Message.t()) | nil,
          :passConstraints => GoogleApi.WalletObjects.V1.Model.PassConstraints.t() | nil,
          :pin => String.t() | nil,
          :rotatingBarcode => GoogleApi.WalletObjects.V1.Model.RotatingBarcode.t() | nil,
          :smartTapRedemptionValue => String.t() | nil,
          :state => String.t() | nil,
          :textModulesData => list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t()) | nil,
          :validTimeInterval => GoogleApi.WalletObjects.V1.Model.TimeInterval.t() | nil,
          :version => String.t() | nil
        }

  field(:appLinkData, as: GoogleApi.WalletObjects.V1.Model.AppLinkData)
  field(:balance, as: GoogleApi.WalletObjects.V1.Model.Money)
  field(:balanceUpdateTime, as: GoogleApi.WalletObjects.V1.Model.DateTime)
  field(:barcode, as: GoogleApi.WalletObjects.V1.Model.Barcode)
  field(:cardNumber)
  field(:classId)
  field(:classReference, as: GoogleApi.WalletObjects.V1.Model.GiftCardClass)
  field(:disableExpirationNotification)
  field(:eventNumber)
  field(:groupingInfo, as: GoogleApi.WalletObjects.V1.Model.GroupingInfo)
  field(:hasLinkedDevice)
  field(:hasUsers)
  field(:heroImage, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:id)
  field(:imageModulesData, as: GoogleApi.WalletObjects.V1.Model.ImageModuleData, type: :list)
  field(:infoModuleData, as: GoogleApi.WalletObjects.V1.Model.InfoModuleData)
  field(:kind)
  field(:linksModuleData, as: GoogleApi.WalletObjects.V1.Model.LinksModuleData)
  field(:locations, as: GoogleApi.WalletObjects.V1.Model.LatLongPoint, type: :list)
  field(:messages, as: GoogleApi.WalletObjects.V1.Model.Message, type: :list)
  field(:passConstraints, as: GoogleApi.WalletObjects.V1.Model.PassConstraints)
  field(:pin)
  field(:rotatingBarcode, as: GoogleApi.WalletObjects.V1.Model.RotatingBarcode)
  field(:smartTapRedemptionValue)
  field(:state)
  field(:textModulesData, as: GoogleApi.WalletObjects.V1.Model.TextModuleData, type: :list)
  field(:validTimeInterval, as: GoogleApi.WalletObjects.V1.Model.TimeInterval)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.GiftCardObject do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.GiftCardObject.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.GiftCardObject do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
