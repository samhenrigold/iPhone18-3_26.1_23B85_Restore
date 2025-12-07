@interface _GCSpatialDeviceProfile
+ (BOOL)match:(id)match;
+ (Class)logicalDeviceControllerDescriptionClass:(id)class;
+ (_GCPhysicalDeviceManager)deviceManager;
+ (id)logicalDevice:(id)device makeControllerInputDescriptionWithIdentifier:(id)identifier bindings:(id)bindings;
+ (id)logicalDevice:(id)device makeControllerPhysicalInputProfileDescriptionWithIdentifier:(id)identifier bindings:(id)bindings;
+ (id)logicalDevice:(id)device makeControllerSpatialDescriptionWithIdentifier:(id)identifier forClient:(id)client;
+ (id)logicalDeviceControllerProductCategory:(id)category;
+ (id)logicalDeviceControllerUniformTypeIdentifier:(id)identifier;
+ (id)physicalDeviceGetHapticCapabilities:(id)capabilities;
+ (id)physicalDeviceGetHapticCapabilityGraph:(id)graph;
+ (uint64_t)isSpatialController:(uint64_t)controller;
+ (uint64_t)isSpatialStylus:(uint64_t)stylus;
@end

@implementation _GCSpatialDeviceProfile

+ (_GCPhysicalDeviceManager)deviceManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40___GCSpatialDeviceProfile_deviceManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (deviceManager_onceToken_7 != -1)
  {
    dispatch_once(&deviceManager_onceToken_7, block);
  }

  v2 = deviceManager_deviceManager_7;

  return v2;
}

+ (uint64_t)isSpatialController:(uint64_t)controller
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = objc_msgSend_underlyingDevice(v2);
  v4 = [v3 propertyForKey:@"UniformTypeIdentifiers"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 isEqualToString:{@"com.apple.spatial-gamepad", v13}])
          {
            v11 = 1;
            goto LABEL_14;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_14:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (uint64_t)isSpatialStylus:(uint64_t)stylus
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = objc_msgSend_underlyingDevice(v2);
  v4 = [v3 propertyForKey:@"UniformTypeIdentifiers"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 isEqualToString:{@"com.apple.spatial-stylus", v13}])
          {
            v11 = 1;
            goto LABEL_14;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_14:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)match:(id)match
{
  v3 = [match numberPropertyForKey:@"SpatialHIDServiceFilterActive"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)physicalDeviceGetHapticCapabilities:(id)capabilities
{
  v8[1] = *MEMORY[0x1E69E9840];
  serviceInfo = [capabilities serviceInfo];
  v4 = [serviceInfo numberPropertyForKey:@"HapticsSupported"];

  if (v4 && [v4 BOOLValue])
  {
    v5 = [[GCHapticActuator alloc] initWithLabel:@"Actuator" type:1 index:0];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

+ (id)physicalDeviceGetHapticCapabilityGraph:(id)graph
{
  v3 = objc_opt_class();
  v4 = loadNSDictionaryFromJSON(v3, @"SpatialHapticCapabilityGraph");
  v5 = [[GCHapticCapabilityGraph alloc] initWithJSONDictionaryRepresentation:v4];

  return v5;
}

+ (Class)logicalDeviceControllerDescriptionClass:(id)class
{
  classCopy = class;
  if (([(_GCSpatialDeviceProfile *)self isSpatialController:classCopy]& 1) == 0)
  {
    [(_GCSpatialDeviceProfile *)self isSpatialStylus:classCopy];
  }

  v5 = objc_opt_class();

  return v5;
}

+ (id)logicalDeviceControllerUniformTypeIdentifier:(id)identifier
{
  v3 = objc_msgSend_underlyingDevice(identifier, a2);
  v4 = [v3 propertyForKey:@"UniformTypeIdentifiers"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [v4 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)logicalDeviceControllerProductCategory:(id)category
{
  categoryCopy = category;
  if (([(_GCSpatialDeviceProfile *)self isSpatialController:categoryCopy]& 1) != 0)
  {
    v5 = GCProductCategorySpatialController;
LABEL_5:
    v6 = *v5;
    goto LABEL_7;
  }

  if ([(_GCSpatialDeviceProfile *)self isSpatialStylus:categoryCopy])
  {
    v5 = &GCProductCategorySpatialStylus;
    goto LABEL_5;
  }

  v6 = @"Spatial Device";
LABEL_7:

  return v6;
}

+ (id)logicalDevice:(id)device makeControllerPhysicalInputProfileDescriptionWithIdentifier:(id)identifier bindings:(id)bindings
{
  bindingsCopy = bindings;
  identifierCopy = identifier;
  v8 = [_GCDevicePhysicalInputComponentDescription alloc];
  v9 = [(_GCDevicePhysicalInputComponentDescription *)v8 initWithIdentifier:identifierCopy elements:MEMORY[0x1E695E0F0] bindings:bindingsCopy];

  return v9;
}

+ (id)logicalDevice:(id)device makeControllerInputDescriptionWithIdentifier:(id)identifier bindings:(id)bindings
{
  v45[1] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  identifierCopy = identifier;
  bindingsCopy = bindings;
  LOBYTE(bindings) = [(_GCSpatialDeviceProfile *)self isSpatialController:deviceCopy];
  LOBYTE(identifier) = [(_GCSpatialDeviceProfile *)self isSpatialStylus:deviceCopy];
  v31 = objc_alloc_init(_GCCControllerManagerDescription);
  v9 = [_GCCControllerHIDServiceInfoDescription alloc];
  v10 = objc_msgSend_underlyingDevice(deviceCopy);
  serviceInfo = [v10 serviceInfo];
  v30 = [(_GCCControllerHIDServiceInfoDescription *)v9 initWithServiceInfo:serviceInfo];

  v32 = objc_opt_new();
  v12 = objc_opt_new();
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke;
  aBlock[3] = &unk_1E841B1D8;
  v43 = v44;
  v13 = v12;
  v42 = v13;
  v14 = _Block_copy(aBlock);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157;
  v36[3] = &unk_1E841B200;
  v38 = v44;
  bindingsCopy2 = bindings;
  identifierCopy2 = identifier;
  v15 = v13;
  v37 = v15;
  v16 = _Block_copy(v36);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169;
  v33[3] = &unk_1E841B228;
  v17 = v16;
  v34 = v17;
  v18 = v14;
  v35 = v18;
  v19 = _Block_copy(v33);
  v20 = objc_msgSend_underlyingDevice(deviceCopy);
  v21 = [v20 propertyForKey:@"ElementProcessors"];

  v22 = v19[2](v19, v21);
  [v32 setElements:v15];
  v23 = [[_GCCollectionEventHIDAdapterDescription alloc] initWithRootParser:v22 source:v31 service:v30];
  v24 = [_GCControllerInputComponentDescription alloc];
  v45[0] = v23;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  v26 = [(_GCControllerInputComponentDescription *)v24 initWithIdentifier:identifierCopy controllerInputs:v32 bindings:v25];

  _Block_object_dispose(v44, 8);

  return v26;
}

+ (id)logicalDevice:(id)device makeControllerSpatialDescriptionWithIdentifier:(id)identifier forClient:(id)client
{
  deviceCopy = device;
  identifierCopy = identifier;
  clientCopy = client;
  if (+[_GCSpatialDeviceProfile isSpatialController:](self, deviceCopy) && ([clientCopy configuration], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "spatialGamepadSupported"), v11, !v12))
  {
    v15 = 0;
  }

  else
  {
    v13 = objc_opt_new();
    v14 = [deviceCopy propertyForKey:@"RegistryID"];
    [(_GCDeviceSpatialParameters *)v13 setTrackingSourceIOServiceRegistryID:v14];

    v15 = [[_GCControllerRemoteSpatialComponentDescription alloc] initWithIdentifier:identifierCopy facade:v13];
  }

  return v15;
}

@end