@interface _GCSonyDualSenseControllerProfile
+ (BOOL)logicalDevice:(id)device getSystemButtonName:(id *)name sfSymbolName:(id *)symbolName needsMFiCompatibility:(BOOL *)compatibility;
+ (_GCPhysicalDeviceManager)deviceManager;
+ (id)logicalDevice:(id)device makeControllerInputDescriptionWithIdentifier:(id)identifier bindings:(id)bindings;
+ (id)logicalDevice:(id)device makeControllerMotionWithIdentifier:(id)identifier;
+ (id)logicalDevice:(id)device makeControllerPhysicalInputProfileWithIdentifier:(id)identifier;
+ (id)logicalDeviceControllerDetailedProductCategory:(id)category;
+ (id)physicalDeviceGetHapticCapabilities:(id)capabilities;
+ (id)physicalDeviceGetHapticCapabilityGraph:(id)graph;
+ (int64_t)physicalDeviceGetIndicatedPlayerIndex:(id)index;
+ (void)physicalDevice:(id)device getAdaptiveTriggersStatusesWithReply:(id)reply;
+ (void)physicalDevice:(id)device getBatteryWithReply:(id)reply;
+ (void)physicalDevice:(id)device getLightWithReply:(id)reply;
+ (void)physicalDevice:(id)device getSensorsEnabledWithReply:(id)reply;
+ (void)physicalDevice:(id)device setAdaptiveTriggersPayload:(id)payload forIndex:(int)index;
+ (void)physicalDevice:(id)device setIndicatedPlayerIndex:(int64_t)index;
+ (void)physicalDevice:(id)device setLight:(id)light;
+ (void)physicalDevice:(id)device setSensorsActive:(BOOL)active;
@end

@implementation _GCSonyDualSenseControllerProfile

+ (_GCPhysicalDeviceManager)deviceManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___GCSonyDualSenseControllerProfile_deviceManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (deviceManager_onceToken_2 != -1)
  {
    dispatch_once(&deviceManager_onceToken_2, block);
  }

  v2 = deviceManager_deviceManager_2;

  return v2;
}

+ (id)logicalDeviceControllerDetailedProductCategory:(id)category
{
  v3 = objc_msgSend_underlyingDevice(category, a2);
  serviceInfo = [v3 serviceInfo];
  v5 = [serviceInfo numberPropertyForKey:@"ProductID"];
  unsignedIntValue = [v5 unsignedIntValue];

  if (unsignedIntValue == 3570)
  {
    v7 = @"DualSense Edge";
  }

  else
  {
    v7 = @"DualSense";
  }

  return v7;
}

+ (BOOL)logicalDevice:(id)device getSystemButtonName:(id *)name sfSymbolName:(id *)symbolName needsMFiCompatibility:(BOOL *)compatibility
{
  *name = *MEMORY[0x1E69A0400];
  *symbolName = @"logo.playstation";
  return 1;
}

+ (id)logicalDevice:(id)device makeControllerPhysicalInputProfileWithIdentifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  GCExtendedGamepadInitInfoMake(v11);
  for (i = 0; i != 1152; i += 72)
  {
    *(v11 + i + 8) = 257;
  }

  BYTE1(v12) = 0;
  BYTE9(v16) = 0;
  v21 = 0;
  v23 = 0;
  v22 = 1;
  v24 = 1;
  v8 = [(GCExtendedGamepad *)[GCDualSenseGamepad alloc] initWithIdentifier:identifierCopy info:v11];
  for (j = 0; j != 1584; j += 72)
  {
    __destructor_8_s0_s48_s56_s64(v11 + j);
  }

  return v8;
}

+ (id)logicalDevice:(id)device makeControllerInputDescriptionWithIdentifier:(id)identifier bindings:(id)bindings
{
  v153[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69A0690];
  bindingsCopy = bindings;
  identifierCopy = identifier;
  v138 = [v6 descriptionWithIdentifier:@"button.logo"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Home"];
  [v138 setAliases:v7];

  [v138 setLocalizedName:*MEMORY[0x1E69A0400]];
  v8 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"logo.playstation"];
  [v138 setSymbol:v8];

  [v138 setEventPressedValueField:22];
  v137 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.options"];
  v9 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v137 setAliases:v9];

  [v137 setLocalizedName:*MEMORY[0x1E69A0470]];
  v10 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"capsule.portrait"];
  [v137 setSymbol:v10];

  [v137 setEventPressedValueField:23];
  v136 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.create"];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Options"];
  [v136 setAliases:v11];

  [v136 setLocalizedName:*MEMORY[0x1E69A0478]];
  v12 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"capsule.portrait"];
  [v136 setSymbol:v12];

  [v136 setEventPressedValueField:24];
  v135 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.xmark"];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:@"Button A"];
  [v135 setAliases:v13];

  [v135 setLocalizedName:*MEMORY[0x1E69A03F0]];
  v14 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"xmark.circle"];
  [v135 setSymbol:v14];

  [v135 setEventPressedValueField:4];
  v134 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.circle"];
  v15 = [MEMORY[0x1E695DFD8] setWithObject:@"Button B"];
  [v134 setAliases:v15];

  [v134 setLocalizedName:*MEMORY[0x1E69A03F8]];
  v16 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"circle.circle"];
  [v134 setSymbol:v16];

  [v134 setEventPressedValueField:5];
  v133 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.square"];
  v17 = [MEMORY[0x1E695DFD8] setWithObject:@"Button X"];
  [v133 setAliases:v17];

  [v133 setLocalizedName:*MEMORY[0x1E69A0428]];
  v18 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"square.circle"];
  [v133 setSymbol:v18];

  [v133 setEventPressedValueField:6];
  v132 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.triangle"];
  v19 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Y"];
  [v132 setAliases:v19];

  [v132 setLocalizedName:*MEMORY[0x1E69A0430]];
  v20 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"triangle.circle"];
  [v132 setSymbol:v20];

  [v132 setEventPressedValueField:7];
  v129 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l1"];
  v21 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Shoulder"];
  [v129 setAliases:v21];

  [v129 setLocalizedName:*MEMORY[0x1E69A0440]];
  v22 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l1.rectangle.roundedbottom"];
  [v129 setSymbol:v22];

  [v129 setEventPressedValueField:8];
  v128 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r1"];
  v23 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Shoulder"];
  [v128 setAliases:v23];

  [v128 setLocalizedName:*MEMORY[0x1E69A0458]];
  v24 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r1.rectangle.roundedbottom"];
  [v128 setSymbol:v24];

  [v128 setEventPressedValueField:9];
  v127 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l2"];
  v25 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Trigger"];
  [v127 setAliases:v25];

  [v127 setLocalizedName:*MEMORY[0x1E69A0450]];
  v26 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l2.rectangle.roundedtop"];
  [v127 setSymbol:v26];

  [v127 setAnalog:1];
  [v127 setEventPressedValueField:18];
  v126 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r2"];
  v27 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Trigger"];
  [v126 setAliases:v27];

  [v126 setLocalizedName:*MEMORY[0x1E69A0468]];
  v28 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r2.rectangle.roundedtop"];
  [v126 setSymbol:v28];

  [v126 setAnalog:1];
  [v126 setEventPressedValueField:19];
  v125 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"dpad"];
  v29 = [MEMORY[0x1E695DFD8] setWithObject:@"Direction Pad"];
  [v125 setAliases:v29];

  [v125 setLocalizedName:*MEMORY[0x1E69A0438]];
  v30 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"dpad"];
  [v125 setSymbol:v30];

  [v125 setAnalog:0];
  [v125 setEventUpValueField:0];
  [v125 setEventDownValueField:1];
  [v125 setEventLeftValueField:2];
  [v125 setEventRightValueField:3];
  v31 = [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.left"];
  v32 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Left Thumbstick", @"Left Thumbstick Button", 0}];
  [v31 setAliases:v32];

  [v31 setLocalizedName:*MEMORY[0x1E69A0448]];
  v33 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick"];
  [v31 setSymbol:v33];

  [v31 setAnalog:1];
  [v31 setEventUpValueField:10];
  [v31 setEventDownValueField:11];
  [v31 setEventLeftValueField:12];
  [v31 setEventRightValueField:13];
  [v31 setEventPressedValueField:20];
  v34 = MEMORY[0x1E69A06B8];
  v35 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName = [v31 localizedName];
  symbol = [v31 symbol];
  v38 = [v34 sourceWithElementAliases:v35 localizedName:localizedName symbol:symbol direction:10];
  v153[0] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:1];
  [v31 setXSources:v39];

  v40 = MEMORY[0x1E69A06B8];
  v41 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName2 = [v31 localizedName];
  symbol2 = [v31 symbol];
  v44 = [v40 sourceWithElementAliases:v41 localizedName:localizedName2 symbol:symbol2 direction:5];
  v152 = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v152 count:1];
  [v31 setYSources:v45];

  v46 = MEMORY[0x1E69A06B8];
  v47 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName3 = [v31 localizedName];
  symbol3 = [v31 symbol];
  v50 = [v46 sourceWithElementAliases:v47 localizedName:localizedName3 symbol:symbol3 direction:1];
  v151 = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v151 count:1];
  [v31 setUpSources:v51];

  v52 = MEMORY[0x1E69A06B8];
  v53 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName4 = [v31 localizedName];
  symbol4 = [v31 symbol];
  v56 = [v52 sourceWithElementAliases:v53 localizedName:localizedName4 symbol:symbol4 direction:2];
  v150 = v56;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
  [v31 setRightSources:v57];

  v58 = MEMORY[0x1E69A06B8];
  v59 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName5 = [v31 localizedName];
  symbol5 = [v31 symbol];
  v62 = [v58 sourceWithElementAliases:v59 localizedName:localizedName5 symbol:symbol5 direction:4];
  v149 = v62;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
  [v31 setDownSources:v63];

  v64 = MEMORY[0x1E69A06B8];
  v65 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName6 = [v31 localizedName];
  symbol6 = [v31 symbol];
  v68 = [v64 sourceWithElementAliases:v65 localizedName:localizedName6 symbol:symbol6 direction:8];
  v148 = v68;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
  [v31 setLeftSources:v69];

  v70 = MEMORY[0x1E69A06B8];
  v71 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick Button"];
  v72 = *MEMORY[0x1E69A0408];
  v73 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick.press.down"];
  v74 = [v70 sourceWithElementAliases:v71 localizedName:v72 symbol:v73];
  v147 = v74;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
  [v31 setPressedSources:v75];

  v76 = [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.right"];
  v77 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Right Thumbstick", @"Right Thumbstick Button", 0}];
  [v76 setAliases:v77];

  [v76 setLocalizedName:*MEMORY[0x1E69A0460]];
  v78 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick"];
  [v76 setSymbol:v78];

  [v76 setAnalog:1];
  [v76 setEventUpValueField:14];
  [v76 setEventDownValueField:15];
  [v76 setEventLeftValueField:16];
  [v76 setEventRightValueField:17];
  [v76 setEventPressedValueField:21];
  v79 = MEMORY[0x1E69A06B8];
  v80 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName7 = [v76 localizedName];
  symbol7 = [v76 symbol];
  v83 = [v79 sourceWithElementAliases:v80 localizedName:localizedName7 symbol:symbol7 direction:10];
  v146 = v83;
  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
  [v76 setXSources:v84];

  v85 = MEMORY[0x1E69A06B8];
  v86 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName8 = [v76 localizedName];
  symbol8 = [v76 symbol];
  v89 = [v85 sourceWithElementAliases:v86 localizedName:localizedName8 symbol:symbol8 direction:5];
  v145 = v89;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];
  [v76 setYSources:v90];

  v91 = MEMORY[0x1E69A06B8];
  v92 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName9 = [v76 localizedName];
  symbol9 = [v76 symbol];
  v95 = [v91 sourceWithElementAliases:v92 localizedName:localizedName9 symbol:symbol9 direction:1];
  v144 = v95;
  v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v144 count:1];
  [v76 setUpSources:v96];

  v97 = MEMORY[0x1E69A06B8];
  v98 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName10 = [v76 localizedName];
  symbol10 = [v76 symbol];
  v101 = [v97 sourceWithElementAliases:v98 localizedName:localizedName10 symbol:symbol10 direction:2];
  v143 = v101;
  v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v143 count:1];
  [v76 setRightSources:v102];

  v103 = MEMORY[0x1E69A06B8];
  v104 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName11 = [v76 localizedName];
  symbol11 = [v76 symbol];
  v107 = [v103 sourceWithElementAliases:v104 localizedName:localizedName11 symbol:symbol11 direction:4];
  v142 = v107;
  v108 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v142 count:1];
  [v76 setDownSources:v108];

  v109 = MEMORY[0x1E69A06B8];
  v110 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName12 = [v76 localizedName];
  symbol12 = [v76 symbol];
  v113 = [v109 sourceWithElementAliases:v110 localizedName:localizedName12 symbol:symbol12 direction:8];
  v141 = v113;
  v114 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v141 count:1];
  [v76 setLeftSources:v114];

  v115 = MEMORY[0x1E69A06B8];
  v116 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick Button"];
  v117 = *MEMORY[0x1E69A0420];
  v118 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick.press.down"];
  v119 = [v115 sourceWithElementAliases:v116 localizedName:v117 symbol:v118];
  v140 = v119;
  v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v140 count:1];
  [v76 setPressedSources:v120];

  v121 = objc_opt_new();
  v139[0] = v138;
  v139[1] = v137;
  v139[2] = v136;
  v139[3] = v135;
  v139[4] = v134;
  v139[5] = v133;
  v139[6] = v132;
  v139[7] = v129;
  v139[8] = v128;
  v139[9] = v127;
  v139[10] = v126;
  v139[11] = v125;
  v139[12] = v31;
  v139[13] = v76;
  v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:14];
  [v121 setElements:v122];

  v124 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:identifierCopy controllerInputs:v121 bindings:bindingsCopy];

  return v124;
}

+ (id)logicalDevice:(id)device makeControllerMotionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[GCMotion alloc] initWithIdentifier:identifierCopy];

  [(GCMotion *)v5 _setHasRotationRate:1];
  [(GCMotion *)v5 _setHasAttitude:0];

  return v5;
}

+ (void)physicalDevice:(id)device getLightWithReply:(id)reply
{
  deviceCopy = device;
  replyCopy = reply;
  if (gc_isInternalBuild(replyCopy, v7))
  {
    [_GCSonyDualSenseControllerProfile physicalDevice:deviceCopy getLightWithReply:?];
  }

  lightServiceServer = [deviceCopy lightServiceServer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70___GCSonyDualSenseControllerProfile_physicalDevice_getLightWithReply___block_invoke;
  v11[3] = &unk_1E841A3C0;
  v12 = deviceCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = deviceCopy;
  [lightServiceServer readLightWithReply:v11];
}

+ (void)physicalDevice:(id)device setLight:(id)light
{
  lightCopy = light;
  lightServiceServer = [device lightServiceServer];
  color = [lightCopy color];
  [color red];
  v8 = v7;
  color2 = [lightCopy color];
  [color2 green];
  v11 = v10;
  color3 = [lightCopy color];

  [color3 blue];
  LODWORD(v14) = v13;
  LODWORD(v15) = v8;
  LODWORD(v16) = v11;
  [lightServiceServer updateLightWithRed:v15 green:v16 blue:v14];
}

+ (void)physicalDevice:(id)device getSensorsEnabledWithReply:(id)reply
{
  deviceCopy = device;
  replyCopy = reply;
  if (gc_isInternalBuild(replyCopy, v7))
  {
    [_GCSonyDualSenseControllerProfile physicalDevice:deviceCopy getSensorsEnabledWithReply:?];
  }

  motionServiceServer = [deviceCopy motionServiceServer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79___GCSonyDualSenseControllerProfile_physicalDevice_getSensorsEnabledWithReply___block_invoke;
  v11[3] = &unk_1E841A3E8;
  v12 = deviceCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = deviceCopy;
  [motionServiceServer readSensorsActiveWithReply:v11];
}

+ (void)physicalDevice:(id)device setSensorsActive:(BOOL)active
{
  activeCopy = active;
  motionServiceServer = [device motionServiceServer];
  [motionServiceServer updateSensorsActive:activeCopy];
}

+ (void)physicalDevice:(id)device getBatteryWithReply:(id)reply
{
  deviceCopy = device;
  replyCopy = reply;
  if (gc_isInternalBuild(replyCopy, v7))
  {
    [_GCSonyDualSenseControllerProfile physicalDevice:deviceCopy getBatteryWithReply:?];
  }

  batteryServiceServer = [deviceCopy batteryServiceServer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72___GCSonyDualSenseControllerProfile_physicalDevice_getBatteryWithReply___block_invoke;
  v11[3] = &unk_1E841A410;
  v12 = deviceCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = deviceCopy;
  [batteryServiceServer readBatteryWithReply:v11];
}

+ (void)physicalDevice:(id)device setAdaptiveTriggersPayload:(id)payload forIndex:(int)index
{
  v5 = *&index;
  deviceCopy = device;
  payloadCopy = payload;
  if (gc_isInternalBuild(payloadCopy, v9))
  {
    [_GCSonyDualSenseControllerProfile physicalDevice:deviceCopy setAdaptiveTriggersPayload:? forIndex:?];
  }

  mode = [payloadCopy mode];
  unsignedLongValue = [mode unsignedLongValue];

  if (unsignedLongValue <= 1)
  {
    if (!unsignedLongValue)
    {
      adaptiveTriggersServiceServer = [deviceCopy adaptiveTriggersServiceServer];
      [adaptiveTriggersServiceServer setAdaptiveTriggerModeOffForIndex:v5];
LABEL_25:

      goto LABEL_26;
    }

    if (unsignedLongValue == 1)
    {
      strengths = [payloadCopy strengths];
      v35 = [strengths count];

      adaptiveTriggersServiceServer = [deviceCopy adaptiveTriggersServiceServer];
      if (v35 >= 2)
      {
        strengths2 = [payloadCopy strengths];
        [adaptiveTriggersServiceServer setAdaptiveTriggerModeFeedbackWithResistiveStrengths:strengths2 forIndex:v5];
LABEL_24:

        goto LABEL_25;
      }

      strengths2 = [payloadCopy startPosition];
      [strengths2 floatValue];
      v56 = v55;
      strengths3 = [payloadCopy strengths];
      firstObject = [strengths3 firstObject];
      [firstObject floatValue];
      LODWORD(v58) = v57;
      LODWORD(v59) = v56;
      [adaptiveTriggersServiceServer setAdaptiveTriggerModeFeedbackWithStartPosition:v5 resistiveStrength:v59 forIndex:v58];
      goto LABEL_22;
    }

LABEL_17:
    isInternalBuild = gc_isInternalBuild(v12, v13);
    if (isInternalBuild)
    {
      adaptiveTriggersServiceServer = getGCLogger(isInternalBuild);
      if (os_log_type_enabled(adaptiveTriggersServiceServer, OS_LOG_TYPE_ERROR))
      {
        [_GCSonyDualSenseControllerProfile physicalDevice:adaptiveTriggersServiceServer setAdaptiveTriggersPayload:? forIndex:?];
      }

      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (unsignedLongValue == 2)
  {
    adaptiveTriggersServiceServer = [deviceCopy adaptiveTriggersServiceServer];
    strengths2 = [payloadCopy startPosition];
    [strengths2 floatValue];
    v37 = v36;
    strengths3 = [payloadCopy endPosition];
    [strengths3 floatValue];
    v39 = v38;
    firstObject = [payloadCopy strengths];
    v23FirstObject = [firstObject firstObject];
    [v23FirstObject floatValue];
    LODWORD(v41) = v40;
    LODWORD(v42) = v37;
    LODWORD(v43) = v39;
    [adaptiveTriggersServiceServer setAdaptiveTriggerModeWeaponWithStartPosition:v5 endPosition:v42 resistiveStrength:v43 forIndex:v41];
    goto LABEL_21;
  }

  if (unsignedLongValue == 3)
  {
    amplitudes = [payloadCopy amplitudes];
    v45 = [amplitudes count];

    adaptiveTriggersServiceServer = [deviceCopy adaptiveTriggersServiceServer];
    if (v45 >= 2)
    {
      strengths2 = [payloadCopy amplitudes];
      strengths3 = [payloadCopy frequency];
      [strengths3 floatValue];
      [adaptiveTriggersServiceServer setAdaptiveTriggerModeVibrationWithAmplitudes:strengths2 frequency:v5 forIndex:?];
LABEL_23:

      goto LABEL_24;
    }

    strengths2 = [payloadCopy startPosition];
    [strengths2 floatValue];
    v48 = v47;
    strengths3 = [payloadCopy amplitudes];
    firstObject = [strengths3 firstObject];
    [firstObject floatValue];
    v50 = v49;
    v23FirstObject = [payloadCopy frequency];
    [v23FirstObject floatValue];
    LODWORD(v52) = v51;
    LODWORD(v53) = v48;
    LODWORD(v54) = v50;
    [adaptiveTriggersServiceServer setAdaptiveTriggerModeVibrationWithStartPosition:v5 amplitude:v53 frequency:v54 forIndex:v52];
    goto LABEL_21;
  }

  if (unsignedLongValue != 4)
  {
    goto LABEL_17;
  }

  strengths4 = [payloadCopy strengths];
  v15 = [strengths4 count];

  if (v15 == 2)
  {
    adaptiveTriggersServiceServer = [deviceCopy adaptiveTriggersServiceServer];
    strengths2 = [payloadCopy startPosition];
    [strengths2 floatValue];
    v19 = v18;
    strengths3 = [payloadCopy endPosition];
    [strengths3 floatValue];
    v22 = v21;
    firstObject = [payloadCopy strengths];
    v23FirstObject = [firstObject objectAtIndexedSubscript:0];
    [v23FirstObject floatValue];
    v26 = v25;
    strengths5 = [payloadCopy strengths];
    v28 = [strengths5 objectAtIndexedSubscript:1];
    [v28 floatValue];
    LODWORD(v30) = v29;
    LODWORD(v31) = v19;
    LODWORD(v32) = v22;
    LODWORD(v33) = v26;
    [adaptiveTriggersServiceServer setAdaptiveTriggerModeSlopeFeedbackWithStartPosition:v5 endPosition:v31 startStrength:v32 endStrength:v33 forIndex:v30];

LABEL_21:
LABEL_22:

    goto LABEL_23;
  }

LABEL_26:
}

+ (void)physicalDevice:(id)device getAdaptiveTriggersStatusesWithReply:(id)reply
{
  deviceCopy = device;
  replyCopy = reply;
  if (gc_isInternalBuild(replyCopy, v7))
  {
    [_GCSonyDualSenseControllerProfile physicalDevice:deviceCopy getAdaptiveTriggersStatusesWithReply:?];
  }

  adaptiveTriggersServiceServer = [deviceCopy adaptiveTriggersServiceServer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89___GCSonyDualSenseControllerProfile_physicalDevice_getAdaptiveTriggersStatusesWithReply___block_invoke;
  v11[3] = &unk_1E841A438;
  v12 = deviceCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = deviceCopy;
  [adaptiveTriggersServiceServer readAdaptiveTriggerStatusWithReply:v11];
}

+ (id)physicalDeviceGetHapticCapabilities:(id)capabilities
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [[GCHapticActuator alloc] initWithLabel:@"Low Band" type:0 index:0];
  v7[0] = v3;
  v4 = [[GCHapticActuator alloc] initWithLabel:@"High Band" type:0 index:1];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)physicalDeviceGetHapticCapabilityGraph:(id)graph
{
  v3 = objc_opt_class();
  v4 = loadNSDictionaryFromJSON(v3, @"DualShockHapticCapabilityGraph");
  v5 = [[GCHapticCapabilityGraph alloc] initWithJSONDictionaryRepresentation:v4];

  return v5;
}

+ (int64_t)physicalDeviceGetIndicatedPlayerIndex:(id)index
{
  serviceInfo = [index serviceInfo];
  v4 = IOHIDServiceClientCopyProperty([serviceInfo service], @"PlayerLights");

  v14 = 0;
  v13 = 0;
  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKey:@"LED"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count] >= 5 && objc_msgSend(v6, "count"))
    {
      v7 = 0;
      do
      {
        v8 = [v6 objectAtIndexedSubscript:v7];
        *(&v13 + v7) = [v8 BOOLValue];

        ++v7;
      }

      while ([v6 count] > v7);
    }
  }

  v9 = 0;
  v10 = &PlayerLightsConfig_0;
  while (v13 != *v10 || v14 != *(v10 + 4))
  {
    ++v9;
    v10 = (v10 + 5);
    if (v9 == 9)
    {
      v9 = -1;
      break;
    }
  }

  return v9;
}

+ (void)physicalDevice:(id)device setIndicatedPlayerIndex:(int64_t)index
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = index + 1;
  if ((index + 1) <= 8)
  {
    serviceInfo = [device serviceInfo];
    service = [serviceInfo service];
    v7 = (&PlayerLightsConfig_0 + 5 * v4);
    v8 = *(v7 + 4);
    v9 = *v7;
    v10 = v9 | (v8 << 32);
    v20 = @"LED";
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v9 & 1];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{(v10 >> 8) & 1, v11}];
    v19[1] = v12;
    v13 = [MEMORY[0x1E696AD98] numberWithBool:(v10 >> 16) & 1];
    v19[2] = v13;
    v14 = [MEMORY[0x1E696AD98] numberWithBool:(v10 >> 24) & 1];
    v19[3] = v14;
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v8 & 1];
    v19[4] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
    v21[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

    v18 = v17;
    IOHIDServiceClientSetProperty(service, @"PlayerLights", v17);
  }
}

+ (void)physicalDevice:(uint64_t)a1 getLightWithReply:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

+ (void)physicalDevice:(uint64_t)a1 getSensorsEnabledWithReply:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

+ (void)physicalDevice:(uint64_t)a1 getBatteryWithReply:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

+ (void)physicalDevice:(uint64_t)a1 setAdaptiveTriggersPayload:forIndex:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x1Cu);
  }
}

+ (void)physicalDevice:(uint64_t)a1 getAdaptiveTriggersStatusesWithReply:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

@end