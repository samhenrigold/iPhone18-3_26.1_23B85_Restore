@interface _GCSonyPSVR2SenseControllerProfile
+ (BOOL)device:(id)device fuseWithDevice:(id *)withDevice forClient:(id)client;
+ (BOOL)logicalDevice:(id)device getSystemButtonName:(id *)name sfSymbolName:(id *)symbolName needsMFiCompatibility:(BOOL *)compatibility;
+ (BOOL)logicalDevice:(id)device shouldMakeControllerForClient:(id)client;
+ (_GCPhysicalDeviceManager)deviceManager;
+ (id)logicalDevice:(id)device makeControllerInputDescriptionWithIdentifier:(id)identifier bindings:(id)bindings forClient:(id)client;
+ (id)logicalDevice:(id)device makeControllerMotionWithIdentifier:(id)identifier;
+ (id)logicalDevice:(id)device makeControllerPhysicalInputProfileDescriptionWithIdentifier:(id)identifier bindings:(id)bindings forClient:(id)client;
+ (id)logicalDevice:(id)device makeControllerSpatialDescriptionWithIdentifier:(id)identifier forClient:(id)client;
+ (id)logicalDeviceControllerProductCategory:(id)category forClient:(id)client;
+ (id)logicalDeviceControllerVendorName:(id)name forClient:(id)client;
+ (id)physicalDeviceGetHapticCapabilities:(id)capabilities;
+ (id)physicalDeviceGetHapticCapabilityGraph:(id)graph;
+ (void)deviceManager:(id)manager willPublishPhysicalDevice:(id)device;
+ (void)physicalDevice:(id)device getBatteryWithReply:(id)reply;
+ (void)physicalDevice:(id)device getSensorsEnabledWithReply:(id)reply;
+ (void)physicalDevice:(id)device setSensorsActive:(BOOL)active;
@end

@implementation _GCSonyPSVR2SenseControllerProfile

+ (_GCPhysicalDeviceManager)deviceManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___GCSonyPSVR2SenseControllerProfile_deviceManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (deviceManager_onceToken != -1)
  {
    dispatch_once(&deviceManager_onceToken, block);
  }

  v2 = deviceManager_deviceManager;

  return v2;
}

+ (void)deviceManager:(id)manager willPublishPhysicalDevice:(id)device
{
  [device setDelegate:self];
  v4 = GCLookupService();
  [v4 setHasPairedSpatialController:1];
}

+ (void)physicalDevice:(id)device getSensorsEnabledWithReply:(id)reply
{
  replyCopy = reply;
  motionServiceServer = [device motionServiceServer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80___GCSonyPSVR2SenseControllerProfile_physicalDevice_getSensorsEnabledWithReply___block_invoke;
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

+ (BOOL)device:(id)device fuseWithDevice:(id *)withDevice forClient:(id)client
{
  v33 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  configuration = [client configuration];
  if (([configuration spatialGamepadSupported] & 1) == 0)
  {
    v10 = [deviceCopy propertyForKey:@"PSVR2DeviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [v10 UTF8String];
      if (uTF8String)
      {
        v12 = uTF8String;
        if (strcmp(uTF8String, "Unknown"))
        {
          if (!strcmp(v12, "Sense Left"))
          {
            *withDevice = 0;
            v9 = 1;
            goto LABEL_9;
          }

          if (!strcmp(v12, "Sense Right"))
          {
            v14 = +[_GCControllerManagerServer sharedInstance];
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            physicalDevices = [v14 physicalDevices];
            allValues = [physicalDevices allValues];

            v17 = [allValues countByEnumeratingWithState:&v28 objects:v32 count:16];
            if (v17)
            {
              v18 = v17;
              withDeviceCopy = withDevice;
              v27 = v14;
              v19 = *v29;
              while (2)
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v29 != v19)
                  {
                    objc_enumerationMutation(allValues);
                  }

                  v21 = *(*(&v28 + 1) + 8 * i);
                  v22 = [v21 propertyForKey:@"PSVR2DeviceType"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    uTF8String2 = [v22 UTF8String];
                    if (uTF8String2)
                    {
                      v24 = uTF8String2;
                      if (strcmp(uTF8String2, "Unknown"))
                      {
                        if (!strcmp(v24, "Sense Left"))
                        {
                          v25 = v21;
                          *withDeviceCopy = v21;

                          v9 = 1;
                          goto LABEL_25;
                        }
                      }
                    }
                  }
                }

                v18 = [allValues countByEnumeratingWithState:&v28 objects:v32 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }

              v9 = 0;
LABEL_25:
              v14 = v27;
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_9;
          }
        }
      }
    }

    v9 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

+ (BOOL)logicalDevice:(id)device shouldMakeControllerForClient:(id)client
{
  v6 = 0;
  v4 = [self device:device fuseWithDevice:&v6 forClient:client] ^ 1;
  if (v6)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

+ (id)logicalDeviceControllerProductCategory:(id)category forClient:(id)client
{
  categoryCopy = category;
  clientCopy = client;
  v16 = 0;
  if ([self device:categoryCopy fuseWithDevice:&v16 forClient:clientCopy] && v16)
  {
    v8 = @"MFi";
    goto LABEL_14;
  }

  configuration = [clientCopy configuration];
  v10 = configuration;
  if (!configuration || ![configuration spatialGamepadProductCategoryIncludesChirality])
  {
    goto LABEL_12;
  }

  v11 = [categoryCopy propertyForKey:@"PSVR2DeviceType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String = [v11 UTF8String];
    if (uTF8String)
    {
      v13 = uTF8String;
      if (strcmp(uTF8String, "Unknown"))
      {
        if (!strcmp(v13, "Sense Left"))
        {
          v15 = GCProductCategoryLeftSpatialController;
        }

        else
        {
          if (strcmp(v13, "Sense Right"))
          {
            goto LABEL_11;
          }

          v15 = GCProductCategoryRightSpatialController;
        }

        v8 = *v15;

        goto LABEL_13;
      }
    }
  }

LABEL_11:

LABEL_12:
  v8 = [self logicalDeviceControllerProductCategory:categoryCopy];
LABEL_13:

LABEL_14:

  return v8;
}

+ (id)logicalDeviceControllerVendorName:(id)name forClient:(id)client
{
  nameCopy = name;
  v10 = 0;
  if ([self device:nameCopy fuseWithDevice:&v10 forClient:client] && v10)
  {
    v7 = @"PlayStation VR2 Sense Controllers (L/R)";
  }

  else
  {
    v8 = objc_msgSend_underlyingDevice(nameCopy);
    v7 = [v8 propertyForKey:@"Product"];
  }

  return v7;
}

+ (BOOL)logicalDevice:(id)device getSystemButtonName:(id *)name sfSymbolName:(id *)symbolName needsMFiCompatibility:(BOOL *)compatibility
{
  *name = *MEMORY[0x1E69A0400];
  *symbolName = @"logo.playstation";
  return 1;
}

+ (id)logicalDevice:(id)device makeControllerPhysicalInputProfileDescriptionWithIdentifier:(id)identifier bindings:(id)bindings forClient:(id)client
{
  v123[1] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  identifierCopy = identifier;
  bindingsCopy = bindings;
  clientCopy = client;
  v118 = 0;
  LODWORD(bindings) = [self device:deviceCopy fuseWithDevice:&v118 forClient:clientCopy];
  v115 = v118;
  bindingsCopy2 = bindings;
  v112 = deviceCopy;
  v104 = clientCopy;
  v105 = identifierCopy;
  if (bindings)
  {
    spatialGamepadProductCategoryIncludesChirality = 1;
  }

  else
  {
    configuration = [clientCopy configuration];
    spatialGamepadProductCategoryIncludesChirality = [configuration spatialGamepadProductCategoryIncludesChirality];
  }

  v15 = [GCDeviceButtonInputDescription alloc];
  v16 = [*MEMORY[0x1E69A03F0] key];
  v109 = [(GCDeviceButtonInputDescription *)v15 initWithName:@"Button A" additionalAliases:0 attributes:2 nameLocalizationKey:v16 symbolName:@"xmark.circle" sourceAttributes:1 sourceExtendedEventField:4];

  v17 = [GCDeviceButtonInputDescription alloc];
  v18 = [*MEMORY[0x1E69A03F8] key];
  v113 = [(GCDeviceButtonInputDescription *)v17 initWithName:@"Button B" additionalAliases:0 attributes:2 nameLocalizationKey:v18 symbolName:@"circle.circle" sourceAttributes:1 sourceExtendedEventField:5];

  v19 = [GCDeviceButtonInputDescription alloc];
  v20 = [*MEMORY[0x1E69A0428] key];
  v21 = (spatialGamepadProductCategoryIncludesChirality & 1) == 0;
  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v22 = @"Button X";
  }

  else
  {
    v22 = @"Button A";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v23 = @"Button Y";
  }

  else
  {
    v23 = @"Button B";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v24 = @"Left Shoulder";
  }

  else
  {
    v24 = @"Grip";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v25 = @"Right Shoulder";
  }

  else
  {
    v25 = @"Grip";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v26 = @"Left Trigger";
  }

  else
  {
    v26 = @"Trigger";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v27 = @"Right Trigger";
  }

  else
  {
    v27 = @"Trigger";
  }

  if (v21)
  {
    v28 = @"Thumbstick";
  }

  else
  {
    v28 = @"Left Thumbstick";
  }

  if (v21)
  {
    v29 = @"Thumbstick Button";
  }

  else
  {
    v29 = @"Left Thumbstick Button";
  }

  v30 = @"Right Thumbstick";
  if (v21)
  {
    v30 = @"Thumbstick";
  }

  v96 = v30;
  v31 = @"Right Thumbstick Button";
  if (v21)
  {
    v31 = @"Thumbstick Button";
  }

  v106 = v31;
  v111 = [(GCDeviceButtonInputDescription *)v19 initWithName:v22 additionalAliases:0 attributes:2 nameLocalizationKey:v20 symbolName:@"square.circle" sourceAttributes:1 sourceExtendedEventField:6];

  v32 = [GCDeviceButtonInputDescription alloc];
  v33 = [*MEMORY[0x1E69A0430] key];
  v108 = [(GCDeviceButtonInputDescription *)v32 initWithName:v23 additionalAliases:0 attributes:2 nameLocalizationKey:v33 symbolName:@"triangle.circle" sourceAttributes:1 sourceExtendedEventField:7];

  v34 = [GCDeviceButtonInputDescription alloc];
  v35 = [*MEMORY[0x1E69A0440] key];
  v36 = [(GCDeviceButtonInputDescription *)v34 initWithName:v24 additionalAliases:0 attributes:2 nameLocalizationKey:v35 symbolName:@"l1.rectangle.roundedbottom" sourceAttributes:1 sourceExtendedEventField:8];

  v37 = [GCDeviceButtonInputDescription alloc];
  v38 = [*MEMORY[0x1E69A0458] key];
  v103 = [(GCDeviceButtonInputDescription *)v37 initWithName:v25 additionalAliases:0 attributes:2 nameLocalizationKey:v38 symbolName:@"r1.rectangle.roundedbottom" sourceAttributes:1 sourceExtendedEventField:9];

  v39 = [GCDeviceButtonInputDescription alloc];
  v40 = [*MEMORY[0x1E69A0450] key];
  v110 = [(GCDeviceButtonInputDescription *)v39 initWithName:v26 additionalAliases:0 attributes:2 nameLocalizationKey:v40 symbolName:@"l2.rectangle.roundedtop" sourceAttributes:0 sourceExtendedEventField:18];

  v41 = [GCDeviceButtonInputDescription alloc];
  v42 = [*MEMORY[0x1E69A0468] key];
  v43 = [(GCDeviceButtonInputDescription *)v41 initWithName:v27 additionalAliases:0 attributes:2 nameLocalizationKey:v42 symbolName:@"r2.rectangle.roundedtop" sourceAttributes:0 sourceExtendedEventField:19];

  v99 = [[GCDeviceDirectionPadDescription alloc] initWithName:@"Direction Pad" additionalAliases:0 attributes:2 nameLocalizationKey:@"DIRECTION_PAD" symbolName:@"dpad" sourceAttributes:1 sourceUpExtendedEventField:0 sourceDownExtendedEventField:1 sourceLeftExtendedEventField:2 sourceRightExtendedEventField:3];
  v44 = [GCDeviceDirectionPadDescription alloc];
  v45 = [*MEMORY[0x1E69A0448] key];
  v98 = [(GCDeviceDirectionPadDescription *)v44 initWithName:v28 additionalAliases:0 attributes:2 nameLocalizationKey:v45 symbolName:@"l.joystick" sourceAttributes:0 sourceUpExtendedEventField:10 sourceDownExtendedEventField:11 sourceLeftExtendedEventField:12 sourceRightExtendedEventField:13];

  v46 = [GCDeviceButtonInputDescription alloc];
  v47 = [*MEMORY[0x1E69A0408] key];
  v102 = [(GCDeviceButtonInputDescription *)v46 initWithName:v29 additionalAliases:0 attributes:2 nameLocalizationKey:v47 symbolName:@"l.joystick.press.down" sourceAttributes:0 sourceExtendedEventField:20];

  v48 = [GCDeviceDirectionPadDescription alloc];
  v49 = [*MEMORY[0x1E69A0460] key];
  v50 = [(GCDeviceDirectionPadDescription *)v48 initWithName:v96 additionalAliases:0 attributes:2 nameLocalizationKey:v49 symbolName:@"r.joystick" sourceAttributes:0 sourceUpExtendedEventField:14 sourceDownExtendedEventField:15 sourceLeftExtendedEventField:16 sourceRightExtendedEventField:17];

  v51 = [GCDeviceButtonInputDescription alloc];
  v52 = [*MEMORY[0x1E69A0420] key];
  v53 = [(GCDeviceButtonInputDescription *)v51 initWithName:v106 additionalAliases:0 attributes:2 nameLocalizationKey:v52 symbolName:@"r.joystick.press.down" sourceAttributes:0 sourceExtendedEventField:21];

  v54 = [GCDeviceButtonInputDescription alloc];
  v55 = [*MEMORY[0x1E69A0470] key];
  v56 = [(GCDeviceButtonInputDescription *)v54 initWithName:@"Button Menu" additionalAliases:0 attributes:0x4000 nameLocalizationKey:v55 symbolName:@"capsule.portrait" sourceAttributes:1 sourceExtendedEventField:23];

  if (v115)
  {
    v57 = bindingsCopy2;
  }

  else
  {
    v57 = 0;
  }

  v114 = v36;
  v107 = v53;
  v95 = v43;
  v97 = v50;
  v94 = v56;
  if (v57 == 1)
  {
    firstObject = [bindingsCopy firstObject];
    gamepadEventSource = [v115 gamepadEventSource];
    v58 = [[_GCGamepadEventFusionConfig alloc] initWithSourceCount:2];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:6 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:7 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:10 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:11 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:12 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:13 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:8 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:18 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:20 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:4 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:5 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:14 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:15 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:16 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:17 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:9 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:19 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:21 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:22 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v58 setPassRule:1 forElement:23 forSourceAtIndex:0];
    v59 = [_GCGamepadEventFusionDescription alloc];
    v122[0] = firstObject;
    v122[1] = gamepadEventSource;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:2];
    v61 = v43;
    v62 = v53;
    v63 = v61;
    v64 = v60;
    v65 = [(_GCGamepadEventFusionDescription *)v59 initWithConfiguration:v58 sources:v60];
    v123[0] = v65;
    v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:1];

    v117 = [_GCDeviceExtendedGamepadComponentDescription alloc];
    v121[0] = v56;
    v121[1] = v111;
    v121[2] = v108;
    v121[3] = v109;
    v121[4] = v113;
    v121[5] = v36;
    v66 = v103;
    v121[6] = v110;
    v121[7] = v103;
    v67 = v98;
    v68 = v99;
    v121[8] = v63;
    v121[9] = v98;
    v121[10] = v102;
    v121[11] = v50;
    v121[12] = v62;
    v121[13] = v99;
    v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:14];
    v101 = [(_GCDevicePhysicalInputComponentDescription *)v117 initWithIdentifier:v105 elements:v69 bindings:v91];

    v70 = v115;
    v71 = firstObject;
    bindingsCopy = v91;
    v72 = v102;
    v73 = v105;
    v74 = v108;
    v76 = v110;
    v75 = v111;
    v77 = v109;
    goto LABEL_47;
  }

  v75 = v111;
  v78 = [v112 propertyForKey:@"PSVR2DeviceType"];
  objc_opt_class();
  v79 = v78;
  v73 = v105;
  v77 = v109;
  v67 = v98;
  v68 = v99;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_44;
  }

  uTF8String = [v78 UTF8String];
  if (!uTF8String)
  {
    goto LABEL_44;
  }

  v81 = uTF8String;
  if (!strcmp(uTF8String, "Unknown"))
  {
    goto LABEL_44;
  }

  if (!strcmp(v81, "Sense Left"))
  {
    v84 = [_GCDevicePhysicalInputComponentDescription alloc];
    v120[0] = v56;
    v120[1] = v111;
    v120[2] = v108;
    v120[3] = v114;
    v120[4] = v110;
    v120[5] = v98;
    v120[6] = v102;
    v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:7];
    v86 = v84;
    v76 = v110;
    v72 = v102;
    v101 = [(_GCDevicePhysicalInputComponentDescription *)v86 initWithIdentifier:v105 elements:v85 bindings:bindingsCopy];

    v67 = v98;
    v74 = v108;
    v77 = v109;
    v66 = v103;
    goto LABEL_46;
  }

  if (!strcmp(v81, "Sense Right"))
  {
    v87 = [_GCDevicePhysicalInputComponentDescription alloc];
    v88 = v50;
    v89 = v87;
    v119[0] = v56;
    v119[1] = v109;
    v66 = v103;
    v119[2] = v113;
    v119[3] = v103;
    v119[4] = v43;
    v119[5] = v88;
    v119[6] = v107;
    v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:7];
    v76 = v110;
    v101 = [(_GCDevicePhysicalInputComponentDescription *)v89 initWithIdentifier:v105 elements:v90 bindings:bindingsCopy];

    v67 = v98;
    v74 = v108;
    v77 = v109;
  }

  else
  {
LABEL_44:
    v82 = [_GCDevicePhysicalInputComponentDescription alloc];
    v76 = v110;
    v101 = [(_GCDevicePhysicalInputComponentDescription *)v82 initWithIdentifier:v105 elements:MEMORY[0x1E695E0F0] bindings:bindingsCopy];
    v74 = v108;
    v66 = v103;
  }

  v72 = v102;
LABEL_46:
  v71 = v79;
  v70 = v115;
LABEL_47:

  return v101;
}

+ (id)logicalDevice:(id)device makeControllerInputDescriptionWithIdentifier:(id)identifier bindings:(id)bindings forClient:(id)client
{
  v219[1] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  bindingsCopy = bindings;
  clientCopy = client;
  v198 = 0;
  identifierCopy = identifier;
  v180 = [self device:deviceCopy fuseWithDevice:&v198 forClient:clientCopy];
  v185 = clientCopy;
  v186 = deviceCopy;
  v184 = v198;
  if (v180)
  {
    spatialGamepadProductCategoryIncludesChirality = 1;
  }

  else
  {
    configuration = [clientCopy configuration];
    spatialGamepadProductCategoryIncludesChirality = [configuration spatialGamepadProductCategoryIncludesChirality];
  }

  v14 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.options"];
  v15 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v14 setAliases:v15];

  v16 = *MEMORY[0x1E69A0470];
  [v14 setLocalizedName:*MEMORY[0x1E69A0470]];
  v17 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"capsule.portrait"];
  [v14 setSymbol:v17];

  v183 = v14;
  [v14 setEventPressedValueField:23];
  v18 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.create"];
  v19 = [MEMORY[0x1E695DFD8] setWithObject:@"Button Menu"];
  [v18 setAliases:v19];

  [v18 setLocalizedName:v16];
  v20 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"capsule.portrait"];
  [v18 setSymbol:v20];

  v187 = v18;
  [v18 setEventPressedValueField:23];
  v21 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.xmark"];
  [v21 setSupportsTouch:1];
  v22 = [MEMORY[0x1E695DFD8] setWithObject:@"Button A"];
  [v21 setAliases:v22];

  [v21 setLocalizedName:*MEMORY[0x1E69A03F0]];
  v23 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"xmark.circle"];
  [v21 setSymbol:v23];

  [v21 setEventPressedValueField:4];
  [v21 setEventTouchValueField:26];
  v24 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.circle"];
  [v21 setSupportsTouch:1];
  v25 = [MEMORY[0x1E695DFD8] setWithObject:@"Button B"];
  [v24 setAliases:v25];

  [v24 setLocalizedName:*MEMORY[0x1E69A03F8]];
  v26 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"circle.circle"];
  [v24 setSymbol:v26];

  [v24 setEventPressedValueField:5];
  v192 = v24;
  [v24 setEventTouchValueField:28];
  v27 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.square"];
  [v21 setSupportsTouch:1];
  v177 = spatialGamepadProductCategoryIncludesChirality & 1;
  v178 = spatialGamepadProductCategoryIncludesChirality;
  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v28 = @"Button X";
  }

  else
  {
    v28 = @"Button A";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v29 = @"Button Y";
  }

  else
  {
    v29 = @"Button B";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v30 = @"Left Shoulder";
  }

  else
  {
    v30 = @"Grip";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v31 = @"Right Shoulder";
  }

  else
  {
    v31 = @"Grip";
  }

  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v32 = @"Left Trigger";
  }

  else
  {
    v32 = @"Trigger";
  }

  v33 = @"Right Trigger";
  if ((spatialGamepadProductCategoryIncludesChirality & 1) == 0)
  {
    v33 = @"Trigger";
  }

  v189 = v33;
  v34 = [MEMORY[0x1E695DFD8] setWithObject:v28];
  [v27 setAliases:v34];

  [v27 setLocalizedName:*MEMORY[0x1E69A0428]];
  v35 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"square.circle"];
  [v27 setSymbol:v35];

  [v27 setEventPressedValueField:6];
  v197 = v27;
  [v27 setEventTouchValueField:25];
  v36 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.triangle"];
  [v21 setSupportsTouch:1];
  v37 = [MEMORY[0x1E695DFD8] setWithObject:v29];
  [v36 setAliases:v37];

  [v36 setLocalizedName:*MEMORY[0x1E69A0430]];
  v38 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"triangle.circle"];
  [v36 setSymbol:v38];

  [v36 setEventPressedValueField:7];
  v196 = v36;
  [v36 setEventTouchValueField:27];
  v39 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l1"];
  [v21 setSupportsTouch:1];
  v40 = [MEMORY[0x1E695DFD8] setWithObject:v30];
  [v39 setAliases:v40];

  [v39 setLocalizedName:*MEMORY[0x1E69A0440]];
  v41 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l1.rectangle.roundedbottom"];
  [v39 setSymbol:v41];

  [v39 setEventPressedValueField:8];
  v195 = v39;
  [v39 setEventTouchValueField:29];
  v42 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r1"];
  [v21 setSupportsTouch:1];
  v43 = [MEMORY[0x1E695DFD8] setWithObject:v31];
  [v42 setAliases:v43];

  [v42 setLocalizedName:*MEMORY[0x1E69A0458]];
  v44 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r1.rectangle.roundedbottom"];
  [v42 setSymbol:v44];

  [v42 setEventPressedValueField:9];
  v191 = v42;
  [v42 setEventTouchValueField:30];
  v45 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.l2"];
  [v21 setSupportsTouch:1];
  v46 = [MEMORY[0x1E695DFD8] setWithObject:v32];
  [v45 setAliases:v46];

  [v45 setLocalizedName:*MEMORY[0x1E69A0450]];
  v47 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l2.rectangle.roundedtop"];
  [v45 setSymbol:v47];

  [v45 setAnalog:1];
  [v45 setEventPressedValueField:18];
  v194 = v45;
  [v45 setEventTouchValueField:31];
  v48 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:@"button.r2"];
  v193 = v21;
  [v21 setSupportsTouch:1];
  v49 = [MEMORY[0x1E695DFD8] setWithObject:v189];
  [v48 setAliases:v49];

  [v48 setLocalizedName:*MEMORY[0x1E69A0468]];
  v50 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r2.rectangle.roundedtop"];
  [v48 setSymbol:v50];

  [v48 setAnalog:1];
  [v48 setEventPressedValueField:19];
  v190 = v48;
  [v48 setEventTouchValueField:32];
  v51 = [MEMORY[0x1E69A0698] descriptionWithIdentifier:@"stick.left"];
  if (v177)
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"Left Thumbstick", @"Left Thumbstick Button", 0}];
  }

  else
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"Thumbstick", @"Thumbstick Button", 0}];
  }
  v52 = ;
  [v51 setAliases:v52];

  [v51 setLocalizedName:*MEMORY[0x1E69A0448]];
  v53 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick"];
  [v51 setSymbol:v53];

  [v51 setAnalog:1];
  [v51 setEventUpValueField:10];
  [v51 setEventDownValueField:11];
  [v51 setEventLeftValueField:12];
  [v51 setEventRightValueField:13];
  [v51 setEventPressedValueField:20];
  [v51 setEventTouchedValueField:33];
  v54 = MEMORY[0x1E69A06B8];
  v55 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName = [v51 localizedName];
  symbol = [v51 symbol];
  v58 = [v54 sourceWithElementAliases:v55 localizedName:localizedName symbol:symbol direction:10];
  v219[0] = v58;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v219 count:1];
  [v51 setXSources:v59];

  v60 = MEMORY[0x1E69A06B8];
  v61 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName2 = [v51 localizedName];
  symbol2 = [v51 symbol];
  v64 = [v60 sourceWithElementAliases:v61 localizedName:localizedName2 symbol:symbol2 direction:5];
  v218 = v64;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v218 count:1];
  [v51 setYSources:v65];

  v66 = MEMORY[0x1E69A06B8];
  v67 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName3 = [v51 localizedName];
  symbol3 = [v51 symbol];
  v70 = [v66 sourceWithElementAliases:v67 localizedName:localizedName3 symbol:symbol3 direction:1];
  v217 = v70;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v217 count:1];
  [v51 setUpSources:v71];

  v72 = MEMORY[0x1E69A06B8];
  v73 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName4 = [v51 localizedName];
  symbol4 = [v51 symbol];
  v76 = [v72 sourceWithElementAliases:v73 localizedName:localizedName4 symbol:symbol4 direction:2];
  v216 = v76;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v216 count:1];
  [v51 setRightSources:v77];

  v78 = MEMORY[0x1E69A06B8];
  v79 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName5 = [v51 localizedName];
  symbol5 = [v51 symbol];
  v82 = [v78 sourceWithElementAliases:v79 localizedName:localizedName5 symbol:symbol5 direction:4];
  v215 = v82;
  v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v215 count:1];
  [v51 setDownSources:v83];

  v84 = MEMORY[0x1E69A06B8];
  v85 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick"];
  localizedName6 = [v51 localizedName];
  symbol6 = [v51 symbol];
  v88 = [v84 sourceWithElementAliases:v85 localizedName:localizedName6 symbol:symbol6 direction:8];
  v214 = v88;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v214 count:1];
  [v51 setLeftSources:v89];

  v90 = MEMORY[0x1E69A06B8];
  v91 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick Button"];
  v92 = *MEMORY[0x1E69A0408];
  v93 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick.press.down"];
  v94 = [v90 sourceWithElementAliases:v91 localizedName:v92 symbol:v93];
  v213 = v94;
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v213 count:1];
  [v51 setPressedSources:v95];

  v96 = MEMORY[0x1E69A06B8];
  v97 = [MEMORY[0x1E695DFD8] setWithObject:@"Left Thumbstick Button"];
  v98 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"l.joystick.press.down"];
  v99 = [v96 sourceWithElementAliases:v97 localizedName:v92 symbol:v98];
  v212 = v99;
  v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v212 count:1];
  [v51 setTouchedSources:v100];

  v101 = [MEMORY[0x1E69A0698] descriptionWithIdentifier:@"stick.right"];
  if (v178)
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"Right Thumbstick", @"Right Thumbstick Button", 0}];
  }

  else
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"Thumbstick", @"Thumbstick Button", 0}];
  }
  v102 = ;
  [v101 setAliases:v102];

  [v101 setLocalizedName:*MEMORY[0x1E69A0460]];
  v103 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick"];
  [v101 setSymbol:v103];

  [v101 setAnalog:1];
  [v101 setEventUpValueField:14];
  [v101 setEventDownValueField:15];
  [v101 setEventLeftValueField:16];
  [v101 setEventRightValueField:17];
  [v101 setEventPressedValueField:21];
  [v101 setEventTouchedValueField:34];
  v104 = MEMORY[0x1E69A06B8];
  v105 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName7 = [v101 localizedName];
  symbol7 = [v101 symbol];
  v108 = [v104 sourceWithElementAliases:v105 localizedName:localizedName7 symbol:symbol7 direction:10];
  v211 = v108;
  v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v211 count:1];
  [v101 setXSources:v109];

  v110 = MEMORY[0x1E69A06B8];
  v111 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName8 = [v101 localizedName];
  symbol8 = [v101 symbol];
  v114 = [v110 sourceWithElementAliases:v111 localizedName:localizedName8 symbol:symbol8 direction:5];
  v210 = v114;
  v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v210 count:1];
  [v101 setYSources:v115];

  v116 = MEMORY[0x1E69A06B8];
  v117 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName9 = [v101 localizedName];
  symbol9 = [v101 symbol];
  v120 = [v116 sourceWithElementAliases:v117 localizedName:localizedName9 symbol:symbol9 direction:1];
  v209 = v120;
  v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v209 count:1];
  [v101 setUpSources:v121];

  v122 = MEMORY[0x1E69A06B8];
  v123 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName10 = [v101 localizedName];
  symbol10 = [v101 symbol];
  v126 = [v122 sourceWithElementAliases:v123 localizedName:localizedName10 symbol:symbol10 direction:2];
  v208 = v126;
  v127 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v208 count:1];
  [v101 setRightSources:v127];

  v128 = MEMORY[0x1E69A06B8];
  v129 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName11 = [v101 localizedName];
  symbol11 = [v101 symbol];
  v132 = [v128 sourceWithElementAliases:v129 localizedName:localizedName11 symbol:symbol11 direction:4];
  v207 = v132;
  v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v207 count:1];
  [v101 setDownSources:v133];

  v134 = MEMORY[0x1E69A06B8];
  v135 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick"];
  localizedName12 = [v101 localizedName];
  symbol12 = [v101 symbol];
  v138 = [v134 sourceWithElementAliases:v135 localizedName:localizedName12 symbol:symbol12 direction:8];
  v206 = v138;
  v139 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v206 count:1];
  [v101 setLeftSources:v139];

  v140 = MEMORY[0x1E69A06B8];
  v141 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick Button"];
  v142 = *MEMORY[0x1E69A0420];
  v143 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick.press.down"];
  v144 = [v140 sourceWithElementAliases:v141 localizedName:v142 symbol:v143];
  v205 = v144;
  v145 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v205 count:1];
  [v101 setPressedSources:v145];

  v146 = MEMORY[0x1E69A06B8];
  v147 = [MEMORY[0x1E695DFD8] setWithObject:@"Right Thumbstick Button"];
  v148 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"r.joystick.press.down"];
  v149 = [v146 sourceWithElementAliases:v147 localizedName:v142 symbol:v148];
  v204 = v149;
  v150 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v204 count:1];
  [v101 setTouchedSources:v150];

  v151 = [MEMORY[0x1E69A06A8] descriptionWithIdentifier:@"dpad"];
  v152 = [MEMORY[0x1E695DFD8] setWithObject:@"Direction Pad"];
  [v151 setAliases:v152];

  [v151 setLocalizedName:*MEMORY[0x1E69A03B8]];
  v153 = [MEMORY[0x1E69A06C0] symbolWithSFSymbolsName:@"dpad"];
  [v151 setSymbol:v153];

  [v151 setAnalog:0];
  [v151 setEventUpValueField:0];
  [v151 setEventDownValueField:1];
  [v151 setEventLeftValueField:2];
  [v151 setEventRightValueField:3];
  v154 = objc_opt_new();
  if (v184)
  {
    v155 = v180;
  }

  else
  {
    v155 = 0;
  }

  if (v155 == 1)
  {
    firstObject = [bindingsCopy firstObject];
    gamepadEventSource = [v184 gamepadEventSource];
    v156 = [[_GCGamepadEventFusionConfig alloc] initWithSourceCount:2];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:6 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:7 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:10 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:11 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:12 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:13 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:8 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:18 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:20 forSourceAtIndex:1];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:4 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:5 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:14 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:15 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:16 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:17 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:9 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:19 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:21 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:22 forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v156 setPassRule:1 forElement:23 forSourceAtIndex:0];
    v157 = [_GCGamepadEventFusionDescription alloc];
    v202[0] = firstObject;
    v202[1] = gamepadEventSource;
    v158 = [MEMORY[0x1E695DEC8] arrayWithObjects:v202 count:2];
    v159 = [(_GCGamepadEventFusionDescription *)v157 initWithConfiguration:v156 sources:v158];
    v203 = v159;
    v160 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v203 count:1];

    v201[0] = v193;
    v201[1] = v192;
    v161 = v183;
    v201[2] = v183;
    v201[3] = v197;
    v201[4] = v196;
    v201[5] = v195;
    v201[6] = v194;
    v201[7] = v51;
    v201[8] = v191;
    v201[9] = v190;
    v201[10] = v101;
    v201[11] = v151;
    v162 = firstObject;
    v163 = [MEMORY[0x1E695DEC8] arrayWithObjects:v201 count:12];
    [v154 setElements:v163];

    v164 = v160;
    v165 = gamepadEventSource;
    v166 = v186;
LABEL_32:

    goto LABEL_38;
  }

  v166 = v186;
  v162 = [v186 propertyForKey:@"PSVR2DeviceType"];
  objc_opt_class();
  v164 = bindingsCopy;
  v161 = v183;
  if (objc_opt_isKindOfClass())
  {
    uTF8String = [v162 UTF8String];
    if (uTF8String)
    {
      v168 = uTF8String;
      if (strcmp(uTF8String, "Unknown"))
      {
        if (!strcmp(v168, "Sense Left"))
        {
          v171 = &v200;
          v173 = v196;
          v172 = v197;
          v200 = v183;
          v175 = v194;
          v174 = v195;
          v176 = v51;
        }

        else
        {
          if (strcmp(v168, "Sense Right"))
          {
            goto LABEL_38;
          }

          v171 = &v199;
          v199 = v187;
          v173 = v192;
          v172 = v193;
          v175 = v190;
          v174 = v191;
          v176 = v101;
        }

        v171[1] = v172;
        v171[2] = v173;
        v171[3] = v174;
        v171[4] = v175;
        v171[5] = v176;
        v165 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
        [v154 setElements:v165];
        goto LABEL_32;
      }
    }
  }

LABEL_38:

  v169 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:identifierCopy controllerInputs:v154 bindings:v164];

  return v169;
}

+ (id)logicalDevice:(id)device makeControllerMotionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[GCMotion alloc] initWithIdentifier:identifierCopy];

  [(GCMotion *)v5 _setHasRotationRate:1];
  [(GCMotion *)v5 _setHasAttitude:0];

  return v5;
}

+ (id)logicalDevice:(id)device makeControllerSpatialDescriptionWithIdentifier:(id)identifier forClient:(id)client
{
  deviceCopy = device;
  identifierCopy = identifier;
  configuration = [client configuration];
  spatialGamepadSupported = [configuration spatialGamepadSupported];

  if (!spatialGamepadSupported)
  {
    v17 = 0;
    goto LABEL_12;
  }

  v11 = objc_opt_new();
  v12 = [deviceCopy propertyForKey:@"RegistryID"];
  [(_GCDeviceSpatialParameters *)v11 setTrackingSourceIOServiceRegistryID:v12];

  v13 = [deviceCopy propertyForKey:@"PSVR2DeviceType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String = [v13 UTF8String];
    if (uTF8String)
    {
      v15 = uTF8String;
      if (strcmp(uTF8String, "Unknown"))
      {
        if (!strcmp(v15, "Sense Left"))
        {
          v16 = 1;
          goto LABEL_10;
        }

        if (!strcmp(v15, "Sense Right"))
        {
          v16 = 2;
LABEL_10:
          [(_GCDeviceSpatialParameters *)v11 setInherentChirality:v16];
        }
      }
    }
  }

  v17 = [[_GCControllerRemoteSpatialComponentDescription alloc] initWithIdentifier:identifierCopy facade:v11];

LABEL_12:

  return v17;
}

+ (void)physicalDevice:(id)device getBatteryWithReply:(id)reply
{
  replyCopy = reply;
  batteryServiceServer = [device batteryServiceServer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73___GCSonyPSVR2SenseControllerProfile_physicalDevice_getBatteryWithReply___block_invoke;
  v8[3] = &unk_1E8419578;
  v9 = replyCopy;
  v7 = replyCopy;
  [batteryServiceServer readBatteryWithReply:v8];
}

+ (id)physicalDeviceGetHapticCapabilities:(id)capabilities
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [capabilities propertyForKey:@"PSVR2DeviceType"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  uTF8String = [v3 UTF8String];
  if (!uTF8String)
  {
    goto LABEL_6;
  }

  v5 = uTF8String;
  if (!strcmp(uTF8String, "Unknown"))
  {
    goto LABEL_6;
  }

  if (!strcmp(v5, "Sense Left"))
  {
    v8 = [[GCHapticActuator alloc] initWithLabel:@"Low Band" type:0 index:0];
    v11[0] = v8;
    v9 = v11;
  }

  else
  {
    if (strcmp(v5, "Sense Right"))
    {
LABEL_6:
      v6 = MEMORY[0x1E695E0F0];
      goto LABEL_7;
    }

    v8 = [[GCHapticActuator alloc] initWithLabel:@"High Band" type:0 index:0];
    v10 = v8;
    v9 = &v10;
  }

  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

LABEL_7:

  return v6;
}

+ (id)physicalDeviceGetHapticCapabilityGraph:(id)graph
{
  v3 = [graph propertyForKey:@"PSVR2DeviceType"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  uTF8String = [v3 UTF8String];
  if (!uTF8String)
  {
    goto LABEL_6;
  }

  v5 = uTF8String;
  if (!strcmp(uTF8String, "Unknown"))
  {
    goto LABEL_6;
  }

  if (!strcmp(v5, "Sense Left"))
  {
    v8 = @"PSVR2LeftHapticCapabilityGraph";
  }

  else
  {
    if (strcmp(v5, "Sense Right"))
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    v8 = @"PSVR2RightHapticCapabilityGraph";
  }

  v9 = objc_opt_class();
  v10 = loadNSDictionaryFromJSON(v9, v8);
  v6 = [[GCHapticCapabilityGraph alloc] initWithJSONDictionaryRepresentation:v10];

LABEL_7:

  return v6;
}

@end