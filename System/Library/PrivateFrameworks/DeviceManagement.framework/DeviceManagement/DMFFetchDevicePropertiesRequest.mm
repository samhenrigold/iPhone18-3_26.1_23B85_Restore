@interface DMFFetchDevicePropertiesRequest
+ (id)devicePropertyKeysForPlatform:(unint64_t)platform;
- (DMFFetchDevicePropertiesRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchDevicePropertiesRequest

- (DMFFetchDevicePropertiesRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = DMFFetchDevicePropertiesRequest;
  v5 = [(CATTaskRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"propertyKeys"];
    propertyKeys = v5->_propertyKeys;
    v5->_propertyKeys = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchDevicePropertiesRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchDevicePropertiesRequest *)self propertyKeys:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"propertyKeys"];
}

+ (id)devicePropertyKeysForPlatform:(unint64_t)platform
{
  if (devicePropertyKeysForPlatform__onceToken != -1)
  {
    +[DMFFetchDevicePropertiesRequest devicePropertyKeysForPlatform:];
  }

  v4 = devicePropertyKeysForPlatform__keysByPlatform;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:platform];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

void __65__DMFFetchDevicePropertiesRequest_devicePropertyKeysForPlatform___block_invoke()
{
  v29[21] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v29[0] = @"DMFDeviceAvailableCapacityKey";
  v29[1] = @"DMFDeviceAwaitingConfigurationKey";
  v29[2] = @"DMFDeviceBatteryLevelKey";
  v29[3] = @"DMFDeviceBluetoothMACKey";
  v29[4] = @"DMFDeviceBuildVersionKey";
  v29[5] = @"DMFDeviceCapacityKey";
  v29[6] = @"DMFDeviceiTunesStoreAccountHashKey";
  v29[7] = @"DMFDeviceiTunesStoreAccountIsActiveKey";
  v29[8] = @"DMFDeviceIsAppleInternalKey";
  v29[9] = @"DMFDeviceIsDeviceLocatorServiceEnabledKey";
  v29[10] = @"DMFDeviceIsDNDInEffectKey";
  v29[11] = @"DMFDeviceIsLostModeEnabledKey";
  v29[12] = @"DMFDeviceMarketingNameKey";
  v29[13] = @"DMFDeviceModelKey";
  v29[14] = @"DMFDeviceModelNameKey";
  v29[15] = @"DMFDeviceNameKey";
  v29[16] = @"DMFDeviceOSVersionKey";
  v29[17] = @"DMFDeviceProductNameKey";
  v29[18] = @"DMFDeviceSerialNumberKey";
  v29[19] = @"DMFDeviceTypeKey";
  v29[20] = @"DMFDeviceWiFiMACKey";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:21];
  v2 = [v0 setWithArray:v1];

  v3 = MEMORY[0x1E695DFD8];
  v28[0] = @"DMFDeviceAppAnalyticsEnabledKey";
  v28[1] = @"DMFDeviceDiagnosticSubmissionEnabledKey";
  v28[2] = @"DMFDeviceIsCloudBackupEnabledKey";
  v28[3] = @"DMFDeviceIsSupervisedKey";
  v28[4] = @"DMFDeviceLastCloudBackupDateKey";
  v28[5] = @"DMFDeviceUniqueIdentifierKey";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:6];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 setByAddingObjectsFromSet:v5];

  v7 = MEMORY[0x1E695DFD8];
  v27[0] = @"DMFDeviceCarrierSettingsVersionKey";
  v27[1] = @"DMFDeviceCellularTechnologyKey";
  v27[2] = @"DMFDeviceCurrentCarrierNetworkKey";
  v27[3] = @"DMFDeviceCurrentMCCKey";
  v27[4] = @"DMFDeviceCurrentMNCKey";
  v27[5] = @"DMFDeviceDataRoamingEnabledKey";
  v27[6] = @"DMFDeviceEnforcedSoftwareUpdateDelayKey";
  v27[7] = @"DMFDeviceIsActivationLockEnabledKey";
  v27[8] = @"DMFDeviceEASIdentifierKey";
  v27[9] = @"DMFDeviceICCIDKey";
  v27[10] = @"DMFDeviceIMEIKey";
  v27[11] = @"DMFDeviceIsEphemeralMultiUserKey";
  v27[12] = @"DMFDeviceIsNetworkTetheredKey";
  v27[13] = @"DMFDeviceIsRoamingKey";
  v27[14] = @"DMFDeviceMaximumResidentUsersKey";
  v27[15] = @"DMFDeviceMEIDKey";
  v27[16] = @"DMFDeviceModemFirmwareVersionKey";
  v27[17] = @"DMFDevicePersonalHotspotEnabledKey";
  v27[18] = @"DMFDevicePhoneNumberKey";
  v27[19] = @"DMFDeviceSkippedSetupPanesKey";
  v27[20] = @"DMFDeviceSubscriberCarrierNetworkKey";
  v27[21] = @"DMFDeviceSubscriberMCCKey";
  v27[22] = @"DMFDeviceSubscriberMNCKey";
  v27[23] = @"DMFDeviceVoiceRoamingEnabledKey";
  v27[24] = @"DMFDeviceServiceSubscriptionsKey";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:25];
  v9 = [v7 setWithArray:v8];
  v10 = [v6 setByAddingObjectsFromSet:v9];

  v11 = MEMORY[0x1E695DFD8];
  v26[0] = @"DMFDeviceActiveManagedUsersKey";
  v26[1] = @"DMFDeviceAutoSetupAdminAccountsKey";
  v26[2] = @"DMFDeviceHostNameKey";
  v26[3] = @"DMFDeviceInstalledExtensionsKey";
  v26[4] = @"DMFDeviceLocalHostNameKey";
  v26[5] = @"DMFDeviceOSUpdateSettingsKey";
  v26[6] = @"DMFDeviceSystemIntegrityProtectionEnabledKey";
  v26[7] = @"DMFDeviceXsanConfigurationKey";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:8];
  v13 = [v11 setWithArray:v12];
  v14 = [v2 setByAddingObjectsFromSet:v13];

  v15 = MEMORY[0x1E695DFD8];
  v25[0] = @"DMFDeviceDestinationIdentifierKey";
  v25[1] = @"DMFDeviceDestinationIdentifierKey";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v17 = [v15 setWithArray:v16];
  v18 = [v6 setByAddingObjectsFromSet:v17];

  v19 = [MEMORY[0x1E695DFD8] setWithArray:MEMORY[0x1E695E0F0]];
  v20 = [v6 setByAddingObjectsFromSet:v19];

  v23[0] = &unk_1F57B71B0;
  v23[1] = &unk_1F57B71C8;
  v24[0] = v10;
  v24[1] = v14;
  v23[2] = &unk_1F57B71F8;
  v23[3] = &unk_1F57B71E0;
  v24[2] = v18;
  v24[3] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
  v22 = devicePropertyKeysForPlatform__keysByPlatform;
  devicePropertyKeysForPlatform__keysByPlatform = v21;
}

@end