@interface GCGenericDeviceModel(DeviceDelegate)
+ (__CFString)defaultSymbolNameForElement:()DeviceDelegate;
+ (id)defaultLocalizedNameForElement:()DeviceDelegate;
+ (uint64_t)elementsMakeValidExtendedGamepad:()DeviceDelegate;
+ (uint64_t)elementsMakeValidGamepad:()DeviceDelegate;
- (BOOL)physicalDeviceSupportsMotion:()DeviceDelegate;
- (GCHapticCapabilityGraph)physicalDeviceGetHapticCapabilityGraph:()DeviceDelegate;
- (GCMotion)logicalDevice:()DeviceDelegate makeControllerMotionWithIdentifier:;
- (_GCControllerInputComponentDescription)logicalDevice:()DeviceDelegate makeControllerInputDescriptionWithIdentifier:bindings:;
- (id)logicalDevice:()DeviceDelegate makeControllerPhysicalInputProfileDescriptionWithIdentifier:bindings:;
- (id)physicalDeviceGetHapticCapabilities:()DeviceDelegate;
- (id)respondsToSelector:()DeviceDelegate;
- (uint64_t)logicalDevice:()DeviceDelegate getSystemButtonName:sfSymbolName:needsMFiCompatibility:;
- (uint64_t)logicalDeviceControllerIsAttachedToHost:()DeviceDelegate;
@end

@implementation GCGenericDeviceModel(DeviceDelegate)

- (BOOL)physicalDeviceSupportsMotion:()DeviceDelegate
{
  driver = [self driver];
  motion = [driver motion];
  v3 = motion != 0;

  return v3;
}

- (id)physicalDeviceGetHapticCapabilities:()DeviceDelegate
{
  driver = [self driver];
  rumble = [driver rumble];

  if (rumble)
  {
    actuators = [rumble actuators];
    v4 = [actuators gc_arrayByTransformingElementsWithOptions:0 usingBlock:&__block_literal_global_45];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GCHapticCapabilityGraph)physicalDeviceGetHapticCapabilityGraph:()DeviceDelegate
{
  v4 = a3;
  v5 = [self physicalDeviceGetHapticCapabilities:v4];
  v6 = [GCHapticCapabilityGraph alloc];
  driver = [self driver];
  rumble = [driver rumble];
  nodes = [rumble nodes];
  v10 = [(GCHapticCapabilityGraph *)v6 initWithActuators:v5 nodes:nodes];

  return v10;
}

- (uint64_t)logicalDeviceControllerIsAttachedToHost:()DeviceDelegate
{
  isFormFitting = [self isFormFitting];
  bOOLValue = [isFormFitting BOOLValue];

  return bOOLValue;
}

- (uint64_t)logicalDevice:()DeviceDelegate getSystemButtonName:sfSymbolName:needsMFiCompatibility:
{
  v36 = *MEMORY[0x1E69E9840];
  physicalInput = [self physicalInput];
  v8 = physicalInput;
  if (physicalInput)
  {
    [physicalInput elements];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v34 = 0u;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v27 = a4;
      v28 = a5;
      v29 = v8;
      v11 = *v32;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            names = [v13 names];
            firstObject = [names firstObject];
            localizedNameKey = [v13 localizedNameKey];
            v17 = localizedNameKey;
            if (localizedNameKey)
            {
              v18 = localizedNameKey;
            }

            else
            {
              v18 = [objc_opt_class() defaultLocalizedNameForElement:firstObject];
            }

            v19 = v18;

            symbolName = [v13 symbolName];
            v21 = symbolName;
            if (symbolName)
            {
              v22 = symbolName;
            }

            else
            {
              v22 = [objc_opt_class() defaultSymbolNameForElement:firstObject];
            }

            v23 = v22;

            if ([firstObject isEqualToString:@"Button Home"])
            {
              *v27 = [objc_alloc(MEMORY[0x1E69A06C8]) initWithKey:v19 sourceBundle:0];
              v25 = v23;
              *v28 = v23;

              v24 = 1;
              goto LABEL_21;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v24 = 0;
LABEL_21:
      v8 = v29;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)logicalDevice:()DeviceDelegate makeControllerPhysicalInputProfileDescriptionWithIdentifier:bindings:
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  physicalInput = [self physicalInput];
  v10 = physicalInput;
  if (!physicalInput)
  {
    v34 = 0;
    goto LABEL_34;
  }

  v39 = v8;
  v40 = v7;
  v38 = physicalInput;
  elements = [physicalInput elements];
  v42 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = elements;
  v44 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v44)
  {
    goto LABEL_29;
  }

  v43 = *v46;
  do
  {
    v12 = 0;
    do
    {
      if (*v46 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v45 + 1) + 8 * v12);
      names = [v13 names];
      firstObject = [names firstObject];
      v16 = [MEMORY[0x1E695DFD8] setWithArray:names];
      v17 = [v16 gc_setByRemovingObject:firstObject];

      localizedNameKey = [v13 localizedNameKey];
      v19 = localizedNameKey;
      if (localizedNameKey)
      {
        v20 = localizedNameKey;
      }

      else
      {
        v20 = [objc_opt_class() defaultLocalizedNameForElement:firstObject];
      }

      v21 = v20;

      symbolName = [v13 symbolName];
      v23 = symbolName;
      if (symbolName)
      {
        v24 = symbolName;
      }

      else
      {
        v24 = [objc_opt_class() defaultSymbolNameForElement:firstObject];
      }

      v25 = v24;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([firstObject isEqualToString:@"Button Home"] & 1) != 0 || (objc_msgSend(firstObject, "isEqualToString:", @"Button Options"))
        {
          v26 = 49152;
        }

        else if ([firstObject isEqualToString:@"Button Menu"])
        {
          v26 = 0x4000;
        }

        else if ([firstObject isEqualToString:@"Button Share"])
        {
          v26 = 0x4000;
        }

        else
        {
          v26 = 2;
        }

        isAnalog = [v13 isAnalog];
        bOOLValue = [isAnalog BOOLValue];

        v29 = -[GCDeviceButtonInputDescription initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceExtendedEventField:]([GCDeviceButtonInputDescription alloc], "initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceExtendedEventField:", firstObject, v17, v26, v21, v25, bOOLValue ^ 1u, [v13 sourcePressedValueExtendedEventFieldIndex]);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_21;
        }

        isAnalog2 = [v13 isAnalog];
        bOOLValue2 = [isAnalog2 BOOLValue];

        v29 = -[GCDeviceDirectionPadDescription initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceUpExtendedEventField:sourceDownExtendedEventField:sourceLeftExtendedEventField:sourceRightExtendedEventField:]([GCDeviceDirectionPadDescription alloc], "initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceUpExtendedEventField:sourceDownExtendedEventField:sourceLeftExtendedEventField:sourceRightExtendedEventField:", firstObject, v17, 2, v21, v25, bOOLValue2 ^ 1u, [v13 sourceUpExtendedEventFieldIndex], objc_msgSend(v13, "sourceDownExtendedEventFieldIndex"), objc_msgSend(v13, "sourceLeftExtendedEventFieldIndex"), objc_msgSend(v13, "sourceRightExtendedEventFieldIndex"));
      }

      v32 = v29;
      [v42 addObject:v29];

LABEL_21:
      ++v12;
    }

    while (v44 != v12);
    v33 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    v44 = v33;
  }

  while (v33);
LABEL_29:

  if (([objc_opt_class() elementsMakeValidExtendedGamepad:v42] & 1) == 0)
  {
    [objc_opt_class() elementsMakeValidGamepad:v42];
  }

  v8 = v39;
  v7 = v40;
  v10 = v38;
  v35 = objc_alloc(objc_opt_class());
  allObjects = [v42 allObjects];
  v34 = [v35 initWithIdentifier:v40 elements:allObjects bindings:v39];

LABEL_34:

  return v34;
}

- (_GCControllerInputComponentDescription)logicalDevice:()DeviceDelegate makeControllerInputDescriptionWithIdentifier:bindings:
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  physicalInput = [self physicalInput];
  if (physicalInput)
  {
    v48 = v8;
    v49 = v7;
    v47 = physicalInput;
    elements = [physicalInput elements];
    v52 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = elements;
    v11 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (!v11)
    {
      goto LABEL_22;
    }

    v12 = v11;
    v13 = 0x1E69A0000uLL;
    v14 = *v54;
    while (1)
    {
      v15 = 0;
      v50 = v12;
      do
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v53 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v13;
          v18 = v16;
          sourceTouchedValueExtendedEventFieldIndex = [v18 sourceTouchedValueExtendedEventFieldIndex];
          v20 = objc_opt_new();
          identifier = [v18 identifier];
          [v20 setIdentifier:identifier];

          v22 = MEMORY[0x1E695DFD8];
          names = [v18 names];
          v24 = [v22 setWithArray:names];
          [v20 setAliases:v24];

          localizedNameKey = [v18 localizedNameKey];
          [v20 setLocalizedName:localizedNameKey];

          symbolName = [v18 symbolName];
          if (symbolName)
          {
            v27 = MEMORY[0x1E69A06C0];
            symbolName2 = [v18 symbolName];
            v29 = [v27 symbolWithSFSymbolsName:symbolName2];
            [v20 setSymbol:v29];

            v12 = v50;
          }

          else
          {
            [v20 setSymbol:0];
          }

          isAnalog = [v18 isAnalog];
          [v20 setAnalog:{objc_msgSend(isAnalog, "BOOLValue")}];

          [v18 pressedThreshold];
          *&v41 = v41;
          [v20 setPressedThreshold:v41];
          [v20 setEventPressedValueField:{objc_msgSend(v18, "sourcePressedValueExtendedEventFieldIndex")}];
          if ((sourceTouchedValueExtendedEventFieldIndex & 0x8000000000000000) == 0)
          {
            [v20 setSupportsTouch:1];
            [v18 touchedThreshold];
            *&v42 = v42;
            [v20 setTouchedThreshold:v42];
            [v20 setEventTouchValueField:{objc_msgSend(v18, "sourceTouchedValueExtendedEventFieldIndex")}];
          }

          v13 = v17;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_20;
          }

          v30 = v16;
          v20 = objc_opt_new();
          identifier2 = [v30 identifier];
          [v20 setIdentifier:identifier2];

          v32 = MEMORY[0x1E695DFD8];
          names2 = [v30 names];
          v34 = [v32 setWithArray:names2];
          [v20 setAliases:v34];

          localizedNameKey2 = [v30 localizedNameKey];
          [v20 setLocalizedName:localizedNameKey2];

          symbolName3 = [v30 symbolName];
          if (symbolName3)
          {
            v37 = MEMORY[0x1E69A06C0];
            symbolName4 = [v30 symbolName];
            v39 = [v37 symbolWithSFSymbolsName:symbolName4];
            [v20 setSymbol:v39];

            v12 = v50;
          }

          else
          {
            [v20 setSymbol:0];
          }

          isAnalog2 = [v30 isAnalog];
          [v20 setAnalog:{objc_msgSend(isAnalog2, "BOOLValue")}];

          [v20 setEventUpValueField:{objc_msgSend(v30, "sourceUpExtendedEventFieldIndex")}];
          [v20 setEventRightValueField:{objc_msgSend(v30, "sourceRightExtendedEventFieldIndex")}];
          [v20 setEventDownValueField:{objc_msgSend(v30, "sourceDownExtendedEventFieldIndex")}];
          [v20 setEventLeftValueField:{objc_msgSend(v30, "sourceLeftExtendedEventFieldIndex")}];
        }

        [v52 addObject:v20];

LABEL_20:
        ++v15;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (!v12)
      {
LABEL_22:

        v44 = objc_opt_new();
        [v44 setElements:v52];
        v8 = v48;
        v7 = v49;
        v45 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:v49 controllerInputs:v44 bindings:v48];

        physicalInput = v47;
        goto LABEL_24;
      }
    }
  }

  v45 = 0;
LABEL_24:

  return v45;
}

- (GCMotion)logicalDevice:()DeviceDelegate makeControllerMotionWithIdentifier:
{
  v5 = a4;
  v6 = [[GCMotion alloc] initWithIdentifier:v5];

  driver = [self driver];
  motion = [driver motion];
  gyroXExpression = [motion gyroXExpression];
  if (gyroXExpression)
  {
    driver2 = [self driver];
    motion2 = [driver2 motion];
    gyroYExpression = [motion2 gyroYExpression];
    if (gyroYExpression)
    {
      driver3 = [self driver];
      motion3 = [driver3 motion];
      gyroZExpression = [motion3 gyroZExpression];
      [(GCMotion *)v6 _setHasRotationRate:gyroZExpression != 0];
    }

    else
    {
      [(GCMotion *)v6 _setHasRotationRate:0];
    }
  }

  else
  {
    [(GCMotion *)v6 _setHasRotationRate:0];
  }

  [(GCMotion *)v6 _setHasAttitude:0];

  return v6;
}

- (id)respondsToSelector:()DeviceDelegate
{
  if (sel_logicalDeviceControllerIsAttachedToHost_ == a3)
  {
    isFormFitting = [self isFormFitting];
    v3 = isFormFitting != 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &off_1F4EAE190;
    return objc_msgSendSuper2(&v6, sel_respondsToSelector_);
  }

  return v3;
}

+ (uint64_t)elementsMakeValidExtendedGamepad:()DeviceDelegate
{
  v3 = a3;
  v4 = [v3 member:@"Button A"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 member:@"Button B"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 member:@"Button X"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v3 member:@"Button Y"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v3 member:@"Direction Pad"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v3 member:@"Left Thumbstick"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = [v3 member:@"Right Thumbstick"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v11 = [v3 member:@"Left Shoulder"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v20 = v11;
                  v12 = [v3 member:@"Right Shoulder"];
                  objc_opt_class();
                  v21 = v12;
                  if (objc_opt_isKindOfClass())
                  {
                    v13 = [v3 member:@"Left Trigger"];
                    objc_opt_class();
                    v19 = v13;
                    if (objc_opt_isKindOfClass())
                    {
                      v14 = [v3 member:@"Right Trigger"];
                      objc_opt_class();
                      v18 = v14;
                      if (objc_opt_isKindOfClass())
                      {
                        v15 = [v3 member:{@"Button Menu", v14, v19}];
                        objc_opt_class();
                        isKindOfClass = objc_opt_isKindOfClass();
                      }

                      else
                      {
                        isKindOfClass = 0;
                      }

                      v11 = v20;
                    }

                    else
                    {
                      isKindOfClass = 0;
                      v11 = v20;
                    }
                  }

                  else
                  {
                    isKindOfClass = 0;
                    v11 = v20;
                  }
                }

                else
                {
                  isKindOfClass = 0;
                }
              }

              else
              {
                isKindOfClass = 0;
              }
            }

            else
            {
              isKindOfClass = 0;
            }
          }

          else
          {
            isKindOfClass = 0;
          }
        }

        else
        {
          isKindOfClass = 0;
        }
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (uint64_t)elementsMakeValidGamepad:()DeviceDelegate
{
  v3 = a3;
  v4 = [v3 member:@"Button A"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 member:@"Button B"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 member:@"Button X"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v3 member:@"Button Y"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v3 member:@"Direction Pad"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v3 member:@"Left Shoulder"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = [v3 member:@"Right Shoulder"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v11 = [v3 member:@"Button Menu"];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();
              }

              else
              {
                isKindOfClass = 0;
              }
            }

            else
            {
              isKindOfClass = 0;
            }
          }

          else
          {
            isKindOfClass = 0;
          }
        }

        else
        {
          isKindOfClass = 0;
        }
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (id)defaultLocalizedNameForElement:()DeviceDelegate
{
  v3 = a3;
  if (([v3 isEqualToString:@"Button A"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Button B") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Button X") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Button Y") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Direction Pad") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Left Thumbstick") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Right Thumbstick") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Left Shoulder") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Right Shoulder") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Left Trigger") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Right Trigger") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Left Thumbstick Button") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Right Thumbstick Button") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Button Home") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Button Menu") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Button Options") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"Button Share"))
  {
    v4 = _GCFConvertStringToLocalizedString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (__CFString)defaultSymbolNameForElement:()DeviceDelegate
{
  v3 = a3;
  if ([v3 isEqualToString:@"Button A"])
  {
    v4 = @"a.circle";
  }

  else if ([v3 isEqualToString:@"Button B"])
  {
    v4 = @"b.circle";
  }

  else if ([v3 isEqualToString:@"Button X"])
  {
    v4 = @"y.circle";
  }

  else if ([v3 isEqualToString:@"Button Y"])
  {
    v4 = @"x.circle";
  }

  else if ([v3 isEqualToString:@"Direction Pad"])
  {
    v4 = @"dpad";
  }

  else if ([v3 isEqualToString:@"Left Thumbstick"])
  {
    v4 = @"l.joystick";
  }

  else if ([v3 isEqualToString:@"Right Thumbstick"])
  {
    v4 = @"r.joystick";
  }

  else if ([v3 isEqualToString:@"Left Shoulder"])
  {
    v4 = @"l1.rectangle.roundedbottom";
  }

  else if ([v3 isEqualToString:@"Right Shoulder"])
  {
    v4 = @"r1.rectangle.roundedbottom";
  }

  else if ([v3 isEqualToString:@"Left Trigger"])
  {
    v4 = @"l2.rectangle.roundedtop";
  }

  else if ([v3 isEqualToString:@"Right Trigger"])
  {
    v4 = @"r2.rectangle.roundedtop";
  }

  else if ([v3 isEqualToString:@"Left Thumbstick Button"])
  {
    v4 = @"l.joystick.press.down";
  }

  else if ([v3 isEqualToString:@"Right Thumbstick Button"])
  {
    v4 = @"r.joystick.press.down";
  }

  else if ([v3 isEqualToString:@"Button Home"])
  {
    v4 = @"house.circle";
  }

  else if ([v3 isEqualToString:@"Button Menu"])
  {
    v4 = @"line.horizontal.3.circle";
  }

  else if ([v3 isEqualToString:@"Button Options"])
  {
    v4 = @"ellipsis.circle";
  }

  else if ([v3 isEqualToString:@"Button Share"])
  {
    v4 = @"square.and.arrow.up";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)physicalDeviceGetHapticCapabilityGraph:()DeviceDelegate .cold.1(NSObject *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_fault_impl(&dword_1D2CD5000, a1, OS_LOG_TYPE_FAULT, "Caught exception decoding GCHapticCapabilityGraph: %@", &v4, 0xCu);
  }
}

@end