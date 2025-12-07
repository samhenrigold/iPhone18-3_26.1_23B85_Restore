@interface HMService
@end

@implementation HMService

uint64_t __55__HMService_AbstractionAdditions__hf_containedProfiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

void __49__HMService_AbstractionAdditions__hf_moveToRoom___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = objc_msgSend_home(v3);
  v5 = [*(a1 + 32) accessory];
  [v6 assignAccessory:v5 toRoom:*(a1 + 40) completionHandler:v4];
}

void __102__HMService_HFCharacteristicValueDisplayMetadataAdditions__hf_sensorCharacteristicTypeForServiceType___block_invoke_2()
{
  v18[11] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCF770];
  v1 = *MEMORY[0x277CD0E10];
  v17[0] = *MEMORY[0x277CD0DE0];
  v17[1] = v1;
  v2 = *MEMORY[0x277CCF7A0];
  v18[0] = v0;
  v18[1] = v2;
  v3 = *MEMORY[0x277CCF7B8];
  v4 = *MEMORY[0x277CD0E20];
  v17[2] = *MEMORY[0x277CD0E18];
  v17[3] = v4;
  v5 = *MEMORY[0x277CCF7E8];
  v18[2] = v3;
  v18[3] = v5;
  v6 = *MEMORY[0x277CCF850];
  v7 = *MEMORY[0x277CD0E90];
  v17[4] = *MEMORY[0x277CD0E70];
  v17[5] = v7;
  v8 = *MEMORY[0x277CCF938];
  v18[4] = v6;
  v18[5] = v8;
  v9 = *MEMORY[0x277CCF830];
  v10 = *MEMORY[0x277CD0EC0];
  v17[6] = *MEMORY[0x277CD0E98];
  v17[7] = v10;
  v11 = *MEMORY[0x277CCF978];
  v18[6] = v9;
  v18[7] = v11;
  v12 = *MEMORY[0x277CCF9A8];
  v13 = *MEMORY[0x277CD0EE8];
  v17[8] = *MEMORY[0x277CD0EC8];
  v17[9] = v13;
  v14 = *MEMORY[0x277CCFA80];
  v18[8] = v12;
  v18[9] = v14;
  v17[10] = *MEMORY[0x277CD0F28];
  v18[10] = *MEMORY[0x277CCF868];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:11];
  v16 = qword_280E02F28;
  qword_280E02F28 = v15;
}

id __112__HMService_HFCharacteristicValueDisplayMetadataAdditions__hf_allRequiredCharacteristicTypesForStandardServices__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__HMService_HFCharacteristicValueDisplayMetadataAdditions__hf_allRequiredCharacteristicTypesForStandardServices__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (qword_280E02F30 != -1)
  {
    dispatch_once(&qword_280E02F30, block);
  }

  v1 = qword_280E02F38;

  return v1;
}

void __112__HMService_HFCharacteristicValueDisplayMetadataAdditions__hf_allRequiredCharacteristicTypesForStandardServices__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) hf_standardServiceTypes];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __112__HMService_HFCharacteristicValueDisplayMetadataAdditions__hf_allRequiredCharacteristicTypesForStandardServices__block_invoke_3;
  v6[3] = &__block_descriptor_40_e25___NSSet_16__0__NSString_8l;
  v6[4] = *(a1 + 32);
  v3 = [v2 na_map:v6];
  v4 = [v3 na_setByFlattening];
  v5 = qword_280E02F38;
  qword_280E02F38 = v4;
}

void __70__HMService_HFIncludedContextProtocol__hf_updateValue_forContextType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationData];
  [v2 hf_updateApplicationData:v4 handleError:1 completionHandler:v3];
}

void __47__HMService_Additions__hf_standardServiceTypes__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CBEB98];
  v6 = [objc_opt_class() _serviceTypeToServiceItemClassMap];
  v3 = [v6 allKeys];
  v4 = [v2 setWithArray:v3];
  v5 = qword_280E03128;
  qword_280E03128 = v4;
}

uint64_t __44__HMService_Additions__hf_roomsForServices___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __44__HMService_Additions__hf_serviceComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 isPrimaryService];
  if (v6 == [v4 isPrimaryService])
  {
    v9 = [v5 instanceID];

    v10 = [v4 instanceID];
    v8 = [v9 compare:v10];
  }

  else
  {
    v7 = [v5 isPrimaryService];

    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

void __68__HMService_Additions__hf_serviceTypesHiddenFromScenesOrAutomations__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E80], *MEMORY[0x277CD0E48], *MEMORY[0x277CD0F38], 0}];
  v1 = qword_280E03138;
  qword_280E03138 = v0;
}

uint64_t __48__HMService_Additions__hf_characteristicOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id __44__HMService_Additions__hf_serviceDescriptor__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained hf_parentService];
  v3 = [v2 hf_serviceDescriptor];

  return v3;
}

uint64_t __48__HMService_Additions__hf_updateIconDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void __48__HMService_Additions__hf_updateIconDescriptor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationData];
  [v2 hf_updateApplicationData:v4 handleError:1 completionHandler:v3];
}

void __41__HMService_Additions__hf_supportsGroups__block_invoke_2()
{
  v7[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0ED0];
  v7[0] = *MEMORY[0x277CD0EA0];
  v7[1] = v1;
  v2 = *MEMORY[0x277CD0E40];
  v7[2] = *MEMORY[0x277CD0F08];
  v7[3] = v2;
  v3 = *MEMORY[0x277CD0F60];
  v7[4] = *MEMORY[0x277CD0F40];
  v7[5] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];
  v5 = [v0 setWithArray:v4];
  v6 = qword_280E03148;
  qword_280E03148 = v5;
}

id __39__HMService_Additions__hf_serviceGroup__block_invoke(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_home(*(a1 + 32), a2);
  v5 = [v4 serviceGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__HMService_Additions__hf_serviceGroup__block_invoke_2;
  v8[3] = &unk_277DF7F28;
  v8[4] = *(a1 + 32);
  v6 = [v5 na_firstObjectPassingTest:v8];

  return v6;
}

uint64_t __39__HMService_Additions__hf_serviceGroup__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 services];
  if ([v4 containsObject:*(a1 + 32)])
  {
    v5 = [v3 hf_isSupported];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __42__HMService_Additions__hf_isLegacyService__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __42__HMService_Additions__hf_isLegacyService__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 properties];
  v3 = [v2 containsObject:*MEMORY[0x277CCF738]];

  return v3 ^ 1u;
}

void __42__HMService_Additions__hf_fanServiceTypes__block_invoke_2()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0F40];
  v5[0] = *MEMORY[0x277CD0E40];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E03158;
  qword_280E03158 = v3;
}

void __45__HMService_Additions__hf_sensorServiceTypes__block_invoke_2()
{
  v9[11] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0E10];
  v9[0] = *MEMORY[0x277CD0DE0];
  v9[1] = v1;
  v2 = *MEMORY[0x277CD0E20];
  v9[2] = *MEMORY[0x277CD0E18];
  v9[3] = v2;
  v3 = *MEMORY[0x277CD0E90];
  v9[4] = *MEMORY[0x277CD0E70];
  v9[5] = v3;
  v4 = *MEMORY[0x277CD0EC0];
  v9[6] = *MEMORY[0x277CD0E98];
  v9[7] = v4;
  v5 = *MEMORY[0x277CD0EE8];
  v9[8] = *MEMORY[0x277CD0EC8];
  v9[9] = v5;
  v9[10] = *MEMORY[0x277CD0F28];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:11];
  v7 = [v0 setWithArray:v6];
  v8 = qword_280E03168;
  qword_280E03168 = v7;
}

void __50__HMService_Additions__hf_alarmSensorServiceTypes__block_invoke_2()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0E18];
  v6[0] = *MEMORY[0x277CD0E10];
  v6[1] = v1;
  v2 = *MEMORY[0x277CD0EE8];
  v6[2] = *MEMORY[0x277CD0E90];
  v6[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v0 setWithArray:v3];
  v5 = qword_280E03178;
  qword_280E03178 = v4;
}

uint64_t __47__HMService_Additions__hf_childServicesOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serviceType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __55__HMService_Additions___hf_allowedChildServicesTypeMap__block_invoke_2()
{
  v37[6] = *MEMORY[0x277D85DE8];
  v32[0] = *MEMORY[0x277CD0DD8];
  v0 = MEMORY[0x277CBEB98];
  v2 = *MEMORY[0x277CD0E50];
  v30[0] = *MEMORY[0x277CD0F40];
  v1 = v30[0];
  v30[1] = v2;
  v31 = *MEMORY[0x277CD0EE0];
  v3 = v31;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v23 = [v0 setWithArray:v24];
  v37[0] = v23;
  v32[1] = *MEMORY[0x277CD0E68];
  v4 = MEMORY[0x277CBEB98];
  v29[0] = v1;
  v29[1] = v3;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v5 = [v4 setWithArray:v22];
  v37[1] = v5;
  v33 = *MEMORY[0x277CD0E60];
  v6 = v33;
  v7 = MEMORY[0x277CBEB98];
  v28[0] = v1;
  v28[1] = v3;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v9 = [v7 setWithArray:v8];
  v37[2] = v9;
  v34 = *MEMORY[0x277CD0E80];
  v10 = MEMORY[0x277CBEB98];
  v27 = *MEMORY[0x277CD0F38];
  v11 = v27;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v13 = [v10 setWithArray:v12];
  v37[3] = v13;
  v35 = *MEMORY[0x277CD0E48];
  v14 = MEMORY[0x277CBEB98];
  v26[0] = v6;
  v26[1] = v11;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v16 = [v14 setWithArray:v15];
  v37[4] = v16;
  v36 = *MEMORY[0x277CD0F20];
  v17 = MEMORY[0x277CBEB98];
  v25 = *MEMORY[0x277CD0E78];
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v19 = [v17 setWithArray:v18];
  v37[5] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v32 count:6];
  v21 = qword_280E03188;
  qword_280E03188 = v20;
}

id __40__HMService_Additions__hf_childServices__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB58];
  v3 = [*(a1 + 32) linkedServices];
  v4 = [v2 setWithArray:v3];

  v5 = [*(a1 + 32) serviceType];
  v6 = [v5 isEqualToString:*MEMORY[0x277CD0E80]];

  if (v6)
  {
    v7 = [*(a1 + 32) accessory];
    v8 = [v7 hf_servicesBehindBridge];
    [v4 unionSet:v8];
  }

  v9 = [*(a1 + 32) serviceType];
  v10 = [v9 isEqualToString:*MEMORY[0x277CD0F20]];

  if (v10)
  {
    v11 = MEMORY[0x277CBEB98];
    v12 = [*(a1 + 32) accessory];
    v13 = [v12 services];
    v14 = [v11 setWithArray:v13];
    v15 = [v14 na_filter:&__block_literal_global_59_3];
    [v4 unionSet:v15];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __40__HMService_Additions__hf_childServices__block_invoke_3;
  v20[3] = &unk_277DF4020;
  v20[4] = *(a1 + 32);
  v16 = [v4 na_filter:v20];
  [v4 setSet:v16];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __40__HMService_Additions__hf_childServices__block_invoke_4;
  v19[3] = &unk_277DF4020;
  v19[4] = *(a1 + 32);
  v17 = [v4 na_filter:v19];

  return v17;
}

uint64_t __40__HMService_Additions__hf_childServices__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0E78]];

  return v3;
}

uint64_t __40__HMService_Additions__hf_childServices__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _hf_allowedChildServicesTypeMap];
  v5 = [*(a1 + 32) serviceType];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v3 serviceType];
    v8 = [v6 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __40__HMService_Additions__hf_parentService__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_childServices];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

void __56__HMService_Additions__hf_descriptionForServiceSubtype___block_invoke_2()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD0DA0];
  v4[0] = *MEMORY[0x277CD0DB8];
  v4[1] = v0;
  v5[0] = @"Unknown";
  v5[1] = @"GenericValve";
  v1 = *MEMORY[0x277CD0DB0];
  v4[2] = *MEMORY[0x277CD0DA8];
  v4[3] = v1;
  v5[2] = @"IrrigationValve";
  v5[3] = @"ShowerheadValve";
  v4[4] = *MEMORY[0x277CD0DC0];
  v5[4] = @"WaterFaucetValve";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:5];
  v3 = qword_280E03198;
  qword_280E03198 = v2;
}

id __53__HMService_Additions__hf_characteristicsInServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 characteristics];
  v4 = [v2 setWithArray:v3];

  return v4;
}

void *__40__HMService_Additions__hf_lightProfiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 services];
  if ([v4 containsObject:*(a1 + 32)])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

uint64_t __50__HMService_Additions__hf_supportsNaturalLighting__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 settings];
  v3 = [v2 supportedFeatures];

  return v3 & 1;
}

void __57__HMService_Additions__hf_getUserFriendlyDescriptionKey___block_invoke()
{
  v25[45] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD0DD8];
  v24[0] = *MEMORY[0x277CD0DD0];
  v24[1] = v0;
  v25[0] = @"AccessoryInformation";
  v25[1] = @"AirPurifier";
  v1 = *MEMORY[0x277CD0DE8];
  v24[2] = *MEMORY[0x277CD0DE0];
  v24[3] = v1;
  v25[2] = @"AirQualitySensor";
  v25[3] = @"Battery";
  v2 = *MEMORY[0x277CD0E08];
  v24[4] = *MEMORY[0x277CD0DF0];
  v24[5] = v2;
  v25[4] = @"CameraControl";
  v25[5] = @"CameraRecordingManagement";
  v3 = *MEMORY[0x277CD0E10];
  v24[6] = *MEMORY[0x277CD0E00];
  v24[7] = v3;
  v25[6] = @"CameraRTPStreamManagement";
  v25[7] = @"CarbonDioxideSensor";
  v4 = *MEMORY[0x277CD0E20];
  v24[8] = *MEMORY[0x277CD0E18];
  v24[9] = v4;
  v25[8] = @"CarbonMonoxideSensor";
  v25[9] = @"ContactSensor";
  v5 = *MEMORY[0x277CD0E38];
  v24[10] = *MEMORY[0x277CD0E30];
  v24[11] = v5;
  v25[10] = @"Door";
  v25[11] = @"Doorbell";
  v6 = *MEMORY[0x277CD0E48];
  v24[12] = *MEMORY[0x277CD0E40];
  v24[13] = v6;
  v25[12] = @"Fan";
  v25[13] = @"Faucet";
  v7 = *MEMORY[0x277CD0E58];
  v24[14] = *MEMORY[0x277CD0E50];
  v24[15] = v7;
  v25[14] = @"FilterMaintenance";
  v25[15] = @"GarageDoorOpener";
  v8 = *MEMORY[0x277CD0E68];
  v24[16] = *MEMORY[0x277CD0E60];
  v24[17] = v8;
  v25[16] = @"HeaterCooler";
  v25[17] = @"HumidifierDehumidifier";
  v9 = *MEMORY[0x277CD0E78];
  v24[18] = *MEMORY[0x277CD0E70];
  v24[19] = v9;
  v25[18] = @"HumiditySensor";
  v25[19] = @"InputSource";
  v10 = *MEMORY[0x277CD0E88];
  v24[20] = *MEMORY[0x277CD0E80];
  v24[21] = v10;
  v25[20] = @"IrrigationSystem";
  v25[21] = @"Label";
  v11 = *MEMORY[0x277CD0E98];
  v24[22] = *MEMORY[0x277CD0E90];
  v24[23] = v11;
  v25[22] = @"LeakSensor";
  v25[23] = @"LightSensor";
  v12 = *MEMORY[0x277CD0EA8];
  v24[24] = *MEMORY[0x277CD0EA0];
  v24[25] = v12;
  v25[24] = @"Lightbulb";
  v25[25] = @"LockManagement";
  v13 = *MEMORY[0x277CD0EB8];
  v24[26] = *MEMORY[0x277CD0EB0];
  v24[27] = v13;
  v25[26] = @"LockMechanism";
  v25[27] = @"Microphone";
  v14 = *MEMORY[0x277CD0EC8];
  v24[28] = *MEMORY[0x277CD0EC0];
  v24[29] = v14;
  v25[28] = @"MotionSensor";
  v25[29] = @"OccupancySensor";
  v15 = *MEMORY[0x277CD0ED8];
  v24[30] = *MEMORY[0x277CD0ED0];
  v24[31] = v15;
  v25[30] = @"Outlet";
  v25[31] = @"SecuritySystem";
  v16 = *MEMORY[0x277CD0EE8];
  v24[32] = *MEMORY[0x277CD0EE0];
  v24[33] = v16;
  v25[32] = @"Slats";
  v25[33] = @"SmokeSensor";
  v17 = *MEMORY[0x277CD0EF8];
  v24[34] = *MEMORY[0x277CD0EF0];
  v24[35] = v17;
  v25[34] = @"Speaker";
  v25[35] = @"StatefulProgrammableSwitch";
  v18 = *MEMORY[0x277CD0F08];
  v24[36] = *MEMORY[0x277CD0F00];
  v24[37] = v18;
  v25[36] = @"StatelessProgrammableSwitch";
  v25[37] = @"Switch";
  v19 = *MEMORY[0x277CD0F28];
  v24[38] = *MEMORY[0x277CD0F20];
  v24[39] = v19;
  v25[38] = @"Television";
  v25[39] = @"TemperatureSensor";
  v20 = *MEMORY[0x277CD0F38];
  v24[40] = *MEMORY[0x277CD0F30];
  v24[41] = v20;
  v25[40] = @"Thermostat";
  v25[41] = @"Valve";
  v21 = *MEMORY[0x277CD0F58];
  v24[42] = *MEMORY[0x277CD0F40];
  v24[43] = v21;
  v25[42] = @"VentilationFan";
  v25[43] = @"Window";
  v24[44] = *MEMORY[0x277CD0F60];
  v25[44] = @"WindowCovering";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:45];
  v23 = qword_280E031A0;
  qword_280E031A0 = v22;
}

void __77__HMService_HFProgrammableSwitchAdditions__hf_programmableSwitchServiceTypes__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0F00], 0}];
  v1 = qword_280E031B8;
  qword_280E031B8 = v0;
}

uint64_t __78__HMService_HFProgrammableSwitchAdditions__hf_fallbackProgrammableSwitchIndex__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1D90];
  v3 = a2;
  v4 = [v2 hf_programmableSwitchServiceTypes];
  v5 = [v3 serviceType];

  v6 = [v4 containsObject:v5];
  return v6;
}

uint64_t __78__HMService_HFProgrammableSwitchAdditions__hf_fallbackProgrammableSwitchIndex__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 uniqueIdentifier];
  v6 = [v5 UUIDString];
  v7 = [v4 uniqueIdentifier];

  v8 = [v7 UUIDString];
  v9 = [v6 compare:v8];

  return v9;
}

uint64_t __73__HMService_HFProgrammableSwitchAdditions___hf_firstLinkedServiceOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serviceType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __59__HMService_HFApplicationData___hf_applicationDataUpdated___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) accessory];
    [v4 accessory:v3 didUpdateApplicationDataForService:*(a1 + 32)];
  }
}

void __87__HMService_HFApplicationData__hf_updateApplicationData_handleError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 homeManager];
  if ([v4 hasOptedToHH2])
  {
    v5 = objc_msgSend_home(*(a1 + 32));
    v6 = [v5 residentDevices];
    v7 = [v6 count];

    v8 = HFOperationUpdateApplicationDataResidentSync;
    if (!v7)
    {
      v8 = HFOperationUpdateApplicationDataCloudSync;
    }
  }

  else
  {

    v8 = HFOperationUpdateApplicationDataCloudSync;
  }

  v9 = *(a1 + 64);
  v10 = *v8;
  v11 = +[HFErrorHandler sharedHandler];
  v12 = v11;
  if (v9 == 1)
  {
    [v11 handleError:v14 operationType:v10 options:0 retryBlock:0 cancelBlock:0];
  }

  else
  {
    [v11 logError:v14 operationDescription:v10];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _hf_applicationDataUpdated:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

@end