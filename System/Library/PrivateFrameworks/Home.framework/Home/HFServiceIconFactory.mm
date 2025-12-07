@interface HFServiceIconFactory
+ (id)_defaultIconDescriptorForServiceType:(id)type serviceSubtype:(id)subtype fallbackToPlaceholderIcon:(BOOL)icon;
+ (id)_iconSetForServiceType:(id)type serviceSubtype:(id)subtype fallbackToPlaceholderIcon:(BOOL)icon;
+ (id)_multiSubtypeIconSetForServiceType:(id)type serviceSubtype:(id)subtype;
+ (id)_replacementIdentifierForIconIdentifier:(id)identifier;
+ (id)allIconDescriptorsForService:(id)service;
+ (id)allIconDescriptorsForServiceType:(id)type serviceSubtype:(id)subtype;
+ (id)defaultIconDescriptorForService:(id)service;
+ (id)defaultSymbolIconIdentifierForServiceType:(id)type;
+ (id)displayIconDescriptorFromIconDescriptor:(id)descriptor symbolName:(id)name;
+ (id)iconDescriptorForAccessory:(id)accessory;
+ (id)iconDescriptorForAccessoryCategory:(id)category;
+ (id)iconDescriptorForAccessoryCategoryOrServiceType:(id)type matterDeviceType:(id)deviceType;
+ (id)iconDescriptorWithIdentifier:(id)identifier forService:(id)service;
+ (id)iconDescriptorWithIdentifier:(id)identifier forServiceType:(id)type serviceSubtype:(id)subtype;
+ (id)iconModifiersForService:(id)service;
+ (id)overrideIconDescriptorForMultiServiceAccessory:(id)accessory iconDescriptor:(id)descriptor;
@end

@implementation HFServiceIconFactory

+ (id)_multiSubtypeIconSetForServiceType:(id)type serviceSubtype:(id)subtype
{
  typeCopy = type;
  subtypeCopy = subtype;
  if (_MergedGlobals_219 != -1)
  {
    dispatch_once(&_MergedGlobals_219, &__block_literal_global_23);
  }

  v7 = qword_280E02BC8;
  v8 = v7;
  if (typeCopy && ([v7 objectForKeyedSubscript:typeCopy], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = *MEMORY[0x277CD0DB8];
    if (subtypeCopy)
    {
      v12 = subtypeCopy;
    }

    else
    {
      v12 = *MEMORY[0x277CD0DB8];
    }

    v13 = [v9 objectForKeyedSubscript:v12];
    if (v13 || ([v10 objectForKeyedSubscript:v11], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = v13;
    }

    else
    {
      v16 = [MEMORY[0x277CD1D90] localizedDescriptionForServiceType:typeCopy];
      NSLog(&cfstr_ServiceTypeIsM.isa, v16);

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __74__HFServiceIconFactory__multiSubtypeIconSetForServiceType_serviceSubtype___block_invoke_2()
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277CD0F38];
  v11[0] = *MEMORY[0x277CD0DB8];
  v0 = _HFFaucetIconSet();
  v12[0] = v0;
  v11[1] = *MEMORY[0x277CD0DA0];
  v1 = _HFFaucetIconSet();
  v12[1] = v1;
  v11[2] = *MEMORY[0x277CD0DC0];
  v2 = _HFFaucetIconSet();
  v12[2] = v2;
  v11[3] = *MEMORY[0x277CD0DB0];
  v14[0] = @"HFCAPackageIconIdentifierValveCeilingJet";
  v14[1] = @"HFCAPackageIconIdentifierValveSideJets";
  v14[2] = @"HFCAPackageIconIdentifierValveHandheldShowerHead";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v4 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierValveShowerHead"];
  v5 = [v3 na_map:&__block_literal_global_223];
  v6 = [HFServiceIconSet setWithDefaultIcon:v4 alternateIcons:v5];

  v12[3] = v6;
  v11[4] = *MEMORY[0x277CD0DA8];
  v7 = _HFSprinklerIconSet();
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = qword_280E02BC8;
  qword_280E02BC8 = v9;
}

+ (id)_iconSetForServiceType:(id)type serviceSubtype:(id)subtype fallbackToPlaceholderIcon:(BOOL)icon
{
  iconCopy = icon;
  typeCopy = type;
  subtypeCopy = subtype;
  if (qword_280E02BD8 != -1)
  {
    dispatch_once(&qword_280E02BD8, &__block_literal_global_31_0);
  }

  v10 = [self _multiSubtypeIconSetForServiceType:typeCopy serviceSubtype:subtypeCopy];
  if (!v10)
  {
    v10 = [qword_280E02BD0 objectForKeyedSubscript:typeCopy];
    if (!v10 && iconCopy)
    {
      v10 = +[HFServiceIconSet placeholderIconSet];
    }
  }

  return v10;
}

void __88__HFServiceIconFactory__iconSetForServiceType_serviceSubtype_fallbackToPlaceholderIcon___block_invoke()
{
  v90 = *MEMORY[0x277D85DE8];
  v74[0] = *MEMORY[0x277CD0DE0];
  v0 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierAirQualitySensor"];
  v73 = [HFServiceIconSet setWithDefaultIcon:v0];

  v75[0] = v73;
  v74[1] = *MEMORY[0x277CD0E10];
  v1 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierCarbonDioxideSensor"];
  v72 = [HFServiceIconSet setWithDefaultIcon:v1];

  v75[1] = v72;
  v74[2] = *MEMORY[0x277CD0E18];
  v2 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierCarbonMonoxideSensor"];
  v71 = [HFServiceIconSet setWithDefaultIcon:v2];

  v75[2] = v71;
  v74[3] = *MEMORY[0x277CD0E20];
  v3 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierContactSensor"];
  v70 = [HFServiceIconSet setWithDefaultIcon:v3];

  v75[3] = v70;
  v74[4] = *MEMORY[0x277CD0E30];
  v76 = @"HFCAPackageIconIdentifierSlidingDoor";
  v77 = @"HFCAPackageIconIdentifierGate";
  v78 = @"HFCAPackageIconIdentifierFrenchDoor";
  v79 = @"HFCAPackageIconIdentifierSlidingDoorRightHand";
  v80 = @"HFCAPackageIconIdentifierDoorLeftHand";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:5];
  v5 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierDoor"];
  v6 = [v4 na_map:&__block_literal_global_223];
  v69 = [HFServiceIconSet setWithDefaultIcon:v5 alternateIcons:v6];

  v75[4] = v69;
  v74[5] = *MEMORY[0x277CD0E40];
  v68 = _HFFanServiceIconSet();
  v75[5] = v68;
  v74[6] = *MEMORY[0x277CD0F40];
  v67 = _HFFanServiceIconSet();
  v75[6] = v67;
  v74[7] = *MEMORY[0x277CD0E58];
  v76 = @"HFCAPackageIconIdentifierGarageDoorDoubleBay";
  v77 = @"HFCAPackageIconIdentifierGate";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:2];
  v8 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierGarageDoor"];
  v9 = [v7 na_map:&__block_literal_global_223];
  v66 = [HFServiceIconSet setWithDefaultIcon:v8 alternateIcons:v9];

  v75[7] = v66;
  v74[8] = *MEMORY[0x277CD0E70];
  v10 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierHumiditySensor"];
  v65 = [HFServiceIconSet setWithDefaultIcon:v10];

  v75[8] = v65;
  v74[9] = *MEMORY[0x277CD0E90];
  v11 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierLeakSensor"];
  v64 = [HFServiceIconSet setWithDefaultIcon:v11];

  v75[9] = v64;
  v74[10] = *MEMORY[0x277CD0EA0];
  v76 = @"HFCAPackageIconIdentifierDeskLamp";
  v77 = @"HFCAPackageIconIdentifierCeilingLight";
  v78 = @"HFCAPackageIconIdentifierFloorLamp";
  v79 = @"HFCAPackageIconIdentifierTableLight";
  v80 = @"HFCAPackageIconIdentifierRecessedLight";
  v81 = @"HFCAPackageIconIdentifierLightPanel";
  v82 = @"HFCAPackageIconIdentifierCylindricalLight";
  v83 = @"HFCAPackageIconIdentifierLightStrip";
  v84 = @"HFCAPackageIconIdentifierChandelier";
  v85 = @"HFCAPackageIconIdentifierLightBulb2";
  v86 = @"HFCAPackageIconIdentifierLightbulbLED";
  v87 = @"HFCAPackageIconIdentifierLightbulbLEDWide";
  v88 = @"HFCAPackageIconIdentifierRecessedLight3";
  v89 = @"HFCAPackageIconIdentifierLightRibbon";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:14];
  v13 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierLightbulb"];
  v14 = [v12 na_map:&__block_literal_global_223];
  v63 = [HFServiceIconSet setWithDefaultIcon:v13 alternateIcons:v14];

  v75[10] = v63;
  v74[11] = *MEMORY[0x277CD0E98];
  v15 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierLightSensor"];
  v62 = [HFServiceIconSet setWithDefaultIcon:v15];

  v75[11] = v62;
  v74[12] = *MEMORY[0x277CD0EB0];
  v76 = @"HFCAPackageIconIdentifierPINEntryDoorLock";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
  v17 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierDoorLock"];
  v18 = [v16 na_map:&__block_literal_global_223];
  v61 = [HFServiceIconSet setWithDefaultIcon:v17 alternateIcons:v18];

  v75[12] = v61;
  v74[13] = *MEMORY[0x277CD0EC0];
  v19 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierMotionSensor"];
  v60 = [HFServiceIconSet setWithDefaultIcon:v19];

  v75[13] = v60;
  v74[14] = *MEMORY[0x277CD0EC8];
  v20 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierOccupancySensor"];
  v59 = [HFServiceIconSet setWithDefaultIcon:v20];

  v75[14] = v59;
  v74[15] = *MEMORY[0x277CD0ED0];
  v76 = @"HFCAPackageIconIdentifierOutletTypeA";
  v77 = @"HFCAPackageIconIdentifierOutletTypeC";
  v78 = @"HFCAPackageIconIdentifierOutletTypeG";
  v79 = @"HFCAPackageIconIdentifierOutletTypeI";
  v80 = @"HFCAPackageIconIdentifierOutletTypeK";
  v81 = @"HFCAPackageIconIdentifierOutletTypeN";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:6];
  v22 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierOutletTypeB"];
  v23 = [v21 na_map:&__block_literal_global_223];
  v58 = [HFServiceIconSet setWithDefaultIcon:v22 alternateIcons:v23];

  v75[15] = v58;
  v74[16] = *MEMORY[0x277CD0ED8];
  v24 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierSecuritySystem"];
  v57 = [HFServiceIconSet setWithDefaultIcon:v24];

  v75[16] = v57;
  v74[17] = *MEMORY[0x277CD0EE8];
  v25 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierSmokeSensor"];
  v56 = [HFServiceIconSet setWithDefaultIcon:v25];

  v75[17] = v56;
  v74[18] = *MEMORY[0x277CD0F08];
  v76 = @"HFCAPackageIconIdentifierSwitch2";
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
  v27 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierSwitch"];
  v28 = [v26 na_map:&__block_literal_global_223];
  v55 = [HFServiceIconSet setWithDefaultIcon:v27 alternateIcons:v28];

  v75[18] = v55;
  v74[19] = *MEMORY[0x277CD0F28];
  v29 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierTemperatureSensor"];
  v54 = [HFServiceIconSet setWithDefaultIcon:v29];

  v75[19] = v54;
  v74[20] = *MEMORY[0x277CD0F30];
  v53 = _HFThermostatIconSet();
  v75[20] = v53;
  v74[21] = *MEMORY[0x277CD0F58];
  v76 = @"HFCAPackageIconIdentifierWindowHorizontal";
  v77 = @"HFCAPackageIconIdentifierWindowCeiling";
  v78 = @"HFCAPackageIconIdentifierWindowCasement";
  v79 = @"HFCAPackageIconIdentifierWindowAwning";
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:4];
  v31 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierWindowVertical"];
  v32 = [v30 na_map:&__block_literal_global_223];
  v52 = [HFServiceIconSet setWithDefaultIcon:v31 alternateIcons:v32];

  v75[21] = v52;
  v74[22] = *MEMORY[0x277CD0F60];
  v76 = @"HFCAPackageIconIdentifierWindowCoveringBlindsVertical";
  v77 = @"HFCAPackageIconIdentifierWindowCoveringRollerShade";
  v78 = @"HFCAPackageIconIdentifierWindowCoveringRomanShade";
  v79 = @"HFCAPackageIconIdentifierWindowCoveringCurtains";
  v80 = @"HFCAPackageIconIdentifierWindowCoveringAwning";
  v81 = @"HFCAPackageIconIdentifierWindowCoveringGenericShade";
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:6];
  v34 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierWindowCoveringBlindsHorizontal"];
  v35 = [v33 na_map:&__block_literal_global_223];
  v36 = [HFServiceIconSet setWithDefaultIcon:v34 alternateIcons:v35];

  v75[22] = v36;
  v74[23] = *MEMORY[0x277CD0F00];
  v37 = _HFProgrammableSwitchIconSet();
  v75[23] = v37;
  v74[24] = *MEMORY[0x277CD0EF8];
  v38 = _HFProgrammableSwitchIconSet();
  v75[24] = v38;
  v74[25] = *MEMORY[0x277CD0DD8];
  v39 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierAirPurifier"];
  v40 = [HFServiceIconSet setWithDefaultIcon:v39];

  v75[25] = v40;
  v74[26] = *MEMORY[0x277CD0E60];
  v41 = _HFThermostatIconSet();
  v75[26] = v41;
  v74[27] = *MEMORY[0x277CD0E68];
  v76 = @"HFCAPackageIconIdentifierDehumidifier";
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
  v43 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierHumidifier"];
  v44 = [v42 na_map:&__block_literal_global_223];
  v45 = [HFServiceIconSet setWithDefaultIcon:v43 alternateIcons:v44];

  v75[27] = v45;
  v74[28] = *MEMORY[0x277CD0E80];
  v46 = _HFSprinklerIconSet();
  v75[28] = v46;
  v74[29] = *MEMORY[0x277CD0E48];
  v47 = _HFFaucetIconSet();
  v75[29] = v47;
  v74[30] = *MEMORY[0x277CD0F48];
  v48 = _HFNetworkRouterIconSet();
  v75[30] = v48;
  v74[31] = *MEMORY[0x277CD0F50];
  v49 = _HFNetworkRouterIconSet();
  v75[31] = v49;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:32];
  v51 = qword_280E02BD0;
  qword_280E02BD0 = v50;
}

+ (id)defaultSymbolIconIdentifierForServiceType:(id)type
{
  v3 = qword_280E02BE8;
  typeCopy = type;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E02BE8, &__block_literal_global_33);
  }

  v5 = [qword_280E02BE0 objectForKeyedSubscript:typeCopy];

  return v5;
}

void __66__HFServiceIconFactory_defaultSymbolIconIdentifierForServiceType___block_invoke()
{
  v19[32] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD0DE0];
  v18[0] = *MEMORY[0x277CD0DD8];
  v18[1] = v0;
  v19[0] = @"air.purifier.fill";
  v19[1] = @"aqi.medium";
  v1 = *MEMORY[0x277CD0E18];
  v18[2] = *MEMORY[0x277CD0E10];
  v18[3] = v1;
  v19[2] = @"carbon.dioxide.cloud.fill";
  v19[3] = @"carbon.monoxide.cloud.fill";
  v2 = *MEMORY[0x277CD0E30];
  v18[4] = *MEMORY[0x277CD0E20];
  v18[5] = v2;
  v19[4] = @"contact.sensor.fill";
  v19[5] = @"door.right.hand.open";
  v3 = *MEMORY[0x277CD0E48];
  v18[6] = *MEMORY[0x277CD0E40];
  v18[7] = v3;
  v19[6] = @"fan.desk";
  v19[7] = @"faucet.fill";
  v4 = *MEMORY[0x277CD0E60];
  v18[8] = *MEMORY[0x277CD0E58];
  v18[9] = v4;
  v19[8] = @"door.garage.open";
  v19[9] = @"heater.vertical.fill";
  v5 = *MEMORY[0x277CD0E70];
  v18[10] = *MEMORY[0x277CD0E68];
  v18[11] = v5;
  v19[10] = @"humidifier.fill";
  v19[11] = @"humidity.fill";
  v6 = *MEMORY[0x277CD0E90];
  v18[12] = *MEMORY[0x277CD0E80];
  v18[13] = v6;
  v19[12] = @"sprinkler.water";
  v19[13] = @"pipe.and.drop.fill";
  v7 = *MEMORY[0x277CD0EA0];
  v18[14] = *MEMORY[0x277CD0E98];
  v18[15] = v7;
  v19[14] = @"sun.max.fill";
  v19[15] = @"lightbulb.fill";
  v8 = *MEMORY[0x277CD0EC0];
  v18[16] = *MEMORY[0x277CD0EB0];
  v18[17] = v8;
  v19[16] = @"lock.open.fill";
  v19[17] = @"figure.walk.motion";
  v9 = *MEMORY[0x277CD0ED0];
  v18[18] = *MEMORY[0x277CD0EC8];
  v18[19] = v9;
  v19[18] = @"figure.walk";
  v19[19] = @"poweroutlet.type.b.square.fill";
  v10 = *MEMORY[0x277CD0EE8];
  v18[20] = *MEMORY[0x277CD0ED8];
  v18[21] = v10;
  v19[20] = @"light.beacon.min.fill";
  v19[21] = @"smoke.fill";
  v11 = *MEMORY[0x277CD0F00];
  v18[22] = *MEMORY[0x277CD0EF8];
  v18[23] = v11;
  v19[22] = @"switch.programmable.square.fill";
  v19[23] = @"switch.programmable.square.fill";
  v12 = *MEMORY[0x277CD0F28];
  v18[24] = *MEMORY[0x277CD0F08];
  v18[25] = v12;
  v19[24] = @"lightswitch.on.square.fill";
  v19[25] = @"thermometer.medium";
  v13 = *MEMORY[0x277CD0F40];
  v18[26] = *MEMORY[0x277CD0F30];
  v18[27] = v13;
  v19[26] = @"dial.medium.fill";
  v19[27] = @"fan.desk";
  v14 = *MEMORY[0x277CD0F50];
  v18[28] = *MEMORY[0x277CD0F48];
  v18[29] = v14;
  v19[28] = @"wifi.router.fill";
  v19[29] = @"wifi.router.fill";
  v15 = *MEMORY[0x277CD0F60];
  v18[30] = *MEMORY[0x277CD0F58];
  v18[31] = v15;
  v19[30] = @"window.vertical.open";
  v19[31] = @"blinds.horizontal.open";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:32];
  v17 = qword_280E02BE0;
  qword_280E02BE0 = v16;
}

+ (id)defaultIconDescriptorForService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy hf_isTelevision])
  {
    accessory = [serviceCopy accessory];
    v6 = [HFServiceIconFactory iconDescriptorForAccessory:accessory];
  }

  else
  {
    accessory = [serviceCopy hf_effectiveServiceType];
    serviceSubtype = [serviceCopy serviceSubtype];
    v6 = [self defaultIconDescriptorForServiceType:accessory serviceSubtype:serviceSubtype];
  }

  return v6;
}

+ (id)_defaultIconDescriptorForServiceType:(id)type serviceSubtype:(id)subtype fallbackToPlaceholderIcon:(BOOL)icon
{
  v5 = [self _iconSetForServiceType:type serviceSubtype:subtype fallbackToPlaceholderIcon:icon];
  defaultIcon = [v5 defaultIcon];

  return defaultIcon;
}

+ (id)iconDescriptorWithIdentifier:(id)identifier forService:(id)service
{
  serviceCopy = service;
  identifierCopy = identifier;
  hf_effectiveServiceType = [serviceCopy hf_effectiveServiceType];
  serviceSubtype = [serviceCopy serviceSubtype];

  v10 = [self iconDescriptorWithIdentifier:identifierCopy forServiceType:hf_effectiveServiceType serviceSubtype:serviceSubtype];

  return v10;
}

+ (id)iconDescriptorWithIdentifier:(id)identifier forServiceType:(id)type serviceSubtype:(id)subtype
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typeCopy = type;
  subtypeCopy = subtype;
  v11 = [self _replacementIdentifierForIconIdentifier:identifierCopy];
  if (v11)
  {
    v12 = HFLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = identifierCopy;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Replacing deprecated icon identifier %@ with %@", buf, 0x16u);
    }

    v13 = v11;
    identifierCopy = v13;
  }

  v14 = [self allIconDescriptorsForServiceType:typeCopy serviceSubtype:subtypeCopy];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__HFServiceIconFactory_iconDescriptorWithIdentifier_forServiceType_serviceSubtype___block_invoke;
  v20[3] = &unk_277DF4AE8;
  v15 = identifierCopy;
  v21 = v15;
  defaultIcon = [v14 na_firstObjectPassingTest:v20];

  if (!defaultIcon)
  {
    v17 = [self defaultIconDescriptorForServiceType:typeCopy serviceSubtype:subtypeCopy];
    if (v17)
    {
      defaultIcon = v17;
    }

    else
    {
      v18 = +[HFServiceIconSet placeholderIconSet];
      defaultIcon = [v18 defaultIcon];
    }
  }

  return defaultIcon;
}

uint64_t __83__HFServiceIconFactory_iconDescriptorWithIdentifier_forServiceType_serviceSubtype___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (id)allIconDescriptorsForService:(id)service
{
  serviceCopy = service;
  hf_effectiveServiceType = [serviceCopy hf_effectiveServiceType];
  serviceSubtype = [serviceCopy serviceSubtype];

  v7 = [self allIconDescriptorsForServiceType:hf_effectiveServiceType serviceSubtype:serviceSubtype];

  return v7;
}

+ (id)allIconDescriptorsForServiceType:(id)type serviceSubtype:(id)subtype
{
  v4 = [self _iconSetForServiceType:type serviceSubtype:subtype fallbackToPlaceholderIcon:1];
  allIcons = [v4 allIcons];

  return allIcons;
}

+ (id)overrideIconDescriptorForMultiServiceAccessory:(id)accessory iconDescriptor:(id)descriptor
{
  accessoryCopy = accessory;
  descriptorCopy = descriptor;
  if ([accessoryCopy hf_isMultiServiceAccessory])
  {
    objc_opt_class();
    v7 = descriptorCopy;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      if ([accessoryCopy hf_isCeilingFanWithLight])
      {
        identifier = [v7 identifier];
        v11 = [identifier isEqualToString:@"HFCAPackageIconIdentifierCeilingFanWithLight"];

        if ((v11 & 1) == 0)
        {
          v12 = [HFCAPackageIconDescriptor alloc];
          state = [v9 state];
          iconModifiers = [v9 iconModifiers];
          v15 = [(HFCAPackageIconDescriptor *)v12 initWithPackageIdentifier:@"HFCAPackageIconIdentifierCeilingFanWithLight" state:state modifiers:iconModifiers];

          v7 = v15;
        }
      }

      if ([accessoryCopy hf_isPowerStrip])
      {
        identifier2 = [v7 identifier];
        v17 = [identifier2 isEqualToString:@"HFCAPackageIconIdentifierPowerStrip"];

        if ((v17 & 1) == 0)
        {
          v18 = [HFCAPackageIconDescriptor alloc];
          state2 = [v9 state];
          iconModifiers2 = [v9 iconModifiers];
          v21 = [(HFCAPackageIconDescriptor *)v18 initWithPackageIdentifier:@"HFCAPackageIconIdentifierPowerStrip" state:state2 modifiers:iconModifiers2];

          v7 = v21;
        }
      }
    }

    v22 = v7;
  }

  else
  {
    v22 = descriptorCopy;
  }

  return v22;
}

+ (id)iconDescriptorForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  hf_categoryOrPrimaryServiceType = [accessoryCopy hf_categoryOrPrimaryServiceType];
  v6 = [self iconDescriptorForAccessoryCategoryOrServiceType:hf_categoryOrPrimaryServiceType];

  v7 = [HFServiceIconFactory overrideIconDescriptorForMultiServiceAccessory:accessoryCopy iconDescriptor:v6];

  return v7;
}

+ (id)iconDescriptorForAccessoryCategory:(id)category
{
  categoryType = [category categoryType];
  v5 = [self iconDescriptorForAccessoryCategoryOrServiceType:categoryType];

  return v5;
}

+ (id)iconDescriptorForAccessoryCategoryOrServiceType:(id)type matterDeviceType:(id)deviceType
{
  typeCopy = type;
  deviceTypeCopy = deviceType;
  if (qword_280E02BF0 != -1)
  {
    dispatch_once(&qword_280E02BF0, &__block_literal_global_127_0);
  }

  v8 = qword_280E02BF8;
  if (qword_280E02C00 != -1)
  {
    dispatch_once(&qword_280E02C00, &__block_literal_global_133_0);
  }

  v9 = qword_280E02C08;
  if (qword_280E02C10 != -1)
  {
    dispatch_once(&qword_280E02C10, &__block_literal_global_139_0);
  }

  v10 = qword_280E02C18;
  if (qword_280E02C20 != -1)
  {
    dispatch_once(&qword_280E02C20, &__block_literal_global_145);
  }

  v11 = qword_280E02C28;
  if (qword_280E02C30 != -1)
  {
    dispatch_once(&qword_280E02C30, &__block_literal_global_152);
  }

  v12 = qword_280E02C38;
  if (typeCopy)
  {
    v13 = [HFServiceIconFactory _defaultIconDescriptorForServiceType:typeCopy serviceSubtype:0 fallbackToPlaceholderIcon:0];
    if (v13)
    {
      v14 = v13;
      goto LABEL_52;
    }
  }

  v49 = v12;
  v15 = *MEMORY[0x277CCE8C8];
  if (typeCopy)
  {
    v15 = typeCopy;
  }

  v16 = v15;
  v17 = [v9 objectForKeyedSubscript:v16];
  if (v17)
  {
    v18 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:v17];
    if (v18)
    {
      goto LABEL_50;
    }
  }

  v48 = v11;
  if (![v16 isEqualToString:*MEMORY[0x277CCE8F0]] || (v19 = -[HFCAPackageIconDescriptor initWithPackageIdentifier:]([HFCAPackageIconDescriptor alloc], "initWithPackageIdentifier:", @"HFCAPackageIconIdentifierGenericSensor"), +[HFServiceIconSet setWithDefaultIcon:](HFServiceIconSet, "setWithDefaultIcon:", v19), v46 = typeCopy, v20 = v16, v21 = v17, v22 = v9, v23 = self, v24 = v10, v25 = v8, v26 = deviceTypeCopy, v27 = objc_claimAutoreleasedReturnValue(), v19, objc_msgSend(v27, "defaultIcon"), deviceType = objc_claimAutoreleasedReturnValue(), v27, deviceTypeCopy = v26, v8 = v25, v10 = v24, self = v23, v9 = v22, v17 = v21, v16 = v20, typeCopy = v46, !deviceType))
  {
    v29 = [v8 objectForKeyedSubscript:v16];
    if (!v29 || (v30 = v29, [self defaultIconDescriptorForServiceType:v29 serviceSubtype:0], deviceType = objc_claimAutoreleasedReturnValue(), v30, !deviceType))
    {
      v31 = [v10 objectForKeyedSubscript:v16];
      v32 = v31;
      if (!v31)
      {
        v11 = v48;
        if (!deviceTypeCopy)
        {
LABEL_49:
          v18 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:@"HFImageIconIdentifierGeneric"];
LABEL_50:
          deviceType = v18;
          goto LABEL_51;
        }

        objc_opt_class();
        v34 = deviceTypeCopy;
        if (objc_opt_isKindOfClass())
        {
          v35 = v34;
        }

        else
        {
          v35 = 0;
        }

        deviceType = v35;

        v47 = deviceType;
        if (deviceType)
        {
          deviceType = [(HFImageIconDescriptor *)deviceType deviceType];

          v11 = v48;
          if (deviceType)
          {
            deviceType2 = [(HFImageIconDescriptor *)v47 deviceType];
            v45 = [v48 objectForKeyedSubscript:deviceType2];

            v37 = v45;
            if (v45)
            {
              deviceType3 = [(HFImageIconDescriptor *)v47 deviceType];
              v44 = [v49 objectForKeyedSubscript:deviceType3];

              if (v44)
              {
                v39 = [MEMORY[0x277D755D0] configurationWithHierarchicalColor:v44];
              }

              else
              {
                v39 = 0;
              }

              v41 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v45 configuration:v39];
              v42 = v39;
              deviceType = v41;

              v37 = v45;
            }

            else
            {
              deviceType = 0;
            }
          }
        }

        else
        {
          v11 = v48;
        }

LABEL_48:
        if (deviceType)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      if ([v31 isEqualToString:@"point.3.filled.connected.trianglepath.dotted"])
      {
        configurationPreferringMulticolor = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
      }

      else
      {
        if (([v16 isEqualToString:*MEMORY[0x277CCE870]] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277CCE8B0]) & 1) == 0 && !objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277CCE900]))
        {
          deviceType = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v32];
          goto LABEL_40;
        }

        configurationPreferringMulticolor = +[HFMediaHelper mediaContainerSymbolConfiguration];
      }

      v40 = configurationPreferringMulticolor;
      deviceType = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v32 configuration:configurationPreferringMulticolor];

LABEL_40:
      v11 = v48;
      goto LABEL_48;
    }
  }

  v11 = v48;
LABEL_51:
  v14 = deviceType;

  v12 = v49;
LABEL_52:

  return v14;
}

void __89__HFServiceIconFactory_iconDescriptorForAccessoryCategoryOrServiceType_matterDeviceType___block_invoke_2()
{
  v32[23] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD0ED8];
  v1 = *MEMORY[0x277CCE888];
  v31[0] = *MEMORY[0x277CCE8E8];
  v31[1] = v1;
  v2 = *MEMORY[0x277CD0E30];
  v32[0] = v0;
  v32[1] = v2;
  v3 = *MEMORY[0x277CD0EB0];
  v4 = *MEMORY[0x277CCE898];
  v31[2] = *MEMORY[0x277CCE890];
  v31[3] = v4;
  v5 = *MEMORY[0x277CD0E40];
  v32[2] = v3;
  v32[3] = v5;
  v6 = *MEMORY[0x277CD0E58];
  v7 = *MEMORY[0x277CCE8B8];
  v31[4] = *MEMORY[0x277CCE8A8];
  v31[5] = v7;
  v8 = *MEMORY[0x277CD0E00];
  v32[4] = v6;
  v32[5] = v8;
  v9 = *MEMORY[0x277CCE8C0];
  v31[6] = *MEMORY[0x277CCE948];
  v31[7] = v9;
  v10 = *MEMORY[0x277CD0EA0];
  v32[6] = v8;
  v32[7] = v10;
  v11 = *MEMORY[0x277CD0ED0];
  v12 = *MEMORY[0x277CCE8D8];
  v31[8] = *MEMORY[0x277CCE8D0];
  v31[9] = v12;
  v13 = *MEMORY[0x277CD0F00];
  v32[8] = v11;
  v32[9] = v13;
  v14 = *MEMORY[0x277CD0F08];
  v15 = *MEMORY[0x277CCE940];
  v31[10] = *MEMORY[0x277CCE910];
  v31[11] = v15;
  v16 = *MEMORY[0x277CD0F30];
  v32[10] = v14;
  v32[11] = v16;
  v17 = *MEMORY[0x277CD0F58];
  v18 = *MEMORY[0x277CCE960];
  v31[12] = *MEMORY[0x277CCE958];
  v31[13] = v18;
  v19 = *MEMORY[0x277CD0F60];
  v32[12] = v17;
  v32[13] = v19;
  v20 = *MEMORY[0x277CD0E60];
  v21 = *MEMORY[0x277CCE868];
  v31[14] = *MEMORY[0x277CCE840];
  v31[15] = v21;
  v22 = *MEMORY[0x277CD0DD8];
  v32[14] = v20;
  v32[15] = v22;
  v23 = *MEMORY[0x277CCE858];
  v31[16] = *MEMORY[0x277CCE850];
  v31[17] = v23;
  v24 = *MEMORY[0x277CD0E68];
  v32[16] = v20;
  v32[17] = v24;
  v25 = *MEMORY[0x277CCE908];
  v31[18] = *MEMORY[0x277CCE848];
  v31[19] = v25;
  v26 = *MEMORY[0x277CD0E80];
  v32[18] = v24;
  v32[19] = v26;
  v27 = *MEMORY[0x277CD0E48];
  v28 = *MEMORY[0x277CCE8F8];
  v31[20] = *MEMORY[0x277CCE8A0];
  v31[21] = v28;
  v32[20] = v27;
  v32[21] = v27;
  v31[22] = *MEMORY[0x277CCE950];
  v32[22] = *MEMORY[0x277CD0F48];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:23];
  v30 = qword_280E02BF8;
  qword_280E02BF8 = v29;
}

void __89__HFServiceIconFactory_iconDescriptorForAccessoryCategoryOrServiceType_matterDeviceType___block_invoke_5()
{
  v7[10] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCE878];
  v6[0] = *MEMORY[0x277CCE8B8];
  v6[1] = v0;
  v7[0] = @"HFCAPackageIconIdentifierIPCamera";
  v7[1] = @"HFCAPackageIconIdentifierReceiver";
  v1 = *MEMORY[0x277CCE920];
  v6[2] = *MEMORY[0x277CCE918];
  v6[3] = v1;
  v7[2] = @"HFCAPackageIconIdentifierRemoteControl";
  v7[3] = @"HFCAPackageIconIdentifierTelevision";
  v2 = *MEMORY[0x277CCE938];
  v6[4] = *MEMORY[0x277CCE930];
  v6[5] = v2;
  v7[4] = @"HFCAPackageIconIdentifierTelevisionSetTopBox";
  v7[5] = @"HFCAPackageIconIdentifierTelevisionStreamingStick";
  v6[6] = *MEMORY[0x277CCE948];
  v6[7] = @"9D302CDA-1467-4E19-ABC9-9ED36BE34508";
  v7[6] = @"HFCAPackageIconIdentifierVideoDoorbell";
  v7[7] = @"HFCAPackageIconIdentifierCeilingFanWithLight";
  v3 = *MEMORY[0x277CCE860];
  v6[8] = @"3047A1A5-8BFC-4112-9888-21314F438FF3";
  v6[9] = v3;
  v7[8] = @"HFCAPackageIconIdentifierPowerStrip";
  v7[9] = @"HFCAPackageIconIdentifierAirport";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:10];
  v5 = qword_280E02C08;
  qword_280E02C08 = v4;
}

void __89__HFServiceIconFactory_iconDescriptorForAccessoryCategoryOrServiceType_matterDeviceType___block_invoke_8()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCE870];
  v4[0] = *MEMORY[0x277CCE880];
  v4[1] = v0;
  v5[0] = @"point.3.filled.connected.trianglepath.dotted";
  v5[1] = @"appletv.fill";
  v1 = *MEMORY[0x277CCE900];
  v4[2] = *MEMORY[0x277CCE8B0];
  v4[3] = v1;
  v5[2] = @"homepod.fill";
  v5[3] = @"hifispeaker.fill";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v3 = qword_280E02C18;
  qword_280E02C18 = v2;
}

void __89__HFServiceIconFactory_iconDescriptorForAccessoryCategoryOrServiceType_matterDeviceType___block_invoke_11()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithInt:116];
  v4[0] = v0;
  v5[0] = @"robotic.vacuum.fill";
  v1 = [MEMORY[0x277CCABB0] numberWithInt:144];
  v4[1] = v1;
  v5[1] = @"wifi.router.fill";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  v3 = qword_280E02C28;
  qword_280E02C28 = v2;
}

void __89__HFServiceIconFactory_iconDescriptorForAccessoryCategoryOrServiceType_matterDeviceType___block_invoke_14()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithInt:116];
  v4 = v0;
  v1 = +[HFMatterColors rvcTintColor];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v3 = qword_280E02C38;
  qword_280E02C38 = v2;
}

+ (id)iconModifiersForService:(id)service
{
  serviceCopy = service;
  v4 = objc_opt_new();
  characteristics = [serviceCopy characteristics];
  v6 = [characteristics na_map:&__block_literal_global_162];

  v7 = *MEMORY[0x277CCF8D8];
  if ([v6 containsObject:*MEMORY[0x277CCF8D8]])
  {
    v8 = [serviceCopy hf_characteristicOfType:v7];
    v9 = v8;
    if (v8)
    {
      metadata = [v8 metadata];
      value = [v9 value];
      v12 = [metadata hf_percentageForCharacteristicValue:value];
      [v4 setObject:v12 forKeyedSubscript:@"HFIconModifierHue"];
    }

    else
    {
      metadata = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
      [v4 setObject:metadata forKeyedSubscript:@"HFIconModifierHue"];
    }
  }

  v13 = *MEMORY[0x277CCFA30];
  if ([v6 containsObject:*MEMORY[0x277CCFA30]])
  {
    v14 = [serviceCopy hf_characteristicOfType:v13];
    v15 = v14;
    if (v14)
    {
      metadata2 = [v14 metadata];
      value2 = [v15 value];
      v18 = [metadata2 hf_percentageForCharacteristicValue:value2];
      [v4 setObject:v18 forKeyedSubscript:@"HFIconModifierSaturation"];
    }

    else
    {
      metadata2 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
      [v4 setObject:metadata2 forKeyedSubscript:@"HFIconModifierSaturation"];
    }
  }

  v19 = *MEMORY[0x277CCF788];
  if ([v6 containsObject:*MEMORY[0x277CCF788]])
  {
    v20 = [serviceCopy hf_characteristicOfType:v19];
    metadata3 = [v20 metadata];
    value3 = [v20 value];
    v23 = [metadata3 hf_percentageForCharacteristicValue:value3];
    [v4 setObject:v23 forKeyedSubscript:@"HFIconModifierBrightness"];
  }

  v24 = *MEMORY[0x277CCF7D8];
  if ([v6 containsObject:*MEMORY[0x277CCF7D8]])
  {
    v25 = [serviceCopy hf_characteristicOfType:v24];
    metadata4 = [v25 metadata];
    value4 = [v25 value];
    v28 = [metadata4 hf_percentageForCharacteristicValue:value4];
    [v4 setObject:v28 forKeyedSubscript:@"HFIconModifierColorTemperature"];
  }

  return v4;
}

+ (id)_replacementIdentifierForIconIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (qword_280E02C40 != -1)
  {
    dispatch_once(&qword_280E02C40, &__block_literal_global_166_0);
  }

  v4 = qword_280E02C48;
  v5 = [v4 objectForKeyedSubscript:identifierCopy];

  return v5;
}

void __64__HFServiceIconFactory__replacementIdentifierForIconIdentifier___block_invoke_2()
{
  v3[62] = *MEMORY[0x277D85DE8];
  v2[0] = @"HFImageIconIdentifierServiceLightbulb";
  v2[1] = @"HFImageIconIdentifierServiceCeilingLight";
  v3[0] = @"HFCAPackageIconIdentifierLightbulb";
  v3[1] = @"HFCAPackageIconIdentifierCeilingLight";
  v2[2] = @"HFImageIconIdentifierServiceDeskLamp";
  v2[3] = @"HFImageIconIdentifierServiceFloorLamp";
  v3[2] = @"HFCAPackageIconIdentifierDeskLamp";
  v3[3] = @"HFCAPackageIconIdentifierFloorLamp";
  v2[4] = @"HFImageIconIdentifierServiceFan";
  v2[5] = @"HFImageIconIdentifierServiceCeilingFan";
  v3[4] = @"HFCAPackageIconIdentifierDeskFan";
  v3[5] = @"HFCAPackageIconIdentifierCeilingFan";
  v2[6] = @"HFImageIconIdentifierServiceGarageDoor";
  v2[7] = @"HFImageIconIdentifierServiceLock";
  v3[6] = @"HFCAPackageIconIdentifierGarageDoor";
  v3[7] = @"HFCAPackageIconIdentifierDoorLock";
  v2[8] = @"HFImageIconIdentifierServiceSwitch";
  v2[9] = @"HFImageIconIdentifierServiceDoor";
  v3[8] = @"HFCAPackageIconIdentifierSwitch";
  v3[9] = @"HFCAPackageIconIdentifierDoor";
  v2[10] = @"HFImageIconIdentifierIPCamera";
  v2[11] = @"HFImageIconIdentifierVideoDoorbell";
  v3[10] = @"HFCAPackageIconIdentifierIPCamera";
  v3[11] = @"HFCAPackageIconIdentifierVideoDoorbell";
  v2[12] = @"HFImageIconIdentifierProgrammableSwitch";
  v2[13] = @"HFImageIconIdentifierServiceAirPurifier";
  v3[12] = @"HFCAPackageIconIdentifierProgrammableSwitch";
  v3[13] = @"HFCAPackageIconIdentifierAirPurifier";
  v2[14] = @"HFImageIconIdentifierServiceHumidifierDehumidifier";
  v2[15] = @"HFImageIconIdentifierServiceTelevisionOn";
  v3[14] = @"HFCAPackageIconIdentifierHumidifier";
  v3[15] = @"HFCAPackageIconIdentifierTelevision";
  v2[16] = @"HFImageIconIdentifierServiceTelevisionOff";
  v2[17] = @"HFImageIconIdentifierRemoteControl";
  v3[16] = @"HFCAPackageIconIdentifierTelevision";
  v3[17] = @"HFCAPackageIconIdentifierRemoteControl";
  v2[18] = @"HFImageIconIdentifierAppleTV";
  v2[19] = @"HFImageIconIdentifierServiceLightSensor";
  v3[18] = @"appletv.fill";
  v3[19] = @"HFCAPackageIconIdentifierLightSensor";
  v2[20] = @"HFImageIconIdentifierServiceTemperatureSensor";
  v2[21] = @"HFImageIconIdentifierServiceHumiditySensor";
  v3[20] = @"HFCAPackageIconIdentifierTemperatureSensor";
  v3[21] = @"HFCAPackageIconIdentifierHumiditySensor";
  v2[22] = @"HFImageIconIdentifierServiceAirQualitySensorOn";
  v2[23] = @"HFImageIconIdentifierServiceAirQualitySensorOff";
  v3[22] = @"HFCAPackageIconIdentifierAirQualitySensor";
  v3[23] = @"HFCAPackageIconIdentifierAirQualitySensor";
  v2[24] = @"HFImageIconIdentifierServiceContactSensorOpen";
  v2[25] = @"HFImageIconIdentifierServiceContactSensorClosed";
  v3[24] = @"HFCAPackageIconIdentifierContactSensor";
  v3[25] = @"HFCAPackageIconIdentifierContactSensor";
  v2[26] = @"HFImageIconIdentifierServiceCarbonDioxideSensorOn";
  v2[27] = @"HFImageIconIdentifierServiceCarbonDioxideSensorOff";
  v3[26] = @"HFCAPackageIconIdentifierCarbonDioxideSensor";
  v3[27] = @"HFCAPackageIconIdentifierCarbonDioxideSensor";
  v2[28] = @"HFImageIconIdentifierServiceCarbonMonoxideSensorOn";
  v2[29] = @"HFImageIconIdentifierServiceCarbonMonoxideSensorOff";
  v3[28] = @"HFCAPackageIconIdentifierCarbonMonoxideSensor";
  v3[29] = @"HFCAPackageIconIdentifierCarbonMonoxideSensor";
  v2[30] = @"HFImageIconIdentifierServiceLeakSensorOn";
  v2[31] = @"HFImageIconIdentifierServiceLeakSensorOff";
  v3[30] = @"HFCAPackageIconIdentifierLeakSensor";
  v3[31] = @"HFCAPackageIconIdentifierLeakSensor";
  v2[32] = @"HFImageIconIdentifierServiceMotionSensorOn";
  v2[33] = @"HFImageIconIdentifierServiceMotionSensorOff";
  v3[32] = @"HFCAPackageIconIdentifierMotionSensor";
  v3[33] = @"HFCAPackageIconIdentifierMotionSensor";
  v2[34] = @"HFImageIconIdentifierServiceOccupancySensorOn";
  v2[35] = @"HFImageIconIdentifierServiceOccupancySensorOff";
  v3[34] = @"HFCAPackageIconIdentifierOccupancySensor";
  v3[35] = @"HFCAPackageIconIdentifierOccupancySensor";
  v2[36] = @"HFImageIconIdentifierServiceSmokeSensorOn";
  v2[37] = @"HFImageIconIdentifierServiceSmokeSensorOff";
  v3[36] = @"HFCAPackageIconIdentifierSmokeSensor";
  v3[37] = @"HFCAPackageIconIdentifierSmokeSensor";
  v2[38] = @"HFImageIconIdentifierServiceWindowOpen";
  v2[39] = @"HFImageIconIdentifierServiceWindowClosed";
  v3[38] = @"HFCAPackageIconIdentifierWindowVertical";
  v3[39] = @"HFCAPackageIconIdentifierWindowVertical";
  v2[40] = @"HFImageIconIdentifierSecuritySystemOff";
  v2[41] = @"HFImageIconIdentifierSecuritySystemOn";
  v3[40] = @"HFCAPackageIconIdentifierSecuritySystem";
  v3[41] = @"HFCAPackageIconIdentifierSecuritySystem";
  v2[42] = @"HFImageIconIdentifierBlindsClosed";
  v2[43] = @"HFImageIconIdentifierBlindsOpen";
  v3[42] = @"HFCAPackageIconIdentifierWindowCoveringBlindsHorizontal";
  v3[43] = @"HFCAPackageIconIdentifierWindowCoveringBlindsHorizontal";
  v2[44] = @"HFImageIconIdentifierServiceFaucetOff";
  v2[45] = @"HFImageIconIdentifierServiceFaucetOn";
  v3[44] = @"HFCAPackageIconIdentifierFaucet";
  v3[45] = @"HFCAPackageIconIdentifierFaucet";
  v2[46] = @"HFImageIconIdentifierServiceSprinklerOff";
  v2[47] = @"HFImageIconIdentifierServiceSprinklerOn";
  v3[46] = @"HFCAPackageIconIdentifierSprinkler";
  v3[47] = @"HFCAPackageIconIdentifierSprinkler";
  v2[48] = @"HFImageIconIdentifierValveGenericOn";
  v2[49] = @"HFImageIconIdentifierValveGenericOff";
  v3[48] = @"HFCAPackageIconIdentifierFaucet";
  v3[49] = @"HFCAPackageIconIdentifierFaucet";
  v2[50] = @"HFImageIconIdentifierValveShowerHeadOn";
  v2[51] = @"HFImageIconIdentifierValveShowerHeadOff";
  v3[50] = @"HFCAPackageIconIdentifierValveCeilingJet";
  v3[51] = @"HFCAPackageIconIdentifierValveCeilingJet";
  v2[52] = @"HFImageIconIdentifierServiceOutlet";
  v2[53] = @"HFCAPackageIconIdentifierOutlet";
  v3[52] = @"HFCAPackageIconIdentifierOutletTypeB";
  v3[53] = @"HFCAPackageIconIdentifierOutletTypeB";
  v2[54] = @"HFCAPackageIconIdentifierOutletAustraliaNewZealand";
  v2[55] = @"HFCAPackageIconIdentifierOutletEurope";
  v2[56] = @"HFCAPackageIconIdentifierOutletUnitedKingdom";
  v2[57] = @"HFCAPackageIconIdentifierOutletJapan";
  v3[56] = @"HFCAPackageIconIdentifierOutletTypeG";
  v3[57] = @"HFCAPackageIconIdentifierOutletTypeA";
  v3[54] = @"HFCAPackageIconIdentifierOutletTypeI";
  v3[55] = @"HFCAPackageIconIdentifierOutletTypeC";
  v2[58] = @"HFCAPackageIconIdentifierOutletKorea";
  v2[59] = @"HFCAPackageIconIdentifierOutletHongKong";
  v3[58] = @"HFCAPackageIconIdentifierOutletTypeC";
  v3[59] = @"HFCAPackageIconIdentifierOutletTypeG";
  v2[60] = @"HFCAPackageIconIdentifierOutletChina";
  v2[61] = @"HFCAPackageIconIdentifierOutletBrazil";
  v3[60] = @"HFCAPackageIconIdentifierOutletTypeI";
  v3[61] = @"HFCAPackageIconIdentifierOutletTypeN";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:62];
  v1 = qword_280E02C48;
  qword_280E02C48 = v0;
}

+ (id)displayIconDescriptorFromIconDescriptor:(id)descriptor symbolName:(id)name
{
  descriptorCopy = descriptor;
  nameCopy = name;
  objc_opt_class();
  v7 = descriptorCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [HFCAPackageIconDescriptor alloc];
    packageIdentifier = [(HFImageIconDescriptor *)v9 packageIdentifier];
    v12 = [(HFCAPackageIconDescriptor *)v10 initWithPackageIdentifier:packageIdentifier state:HFCAPackageStateDisplay];
  }

  else
  {
    if (![nameCopy length])
    {
      goto LABEL_15;
    }

    packageIdentifier = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A20]];
    objc_opt_class();
    v13 = v7;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v7 = v14;

    imageSymbolConfiguration = [(HFImageIconDescriptor *)v7 imageSymbolConfiguration];
    if (imageSymbolConfiguration)
    {
      v16 = imageSymbolConfiguration;
      v17 = [imageSymbolConfiguration configurationByApplyingConfiguration:packageIdentifier];
    }

    else
    {
      v17 = packageIdentifier;
    }

    v12 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:nameCopy configuration:v17];
  }

  v7 = v12;
LABEL_15:

  return v7;
}

@end