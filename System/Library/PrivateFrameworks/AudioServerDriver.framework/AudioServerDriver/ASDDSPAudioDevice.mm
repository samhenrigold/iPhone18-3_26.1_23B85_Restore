@interface ASDDSPAudioDevice
+ (id)dspItemsInConfiguration:(id)configuration notInConfiguration:(id)inConfiguration;
- (ASDDSPAudioDevice)initWithDeviceUID:(id)d underlyingDevice:(id)device deviceDSPDatabase:(id)database plugin:(id)plugin;
- (BOOL)applyDeviceDSPConfiguration:(id)configuration;
- (BOOL)applyStreamDSPConfiguration:(id)configuration toStream:(id)stream;
- (BOOL)requestConfigurationChangeForDevice:(id)device withBlock:(id)block;
- (BOOL)underlyingDeviceHasAllProperties:(id)properties;
- (BOOL)updateDeviceDSPConfiguration;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (id)findDSPConfigurationForCurrentState;
- (id)willDoReadInputBlock;
- (id)willDoWriteMixBlock;
- (int)setupIsolatedIOForStream:(id)stream frameSize:(unsigned int)size useCase:(unint64_t)case;
- (int)startIOForClient:(unsigned int)client;
- (int)stopIOForClient:(unsigned int)client;
- (int)teardownIsolatedIOForStream:(id)stream useCase:(unint64_t)case;
- (void)addInputStream:(id)stream;
- (void)addOutputStream:(id)stream;
- (void)changedProperty:(const AudioObjectPropertyAddress *)property forObject:(id)object;
- (void)removeInputStream:(id)stream;
- (void)removeOutputStream:(id)stream;
- (void)updateDeviceDSPConfiguration;
@end

@implementation ASDDSPAudioDevice

- (ASDDSPAudioDevice)initWithDeviceUID:(id)d underlyingDevice:(id)device deviceDSPDatabase:(id)database plugin:(id)plugin
{
  v49 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  databaseCopy = database;
  v45.receiver = self;
  v45.super_class = ASDDSPAudioDevice;
  v13 = [(ASDAudioDevice *)&v45 initWithDeviceUID:d withPlugin:plugin];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_underlyingDevice, device);
    objc_storeStrong(&v14->_dspDatabase, database);
    referencedUnderlyingDeviceProperties = [(ASDAudioDeviceDSPDatabase *)v14->_dspDatabase referencedUnderlyingDeviceProperties];
    v16 = [(ASDDSPAudioDevice *)v14 underlyingDeviceHasAllProperties:referencedUnderlyingDeviceProperties];

    if (v16)
    {
      [deviceCopy setConfigurationChangeDelegate:v14];
      [deviceCopy setPropertyChangedDelegate:v14];
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      inputStreams = [deviceCopy inputStreams];
      v18 = [inputStreams countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v42;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v42 != v20)
            {
              objc_enumerationMutation(inputStreams);
            }

            [*(*(&v41 + 1) + 8 * i) setPropertyChangedDelegate:v14];
          }

          v19 = [inputStreams countByEnumeratingWithState:&v41 objects:v48 count:16];
        }

        while (v19);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      outputStreams = [deviceCopy outputStreams];
      v23 = [outputStreams countByEnumeratingWithState:&v37 objects:v47 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v38;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v38 != v25)
            {
              objc_enumerationMutation(outputStreams);
            }

            [*(*(&v37 + 1) + 8 * j) setPropertyChangedDelegate:v14];
          }

          v24 = [outputStreams countByEnumeratingWithState:&v37 objects:v47 count:16];
        }

        while (v24);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      controls = [deviceCopy controls];
      v28 = [controls countByEnumeratingWithState:&v33 objects:v46 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v34;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v34 != v30)
            {
              objc_enumerationMutation(controls);
            }

            [*(*(&v33 + 1) + 8 * k) setPropertyChangedDelegate:v14];
          }

          v29 = [controls countByEnumeratingWithState:&v33 objects:v46 count:16];
        }

        while (v29);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASDDSPAudioDevice initWithDeviceUID:v14 underlyingDevice:? deviceDSPDatabase:? plugin:?];
      }

      controls = v14;
      v14 = 0;
    }
  }

  return v14;
}

- (BOOL)underlyingDeviceHasAllProperties:(id)properties
{
  v72 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = [propertiesCopy countByEnumeratingWithState:&v41 objects:v71 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v42;
    v9 = 1;
    v10 = MEMORY[0x277D86220];
    *&v6 = 138415362;
    v28 = v6;
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(propertiesCopy);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        v40 = 0;
        audioObjectPropertyAddress = 0;
        audioObjectPropertyAddress = [v12 audioObjectPropertyAddress];
        v40 = v13;
        if (![(ASDAudioDevice *)self->_underlyingDevice hasProperty:&audioObjectPropertyAddress])
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            deviceUID = [(ASDAudioDevice *)self deviceUID];
            if ([v12 selector] < 0x20000000)
            {
              v37 = 32;
            }

            else
            {
              if ([v12 selector] > 2130706431)
              {
                v14 = 32;
              }

              else
              {
                v14 = [v12 selector] >> 24;
              }

              v37 = v14;
            }

            if (([v12 selector] << 8) < 0x20000000 || (objc_msgSend(v12, "selector") << 8) > 2130706431)
            {
              v15 = 32;
            }

            else
            {
              v15 = ([v12 selector] << 8) >> 24;
            }

            v36 = v15;
            if ([v12 selector] < 0x2000 || objc_msgSend(v12, "selector") > 32511)
            {
              v16 = 32;
            }

            else
            {
              v16 = [v12 selector] >> 8;
            }

            v35 = v16;
            if ([v12 selector] < 32 || objc_msgSend(v12, "selector") == 127)
            {
              selector = 32;
            }

            else
            {
              selector = [v12 selector];
            }

            v34 = selector;
            if ([v12 scope] < 0x20000000 || objc_msgSend(v12, "scope") > 2130706431)
            {
              v18 = 32;
            }

            else
            {
              v18 = [v12 scope] >> 24;
            }

            v33 = v18;
            if (([v12 scope] << 8) < 0x20000000 || (objc_msgSend(v12, "scope") << 8) > 2130706431)
            {
              v19 = 32;
            }

            else
            {
              v19 = ([v12 scope] << 8) >> 24;
            }

            v32 = v19;
            if ([v12 scope] < 0x2000 || objc_msgSend(v12, "scope") > 32511)
            {
              v20 = 32;
            }

            else
            {
              v20 = [v12 scope] >> 8;
            }

            v31 = v20;
            if ([v12 scope] < 32 || objc_msgSend(v12, "scope") == 127)
            {
              scope = 32;
            }

            else
            {
              scope = [v12 scope];
            }

            v30 = scope;
            if ([v12 element] < 0x20000000 || objc_msgSend(v12, "element") > 2130706431)
            {
              v22 = 32;
            }

            else
            {
              v22 = [v12 element] >> 24;
            }

            v29 = v22;
            if (([v12 element] << 8) < 0x20000000 || (objc_msgSend(v12, "element") << 8) > 2130706431)
            {
              v23 = 32;
            }

            else
            {
              v23 = ([v12 element] << 8) >> 24;
            }

            if ([v12 element] < 0x2000 || objc_msgSend(v12, "element") > 32511)
            {
              v24 = 32;
            }

            else
            {
              v24 = [v12 element] >> 8;
            }

            if ([v12 element] < 32 || objc_msgSend(v12, "element") == 127)
            {
              element = 32;
            }

            else
            {
              element = [v12 element];
            }

            *buf = v28;
            v46 = deviceUID;
            v47 = 1024;
            v48 = v37;
            v49 = 1024;
            v50 = v36;
            v51 = 1024;
            v52 = v35;
            v53 = 1024;
            v54 = v34;
            v55 = 1024;
            v56 = v33;
            v57 = 1024;
            v58 = v32;
            v59 = 1024;
            v60 = v31;
            v61 = 1024;
            v62 = v30;
            v63 = 1024;
            v64 = v29;
            v65 = 1024;
            v66 = v23;
            v67 = 1024;
            v68 = v24;
            v69 = 1024;
            v70 = element;
            _os_log_error_impl(&dword_2415D8000, v10, OS_LOG_TYPE_ERROR, "Underlying device '%@' is missing property %c%c%c%c %c%c%c%c %c%c%c%c", buf, 0x54u);

            v9 = 0;
          }

          else
          {
            v9 = 0;
          }
        }

        ++v11;
      }

      while (v7 != v11);
      v26 = [propertiesCopy countByEnumeratingWithState:&v41 objects:v71 count:16];
      v7 = v26;
    }

    while (v26);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

- (BOOL)updateDeviceDSPConfiguration
{
  v39 = *MEMORY[0x277D85DE8];
  currentDSPConfiguration = [(ASDDSPAudioDevice *)self currentDSPConfiguration];
  findDSPConfigurationForCurrentState = [(ASDDSPAudioDevice *)self findDSPConfigurationForCurrentState];
  if ([findDSPConfigurationForCurrentState isEqual:currentDSPConfiguration])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      deviceUID = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412290;
      v34 = deviceUID;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSP configuration remains unchanged on device '%@'", buf, 0xCu);
    }

LABEL_8:
    v9 = 1;
    goto LABEL_32;
  }

  if ([(ASDDSPAudioDevice *)self applyDeviceDSPConfiguration:findDSPConfigurationForCurrentState])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      name = [currentDSPConfiguration name];
      name2 = [findDSPConfigurationForCurrentState name];
      deviceUID2 = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412802;
      v34 = name;
      v35 = 2112;
      v36 = name2;
      v37 = 2112;
      v38 = deviceUID2;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSP configuration changed from '%@' to '%@' on device '%@'", buf, 0x20u);
    }

    [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:findDSPConfigurationForCurrentState];
    goto LABEL_8;
  }

  if (![(ASDAudioDevice *)self isRunning])
  {
    [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    inputStreams = [(ASDAudioDevice *)self inputStreams];
    v11 = [inputStreams countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(inputStreams);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 removeHardwareDSP];
            [v15 setCurrentDSPConfiguration:0];
          }
        }

        v12 = [inputStreams countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    outputStreams = [(ASDAudioDevice *)self outputStreams];
    v17 = [outputStreams countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(outputStreams);
          }

          v21 = *(*(&v23 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v21 removeHardwareDSP];
            [v21 setCurrentDSPConfiguration:0];
          }
        }

        v18 = [outputStreams countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v18);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(ASDDSPAudioDevice *)findDSPConfigurationForCurrentState updateDeviceDSPConfiguration];
  }

  v9 = 0;
LABEL_32:

  return v9;
}

- (id)findDSPConfigurationForCurrentState
{
  v46 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  dspDatabase = [(ASDDSPAudioDevice *)self dspDatabase];
  dspConfigurations = [dspDatabase dspConfigurations];

  v29 = [dspConfigurations countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v29)
  {
    v28 = *v40;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v40 != v28)
      {
        objc_enumerationMutation(dspConfigurations);
      }

      v30 = v5;
      v6 = *(*(&v39 + 1) + 8 * v5);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      underlyingDeviceProperties = [v6 underlyingDeviceProperties];
      v8 = [underlyingDeviceProperties countByEnumeratingWithState:&v35 objects:v44 count:16];
      v9 = v6;
      if (v8)
      {
        v10 = v8;
        v11 = *v36;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v36 != v11)
            {
              objc_enumerationMutation(underlyingDeviceProperties);
            }

            v13 = *(*(&v35 + 1) + 8 * i);
            underlyingDevice = self->_underlyingDevice;
            address = [v13 address];
            v16 = [(ASDAudioDevice *)underlyingDevice getProperty:address];

            value = [v13 value];
            LOBYTE(address) = [v16 isEqual:value];

            if ((address & 1) == 0)
            {

              v9 = 0;
              goto LABEL_16;
            }
          }

          v10 = [underlyingDeviceProperties countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        v9 = v6;
      }

LABEL_16:

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      dspDeviceProperties = [v6 dspDeviceProperties];
      v19 = [dspDeviceProperties countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v32;
        while (2)
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(dspDeviceProperties);
            }

            v23 = *(*(&v31 + 1) + 8 * j);
            address2 = [v23 address];
            v25 = [(ASDAudioDevice *)self getProperty:address2];

            value2 = [v23 value];
            LOBYTE(address2) = [v25 isEqual:value2];

            if ((address2 & 1) == 0)
            {

              goto LABEL_27;
            }
          }

          v20 = [dspDeviceProperties countByEnumeratingWithState:&v31 objects:v43 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      if (v9)
      {
        break;
      }

LABEL_27:
      v5 = v30 + 1;
      if (v30 + 1 == v29)
      {
        v29 = [dspConfigurations countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v29)
        {
          goto LABEL_3;
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    v9 = 0;
  }

  return v9;
}

- (BOOL)applyDeviceDSPConfiguration:(id)configuration
{
  v48 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  inputStreams = [(ASDAudioDevice *)self inputStreams];
  v6 = [inputStreams countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v39;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(inputStreams);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          inputDSP = [configurationCopy inputDSP];
          v13 = [inputDSP count];

          if (v8 >= v13)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ASDDSPAudioDevice applyDeviceDSPConfiguration:?];
            }

LABEL_17:
            v18 = 0;
            goto LABEL_18;
          }

          inputDSP2 = [configurationCopy inputDSP];
          v15 = [inputDSP2 objectAtIndexedSubscript:v8];

          LOBYTE(inputDSP2) = [(ASDDSPAudioDevice *)self applyStreamDSPConfiguration:v15 toStream:v11];
          if ((inputDSP2 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          deviceUID = [(ASDAudioDevice *)self deviceUID];
          streamName = [v11 streamName];
          *buf = 138412546;
          v44 = deviceUID;
          v45 = 2112;
          v46 = streamName;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Stream '%@' isn't an ASDDSPStream, skipping.", buf, 0x16u);
        }

        ++v8;
      }

      v7 = [inputStreams countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_18:

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  outputStreams = [(ASDAudioDevice *)self outputStreams];
  v20 = [outputStreams countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v33 = v18;
    v22 = 0;
    v23 = *v35;
    while (2)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(outputStreams);
        }

        v25 = *(*(&v34 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          outputDSP = [configurationCopy outputDSP];
          v27 = [outputDSP count];

          if (v22 >= v27)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ASDDSPAudioDevice applyDeviceDSPConfiguration:?];
            }

LABEL_34:
            v18 = 0;
            goto LABEL_35;
          }

          outputDSP2 = [configurationCopy outputDSP];
          v29 = [outputDSP2 objectAtIndexedSubscript:v22];

          LOBYTE(outputDSP2) = [(ASDDSPAudioDevice *)self applyStreamDSPConfiguration:v29 toStream:v25];
          if ((outputDSP2 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          deviceUID2 = [(ASDAudioDevice *)self deviceUID];
          streamName2 = [v25 streamName];
          *buf = 138412546;
          v44 = deviceUID2;
          v45 = 2112;
          v46 = streamName2;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Stream '%@' isn't an ASDDSPStream, skipping.", buf, 0x16u);
        }

        ++v22;
      }

      v21 = [outputStreams countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }

    v18 = v33;
  }

LABEL_35:

  return v18;
}

- (BOOL)applyStreamDSPConfiguration:(id)configuration toStream:(id)stream
{
  v40 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  streamCopy = stream;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = streamCopy;
    hardwareDSP = [configurationCopy hardwareDSP];
    currentDSPConfiguration = [v8 currentDSPConfiguration];
    hardwareDSP2 = [currentDSPConfiguration hardwareDSP];
    v12 = [ASDDSPAudioDevice dspItemsInConfiguration:hardwareDSP notInConfiguration:hardwareDSP2];

    if ([ASDAUStripInfo containsOnlyAUStrips:v12])
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v14)
      {
        v15 = v14;
        selfCopy = self;
        v30 = configurationCopy;
        v16 = *v32;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v31 + 1) + 8 * i);
            hardwareDSP3 = [v8 hardwareDSP];
            v20 = [ASDDSPGraphLoader applyAUStrip:v18 toGraph:hardwareDSP3];
          }

          v15 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v15);
        self = selfCopy;
        configurationCopy = v30;
      }

      else
      {
        v20 = 0;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        deviceUID = [(ASDAudioDevice *)self deviceUID];
        *buf = 138412290;
        v36 = deviceUID;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: New StreamDSPConfiguration contained only AUStrip differences", buf, 0xCu);
      }

      if (v20)
      {
LABEL_22:
        [v8 setCurrentDSPConfiguration:configurationCopy];
        v21 = 1;
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      hardwareDSP4 = [configurationCopy hardwareDSP];
      v23 = [ASDDSPGraphLoader graphWithConfiguration:hardwareDSP4];

      if (v23)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          name = [v23 name];
          deviceUID2 = [(ASDAudioDevice *)self deviceUID];
          *buf = 138412546;
          v36 = name;
          v37 = 2112;
          v38 = deviceUID2;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "New DSPGraph '%@' created on device '%@'", buf, 0x16u);
        }

        v26 = [v8 addHardwareDSP:v23];

        if (v26)
        {
          goto LABEL_22;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASDDSPAudioDevice applyStreamDSPConfiguration:? toStream:?];
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPAudioDevice applyStreamDSPConfiguration:? toStream:?];
    }

    v21 = 0;
    goto LABEL_28;
  }

  v21 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASDDSPAudioDevice currently only supports ASDDSPStreams.", buf, 2u);
    v21 = 0;
  }

LABEL_29:

  return v21;
}

+ (id)dspItemsInConfiguration:(id)configuration notInConfiguration:(id)inConfiguration
{
  v32 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  inConfigurationCopy = inConfiguration;
  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = configurationCopy;
  obj = [configurationCopy dspItems];
  v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        dspItems = [inConfigurationCopy dspItems];
        v13 = [dspItems countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (!v13)
        {

LABEL_16:
          [array addObject:v11];
          continue;
        }

        v14 = v13;
        v15 = 0;
        v16 = *v23;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(dspItems);
            }

            v15 |= [v11 isEqual:*(*(&v22 + 1) + 8 * j)];
          }

          v14 = [dspItems countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v14);

        if ((v15 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  return array;
}

- (int)startIOForClient:(unsigned int)client
{
  v3 = *&client;
  v27 = *MEMORY[0x277D85DE8];
  currentDSPConfiguration = [(ASDDSPAudioDevice *)self currentDSPConfiguration];

  if (!currentDSPConfiguration)
  {
    [(ASDDSPAudioDevice *)a2 startIOForClient:?];
  }

  v7 = [(ASDAudioDevice *)self->_underlyingDevice startIOForClient:v3];
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      deviceUID = [(ASDAudioDevice *)self->_underlyingDevice deviceUID];
      v9 = deviceUID;
      v10 = v7 >> 24;
      if (((v7 >> 24) - 32) >= 0x5F)
      {
        v10 = 32;
      }

      v11 = v7 << 8 >> 24;
      if ((v11 - 32) >= 0x5F)
      {
        v11 = 32;
      }

      v12 = v7 >> 8;
      if ((v12 - 32) >= 0x5F)
      {
        v12 = 32;
      }

      *buf = 138413314;
      v18 = deviceUID;
      v19 = 1024;
      v20 = v10;
      v21 = 1024;
      v22 = v11;
      v23 = 1024;
      v24 = v12;
      if ((v7 - 32) >= 0x5F)
      {
        v13 = 32;
      }

      else
      {
        v13 = v7;
      }

      v25 = 1024;
      v26 = v13;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Underlying device '%@' failed to start with error: %c%c%c%c", buf, 0x24u);
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = ASDDSPAudioDevice;
    if ([(ASDAudioDevice *)&v16 startIOForClient:v3])
    {
      [(ASDDSPAudioDevice *)self startIOForClient:a2];
    }
  }

  return v7;
}

- (int)stopIOForClient:(unsigned int)client
{
  v3 = *&client;
  v27 = *MEMORY[0x277D85DE8];
  currentDSPConfiguration = [(ASDDSPAudioDevice *)self currentDSPConfiguration];

  if (!currentDSPConfiguration)
  {
    [(ASDDSPAudioDevice *)a2 stopIOForClient:?];
  }

  v16.receiver = self;
  v16.super_class = ASDDSPAudioDevice;
  v7 = [(ASDAudioDevice *)&v16 stopIOForClient:v3];
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15.receiver = self;
      v15.super_class = ASDDSPAudioDevice;
      deviceUID = [(ASDAudioDevice *)&v15 deviceUID];
      v9 = deviceUID;
      v10 = v7 >> 24;
      if (((v7 >> 24) - 32) >= 0x5F)
      {
        v10 = 32;
      }

      v11 = v7 << 8 >> 24;
      if ((v11 - 32) >= 0x5F)
      {
        v11 = 32;
      }

      v12 = v7 >> 8;
      if ((v12 - 32) >= 0x5F)
      {
        v12 = 32;
      }

      *buf = 138413314;
      v18 = deviceUID;
      v19 = 1024;
      v20 = v10;
      v21 = 1024;
      v22 = v11;
      v23 = 1024;
      v24 = v12;
      if ((v7 - 32) >= 0x5F)
      {
        v13 = 32;
      }

      else
      {
        v13 = v7;
      }

      v25 = 1024;
      v26 = v13;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASDAudioDevice '%@' failed to stop with error: %c%c%c%c", buf, 0x24u);
    }
  }

  else if ([(ASDAudioDevice *)self->_underlyingDevice stopIOForClient:v3])
  {
    [(ASDDSPAudioDevice *)&self->_underlyingDevice stopIOForClient:a2, self];
  }

  return v7;
}

- (int)setupIsolatedIOForStream:(id)stream frameSize:(unsigned int)size useCase:(unint64_t)case
{
  v6 = *&size;
  v37 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = streamCopy;
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    underlyingStreams = [v9 underlyingStreams];
    v26 = [v10 initWithCapacity:{objc_msgSend(underlyingStreams, "count")}];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    underlyingStreams2 = [v9 underlyingStreams];
    v13 = [underlyingStreams2 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v25 = streamCopy;
      v15 = *v32;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(underlyingStreams2);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = [(ASDAudioDevice *)self->_underlyingDevice setupIsolatedIOForStream:v17 frameSize:v6 useCase:case];
          if (v18)
          {
            v19 = v18;

            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            underlyingStreams2 = v26;
            v20 = [underlyingStreams2 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v28;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v28 != v22)
                  {
                    objc_enumerationMutation(underlyingStreams2);
                  }

                  [(ASDAudioDevice *)self->_underlyingDevice teardownIsolatedIOForStream:*(*(&v27 + 1) + 8 * j) useCase:case];
                }

                v21 = [underlyingStreams2 countByEnumeratingWithState:&v27 objects:v35 count:16];
              }

              while (v21);
            }

            goto LABEL_19;
          }

          [v26 addObject:v17];
        }

        v14 = [underlyingStreams2 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v19 = 0;
LABEL_19:
      streamCopy = v25;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = [(ASDAudioDevice *)self->_underlyingDevice setupIsolatedIOForStream:streamCopy frameSize:v6 useCase:case];
  }

  return v19;
}

- (int)teardownIsolatedIOForStream:(id)stream useCase:(unint64_t)case
{
  v20 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    underlyingStreams = [streamCopy underlyingStreams];
    v8 = [underlyingStreams countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(underlyingStreams);
          }

          v13 = [(ASDAudioDevice *)self->_underlyingDevice teardownIsolatedIOForStream:*(*(&v15 + 1) + 8 * i) useCase:case];
          if (v13)
          {
            v10 = v13;
          }
        }

        v9 = [underlyingStreams countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(ASDAudioDevice *)self->_underlyingDevice teardownIsolatedIOForStream:streamCopy useCase:case];
  }

  return v10;
}

- (void)addInputStream:(id)stream
{
  streamCopy = stream;
  [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
  v5.receiver = self;
  v5.super_class = ASDDSPAudioDevice;
  [(ASDAudioDevice *)&v5 addInputStream:streamCopy];
}

- (void)removeInputStream:(id)stream
{
  streamCopy = stream;
  [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
  v5.receiver = self;
  v5.super_class = ASDDSPAudioDevice;
  [(ASDAudioDevice *)&v5 removeInputStream:streamCopy];
}

- (void)addOutputStream:(id)stream
{
  streamCopy = stream;
  [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
  v5.receiver = self;
  v5.super_class = ASDDSPAudioDevice;
  [(ASDAudioDevice *)&v5 addOutputStream:streamCopy];
}

- (void)removeOutputStream:(id)stream
{
  streamCopy = stream;
  [(ASDDSPAudioDevice *)self setCurrentDSPConfiguration:0];
  v5.receiver = self;
  v5.super_class = ASDDSPAudioDevice;
  [(ASDAudioDevice *)&v5 removeOutputStream:streamCopy];
}

- (id)willDoReadInputBlock
{
  hasInput = [(ASDAudioDevice *)self hasInput];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__ASDDSPAudioDevice_willDoReadInputBlock__block_invoke;
  v5[3] = &__block_descriptor_33_e14_i28__0I8_12_20l;
  v6 = hasInput;
  v3 = MEMORY[0x245CEBEA0](v5);

  return v3;
}

uint64_t __41__ASDDSPAudioDevice_willDoReadInputBlock__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *a3 = *(a1 + 32);
  *a4 = 1;
  return 0;
}

- (id)willDoWriteMixBlock
{
  hasOutput = [(ASDAudioDevice *)self hasOutput];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ASDDSPAudioDevice_willDoWriteMixBlock__block_invoke;
  v5[3] = &__block_descriptor_33_e14_i28__0I8_12_20l;
  v6 = hasOutput;
  v3 = MEMORY[0x245CEBEA0](v5);

  return v3;
}

uint64_t __40__ASDDSPAudioDevice_willDoWriteMixBlock__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *a3 = *(a1 + 32);
  *a4 = 1;
  return 0;
}

- (BOOL)requestConfigurationChangeForDevice:(id)device withBlock:(id)block
{
  blockCopy = block;
  plugin = [(ASDObject *)self plugin];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__ASDDSPAudioDevice_requestConfigurationChangeForDevice_withBlock___block_invoke;
  v9[3] = &unk_278CE42D0;
  v9[4] = self;
  v10 = blockCopy;
  v7 = blockCopy;
  LOBYTE(self) = [plugin requestConfigurationChangeForDevice:self withBlock:v9];

  return self;
}

uint64_t __67__ASDDSPAudioDevice_requestConfigurationChangeForDevice_withBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 updateDeviceDSPConfiguration];
}

- (void)changedProperty:(const AudioObjectPropertyAddress *)property forObject:(id)object
{
  v6 = [(ASDObject *)self plugin:property];
  [v6 changedProperty:property forObject:self];
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v185 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  v182.receiver = self;
  v182.super_class = ASDDSPAudioDevice;
  v7 = [(ASDAudioDevice *)&v182 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  currentDSPConfiguration = [(ASDDSPAudioDevice *)self currentDSPConfiguration];
  name = [currentDSPConfiguration name];
  [v7 appendFormat:@"%@|    Current DSP Configuration: %s\n", indentCopy, objc_msgSend(name, "UTF8String")];

  [v7 appendFormat:@"%@|    DSP Device Properties:\n", indentCopy];
  currentDSPConfiguration2 = [(ASDDSPAudioDevice *)self currentDSPConfiguration];
  dspDeviceProperties = [currentDSPConfiguration2 dspDeviceProperties];
  v12 = [dspDeviceProperties count];

  v173 = indentCopy;
  v172 = v7;
  selfCopy = self;
  if (v12)
  {
    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    currentDSPConfiguration3 = [(ASDDSPAudioDevice *)self currentDSPConfiguration];
    dspDeviceProperties2 = [currentDSPConfiguration3 dspDeviceProperties];

    obj = dspDeviceProperties2;
    v92 = [dspDeviceProperties2 countByEnumeratingWithState:&v178 objects:v184 count:16];
    if (v92)
    {
      v90 = *v179;
      do
      {
        v15 = 0;
        do
        {
          if (*v179 != v90)
          {
            objc_enumerationMutation(obj);
          }

          v170 = v15;
          v16 = *(*(&v178 + 1) + 8 * v15);
          v17 = MEMORY[0x277CCACA8];
          value = [v16 value];
          v19 = [v17 stringWithFormat:@"%@", value];

          v168 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2853456D8];

          address = [v16 address];
          selector = [address selector];
          if (selector < 0x20000000 || ([v16 address], v89 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v89, "selector") > 2130706431))
          {
            v164 = 0;
            v146 = 32;
          }

          else
          {
            address2 = [v16 address];
            v146 = ([address2 selector] >> 24);
            v164 = 1;
          }

          address3 = [v16 address];
          v160 = [address3 selector] << 8;
          if (v160 < 0x20000000 || ([v16 address], v88 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v88, "selector") << 8) > 2130706431))
          {
            v158 = 0;
            v140 = 32;
          }

          else
          {
            address4 = [v16 address];
            v140 = (([address4 selector] << 8) >> 24);
            v158 = 1;
          }

          address5 = [v16 address];
          selector2 = [address5 selector];
          if (selector2 < 0x2000 || ([v16 address], v87 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v87, "selector") > 32511))
          {
            v152 = 0;
            v134 = 32;
          }

          else
          {
            address6 = [v16 address];
            v134 = ([address6 selector] >> 8);
            v152 = 1;
          }

          address7 = [v16 address];
          selector3 = [address7 selector];
          if (selector3 < 32 || ([v16 address], v86 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v86, "selector") == 127))
          {
            v144 = 0;
            selector4 = 32;
          }

          else
          {
            address8 = [v16 address];
            selector4 = [address8 selector];
            v144 = 1;
          }

          address9 = [v16 address];
          scope = [address9 scope];
          if (scope < 0x20000000 || ([v16 address], v85 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v85, "scope") > 2130706431))
          {
            v136 = 0;
            v118 = 32;
          }

          else
          {
            address10 = [v16 address];
            v118 = ([address10 scope] >> 24);
            v136 = 1;
          }

          address11 = [v16 address];
          v130 = [address11 scope] << 8;
          if (v130 < 0x20000000 || ([v16 address], v84 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v84, "scope") << 8) > 2130706431))
          {
            v128 = 0;
            v112 = 32;
          }

          else
          {
            address12 = [v16 address];
            v112 = (([address12 scope] << 8) >> 24);
            v128 = 1;
          }

          address13 = [v16 address];
          scope2 = [address13 scope];
          if (scope2 < 0x2000 || ([v16 address], v83 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v83, "scope") > 32511))
          {
            v120 = 0;
            v104 = 32;
          }

          else
          {
            address14 = [v16 address];
            v104 = ([address14 scope] >> 8);
            v120 = 1;
          }

          address15 = [v16 address];
          scope3 = [address15 scope];
          if (scope3 < 32 || ([v16 address], v82 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v82, "scope") == 127))
          {
            v110 = 0;
            scope4 = 32;
          }

          else
          {
            address16 = [v16 address];
            scope4 = [address16 scope];
            v110 = 1;
          }

          address17 = [v16 address];
          element = [address17 element];
          if (element < 0x20000000 || ([v16 address], v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v81, "element") > 2130706431))
          {
            v102 = 0;
            v94 = 32;
          }

          else
          {
            address18 = [v16 address];
            v94 = ([address18 element] >> 24);
            v102 = 1;
          }

          address19 = [v16 address];
          v21 = [address19 element] << 8;
          if (v21 < 0x20000000 || ([v16 address], v80 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v80, "element") << 8) > 2130706431))
          {
            v96 = 0;
            v22 = 32;
          }

          else
          {
            address20 = [v16 address];
            v22 = (([address20 element] << 8) >> 24);
            v96 = 1;
          }

          address21 = [v16 address];
          element2 = [address21 element];
          if (element2 < 0x2000 || ([v16 address], v79 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v79, "element") > 32511))
          {
            v26 = 0;
            v25 = 32;
          }

          else
          {
            address22 = [v16 address];
            v25 = ([address22 element] >> 8);
            v26 = 1;
          }

          address23 = [v16 address];
          if ([address23 element] < 32)
          {
            v29 = v168;
            v58 = v25;
            v7 = v172;
            [v172 appendFormat:@"%@|     - %c%c%c%c %c%c%c%c %c%c%c%c : %@\n", indentCopy, v146, v140, v134, selector4, v118, v112, v104, scope4, v94, v22, v58, 32, v168];
          }

          else
          {
            address24 = [v16 address];
            if ([address24 element] == 127)
            {
              v29 = v168;
              v57 = v25;
              v7 = v172;
              [v172 appendFormat:@"%@|     - %c%c%c%c %c%c%c%c %c%c%c%c : %@\n", v173, v146, v140, v134, selector4, v118, v112, v104, scope4, v94, v22, v57, 32, v168];
            }

            else
            {
              [v16 address];
              v30 = v64 = address;
              v29 = v168;
              v59 = v25;
              v7 = v172;
              [v172 appendFormat:@"%@|     - %c%c%c%c %c%c%c%c %c%c%c%c : %@\n", v173, v146, v140, v134, selector4, v118, v112, v104, scope4, v94, v22, v59, objc_msgSend(v30, "element"), v168];

              address = v64;
            }

            indentCopy = v173;
          }

          if (v26)
          {
          }

          if (element2 >= 0x2000)
          {
          }

          if (v96)
          {
          }

          if (v21 >= 0x20000000)
          {
          }

          if (v102)
          {
          }

          if (element >= 0x20000000)
          {
          }

          if (v110)
          {
          }

          if (scope3 >= 32)
          {
          }

          if (v120)
          {
          }

          if (scope2 >= 0x2000)
          {
          }

          if (v128)
          {
          }

          if (v130 >= 0x20000000)
          {
          }

          if (v136)
          {
          }

          if (scope >= 0x20000000)
          {
          }

          if (v144)
          {
          }

          if (selector3 >= 32)
          {
          }

          if (v152)
          {
          }

          if (selector2 >= 0x2000)
          {
          }

          if (v158)
          {
          }

          if (v160 >= 0x20000000)
          {
          }

          if (v164)
          {
          }

          if (selector >= 0x20000000)
          {
          }

          v15 = v170 + 1;
        }

        while (v92 != v170 + 1);
        v92 = [obj countByEnumeratingWithState:&v178 objects:v184 count:16];
      }

      while (v92);
    }

    self = selfCopy;
  }

  [v7 appendFormat:@"%@|    Underlying Device Properties:\n", indentCopy];
  currentDSPConfiguration4 = [(ASDDSPAudioDevice *)self currentDSPConfiguration];
  underlyingDeviceProperties = [currentDSPConfiguration4 underlyingDeviceProperties];
  v33 = [underlyingDeviceProperties count];

  v34 = selfCopy;
  if (v33)
  {
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    currentDSPConfiguration5 = [(ASDDSPAudioDevice *)selfCopy currentDSPConfiguration];
    underlyingDeviceProperties2 = [currentDSPConfiguration5 underlyingDeviceProperties];

    obja = underlyingDeviceProperties2;
    v93 = [underlyingDeviceProperties2 countByEnumeratingWithState:&v174 objects:v183 count:16];
    if (v93)
    {
      v91 = *v175;
      do
      {
        v37 = 0;
        do
        {
          if (*v175 != v91)
          {
            objc_enumerationMutation(obja);
          }

          v171 = v37;
          v38 = *(*(&v174 + 1) + 8 * v37);
          v39 = MEMORY[0x277CCACA8];
          value2 = [v38 value];
          v41 = [v39 stringWithFormat:@"%@", value2];

          v169 = [v41 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2853456D8];

          address25 = [v38 address];
          selector5 = [address25 selector];
          if (selector5 < 0x20000000 || ([v38 address], v89 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v89, "selector") > 2130706431))
          {
            v165 = 0;
            v147 = 32;
          }

          else
          {
            address2 = [v38 address];
            v147 = ([address2 selector] >> 24);
            v165 = 1;
          }

          address26 = [v38 address];
          v161 = [address26 selector] << 8;
          if (v161 < 0x20000000 || ([v38 address], v88 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v88, "selector") << 8) > 2130706431))
          {
            v159 = 0;
            v141 = 32;
          }

          else
          {
            address4 = [v38 address];
            v141 = (([address4 selector] << 8) >> 24);
            v159 = 1;
          }

          address27 = [v38 address];
          selector6 = [address27 selector];
          if (selector6 < 0x2000 || ([v38 address], v87 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v87, "selector") > 32511))
          {
            v153 = 0;
            v135 = 32;
          }

          else
          {
            address6 = [v38 address];
            v135 = ([address6 selector] >> 8);
            v153 = 1;
          }

          address28 = [v38 address];
          selector7 = [address28 selector];
          if (selector7 < 32 || ([v38 address], v86 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v86, "selector") == 127))
          {
            v145 = 0;
            selector8 = 32;
          }

          else
          {
            address8 = [v38 address];
            selector8 = [address8 selector];
            v145 = 1;
          }

          address29 = [v38 address];
          scope5 = [address29 scope];
          if (scope5 < 0x20000000 || ([v38 address], v85 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v85, "scope") > 2130706431))
          {
            v137 = 0;
            v119 = 32;
          }

          else
          {
            address10 = [v38 address];
            v119 = ([address10 scope] >> 24);
            v137 = 1;
          }

          address30 = [v38 address];
          v131 = [address30 scope] << 8;
          if (v131 < 0x20000000 || ([v38 address], v84 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v84, "scope") << 8) > 2130706431))
          {
            v129 = 0;
            v113 = 32;
          }

          else
          {
            address12 = [v38 address];
            v113 = (([address12 scope] << 8) >> 24);
            v129 = 1;
          }

          address31 = [v38 address];
          scope6 = [address31 scope];
          if (scope6 < 0x2000 || ([v38 address], v83 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v83, "scope") > 32511))
          {
            v121 = 0;
            v105 = 32;
          }

          else
          {
            address14 = [v38 address];
            v105 = ([address14 scope] >> 8);
            v121 = 1;
          }

          address32 = [v38 address];
          scope7 = [address32 scope];
          if (scope7 < 32 || ([v38 address], v82 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v82, "scope") == 127))
          {
            v111 = 0;
            scope8 = 32;
          }

          else
          {
            address16 = [v38 address];
            scope8 = [address16 scope];
            v111 = 1;
          }

          address33 = [v38 address];
          element3 = [address33 element];
          if (element3 < 0x20000000 || ([v38 address], v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v81, "element") > 2130706431))
          {
            v103 = 0;
            v95 = 32;
          }

          else
          {
            address18 = [v38 address];
            v95 = ([address18 element] >> 24);
            v103 = 1;
          }

          address34 = [v38 address];
          v43 = [address34 element] << 8;
          if (v43 < 0x20000000 || ([v38 address], v80 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v80, "element") << 8) > 2130706431))
          {
            v97 = 0;
            v44 = 32;
          }

          else
          {
            address20 = [v38 address];
            v44 = (([address20 element] << 8) >> 24);
            v97 = 1;
          }

          address35 = [v38 address];
          element4 = [address35 element];
          if (element4 < 0x2000 || ([v38 address], v79 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v79, "element") > 32511))
          {
            v48 = 0;
            v47 = 32;
          }

          else
          {
            address22 = [v38 address];
            v47 = ([address22 element] >> 8);
            v48 = 1;
          }

          address36 = [v38 address];
          if ([address36 element] < 32)
          {
            v51 = v169;
            v61 = v47;
            v7 = v172;
            [v172 appendFormat:@"%@|     - %c%c%c%c %c%c%c%c %c%c%c%c : %@\n", indentCopy, v147, v141, v135, selector8, v119, v113, v105, scope8, v95, v44, v61, 32, v169];
          }

          else
          {
            address37 = [v38 address];
            if ([address37 element] == 127)
            {
              v51 = v169;
              v60 = v47;
              v7 = v172;
              [v172 appendFormat:@"%@|     - %c%c%c%c %c%c%c%c %c%c%c%c : %@\n", v173, v147, v141, v135, selector8, v119, v113, v105, scope8, v95, v44, v60, 32, v169];
            }

            else
            {
              [v38 address];
              v52 = v65 = address25;
              v51 = v169;
              v62 = v47;
              v7 = v172;
              [v172 appendFormat:@"%@|     - %c%c%c%c %c%c%c%c %c%c%c%c : %@\n", v173, v147, v141, v135, selector8, v119, v113, v105, scope8, v95, v44, v62, objc_msgSend(v52, "element"), v169];

              address25 = v65;
            }

            indentCopy = v173;
          }

          if (v48)
          {
          }

          if (element4 >= 0x2000)
          {
          }

          if (v97)
          {
          }

          if (v43 >= 0x20000000)
          {
          }

          if (v103)
          {
          }

          if (element3 >= 0x20000000)
          {
          }

          if (v111)
          {
          }

          if (scope7 >= 32)
          {
          }

          if (v121)
          {
          }

          if (scope6 >= 0x2000)
          {
          }

          if (v129)
          {
          }

          if (v131 >= 0x20000000)
          {
          }

          if (v137)
          {
          }

          if (scope5 >= 0x20000000)
          {
          }

          if (v145)
          {
          }

          if (selector7 >= 32)
          {
          }

          if (v153)
          {
          }

          if (selector6 >= 0x2000)
          {
          }

          if (v159)
          {
          }

          if (v161 >= 0x20000000)
          {
          }

          if (v165)
          {
          }

          if (selector5 >= 0x20000000)
          {
          }

          v37 = v171 + 1;
        }

        while (v93 != v171 + 1);
        v93 = [obja countByEnumeratingWithState:&v174 objects:v183 count:16];
      }

      while (v93);
    }

    v34 = selfCopy;
  }

  [v7 appendFormat:@"%@|    Underlying device:\n", indentCopy];
  underlyingDevice = [(ASDDSPAudioDevice *)v34 underlyingDevice];

  if (underlyingDevice)
  {
    underlyingDevice2 = [(ASDDSPAudioDevice *)v34 underlyingDevice];
    [v7 appendFormat:@"%@|        Object ID: %u\n", indentCopy, objc_msgSend(underlyingDevice2, "objectID")];
  }

  v55 = v7;

  return v7;
}

- (void)initWithDeviceUID:(void *)a1 underlyingDevice:deviceDSPDatabase:plugin:.cold.1(void *a1)
{
  v1 = [a1 deviceUID];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_3(&dword_2415D8000, MEMORY[0x277D86220], v2, "Underlying device '%@' doesn't have all properties specified in database.", v3, v4, v5, v6);
}

- (void)updateDeviceDSPConfiguration
{
  v9 = *MEMORY[0x277D85DE8];
  name = [self name];
  deviceUID = [a2 deviceUID];
  v5 = 138412546;
  v6 = name;
  v7 = 2112;
  v8 = deviceUID;
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DSP configuration '%@' couldn't be applied on device '%@'", &v5, 0x16u);
}

- (void)applyDeviceDSPConfiguration:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 deviceUID];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_3(&dword_2415D8000, MEMORY[0x277D86220], v2, "Can't find an input stream configuration in database. The DSP device '%@' is now in an inconsistent state.", v3, v4, v5, v6);
}

- (void)applyDeviceDSPConfiguration:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 deviceUID];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_3(&dword_2415D8000, MEMORY[0x277D86220], v2, "Can't find an output stream configuration in database. The DSP device '%@' is now in an inconsistent state.", v3, v4, v5, v6);
}

- (void)applyStreamDSPConfiguration:(void *)a1 toStream:.cold.1(void *a1)
{
  v1 = [a1 deviceUID];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_3(&dword_2415D8000, MEMORY[0x277D86220], v2, "%@: Graph is nil", v3, v4, v5, v6);
}

- (void)applyStreamDSPConfiguration:(void *)a1 toStream:.cold.2(void *a1)
{
  v1 = [a1 deviceUID];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_3(&dword_2415D8000, MEMORY[0x277D86220], v2, "Error adding hardware DSP. The DSP device '%@' is now in an inconsistent state.", v3, v4, v5, v6);
}

- (void)startIOForClient:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASDDSPAudioDevice.m" lineNumber:358 description:@"Starting IO without a DSP configuration"];
}

- (void)startIOForClient:(uint64_t)a3 .cold.2(void *a1, objc_super *a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  a2->receiver = a1;
  a2->super_class = ASDDSPAudioDevice;
  v7 = [(objc_super *)a2 deviceUID];
  [v6 handleFailureInMethod:a3 object:a1 file:@"ASDDSPAudioDevice.m" lineNumber:365 description:{@"%@: ASDAudioDevice startIOForClient must succeed", v7}];
}

- (void)stopIOForClient:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASDDSPAudioDevice.m" lineNumber:378 description:@"Stopping IO without a DSP configuration"];
}

- (void)stopIOForClient:(uint64_t)a3 .cold.2(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = [*a1 deviceUID];
  [v6 handleFailureInMethod:a2 object:a3 file:@"ASDDSPAudioDevice.m" lineNumber:385 description:{@"%@: Underlying stopIOForClient must succeed", v7}];
}

@end