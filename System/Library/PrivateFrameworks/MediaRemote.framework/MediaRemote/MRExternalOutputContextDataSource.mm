@interface MRExternalOutputContextDataSource
- (BOOL)isVolumeMuted;
- (MRExternalOutputContextDataSource)initWithCoder:(id)coder;
- (MRExternalOutputContextDataSource)initWithUniqueIdentifier:(id)identifier;
- (MRExternalOutputContextDataSource)initWithUniqueIdentifier:(id)identifier outputDevices:(id)devices volume:(float)volume capabilities:(unsigned int)capabilities muted:(BOOL)muted;
- (float)_calculateMasterVolume;
- (float)volume;
- (id)outputDevices;
- (uint64_t)_calculateGroupMute;
- (uint64_t)_calculateMasterVolumeCapabilities;
- (unsigned)volumeControlCapabilities;
- (void)_reevaluateGroupVolumeMuted;
- (void)_reevaluateMasterVolume;
- (void)_reevaluateMasterVolumeControlCapabilities;
- (void)_updateOutputDevice:(void *)device predicate:(void *)predicate update:(void *)update action:;
- (void)_updateOutputDevices:(id *)devices;
- (void)encodeWithCoder:(id)coder;
- (void)initializeVolumeCapabilitiesForLegacyCleints;
- (void)removeAllOutputDevices;
- (void)removeOutputDevices:(id)devices;
- (void)updateOutputDevices:(id)devices;
- (void)updateVolume:(float)volume outputDeviceUID:(id)d;
- (void)updateVolumeControlCapabilities:(unsigned int)capabilities outputDeviceUID:(id)d;
- (void)updateVolumeMuted:(BOOL)muted outputDeviceUID:(id)d;
@end

@implementation MRExternalOutputContextDataSource

- (float)volume
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  masterVolume = selfCopy->_masterVolume;
  objc_sync_exit(selfCopy);

  return masterVolume;
}

- (unsigned)volumeControlCapabilities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  masterVolumeControlCapabilities = selfCopy->_masterVolumeControlCapabilities;
  objc_sync_exit(selfCopy);

  return masterVolumeControlCapabilities;
}

- (MRExternalOutputContextDataSource)initWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MRExternalOutputContextDataSource;
  v6 = [(MRExternalOutputContextDataSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uniqueIdentifier, identifier);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    outputDevices = v7->_outputDevices;
    v7->_outputDevices = v8;
  }

  return v7;
}

- (MRExternalOutputContextDataSource)initWithUniqueIdentifier:(id)identifier outputDevices:(id)devices volume:(float)volume capabilities:(unsigned int)capabilities muted:(BOOL)muted
{
  devicesCopy = devices;
  v13 = [(MRExternalOutputContextDataSource *)self initWithUniqueIdentifier:identifier];
  if (v13)
  {
    v14 = [devicesCopy msv_map:&__block_literal_global_141];
    v15 = [v14 mutableCopy];
    outputDevices = v13->_outputDevices;
    v13->_outputDevices = v15;

    v13->_masterVolume = volume;
    v13->_masterVolumeControlCapabilities = capabilities;
    v13->_groupVolumeMuted = muted;
  }

  return v13;
}

MRAVDistantOutputDevice *__102__MRExternalOutputContextDataSource_initWithUniqueIdentifier_outputDevices_volume_capabilities_muted___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MRAVDistantOutputDevice alloc];
  v4 = [v2 descriptor];

  v5 = [(MRAVDistantOutputDevice *)v3 initWithDescriptor:v4];

  return v5;
}

- (BOOL)isVolumeMuted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  groupVolumeMuted = selfCopy->_groupVolumeMuted;
  objc_sync_exit(selfCopy);

  return groupVolumeMuted;
}

- (void)updateOutputDevices:(id)devices
{
  devicesCopy = devices;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mr_allOutputDevices = [devicesCopy mr_allOutputDevices];
  mr_redactClusterMembers = [mr_allOutputDevices mr_redactClusterMembers];
  [(MRExternalOutputContextDataSource *)&selfCopy->super.super.isa _updateOutputDevices:mr_redactClusterMembers];

  objc_sync_exit(selfCopy);
}

uint64_t __58__MRExternalOutputContextDataSource__updateOutputDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [*(a1 + 32) uid];
  isEqualToString = objc_msgSend_isEqualToString_(v3);

  return isEqualToString;
}

- (void)removeOutputDevices:(id)devices
{
  v29 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = [(NSMutableArray *)selfCopy->_outputDevices copy];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = devicesCopy;
  v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v17)
  {
    v15 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v6 = v16;
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v7)
        {
          v8 = *v20;
          do
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v20 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v19 + 1) + 8 * j);
              v11 = [v10 uid];
              if (objc_msgSend_isEqualToString_(v11))
              {
              }

              else
              {
                parentUID = [v10 parentUID];
                isEqualToString = objc_msgSend_isEqualToString_(parentUID);

                if (!isEqualToString)
                {
                  continue;
                }
              }

              [(NSMutableArray *)selfCopy->_outputDevices removeObject:v10];
              [(MROutputContextDataSource *)selfCopy notifyOutputDeviceRemoved:v10];
            }

            v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v7);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }

  [(MRExternalOutputContextDataSource *)selfCopy _reevaluateMasterVolume];
  [(MRExternalOutputContextDataSource *)selfCopy _reevaluateGroupVolumeMuted];
  [(MRExternalOutputContextDataSource *)selfCopy _reevaluateMasterVolumeControlCapabilities];

  objc_sync_exit(selfCopy);
}

- (void)removeAllOutputDevices
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = selfCopy->_outputDevices;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(MROutputContextDataSource *)selfCopy notifyOutputDeviceRemoved:?];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)selfCopy->_outputDevices removeAllObjects];
  [(MRExternalOutputContextDataSource *)selfCopy _reevaluateGroupVolumeMuted];
  [(MRExternalOutputContextDataSource *)selfCopy _reevaluateMasterVolume];
  [(MRExternalOutputContextDataSource *)selfCopy _reevaluateMasterVolumeControlCapabilities];
  objc_sync_exit(selfCopy);
}

- (void)updateVolumeControlCapabilities:(unsigned int)capabilities outputDeviceUID:(id)d
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__MRExternalOutputContextDataSource_updateVolumeControlCapabilities_outputDeviceUID___block_invoke;
  v8[3] = &__block_descriptor_36_e26_B16__0__MRAVOutputDevice_8l;
  capabilitiesCopy = capabilities;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__MRExternalOutputContextDataSource_updateVolumeControlCapabilities_outputDeviceUID___block_invoke_2;
  v6[3] = &__block_descriptor_36_e45_v16__0___MRAVOutputDeviceDescriptorProtobuf_8l;
  capabilitiesCopy2 = capabilities;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__MRExternalOutputContextDataSource_updateVolumeControlCapabilities_outputDeviceUID___block_invoke_3;
  v4[3] = &unk_1E769CE28;
  v4[4] = self;
  capabilitiesCopy3 = capabilities;
  [(MRExternalOutputContextDataSource *)self _updateOutputDevice:d predicate:v8 update:v6 action:v4];
}

- (void)_updateOutputDevice:(void *)device predicate:(void *)predicate update:(void *)update action:
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a2;
  deviceCopy = device;
  predicateCopy = predicate;
  updateCopy = update;
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (v9)
    {
      v14 = selfCopy[4];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __81__MRExternalOutputContextDataSource__updateOutputDevice_predicate_update_action___block_invoke;
      v22[3] = &unk_1E769CDC0;
      v15 = v9;
      v23 = v15;
      v16 = [v14 msv_firstWhere:v22];
      v17 = v16;
      if (v16)
      {
        descriptor = [v16 descriptor];
        if (deviceCopy[2](deviceCopy, v17))
        {
          predicateCopy[2](predicateCopy, descriptor);
        }

        v19 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:descriptor];
        [selfCopy[4] removeObject:v17];
        [selfCopy[4] addObject:v19];
        updateCopy[2](updateCopy, v19);
      }

      else
      {
        descriptor = _MRLogForCategory(0);
        if (os_log_type_enabled(descriptor, OS_LOG_TYPE_DEFAULT))
        {
          v20 = objc_opt_class();
          *buf = 138543874;
          v25 = v20;
          v26 = 2048;
          v27 = selfCopy;
          v28 = 2114;
          v29 = v15;
          v21 = v20;
          _os_log_impl(&dword_1A2860000, descriptor, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Attempted to update a non-existent outputDevice %{public}@", buf, 0x20u);
        }
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)updateVolume:(float)volume outputDeviceUID:(id)d
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__MRExternalOutputContextDataSource_updateVolume_outputDeviceUID___block_invoke;
  v8[3] = &unk_1E769CE50;
  volumeCopy = volume;
  v8[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__MRExternalOutputContextDataSource_updateVolume_outputDeviceUID___block_invoke_2;
  v6[3] = &__block_descriptor_36_e45_v16__0___MRAVOutputDeviceDescriptorProtobuf_8l;
  volumeCopy2 = volume;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__MRExternalOutputContextDataSource_updateVolume_outputDeviceUID___block_invoke_3;
  v4[3] = &unk_1E769CE28;
  v4[4] = self;
  volumeCopy3 = volume;
  [(MRExternalOutputContextDataSource *)self _updateOutputDevice:d predicate:v8 update:v6 action:v4];
}

BOOL __66__MRExternalOutputContextDataSource_updateVolume_outputDeviceUID___block_invoke(uint64_t a1, void *a2)
{
  [a2 volume];
  v3 = *(a1 + 40);
  return vabds_f32(v4, v3) > 0.00000011921 || v3 > (*(*(a1 + 32) + 40) + 0.00000011921);
}

- (void)updateVolumeMuted:(BOOL)muted outputDeviceUID:(id)d
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__MRExternalOutputContextDataSource_updateVolumeMuted_outputDeviceUID___block_invoke;
  v8[3] = &__block_descriptor_33_e26_B16__0__MRAVOutputDevice_8l;
  mutedCopy = muted;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__MRExternalOutputContextDataSource_updateVolumeMuted_outputDeviceUID___block_invoke_2;
  v6[3] = &__block_descriptor_33_e45_v16__0___MRAVOutputDeviceDescriptorProtobuf_8l;
  mutedCopy2 = muted;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__MRExternalOutputContextDataSource_updateVolumeMuted_outputDeviceUID___block_invoke_3;
  v4[3] = &unk_1E769CEB8;
  v4[4] = self;
  mutedCopy3 = muted;
  [(MRExternalOutputContextDataSource *)self _updateOutputDevice:d predicate:v8 update:v6 action:v4];
}

uint64_t __81__MRExternalOutputContextDataSource__updateOutputDevice_predicate_update_action___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uid];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  return isEqualToString;
}

- (id)outputDevices
{
  v38 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = obj->_outputDevices;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v4)
  {
    v5 = *v33;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        parentUID = [v7 parentUID];
        if (!parentUID)
        {
          v9 = [v7 uid];
          v10 = v9 == 0;

          if (v10)
          {
            continue;
          }

          parentUID = [v7 uid];
          [v2 setObject:v7 forKeyedSubscript:parentUID];
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v4);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = obj->_outputDevices;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v12)
  {
    v13 = *v29;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v28 + 1) + 8 * j);
        parentUID2 = [v15 parentUID];

        if (parentUID2)
        {
          parentUID3 = [v15 parentUID];
          v18 = [v2 objectForKeyedSubscript:parentUID3];

          if (!v18)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:obj file:@"MROutputContextDataSource.m" lineNumber:623 description:{@"Invalid parameter not satisfying: %@", @"parent"}];
          }

          descriptor = [v18 descriptor];
          descriptor2 = [v15 descriptor];
          [descriptor addActivatedClusterMembers:descriptor2];

          v21 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:descriptor];
          parentUID4 = [v15 parentUID];
          [v2 setObject:v21 forKeyedSubscript:parentUID4];
        }
      }

      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v12);
  }

  allValues = [v2 allValues];

  objc_sync_exit(obj);

  return allValues;
}

- (void)initializeVolumeCapabilitiesForLegacyCleints
{
  v15 = *MEMORY[0x1E69E9840];
  outputDevices = [(MRExternalOutputContextDataSource *)self outputDevices];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [outputDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(outputDevices);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 volumeCapabilities])
        {
          [(MRExternalOutputContextDataSource *)v8 initializeVolumeCapabilitiesForLegacyCleints];
        }
      }

      v5 = [outputDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  volumeControlCapabilities = [(MRExternalOutputContextDataSource *)self volumeControlCapabilities];
  if (volumeControlCapabilities)
  {
    [(MROutputContextDataSource *)self notifyVolumeCapabilitiesDidChange:volumeControlCapabilities outputDevice:0];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableArray *)selfCopy->_outputDevices msv_map:&__block_literal_global_155];
  objc_sync_exit(selfCopy);

  [coderCopy encodeObject:v5 forKey:@"outputDevices"];
  [coderCopy encodeObject:selfCopy->_uniqueIdentifier forKey:@"uid"];
}

- (MRExternalOutputContextDataSource)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = [v4 alloc];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v8 = [v6 initWithArray:v7];

  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"outputDevices"];
  v10 = [v9 msv_map:&__block_literal_global_167];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uid"];

  v12 = [[MRExternalOutputContextDataSource alloc] initWithUniqueIdentifier:v11];
  v13 = [v10 mutableCopy];
  outputDevices = v12->_outputDevices;
  v12->_outputDevices = v13;

  v12->_masterVolumeControlCapabilities = [(MRExternalOutputContextDataSource *)v12 _calculateMasterVolumeCapabilities];
  v12->_masterVolume = [(MRExternalOutputContextDataSource *)v12 _calculateMasterVolume];
  v12->_groupVolumeMuted = [(MRExternalOutputContextDataSource *)v12 _calculateGroupMute];

  return v12;
}

MRAVDistantOutputDevice *__51__MRExternalOutputContextDataSource_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v2];

  return v3;
}

- (void)_updateOutputDevices:(id *)devices
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (devices)
  {
    v4 = [devices[4] mutableCopy];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      v23 = v5;
      do
      {
        v9 = 0;
        do
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v25 + 1) + 8 * v9);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __58__MRExternalOutputContextDataSource__updateOutputDevices___block_invoke;
          v24[3] = &unk_1E769CDC0;
          v24[4] = v10;
          v11 = [v4 msv_firstWhere:v24];
          if (v11)
          {
            v13 = [v10 mergingVolumeFrom:v11];
            [devices[4] removeObject:v11];
            [devices[4] addObject:v13];
            [(MROutputContextDataSource *)devices notifyOutputDeviceChanged:v13];
            volumeCapabilities = [v13 volumeCapabilities];
            if (volumeCapabilities != [v11 volumeCapabilities])
            {
              [(MROutputContextDataSource *)devices notifyVolumeCapabilitiesDidChange:v13 outputDevice:?];
            }

            [v13 volume];
            v16 = v15;
            [v11 volume];
            if (vabds_f32(v16, v17) > 0.00000011921)
            {
              [v13 volume];
              [(MROutputContextDataSource *)devices notifyVolumeDidChange:v13 outputDevice:v21];
            }

            isVolumeMuted = [v13 isVolumeMuted];
            v5 = v23;
            if (isVolumeMuted != [v11 isVolumeMuted])
            {
              [(MROutputContextDataSource *)devices notifyVolumeMutedDidChange:v13 outputDevice:?];
            }
          }

          else
          {
            v12 = [v10 uid];

            if (v12)
            {
              v19 = [MRAVDistantOutputDevice alloc];
              descriptor = [v10 descriptor];
              v13 = [(MRAVDistantOutputDevice *)v19 initWithDescriptor:descriptor];

              [devices[4] addObject:v13];
              [(MROutputContextDataSource *)devices notifyOutputDeviceAdded:v13];
              [(MRExternalOutputContextDataSource *)devices _reevaluateMasterVolumeControlCapabilities];
              [(MRExternalOutputContextDataSource *)devices _reevaluateMasterVolume];
              [(MRExternalOutputContextDataSource *)devices _reevaluateGroupVolumeMuted];
            }

            else
            {
              v13 = _MRLogForCategory(0);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v30 = v10;
                _os_log_fault_impl(&dword_1A2860000, v13, OS_LOG_TYPE_FAULT, "Empty outputDeviceUID: %@", buf, 0xCu);
              }
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v22 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
        v7 = v22;
      }

      while (v22);
    }
  }
}

- (void)_reevaluateMasterVolumeControlCapabilities
{
  if (self)
  {
    _calculateMasterVolumeCapabilities = [(MRExternalOutputContextDataSource *)self _calculateMasterVolumeCapabilities];
    if (_calculateMasterVolumeCapabilities != *(self + 44))
    {
      *(self + 44) = _calculateMasterVolumeCapabilities;
      v3 = OUTLINED_FUNCTION_35();

      [(MROutputContextDataSource *)v3 notifyVolumeCapabilitiesDidChange:v4 outputDevice:v5];
    }
  }
}

- (void)_reevaluateMasterVolume
{
  if (self)
  {
    [(MRExternalOutputContextDataSource *)self _calculateMasterVolume];
    OUTLINED_FUNCTION_36();
    if (!(v6 ^ v7 | v5))
    {
      *&self[v3] = v4;
      v8 = *&self[*(v2 + 3380)];

      [(MROutputContextDataSource *)self notifyVolumeDidChange:v8 outputDevice:?];
    }
  }
}

- (void)_reevaluateGroupVolumeMuted
{
  if (self)
  {
    _calculateGroupMute = [(MRExternalOutputContextDataSource *)self _calculateGroupMute];
    if (*(self + 48) != _calculateGroupMute)
    {
      *(self + 48) = _calculateGroupMute;
      v3 = OUTLINED_FUNCTION_35();

      [(MROutputContextDataSource *)v3 notifyVolumeMutedDidChange:v4 outputDevice:v5];
    }
  }
}

void __85__MRExternalOutputContextDataSource_updateVolumeControlCapabilities_outputDeviceUID___block_invoke_3(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  [(MROutputContextDataSource *)v2 notifyVolumeCapabilitiesDidChange:v3 outputDevice:?];
  v4 = *(v1 + 32);

  [(MRExternalOutputContextDataSource *)v4 _reevaluateMasterVolumeControlCapabilities];
}

void __66__MRExternalOutputContextDataSource_updateVolume_outputDeviceUID___block_invoke_3(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  [(MROutputContextDataSource *)v2 notifyVolumeDidChange:v3 outputDevice:*(v1 + 40)];
  v4 = *(v1 + 32);

  [(MRExternalOutputContextDataSource *)v4 _reevaluateMasterVolume];
}

void __71__MRExternalOutputContextDataSource_updateVolumeMuted_outputDeviceUID___block_invoke_3(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  [(MROutputContextDataSource *)v2 notifyVolumeMutedDidChange:v3 outputDevice:?];
  v4 = *(v1 + 32);

  [(MRExternalOutputContextDataSource *)v4 _reevaluateGroupVolumeMuted];
}

- (uint64_t)_calculateMasterVolumeCapabilities
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_1();
  v3 = *(v2 + 32);
  v11 = OUTLINED_FUNCTION_13_0(v3, v4, v5, v6, v7, v8, v9, v10, v25, v27, v29, v31, v33, v35, v37, v39, v41);
  if (v11)
  {
    v12 = v11;
    LODWORD(v13) = 0;
    OUTLINED_FUNCTION_32();
    do
    {
      for (i = 0; i != v12; ++i)
      {
        OUTLINED_FUNCTION_14_0();
        if (!v15)
        {
          objc_enumerationMutation(v1);
        }

        volumeCapabilities = [*(v28 + 8 * i) volumeCapabilities];
        v13 = volumeCapabilities | v13;
      }

      v12 = OUTLINED_FUNCTION_12_0(volumeCapabilities, v17, v18, v19, v20, v21, v22, v23, v26, v28, v30, v32, v34, v36, v38, v40, v42);
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (float)_calculateMasterVolume
{
  if (!self)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_10_1();
  v3 = *(v2 + 32);
  v11 = OUTLINED_FUNCTION_13_0(v3, v4, v5, v6, v7, v8, v9, v10, v28, v30, v32, v34, v36, v38, v40, v42, v44);
  if (v11)
  {
    v12 = v11;
    OUTLINED_FUNCTION_32();
    v13 = 0.0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        OUTLINED_FUNCTION_14_0();
        if (!v15)
        {
          objc_enumerationMutation(v1);
        }

        v16 = *(v31 + 8 * i);
        volumeCapabilities = [v16 volumeCapabilities];
        if ((volumeCapabilities & 2) != 0)
        {
          volumeCapabilities = [v16 volume];
          if (v25 > v13)
          {
            volumeCapabilities = [v16 volume];
            v13 = v26;
          }
        }
      }

      v12 = OUTLINED_FUNCTION_12_0(volumeCapabilities, v18, v19, v20, v21, v22, v23, v24, v29, v31, v33, v35, v37, v39, v41, v43, v45);
    }

    while (v12);
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (uint64_t)_calculateGroupMute
{
  if (self)
  {
    OUTLINED_FUNCTION_10_1();
    v3 = *(v2 + 32);
    v11 = OUTLINED_FUNCTION_13_0(v3, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v32, v34, v36, v38, v40, v42);
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v1);
          }

          v16 = *(v29 + 8 * i);
          volumeCapabilities = [v16 volumeCapabilities];
          if ((volumeCapabilities & 8) != 0)
          {
            volumeCapabilities = [v16 isVolumeMuted];
            v13 |= volumeCapabilities;
          }
        }

        v12 = OUTLINED_FUNCTION_12_0(volumeCapabilities, v18, v19, v20, v21, v22, v23, v24, v27, v29, v31, v33, v35, v37, v39, v41, v43);
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

@end