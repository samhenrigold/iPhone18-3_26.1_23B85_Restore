@interface TPSCustomCapabilityValidationBuilder
+ (id)deviceCapabilityValidationMap;
+ (id)targetValidationForCapability:(id)capability;
+ (id)targetValidationForNRDeviceCapability:(id)capability;
+ (id)watchCapabilityValidationMap;
@end

@implementation TPSCustomCapabilityValidationBuilder

+ (id)deviceCapabilityValidationMap
{
  if (deviceCapabilityValidationMap_onceToken != -1)
  {
    +[TPSCustomCapabilityValidationBuilder deviceCapabilityValidationMap];
  }

  v3 = deviceCapabilityValidationMap_capabilityMap;

  return v3;
}

void __69__TPSCustomCapabilityValidationBuilder_deviceCapabilityValidationMap__block_invoke()
{
  v3[70] = *MEMORY[0x277D85DE8];
  v2[0] = @"BetaUser";
  v3[0] = objc_opt_class();
  v2[1] = @"6a4a9403835f9f19136d51a5fda2eb4cdbb2f115";
  v3[1] = objc_opt_class();
  v2[2] = @"62e200ccfc12f2f7df0045e62966165a84b22865";
  v3[2] = objc_opt_class();
  v2[3] = @"AppleArcadeSubscription";
  v3[3] = objc_opt_class();
  v2[4] = @"AppleCardSetup";
  v3[4] = objc_opt_class();
  v2[5] = @"AppleCashFamily";
  v3[5] = objc_opt_class();
  v2[6] = @"AppleCashSetup";
  v3[6] = objc_opt_class();
  v2[7] = @"AppleFitnessPlusSubscription";
  v3[7] = objc_opt_class();
  v2[8] = @"AppleNewsPlusSubscription";
  v3[8] = objc_opt_class();
  v2[9] = @"ApplePayActivation";
  v3[9] = objc_opt_class();
  v2[10] = @"ApplePayPeer";
  v3[10] = objc_opt_class();
  v2[11] = @"ApplePaySetup";
  v3[11] = objc_opt_class();
  v2[12] = @"AppleTVHomePod";
  v3[12] = objc_opt_class();
  v2[13] = @"AppleTVPlusSubscription";
  v3[13] = objc_opt_class();
  v2[14] = @"AppStoreRegion";
  v3[14] = objc_opt_class();
  v2[15] = @"f26177587586682d72004e360c3d302bcd88fded";
  v3[15] = objc_opt_class();
  v2[16] = @"32971e46f383403dfbcf0e9ce5455486d889c24";
  v3[16] = objc_opt_class();
  v2[17] = @"2f480e181229a3cfe6797ccd6710bd93b8303c4c";
  v3[17] = objc_opt_class();
  v2[18] = @"e2144efa67e3162124c9db7498f21dc65ced81a5";
  v3[18] = objc_opt_class();
  v2[19] = @"58656d847de7d3f11b334345d2a09a0a171e4803";
  v3[19] = objc_opt_class();
  v2[20] = @"6aac0d229f037e21ac5a19d6836811e6cf1df434";
  v3[20] = objc_opt_class();
  v2[21] = @"ContainsLanguage";
  v3[21] = objc_opt_class();
  v2[22] = @"ContextualEvent";
  v3[22] = objc_opt_class();
  v2[23] = @"DictationLanguages";
  v3[23] = objc_opt_class();
  v2[24] = @"DualSim";
  v3[24] = objc_opt_class();
  v2[25] = @"97a844593f69be5f9b53f9d6492f343887622d07";
  v3[25] = objc_opt_class();
  v2[26] = @"ExcludeApps";
  v3[26] = objc_opt_class();
  v2[27] = @"b83326572480b130f53f6be070dcdba8dbb7ffee";
  v3[27] = objc_opt_class();
  v2[28] = @"FamilyHasChild";
  v3[28] = objc_opt_class();
  v2[29] = @"FamilyIsChildAccount";
  v3[29] = objc_opt_class();
  v2[30] = @"FamilyOrganizer";
  v3[30] = objc_opt_class();
  v2[31] = @"32316fa371b1b1a819b91ee347c5db5e2841e942";
  v3[31] = objc_opt_class();
  v2[32] = @"370bbcbee5e996dc60e8b7ec961bc0310d21f150";
  v3[32] = objc_opt_class();
  v2[33] = @"d6413259b1ed0d6b636f2b1c2ed590d3b4c28b04";
  v3[33] = objc_opt_class();
  v2[34] = @"b82a54bd17d8787ff536a1e2619eceea03b5e7c8";
  v3[34] = objc_opt_class();
  v2[35] = @"9e401c3ab1c7e98e989f578806e04139d2ab12c2";
  v3[35] = objc_opt_class();
  v2[36] = @"HKFeatureStatus";
  v3[36] = objc_opt_class();
  v2[37] = @"HealthRecordsAccountInfoStatus";
  v3[37] = objc_opt_class();
  v2[38] = @"HeySiriAvailable";
  v3[38] = objc_opt_class();
  v2[39] = @"HeySiriEnabled";
  v3[39] = objc_opt_class();
  v2[40] = @"HeySiriEverUsed";
  v3[40] = objc_opt_class();
  v2[41] = @"HomeSetup";
  v3[41] = objc_opt_class();
  v2[42] = @"HomeSetupWithAccessories";
  v3[42] = objc_opt_class();
  v2[43] = @"f351e061575fb4e0fd7988380c83c47ba0d52434";
  v3[43] = objc_opt_class();
  v2[44] = @"f591050f8d0408ad3bc4e62cab04daa3a0d273df";
  v3[44] = objc_opt_class();
  v2[45] = @"KeyboardExtendedSuggestions";
  v3[45] = objc_opt_class();
  v2[46] = @"HandwritingKeyboardEnabled";
  v3[46] = objc_opt_class();
  v2[47] = @"InstalledKeyboards";
  v3[47] = objc_opt_class();
  v2[48] = @"17eb06719c9d3aabf50bb59c4a7e774a60c65777";
  v3[48] = objc_opt_class();
  v2[49] = @"74d51db7850d6d7ce6338bdd62165a98508cad47";
  v3[49] = objc_opt_class();
  v2[50] = @"MedicalIDEnabled";
  v3[50] = objc_opt_class();
  v2[51] = @"MultipleLanguages";
  v3[51] = objc_opt_class();
  v2[52] = @"HavePeopleSuggestion";
  v3[52] = objc_opt_class();
  v2[53] = @"ScreenTimeCloudDevice";
  v3[53] = objc_opt_class();
  v2[54] = @"ScreenTimeCurrentDevice";
  v3[54] = objc_opt_class();
  v2[55] = @"773abb50868ad190f9ba0c5d33b8db96440db9f5";
  v3[55] = objc_opt_class();
  v2[56] = @"SiriEnabled";
  v3[56] = objc_opt_class();
  v2[57] = @"SiriLanguageMatchesSystemLanguage";
  v3[57] = objc_opt_class();
  v2[58] = @"SleepSetup";
  v3[58] = objc_opt_class();
  v2[59] = @"iCloudAccount";
  v3[59] = objc_opt_class();
  v2[60] = @"iCloudBackup";
  v3[60] = objc_opt_class();
  v2[61] = @"iCloudDrive";
  v3[61] = objc_opt_class();
  v2[62] = @"iCloudFindMyDevice";
  v3[62] = objc_opt_class();
  v2[63] = @"CloudMusicCatalogPlayback";
  v3[63] = objc_opt_class();
  v2[64] = @"iCloudPhotoLibrary";
  v3[64] = objc_opt_class();
  v2[65] = @"iCloudPlusAccount";
  v3[65] = objc_opt_class();
  v2[66] = @"13eda8c5e84d02c01729dba5c716bebd337f48cc";
  v3[66] = objc_opt_class();
  v2[67] = @"e0be4ec01737fdec5a211693a64dad134bcfa88a";
  v3[67] = objc_opt_class();
  v2[68] = @"678eced4f962f217a8df044a40d2bde4a8f12746";
  v3[68] = objc_opt_class();
  v2[69] = @"02742f81f8f41e86266597baf0adfe4d2df0ca4e";
  v3[69] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:70];
  v1 = deviceCapabilityValidationMap_capabilityMap;
  deviceCapabilityValidationMap_capabilityMap = v0;
}

+ (id)targetValidationForCapability:(id)capability
{
  v18[1] = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  v5 = objc_alloc_init(TPSTargetingValidation);
  if ([capabilityCopy type] == 2)
  {
    deviceCapabilityValidationMap = [self deviceCapabilityValidationMap];
    v7 = [capabilityCopy key];
    v8 = [deviceCapabilityValidationMap objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = objc_alloc_init(v8);

      v5 = v9;
    }

    v10 = [capabilityCopy key];
    if (v10)
    {
      v11 = v10;
      value = [capabilityCopy value];

      if (value)
      {
        v13 = [capabilityCopy key];
        v17 = v13;
        value2 = [capabilityCopy value];
        v18[0] = value2;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        [(TPSTargetingValidation *)v5 setTargetContext:v15];
      }
    }

    -[TPSTargetingValidation setJoinType:](v5, "setJoinType:", [capabilityCopy joinType]);
  }

  return v5;
}

+ (id)watchCapabilityValidationMap
{
  if (watchCapabilityValidationMap_onceToken != -1)
  {
    +[TPSCustomCapabilityValidationBuilder watchCapabilityValidationMap];
  }

  v3 = watchCapabilityValidationMap_capabilityMap;

  return v3;
}

void __68__TPSCustomCapabilityValidationBuilder_watchCapabilityValidationMap__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v2[0] = @"FallDetection";
  v2[1] = @"ECG";
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = watchCapabilityValidationMap_capabilityMap;
  watchCapabilityValidationMap_capabilityMap = v0;
}

+ (id)targetValidationForNRDeviceCapability:(id)capability
{
  v18[1] = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  v5 = objc_alloc_init(TPSTargetingValidation);
  if ([capabilityCopy type] == 4)
  {
    watchCapabilityValidationMap = [self watchCapabilityValidationMap];
    v7 = [capabilityCopy key];
    v8 = [watchCapabilityValidationMap objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = objc_alloc_init(v8);

      v5 = v9;
    }

    v10 = [capabilityCopy key];
    if (v10)
    {
      v11 = v10;
      value = [capabilityCopy value];

      if (value)
      {
        v13 = [capabilityCopy key];
        v17 = v13;
        value2 = [capabilityCopy value];
        v18[0] = value2;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        [(TPSTargetingValidation *)v5 setTargetContext:v15];
      }
    }

    -[TPSTargetingValidation setJoinType:](v5, "setJoinType:", [capabilityCopy joinType]);
  }

  return v5;
}

@end