@interface ASAAggregateDevice
- (ASAAggregateDevice)initWithAudioObjectID:(unsigned int)d;
- (ASAAggregateDevice)initWithDevices:(id)devices usingMainDevice:(id)device andClockDevice:(id)clockDevice withName:(id)name withUID:(id)d isPrivate:(BOOL)private;
- (ASAAggregateDevice)initWithDevices:(id)devices usingMainDevice:(id)device andClockDevice:(id)clockDevice withName:(id)name withUID:(id)d isPrivate:(BOOL)private withIsolatedUseCaseID:(unsigned int)iD;
- (ASAAggregateDevice)initWithDevices:(id)devices usingMainDevice:(id)device andClockDeviceUID:(id)d withName:(id)name withUID:(id)iD isPrivate:(BOOL)private;
- (ASAAggregateDevice)initWithDevices:(id)devices usingMainDevice:(id)device andClockDeviceUID:(id)d withName:(id)name withUID:(id)iD isPrivate:(BOOL)private withIsolatedUseCaseID:(unsigned int)caseID;
- (void)dealloc;
@end

@implementation ASAAggregateDevice

- (ASAAggregateDevice)initWithAudioObjectID:(unsigned int)d
{
  v7.receiver = self;
  v7.super_class = ASAAggregateDevice;
  v4 = [(ASAObject *)&v7 initWithAudioObjectID:*&d];
  v5 = v4;
  if (v4 && ![(ASAAudioDevice *)v4 isAggregate])
  {
    [(ASAAggregateDevice *)a2 initWithAudioObjectID:v5];
  }

  return v5;
}

- (ASAAggregateDevice)initWithDevices:(id)devices usingMainDevice:(id)device andClockDevice:(id)clockDevice withName:(id)name withUID:(id)d isPrivate:(BOOL)private
{
  privateCopy = private;
  v24 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  deviceCopy = device;
  clockDeviceCopy = clockDevice;
  nameCopy = name;
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = nameCopy;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASAAggregateDevice initWithDevices with ASAAudioDevice name = %@", buf, 0xCu);
  }

  LODWORD(v21) = 0;
  v19 = [(ASAAggregateDevice *)self initWithDevices:devicesCopy usingMainDevice:deviceCopy andClockDevice:clockDeviceCopy withName:nameCopy withUID:dCopy isPrivate:privateCopy withIsolatedUseCaseID:v21];

  return v19;
}

- (ASAAggregateDevice)initWithDevices:(id)devices usingMainDevice:(id)device andClockDeviceUID:(id)d withName:(id)name withUID:(id)iD isPrivate:(BOOL)private
{
  privateCopy = private;
  devicesCopy = devices;
  deviceCopy = device;
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASAAggregateDevice initWithDevices with device UID", buf, 2u);
  }

  LODWORD(v21) = 0;
  v19 = [(ASAAggregateDevice *)self initWithDevices:devicesCopy usingMainDevice:deviceCopy andClockDeviceUID:dCopy withName:nameCopy withUID:iDCopy isPrivate:privateCopy withIsolatedUseCaseID:v21];

  return v19;
}

- (ASAAggregateDevice)initWithDevices:(id)devices usingMainDevice:(id)device andClockDevice:(id)clockDevice withName:(id)name withUID:(id)d isPrivate:(BOOL)private withIsolatedUseCaseID:(unsigned int)iD
{
  privateCopy = private;
  v119 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  deviceCopy = device;
  clockDeviceCopy = clockDevice;
  nameCopy = name;
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v118 = nameCopy;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASAAggregateDevice initWithDevices with ASAAudioDevice and Isolated usercase ID name = %@", buf, 0xCu);
  }

  if (!devicesCopy || ![devicesCopy count])
  {
    v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v27)
    {
      [(ASAAggregateDevice *)v27 initWithDevices:v28 usingMainDevice:v29 andClockDevice:v30 withName:v31 withUID:v32 isPrivate:v33 withIsolatedUseCaseID:v34];
    }

    goto LABEL_19;
  }

  if (!deviceCopy)
  {
    v45 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v45)
    {
      [(ASAAggregateDevice *)v45 initWithDevices:v46 usingMainDevice:v47 andClockDevice:v48 withName:v49 withUID:v50 isPrivate:v51 withIsolatedUseCaseID:v52];
    }

    goto LABEL_19;
  }

  if (!nameCopy || ![(__CFDictionary *)nameCopy length])
  {
    v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v37)
    {
      [(ASAAggregateDevice *)v37 initWithDevices:v38 usingMainDevice:v39 andClockDevice:v40 withName:v41 withUID:v42 isPrivate:v43 withIsolatedUseCaseID:v44];
    }

LABEL_19:
    selfCopy2 = 0;
    goto LABEL_20;
  }

  selfCopy = self;
  array = [MEMORY[0x277CBEB18] array];
  string = [MEMORY[0x277CCAB68] string];
  firstObject = [devicesCopy firstObject];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v91 = devicesCopy;
  v19 = devicesCopy;
  v20 = [v19 countByEnumeratingWithState:&v107 objects:v116 count:16];
  v90 = deviceCopy;
  v98 = clockDeviceCopy;
  v95 = nameCopy;
  v101 = dCopy;
  if (v20)
  {
    v21 = v20;
    v22 = *v108;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v108 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v107 + 1) + 8 * i);
        clockDomain = [firstObject clockDomain];
        if (clockDomain != [v24 clockDomain])
        {
          v26 = 0;
          goto LABEL_26;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v107 objects:v116 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v26 = 1;
LABEL_26:

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = v19;
  v53 = [obj countByEnumeratingWithState:&v103 objects:v115 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = @"Aggregate";
    v56 = *v104;
    do
    {
      for (j = 0; j != v54; ++j)
      {
        if (*v104 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v58 = *(*(&v103 + 1) + 8 * j);
        if (v26)
        {
          v59 = 0;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v118 = v95;
            _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "All devices in aggregate %@ share a clock domain, disabling drift compensation", buf, 0xCu);
            v59 = 0;
          }
        }

        else
        {
          deviceUID = [v98 deviceUID];
          deviceUID2 = [v58 deviceUID];
          v62 = [deviceUID isEqualToString:deviceUID2];

          v59 = v62 ^ 1u;
        }

        v113[0] = @"uid";
        deviceUID3 = [v58 deviceUID];
        v114[0] = deviceUID3;
        v113[1] = @"drift";
        v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v59];
        v114[1] = v64;
        v113[2] = @"drift quality";
        v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:127];
        v114[2] = v65;
        v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:3];

        [array addObject:v66];
        if (!v101)
        {
          deviceUID4 = [v58 deviceUID];
          [string appendFormat:@"%@%@", v55, deviceUID4];
        }

        v55 = @":";
      }

      v54 = [obj countByEnumeratingWithState:&v103 objects:v115 count:16];
    }

    while (v54);
  }

  v68 = MEMORY[0x277CCACA8];
  clockDeviceCopy = v98;
  deviceUID5 = [v98 deviceUID];
  if (deviceUID5)
  {
    deviceUID6 = [v98 deviceUID];
    v71 = [v68 stringWithFormat:@"%@", deviceUID6];
  }

  else
  {
    v71 = [v68 stringWithFormat:@"%@", &stru_285341100];
  }

  deviceCopy = v90;
  dCopy = v101;

  v72 = MEMORY[0x277CCACA8];
  deviceUID7 = [v90 deviceUID];
  nameCopy = v95;
  if (deviceUID7)
  {
    deviceUID8 = [v90 deviceUID];
    v75 = [v72 stringWithFormat:@"%@", deviceUID8];
  }

  else
  {
    v75 = [v72 stringWithFormat:@"%@", &stru_285341100];
  }

  if (v101)
  {
    v76 = [MEMORY[0x277CCAB68] stringWithString:v101];
  }

  else
  {
    v76 = string;
  }

  v111[0] = @"name";
  v111[1] = @"uid";
  v112[0] = v95;
  v112[1] = v76;
  v77 = v76;
  v111[2] = @"clock";
  v111[3] = @"master";
  v112[2] = v71;
  v112[3] = v75;
  v97 = v75;
  v112[4] = array;
  v111[4] = @"subdevices";
  v111[5] = @"private";
  v78 = [MEMORY[0x277CCABB0] numberWithBool:privateCopy];
  v112[5] = v78;
  v111[6] = @"isolated use case";
  v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:iD];
  v112[6] = v79;
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v118 = v80;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Aggregate %@", buf, 0xCu);
  }

  obja = v71;
  v81 = +[ASACoreAudio sharedCoreAudioObject];
  v82 = [v81 pluginWithBundleID:@"com.apple.audio.V5"];
  v83 = [v82 audioDeviceObjectIDWithUID:v77];
  *buf = v83;
  if (v83 && !AudioHardwareDestroyAggregateDevice(v83))
  {
    while (1)
    {
      *buf = [v82 audioDeviceObjectIDWithUID:v77];
      if (!*buf)
      {
        break;
      }

      usleep(0x186A0u);
    }
  }

  AggregateDevice = AudioHardwareCreateAggregateDevice(v80, buf);
  if (AggregateDevice)
  {
    v85 = AggregateDevice;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASAAggregateDevice initWithDevices:v85 usingMainDevice:? andClockDevice:? withName:? withUID:? isPrivate:? withIsolatedUseCaseID:?];
    }

    v86 = 0;
  }

  else
  {
    v87 = *buf;
    v88 = v82;
    for (k = v77; v87 != [v88 audioDeviceObjectIDWithUID:k]; k = v77)
    {
      usleep(0x2710u);
      v87 = *buf;
      v88 = v82;
    }

    v86 = [(ASAAggregateDevice *)selfCopy initWithAudioObjectID:*buf];
  }

  self = v86;

  selfCopy2 = self;
  devicesCopy = v91;
LABEL_20:

  return selfCopy2;
}

- (ASAAggregateDevice)initWithDevices:(id)devices usingMainDevice:(id)device andClockDeviceUID:(id)d withName:(id)name withUID:(id)iD isPrivate:(BOOL)private withIsolatedUseCaseID:(unsigned int)caseID
{
  privateCopy = private;
  v84 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  deviceCopy = device;
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v83 = nameCopy;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASAAggregateDevice initWithDevices with device UID and Isolated usercase ID name = %@", buf, 0xCu);
  }

  if (devicesCopy && [devicesCopy count])
  {
    if (deviceCopy && [deviceCopy length])
    {
      if (nameCopy && [nameCopy length])
      {
        HIDWORD(v73) = privateCopy;
        v74 = iDCopy;
        v75 = dCopy;
        selfCopy = self;
        v20 = +[ASACoreAudio sharedCoreAudioObject];
        array = [MEMORY[0x277CBEB18] array];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v22 = devicesCopy;
        v23 = [v22 countByEnumeratingWithState:&v77 objects:v81 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v78;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v78 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [v20 audioDeviceWithUID:*(*(&v77 + 1) + 8 * i)];
              if (v27)
              {
                [array addObject:v27];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v77 objects:v81 count:16];
          }

          while (v24);
        }

        if ([array count])
        {
          v28 = [v20 audioDeviceWithUID:deviceCopy];
          dCopy = v75;
          self = selfCopy;
          if (v28)
          {
            v29 = v28;
            if (v75)
            {
              v30 = [v20 clockDeviceWithUID:v75];
            }

            else
            {
              v30 = 0;
            }

            LODWORD(v73) = caseID;
            iDCopy = v74;
            self = [(ASAAggregateDevice *)selfCopy initWithDevices:array usingMainDevice:v29 andClockDevice:v30 withName:nameCopy withUID:v74 isPrivate:HIDWORD(v73) withIsolatedUseCaseID:v73];

            selfCopy2 = self;
            goto LABEL_37;
          }

          v65 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v65)
          {
            [(ASAAggregateDevice *)v65 initWithDevices:v66 usingMainDevice:v67 andClockDeviceUID:v68 withName:v69 withUID:v70 isPrivate:v71 withIsolatedUseCaseID:v72];
          }
        }

        else
        {
          v57 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          dCopy = v75;
          self = selfCopy;
          if (v57)
          {
            [(ASAAggregateDevice *)v57 initWithDevices:v58 usingMainDevice:v59 andClockDeviceUID:v60 withName:v61 withUID:v62 isPrivate:v63 withIsolatedUseCaseID:v64];
          }
        }

        selfCopy2 = 0;
        iDCopy = v74;
LABEL_37:

        goto LABEL_29;
      }

      v47 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v47)
      {
        [(ASAAggregateDevice *)v47 initWithDevices:v48 usingMainDevice:v49 andClockDevice:v50 withName:v51 withUID:v52 isPrivate:v53 withIsolatedUseCaseID:v54];
      }
    }

    else
    {
      v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v39)
      {
        [(ASAAggregateDevice *)v39 initWithDevices:v40 usingMainDevice:v41 andClockDeviceUID:v42 withName:v43 withUID:v44 isPrivate:v45 withIsolatedUseCaseID:v46];
      }
    }
  }

  else
  {
    v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v31)
    {
      [(ASAAggregateDevice *)v31 initWithDevices:v32 usingMainDevice:v33 andClockDeviceUID:v34 withName:v35 withUID:v36 isPrivate:v37 withIsolatedUseCaseID:v38];
    }
  }

  selfCopy2 = 0;
LABEL_29:

  return selfCopy2;
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = [self objectID];
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to destroy aggregate device with object ID %d, error: 0x%x", v3, 0xEu);
}

- (void)initWithAudioObjectID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASAAggregateDevice.m" lineNumber:26 description:@"Device object ID is not an aggregate device. Init with initWithDevices: instead"];
}

- (void)initWithDevices:(int)a1 usingMainDevice:andClockDevice:withName:withUID:isPrivate:withIsolatedUseCaseID:.cold.1(int a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to create aggregate with error 0x%x", v1, 8u);
}

@end