@interface _GCNintendoProControllerProfile
+ (BOOL)logicalDevice:(id)device getSystemButtonName:(id *)name sfSymbolName:(id *)symbolName needsMFiCompatibility:(BOOL *)compatibility;
+ (id)logicalDevice:(id)device makeControllerInputDescriptionWithIdentifier:(id)identifier bindings:(id)bindings;
+ (id)logicalDevice:(id)device makeControllerMotionWithIdentifier:(id)identifier;
+ (id)logicalDevice:(id)device makeControllerPhysicalInputProfileWithIdentifier:(id)identifier;
+ (id)physicalDeviceGetHapticCapabilities:(id)capabilities;
+ (id)physicalDeviceGetHapticCapabilityGraph:(id)graph;
+ (void)physicalDevice:(id)device getSensorsEnabledWithReply:(id)reply;
+ (void)physicalDevice:(id)device setSensorsActive:(BOOL)active;
@end

@implementation _GCNintendoProControllerProfile

+ (id)physicalDeviceGetHapticCapabilities:(id)capabilities
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [[GCHapticActuator alloc] initWithLabel:@"Left Handle" type:1 index:0];
  v7[0] = v3;
  v4 = [[GCHapticActuator alloc] initWithLabel:@"Right Handle" type:1 index:1];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)physicalDeviceGetHapticCapabilityGraph:(id)graph
{
  v3 = objc_opt_class();
  v4 = loadNSDictionaryFromJSON(v3, @"ProControllerHapticCapabilityGraph");
  v5 = [[GCHapticCapabilityGraph alloc] initWithJSONDictionaryRepresentation:v4];

  return v5;
}

+ (void)physicalDevice:(id)device getSensorsEnabledWithReply:(id)reply
{
  replyCopy = reply;
  motionServiceServer = [device motionServiceServer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77___GCNintendoProControllerProfile_physicalDevice_getSensorsEnabledWithReply___block_invoke;
  v8[3] = &unk_1E8419550;
  v9 = replyCopy;
  v7 = replyCopy;
  [motionServiceServer readSensorsActiveWithReply:v8];
}

+ (void)physicalDevice:(id)device setSensorsActive:(BOOL)active
{
  activeCopy = active;
  motionServiceServer = [device motionServiceServer];
  [motionServiceServer updateSensorsActive:activeCopy];
}

+ (BOOL)logicalDevice:(id)device getSystemButtonName:(id *)name sfSymbolName:(id *)symbolName needsMFiCompatibility:(BOOL *)compatibility
{
  *name = *MEMORY[0x1E69A0540];
  *symbolName = @"house.circle";
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
  v21 = 1;
  v8 = [(GCExtendedGamepad *)[_GCNintendoSwitchGamepad alloc] initWithIdentifier:identifierCopy info:v11];
  for (j = 0; j != 1584; j += 72)
  {
    __destructor_8_s0_s48_s56_s64(v11 + j);
  }

  return v8;
}

+ (id)logicalDevice:(id)device makeControllerInputDescriptionWithIdentifier:(id)identifier bindings:(id)bindings
{
  v156[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69A0690];
  bindingsCopy = bindings;
  identifierCopy = identifier;
  v141 = [v6 descriptionWithIdentifier:@"button.home"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Home"];
  [v141 setAliases:v7];

  [v141 setLocalizedName:*MEMORY[0x1E69A0540]];
  v8 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"house.circle"];
  [v141 setSymbol:v8];

  [v141 setEventPressedValueField:22];
  v140 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.capture"];
  v9 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Share"];
  [v140 setAliases:v9];

  [v140 setLocalizedName:*MEMORY[0x1E69A03A0]];
  v10 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"circle.square"];
  [v140 setSymbol:v10];

  [v140 setEventPressedValueField:40];
  v139 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.plus"];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v139 setAliases:v11];

  [v139 setLocalizedName:*MEMORY[0x1E69A0550]];
  v12 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"plus.circle"];
  [v139 setSymbol:v12];

  [v139 setEventPressedValueField:23];
  v138 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.minus"];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Options"];
  [v138 setAliases:v13];

  [v138 setLocalizedName:*MEMORY[0x1E69A0558]];
  v14 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"minus.circle"];
  [v138 setSymbol:v14];

  [v138 setEventPressedValueField:24];
  v137 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.a"];
  v15 = [MEMORY[0x1E695DFD8] setWithObject:@"Button A"];
  [v137 setAliases:v15];

  [v137 setLocalizedName:*MEMORY[0x1E69A0530]];
  v16 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"a.circle"];
  [v137 setSymbol:v16];

  [v137 setEventPressedValueField:4];
  v136 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.b"];
  v17 = [MEMORY[0x1E695DFD8] setWithObject:@"Button B"];
  [v136 setAliases:v17];

  [v136 setLocalizedName:*MEMORY[0x1E69A0538]];
  v18 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"b.circle"];
  [v136 setSymbol:v18];

  [v136 setEventPressedValueField:5];
  v135 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.x"];
  v19 = [MEMORY[0x1E695DFD8] setWithObject:@"Button X"];
  [v135 setAliases:v19];

  [v135 setLocalizedName:*MEMORY[0x1E69A0568]];
  v20 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"x.circle"];
  [v135 setSymbol:v20];

  [v135 setEventPressedValueField:6];
  v134 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.y"];
  v21 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Y"];
  [v134 setAliases:v21];

  [v134 setLocalizedName:*MEMORY[0x1E69A0570]];
  v22 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"y.circle"];
  [v134 setSymbol:v22];

  [v134 setEventPressedValueField:7];
  v131 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l"];
  v23 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Shoulder"];
  [v131 setAliases:v23];

  [v131 setLocalizedName:*MEMORY[0x1E69A0580]];
  v24 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l1.rectangle.roundedbottom"];
  [v131 setSymbol:v24];

  [v131 setEventPressedValueField:8];
  v130 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r"];
  v25 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Shoulder"];
  [v130 setAliases:v25];

  [v130 setLocalizedName:*MEMORY[0x1E69A05C0]];
  v26 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r1.rectangle.roundedbottom"];
  [v130 setSymbol:v26];

  [v130 setEventPressedValueField:9];
  v129 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.zl"];
  v27 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Trigger"];
  [v129 setAliases:v27];

  [v129 setLocalizedName:*MEMORY[0x1E69A0590]];
  v28 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"zl.rectangle.roundedtop"];
  [v129 setSymbol:v28];

  [v129 setEventPressedValueField:18];
  v128 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.zr"];
  v29 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Trigger"];
  [v128 setAliases:v29];

  [v128 setLocalizedName:*MEMORY[0x1E69A05D0]];
  v30 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"zr.rectangle.roundedtop"];
  [v128 setSymbol:v30];

  [v128 setEventPressedValueField:19];
  v127 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"dpad"];
  v31 = [MEMORY[0x1E695DFD8] setWithObject:@"Direction Pad"];
  [v127 setAliases:v31];

  [v127 setLocalizedName:*MEMORY[0x1E69A0578]];
  v32 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"dpad"];
  [v127 setSymbol:v32];

  [v127 setAnalog:0];
  [v127 setEventUpValueField:0];
  [v127 setEventDownValueField:1];
  [v127 setEventLeftValueField:2];
  [v127 setEventRightValueField:3];
  v33 = [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.left"];
  v34 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Left Thumbstick", @"Left Thumbstick Button", 0}];
  [v33 setAliases:v34];

  [v33 setLocalizedName:*MEMORY[0x1E69A0588]];
  v35 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick"];
  [v33 setSymbol:v35];

  [v33 setAnalog:1];
  [v33 setEventUpValueField:10];
  [v33 setEventDownValueField:11];
  [v33 setEventLeftValueField:12];
  [v33 setEventRightValueField:13];
  [v33 setEventPressedValueField:20];
  v36 = MEMORY[0x1E69A06B8];
  v37 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName = [v33 localizedName];
  symbol = [v33 symbol];
  v40 = [v36 sourceWithElementAliases:v37 localizedName:localizedName symbol:symbol direction:10];
  v156[0] = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:1];
  [v33 setXSources:v41];

  v42 = MEMORY[0x1E69A06B8];
  v43 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName2 = [v33 localizedName];
  symbol2 = [v33 symbol];
  v46 = [v42 sourceWithElementAliases:v43 localizedName:localizedName2 symbol:symbol2 direction:5];
  v155 = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v155 count:1];
  [v33 setYSources:v47];

  v48 = MEMORY[0x1E69A06B8];
  v49 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName3 = [v33 localizedName];
  symbol3 = [v33 symbol];
  v52 = [v48 sourceWithElementAliases:v49 localizedName:localizedName3 symbol:symbol3 direction:1];
  v154 = v52;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v154 count:1];
  [v33 setUpSources:v53];

  v54 = MEMORY[0x1E69A06B8];
  v55 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName4 = [v33 localizedName];
  symbol4 = [v33 symbol];
  v58 = [v54 sourceWithElementAliases:v55 localizedName:localizedName4 symbol:symbol4 direction:2];
  v153 = v58;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v153 count:1];
  [v33 setRightSources:v59];

  v60 = MEMORY[0x1E69A06B8];
  v61 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName5 = [v33 localizedName];
  symbol5 = [v33 symbol];
  v64 = [v60 sourceWithElementAliases:v61 localizedName:localizedName5 symbol:symbol5 direction:4];
  v152 = v64;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v152 count:1];
  [v33 setDownSources:v65];

  v66 = MEMORY[0x1E69A06B8];
  v67 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName6 = [v33 localizedName];
  symbol6 = [v33 symbol];
  v70 = [v66 sourceWithElementAliases:v67 localizedName:localizedName6 symbol:symbol6 direction:8];
  v151 = v70;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v151 count:1];
  [v33 setLeftSources:v71];

  v72 = MEMORY[0x1E69A06B8];
  v73 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick Button"];
  v74 = *MEMORY[0x1E69A0548];
  v75 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick.press.down"];
  v76 = [v72 sourceWithElementAliases:v73 localizedName:v74 symbol:v75];
  v150 = v76;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
  [v33 setPressedSources:v77];

  v78 = [MEMORY[0x1E69A06A0] descriptionWithIdentifier:@"stick.right"];
  v79 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Right Thumbstick", @"Right Thumbstick Button", 0}];
  [v78 setAliases:v79];

  [v78 setLocalizedName:*MEMORY[0x1E69A05C8]];
  v80 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick"];
  [v78 setSymbol:v80];

  [v78 setAnalog:1];
  [v78 setEventUpValueField:14];
  [v78 setEventDownValueField:15];
  [v78 setEventLeftValueField:16];
  [v78 setEventRightValueField:17];
  [v78 setEventPressedValueField:21];
  v81 = MEMORY[0x1E69A06B8];
  v82 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName7 = [v78 localizedName];
  symbol7 = [v78 symbol];
  v85 = [v81 sourceWithElementAliases:v82 localizedName:localizedName7 symbol:symbol7 direction:10];
  v149 = v85;
  v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
  [v78 setXSources:v86];

  v87 = MEMORY[0x1E69A06B8];
  v88 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName8 = [v78 localizedName];
  symbol8 = [v78 symbol];
  v91 = [v87 sourceWithElementAliases:v88 localizedName:localizedName8 symbol:symbol8 direction:5];
  v148 = v91;
  v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
  [v78 setYSources:v92];

  v93 = MEMORY[0x1E69A06B8];
  v94 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName9 = [v78 localizedName];
  symbol9 = [v78 symbol];
  v97 = [v93 sourceWithElementAliases:v94 localizedName:localizedName9 symbol:symbol9 direction:1];
  v147 = v97;
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
  [v78 setUpSources:v98];

  v99 = MEMORY[0x1E69A06B8];
  v100 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName10 = [v78 localizedName];
  symbol10 = [v78 symbol];
  v103 = [v99 sourceWithElementAliases:v100 localizedName:localizedName10 symbol:symbol10 direction:2];
  v146 = v103;
  v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
  [v78 setRightSources:v104];

  v105 = MEMORY[0x1E69A06B8];
  v106 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName11 = [v78 localizedName];
  symbol11 = [v78 symbol];
  v109 = [v105 sourceWithElementAliases:v106 localizedName:localizedName11 symbol:symbol11 direction:4];
  v145 = v109;
  v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];
  [v78 setDownSources:v110];

  v111 = MEMORY[0x1E69A06B8];
  v112 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName12 = [v78 localizedName];
  symbol12 = [v78 symbol];
  v115 = [v111 sourceWithElementAliases:v112 localizedName:localizedName12 symbol:symbol12 direction:8];
  v144 = v115;
  v116 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v144 count:1];
  [v78 setLeftSources:v116];

  v117 = MEMORY[0x1E69A06B8];
  v118 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick Button"];
  v119 = *MEMORY[0x1E69A0560];
  v120 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick.press.down"];
  v121 = [v117 sourceWithElementAliases:v118 localizedName:v119 symbol:v120];
  v143 = v121;
  v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v143 count:1];
  [v78 setPressedSources:v122];

  v123 = objc_opt_new();
  v142[0] = v141;
  v142[1] = v140;
  v142[2] = v139;
  v142[3] = v138;
  v142[4] = v137;
  v142[5] = v136;
  v142[6] = v135;
  v142[7] = v134;
  v142[8] = v131;
  v142[9] = v130;
  v142[10] = v129;
  v142[11] = v128;
  v142[12] = v127;
  v142[13] = v33;
  v142[14] = v78;
  v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:15];
  [v123 setElements:v124];

  v126 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:identifierCopy controllerInputs:v123 bindings:bindingsCopy];

  return v126;
}

+ (id)logicalDevice:(id)device makeControllerMotionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[GCMotion alloc] initWithIdentifier:identifierCopy];

  [(GCMotion *)v5 _setHasRotationRate:1];
  [(GCMotion *)v5 _setHasAttitude:0];

  return v5;
}

@end