@interface _GCFusedLogicalDevice
- (_GCFusedLogicalDevice)init;
- (_GCFusedLogicalDevice)initWithPrimaryPhysicalDevice:(id)device secondaryPhysicalDevice:(id)physicalDevice configuration:(id)configuration manager:(id)manager;
- (id)_makeControllerGamepadEventSource;
- (id)underlyingDevices;
@end

@implementation _GCFusedLogicalDevice

- (_GCFusedLogicalDevice)initWithPrimaryPhysicalDevice:(id)device secondaryPhysicalDevice:(id)physicalDevice configuration:(id)configuration manager:(id)manager
{
  physicalDeviceCopy = physicalDevice;
  v14.receiver = self;
  v14.super_class = _GCFusedLogicalDevice;
  v11 = [(_GCDefaultLogicalDevice *)&v14 initWithPhysicalDevice:device configuration:configuration manager:manager];
  secondaryDevice = v11->_secondaryDevice;
  v11->_secondaryDevice = physicalDeviceCopy;

  return v11;
}

- (_GCFusedLogicalDevice)init
{
  [(_GCFusedLogicalDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)underlyingDevices
{
  v8.receiver = self;
  v8.super_class = _GCFusedLogicalDevice;
  underlyingDevices = [(_GCDefaultLogicalDevice *)&v8 underlyingDevices];
  v4 = underlyingDevices;
  if (self->_secondaryDevice)
  {
    v5 = [underlyingDevices setByAddingObject:?];
  }

  else
  {
    v5 = underlyingDevices;
  }

  v6 = v5;

  return v6;
}

- (id)_makeControllerGamepadEventSource
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = objc_msgSend_underlyingDevice(self, a2);
  components = [v3 components];

  v5 = [components countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(components);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        if ([v10 conformsToProtocol:&unk_1F4E9B320])
        {
          v11 = v10;

          v7 = v11;
        }
      }

      v6 = [components countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  secondaryDevice = [(_GCFusedLogicalDevice *)self secondaryDevice];
  components2 = [secondaryDevice components];

  v14 = [components2 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v31;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(components2);
        }

        v19 = *(*(&v30 + 1) + 8 * j);
        if ([v19 conformsToProtocol:&unk_1F4E9B320])
        {
          v20 = v19;

          v16 = v20;
        }
      }

      v15 = [components2 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  if (!(v7 | v16))
  {
    gamepadEventSource = 0;
    goto LABEL_35;
  }

  if (v7 && !v16)
  {
    v22 = v7;
LABEL_31:
    gamepadEventSource = [v22 gamepadEventSource];
    goto LABEL_35;
  }

  if (!v7 && v16)
  {
    v22 = v16;
    goto LABEL_31;
  }

  gamepadEventSource2 = [v7 gamepadEventSource];
  gamepadEventSource3 = [v16 gamepadEventSource];
  v25 = [[_GCGamepadEventFusionConfig alloc] initWithSourceCount:2];
  for (k = 0; k != 47; ++k)
  {
    [(_GCGamepadEventFusionConfig *)v25 setPassRule:2 forElement:k forSourceAtIndex:0];
    [(_GCGamepadEventFusionConfig *)v25 setPassRule:2 forElement:k forSourceAtIndex:1];
  }

  v27 = [_GCGamepadEventFusionDescription alloc];
  v38[0] = gamepadEventSource2;
  v38[1] = gamepadEventSource3;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  gamepadEventSource = [(_GCGamepadEventFusionDescription *)v27 initWithConfiguration:v25 sources:v28];

LABEL_35:

  return gamepadEventSource;
}

@end