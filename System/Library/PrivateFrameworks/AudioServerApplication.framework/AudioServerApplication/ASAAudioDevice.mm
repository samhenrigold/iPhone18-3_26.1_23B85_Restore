@interface ASAAudioDevice
- (BOOL)acquireHogMode;
- (BOOL)canBeDefaultDevice;
- (BOOL)canBeDefaultInputDevice;
- (BOOL)canBeDefaultOutputDevice;
- (BOOL)canBeDefaultSystemDevice;
- (BOOL)createAudioProcID:(void *)d forIOProc:(void *)proc withClientData:(void *)data error:(id *)error;
- (BOOL)destroyAudioProcID:(void *)d error:(id *)error;
- (BOOL)externalSecureMute;
- (BOOL)isAlive;
- (BOOL)isHidden;
- (BOOL)isReferenceStreamEnabled;
- (BOOL)isRunning;
- (BOOL)setInputStreamUsage:(id)usage forAudioProc:(void *)proc;
- (BOOL)setOutputStreamUsage:(id)usage forAudioProc:(void *)proc;
- (BOOL)startAudioProc:(void *)proc error:(id *)error;
- (BOOL)stopAudioProc:(void *)proc error:(id *)error;
- (BOOL)supportsHeySiri;
- (NSArray)controlObjectIDs;
- (NSArray)controls;
- (NSArray)inputStreamObjectIDs;
- (NSArray)inputStreams;
- (NSArray)nominalSampleRateRanges;
- (NSArray)nominalSampleRates;
- (NSArray)outputStreamObjectIDs;
- (NSArray)outputStreams;
- (NSArray)relatedDeviceObjectIDs;
- (NSDictionary)aggregateDescription;
- (NSDictionary)clientDescription;
- (NSDictionary)deviceDescription;
- (NSDictionary)headsetInfo;
- (NSString)clockDeviceUID;
- (NSString)deviceUID;
- (NSString)manufacturer;
- (NSString)modelUID;
- (NSString)name;
- (NSURL)iconURL;
- (OS_os_workgroup)ioThreadOSWorkgroup;
- (double)actualSampleRate;
- (double)nominalSampleRate;
- (float)ioCycleUsage;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (id)inputStreamUsageForAudioProc:(void *)proc;
- (id)outputStreamUsageForAudioProc:(void *)proc;
- (int)hogModeOwner;
- (unsigned)clockDomain;
- (unsigned)inputLatency;
- (unsigned)inputSafetyOffset;
- (unsigned)ioBufferFrameSize;
- (unsigned)isolatedUseCaseID;
- (unsigned)maximumIOBufferFrameSize;
- (unsigned)minimumIOBufferFrameSize;
- (unsigned)outputLatency;
- (unsigned)outputSafetyOffset;
- (unsigned)transportType;
- (unsigned)zeroTimestampPeriod;
- (void)setClientDescription:(id)description;
- (void)setClockDeviceUID:(id)d;
- (void)setEnableReferenceStream:(BOOL)stream;
- (void)setExternalSecureMute:(BOOL)mute;
- (void)setIoThreadOSWorkgroup:(id)workgroup;
- (void)setName:(id)name;
- (void)setNominalSampleRate:(double)rate;
@end

@implementation ASAAudioDevice

- (NSString)name
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1819173229 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithString:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read name property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (void)setName:(id)name
{
  nameCopy = name;
  [(ASAObject *)self setMainGlobalProperty:1819173229 withData:&nameCopy ofSize:8 withQualifier:0 ofSize:0];
}

- (NSString)manufacturer
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1819107691 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithString:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read manufacturer property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (NSString)deviceUID
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1969841184 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithString:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read device UID property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (NSString)modelUID
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1836411236 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithString:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read model UID property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (unsigned)transportType
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1953653102 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read transport type property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)clockDomain
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1668049764 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read clock domain property\n", v3, 2u);
  }

  return v4;
}

- (BOOL)isAlive
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1818850926 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read is active property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)isRunning
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1735354734 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read is running property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)canBeDefaultDevice
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1684434036 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read can be default device property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)canBeDefaultInputDevice
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainInputProperty:1684434036 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read can be default device property (input)\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)canBeDefaultOutputDevice
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainOutputProperty:1684434036 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read can be default device property (output)\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)canBeDefaultSystemDevice
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1936092276 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read can be default system device property\n", v3, 2u);
  }

  return v4 != 0;
}

- (double)nominalSampleRate
{
  v5 = 8;
  v4 = 0.0;
  if (![(ASAObject *)self getMainGlobalProperty:1853059700 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read nominal sample rate property\n", v3, 2u);
  }

  return v4;
}

- (void)setNominalSampleRate:(double)rate
{
  rateCopy = rate;
  if (![(ASAObject *)self setMainGlobalProperty:1853059700 withData:&rateCopy ofSize:8 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not write nominal sample rate property\n", v3, 2u);
  }
}

- (BOOL)isHidden
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1751737454 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read is hidden property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)supportsHeySiri
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1685276755 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read supports Hey Siri property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)externalSecureMute
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1702392685 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read ExternalSecureMute property\n", v3, 2u);
  }

  return v4 != 0;
}

- (void)setExternalSecureMute:(BOOL)mute
{
  muteCopy = mute;
  if (![(ASAObject *)self setMainGlobalProperty:1702392685 withData:&muteCopy ofSize:4 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not set kAudioDevicePropertyExternalSecureMute\n", v3, 2u);
  }
}

- (unsigned)inputLatency
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainInputProperty:1819569763 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read input latency property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)outputLatency
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainOutputProperty:1819569763 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read output latency property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)inputSafetyOffset
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainInputProperty:1935763060 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read input safety offset property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)outputSafetyOffset
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainOutputProperty:1935763060 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read output safety offset property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)zeroTimestampPeriod
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1919512167 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read zero timestamp period property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)ioBufferFrameSize
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainOutputProperty:1718839674 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read IO buffer frame size property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)minimumIOBufferFrameSize
{
  v6[0] = 0.0;
  v6[1] = 0.0;
  v5 = 16;
  if ([(ASAObject *)self getMainOutputProperty:1718843939 withData:v6 ofSize:&v5 withQualifier:0 ofSize:0])
  {
    return v6[0];
  }

  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v3)
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read IO buffer frame size range property\n", v4, 2u);
    return 0;
  }

  return result;
}

- (unsigned)maximumIOBufferFrameSize
{
  v5 = 0;
  v6 = 0.0;
  v4 = 16;
  if ([(ASAObject *)self getMainOutputProperty:1718843939 withData:&v5 ofSize:&v4 withQualifier:0 ofSize:0])
  {
    return v6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read IO buffer frame size range property\n", v3, 2u);
  }

  return -1;
}

- (OS_os_workgroup)ioThreadOSWorkgroup
{
  v6 = 8;
  v5 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1869838183 withData:&v5 ofSize:&v6 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read IO thread OS workgroup property", v4, 2u);
  }

  v2 = v5;

  return v2;
}

- (void)setIoThreadOSWorkgroup:(id)workgroup
{
  workgroupCopy = workgroup;
  [(ASAObject *)self setMainGlobalProperty:1869838183 withData:&workgroupCopy ofSize:8 withQualifier:0 ofSize:0];
}

- (float)ioCycleUsage
{
  v5 = 4;
  v4 = 0.0;
  if (![(ASAObject *)self getMainGlobalProperty:1852012899 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read io cycle usage property\n", v3, 2u);
  }

  return v4;
}

- (BOOL)isReferenceStreamEnabled
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainOutputProperty:1952542820 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read reference stream enabled property\n", v3, 2u);
  }

  return v4 != 0;
}

- (void)setEnableReferenceStream:(BOOL)stream
{
  streamCopy = stream;
  if (![(ASAObject *)self setMainOutputProperty:1952542820 withData:&streamCopy ofSize:4 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not set reference stream enabled property\n", v3, 2u);
  }
}

- (int)hogModeOwner
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = 4;
  if (![(ASAObject *)self getMainGlobalProperty:1869180523 withData:&v5 ofSize:&v6 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    deviceUID = [(ASAAudioDevice *)self deviceUID];
    *buf = 138412290;
    v8 = deviceUID;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read hog mode property on %@", buf, 0xCu);
  }

  return v5;
}

- (BOOL)acquireHogMode
{
  v5 = getpid();
  hogModeOwner = [(ASAAudioDevice *)self hogModeOwner];
  if (hogModeOwner == v5)
  {
    return 1;
  }

  if (hogModeOwner == -1)
  {
    return [(ASAObject *)self setMainGlobalProperty:1869180523 withData:&v5 ofSize:4 withQualifier:0 ofSize:0];
  }

  return 0;
}

- (double)actualSampleRate
{
  v5 = 8;
  v4 = 0.0;
  if (![(ASAObject *)self getMainGlobalProperty:1634955892 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read actual sample rate property\n", v3, 2u);
  }

  return v4;
}

- (NSArray)relatedDeviceObjectIDs
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1634429294 withQualifier:0 ofSize:0];
  v15 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0x231C7FADuLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    v7 = [(ASAObject *)self getMainGlobalProperty:1634429294 withData:v6 ofSize:&v15 withQualifier:0 ofSize:0];
    array = 0;
    if (v7)
    {
      v9 = v15;
      array = [MEMORY[0x277CBEB18] array];
      if (v9 >= 4)
      {
        v10 = v9 >> 2;
        v11 = v6;
        do
        {
          v12 = *v11++;
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
          [array addObject:v13];

          --v10;
        }

        while (v10);
      }
    }

    free(v6);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (NSArray)nominalSampleRates
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1853059619 withQualifier:0 ofSize:0];
  v15 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0x22349368uLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    v7 = [(ASAObject *)self getMainGlobalProperty:1853059619 withData:v6 ofSize:&v15 withQualifier:0 ofSize:0];
    array = 0;
    if (v7)
    {
      v9 = v15;
      array = [MEMORY[0x277CBEB18] array];
      if (v9 >= 0x10)
      {
        v10 = v9 >> 4;
        v11 = v6 + 1;
        do
        {
          v12 = *(v11 - 1);
          if (v12 == *v11)
          {
            *&v12 = v12;
            v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
            [array addObject:v13];
          }

          v11 += 2;
          --v10;
        }

        while (v10);
      }
    }

    free(v6);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (NSArray)nominalSampleRateRanges
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1853059619 withQualifier:0 ofSize:0];
  v14 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0x62B44E26uLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    v7 = [(ASAObject *)self getMainGlobalProperty:1853059619 withData:v6 ofSize:&v14 withQualifier:0 ofSize:0];
    array = 0;
    if (v7)
    {
      v9 = v14;
      array = [MEMORY[0x277CBEB18] array];
      if (v9 >= 0x10)
      {
        v10 = v9 >> 4;
        v11 = v6 + 1;
        do
        {
          v12 = [ASASampleRateRange rangeWithMinimum:*(v11 - 1) maximum:*v11];
          [array addObject:v12];

          v11 += 2;
          --v10;
        }

        while (v10);
      }
    }

    free(v6);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (NSArray)inputStreamObjectIDs
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainInputProperty:1937009955 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0x1A7169B6uLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainInputProperty:1937009955 withData:v7 ofSize:&v13 withQualifier:0 ofSize:0]&& v13 >= 4)
      {
        v8 = v13 >> 2;
        v9 = v7;
        do
        {
          v10 = *v9++;
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
          [array addObject:v11];

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return array;
}

- (NSArray)inputStreams
{
  v18 = *MEMORY[0x277D85DE8];
  inputStreamObjectIDs = [(ASAAudioDevice *)self inputStreamObjectIDs];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = inputStreamObjectIDs;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [ASAStream alloc];
        v11 = -[ASAObject initWithAudioObjectID:](v10, "initWithAudioObjectID:", [v9 unsignedIntValue]);
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return array;
}

- (NSArray)outputStreamObjectIDs
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainOutputProperty:1937009955 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0xF0EE4D5BuLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainOutputProperty:1937009955 withData:v7 ofSize:&v13 withQualifier:0 ofSize:0]&& v13 >= 4)
      {
        v8 = v13 >> 2;
        v9 = v7;
        do
        {
          v10 = *v9++;
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
          [array addObject:v11];

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return array;
}

- (NSArray)outputStreams
{
  v18 = *MEMORY[0x277D85DE8];
  outputStreamObjectIDs = [(ASAAudioDevice *)self outputStreamObjectIDs];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = outputStreamObjectIDs;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [ASAStream alloc];
        v11 = -[ASAObject initWithAudioObjectID:](v10, "initWithAudioObjectID:", [v9 unsignedIntValue]);
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return array;
}

- (NSArray)controlObjectIDs
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainGlobalProperty:1668575852 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0x23347282uLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainGlobalProperty:1668575852 withData:v7 ofSize:&v13 withQualifier:0 ofSize:0]&& v13 >= 4)
      {
        v8 = v13 >> 2;
        v9 = v7;
        do
        {
          v10 = *v9++;
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
          [array addObject:v11];

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return array;
}

- (NSArray)controls
{
  v21 = *MEMORY[0x277D85DE8];
  controlObjectIDs = [(ASAAudioDevice *)self controlObjectIDs];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = controlObjectIDs;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [ASAObject alloc];
        v11 = -[ASAObject initWithAudioObjectID:](v10, "initWithAudioObjectID:", [v9 unsignedIntValue]);
        baseClass = [(ASAObject *)v11 baseClass];
        if (baseClass > 1936483441)
        {
          if (baseClass != 1936483442)
          {
            v13 = off_278CE2A50;
            if (baseClass == 1953458028)
            {
              goto LABEL_15;
            }

            goto LABEL_12;
          }

          v13 = off_278CE2AA0;
        }

        else
        {
          if (baseClass != 1818588780)
          {
            if (baseClass == 1936483188)
            {
              v13 = off_278CE2A98;
              goto LABEL_15;
            }

LABEL_12:
            v13 = off_278CE2A68;
            goto LABEL_15;
          }

          v13 = off_278CE2A78;
        }

LABEL_15:
        v14 = [objc_alloc(*v13) initWithAudioObjectID:{-[ASAObject objectID](v11, "objectID")}];
        if (v14)
        {
          [array addObject:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return array;
}

- (NSURL)iconURL
{
  if (![(ASAObject *)self hasMainGlobalProperty:1768124270])
  {
    goto LABEL_7;
  }

  cf = 0;
  v6 = 8;
  if (![(ASAObject *)self getMainOutputProperty:1768124270 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read output icon property\n", v5, 2u);
  }

  if (cf)
  {
    absoluteURL = [cf absoluteURL];
    CFRelease(cf);
  }

  else
  {
LABEL_7:
    absoluteURL = 0;
  }

  return absoluteURL;
}

- (NSString)clockDeviceUID
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1634755428 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithString:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read clock device UID property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (void)setClockDeviceUID:(id)d
{
  dCopy = d;
  if (![(ASAObject *)self setMainGlobalProperty:1634755428 withData:&dCopy ofSize:8 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read clock device UID property\n", v3, 2u);
  }
}

- (NSDictionary)aggregateDescription
{
  if ([(ASAAudioDevice *)self isAggregate])
  {
    v7 = 8;
    cf = 0;
    if ([(ASAObject *)self getMainGlobalProperty:1633906541 withData:&cf ofSize:&v7 withQualifier:0 ofSize:0])
    {
      if (cf)
      {
        v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
        CFRelease(cf);
        goto LABEL_8;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read aggregate description property\n", v5, 2u);
    }
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (NSDictionary)headsetInfo
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1751474532 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read headset info property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (void)setClientDescription:(id)description
{
  descriptionCopy = description;
  if (![(ASAObject *)self setMainGlobalProperty:1667523955 withData:&descriptionCopy ofSize:8 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not set client dictionary property\n", v3, 2u);
  }
}

- (NSDictionary)clientDescription
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1667523955 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read client description property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (NSDictionary)deviceDescription
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1684301171 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
  {
    if (cf)
    {
      v2 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read device description property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v126 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  v120.receiver = self;
  v120.super_class = ASAAudioDevice;
  v99 = treeCopy;
  v7 = [(ASAObject *)&v120 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  v8 = [indentCopy stringByAppendingString:@"|        "];
  name = [(ASAAudioDevice *)self name];
  [v7 appendFormat:@"%@|    Name: %s\n", indentCopy, objc_msgSend(name, "UTF8String")];

  manufacturer = [(ASAAudioDevice *)self manufacturer];
  [v7 appendFormat:@"%@|    Manufacturer: %s\n", indentCopy, objc_msgSend(manufacturer, "UTF8String")];

  deviceUID = [(ASAAudioDevice *)self deviceUID];
  [v7 appendFormat:@"%@|    Device UID: %s\n", indentCopy, objc_msgSend(deviceUID, "UTF8String")];

  modelUID = [(ASAAudioDevice *)self modelUID];
  [v7 appendFormat:@"%@|    Model UID: %s\n", indentCopy, objc_msgSend(modelUID, "UTF8String")];

  transportType = [(ASAAudioDevice *)self transportType];
  LODWORD(v14) = transportType >> 24;
  if (((transportType >> 24) - 32) >= 0x5F)
  {
    v14 = 32;
  }

  else
  {
    v14 = v14;
  }

  LODWORD(v15) = transportType << 8 >> 24;
  if ((v15 - 32) >= 0x5F)
  {
    v15 = 32;
  }

  else
  {
    v15 = v15;
  }

  LODWORD(v16) = transportType >> 8;
  if ((v16 - 32) >= 0x5F)
  {
    v16 = 32;
  }

  else
  {
    v16 = v16;
  }

  if ((transportType - 32) >= 0x5F)
  {
    v17 = 32;
  }

  else
  {
    v17 = transportType;
  }

  [v7 appendFormat:@"%@|    Transport Type: %c%c%c%c\n", indentCopy, v14, v15, v16, v17];
  [v7 appendFormat:@"%@|    Clock Domain: 0x%08x\n", indentCopy, -[ASAAudioDevice clockDomain](self, "clockDomain")];
  if ([(ASAAudioDevice *)self isAlive])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Active: %@\n", indentCopy, v18];
  if ([(ASAAudioDevice *)self isRunning])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Running: %@\n", indentCopy, v19];
  if ([(ASAAudioDevice *)self canBeDefaultDevice])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  [v7 appendFormat:@"%@|    Can Be Default Device: %@\n", indentCopy, v20];
  if ([(ASAAudioDevice *)self canBeDefaultInputDevice])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v7 appendFormat:@"%@|    Can Be Default Input Device: %@\n", indentCopy, v21];
  if ([(ASAAudioDevice *)self canBeDefaultOutputDevice])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v7 appendFormat:@"%@|    Can Be Default Output Device: %@\n", indentCopy, v22];
  if ([(ASAAudioDevice *)self canBeDefaultSystemDevice])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  [v7 appendFormat:@"%@|    Can Be Default System Device: %@\n", indentCopy, v23];
  [(ASAAudioDevice *)self nominalSampleRate];
  [v7 appendFormat:@"%@|    Nominal Sample Rate: %f\n", indentCopy, v24];
  v98 = indentCopy;
  [v7 appendFormat:@"%@|    Available Nominal Sample Rate Ranges:\n", indentCopy];
  selfCopy = self;
  [(ASAAudioDevice *)self nominalSampleRateRanges];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = v119 = 0u;
  v25 = [obj countByEnumeratingWithState:&v116 objects:v125 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = *v117;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v117 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v116 + 1) + 8 * i);
        [v30 minimum];
        v32 = v31;
        [v30 maximum];
        [v7 appendFormat:@"%@RateRange[%u]: %f - %f\n", v8, v27, v32, v33];
        v27 = (v27 + 1);
      }

      v26 = [obj countByEnumeratingWithState:&v116 objects:v125 count:16];
    }

    while (v26);
  }

  v34 = selfCopy;
  if ([(ASAAudioDevice *)selfCopy isHidden])
  {
    v35 = @"YES";
  }

  else
  {
    v35 = @"NO";
  }

  v36 = v98;
  [v7 appendFormat:@"%@|    Is Hidden: %@\n", v98, v35];
  if ([(ASAAudioDevice *)selfCopy supportsHeySiri])
  {
    v37 = @"YES";
  }

  else
  {
    v37 = @"NO";
  }

  [v7 appendFormat:@"%@|    Supports Hey Siri: %@\n", v98, v37];
  if ([(ASAAudioDevice *)selfCopy supportsExternalSecureMute])
  {
    if ([(ASAAudioDevice *)selfCopy externalSecureMute])
    {
      v38 = @"YES";
    }

    else
    {
      v38 = @"NO";
    }

    [v7 appendFormat:@"%@|    ExternalSecureMute: %@\n", v98, v38];
  }

  [v7 appendFormat:@"%@|    Input Latency: %u\n", v98, -[ASAAudioDevice inputLatency](selfCopy, "inputLatency")];
  [v7 appendFormat:@"%@|    Output Latency: %u\n", v98, -[ASAAudioDevice outputLatency](selfCopy, "outputLatency")];
  [v7 appendFormat:@"%@|    Input Safety Offset: %u\n", v98, -[ASAAudioDevice inputSafetyOffset](selfCopy, "inputSafetyOffset")];
  [v7 appendFormat:@"%@|    Output Safety Offset: %u\n", v98, -[ASAAudioDevice outputSafetyOffset](selfCopy, "outputSafetyOffset")];
  [v7 appendFormat:@"%@|    Zero Timestamp Period: %u\n", v98, -[ASAAudioDevice zeroTimestampPeriod](selfCopy, "zeroTimestampPeriod")];
  [v7 appendFormat:@"%@|    IO Buffer Frame Size: %u\n", v98, -[ASAAudioDevice ioBufferFrameSize](selfCopy, "ioBufferFrameSize")];
  [v7 appendFormat:@"%@|    Minimum IO Buffer Frame Size: %u\n", v98, -[ASAAudioDevice minimumIOBufferFrameSize](selfCopy, "minimumIOBufferFrameSize")];
  [v7 appendFormat:@"%@|    Maximum IO Buffer Frame Size: %u\n", v98, -[ASAAudioDevice maximumIOBufferFrameSize](selfCopy, "maximumIOBufferFrameSize")];
  [(ASAAudioDevice *)selfCopy ioCycleUsage];
  [v7 appendFormat:@"%@|    IO Cycle Usage: %f\n", v98, v39];
  if ([(ASAAudioDevice *)selfCopy isRunning])
  {
    [(ASAAudioDevice *)selfCopy actualSampleRate];
    [v7 appendFormat:@"%@|    Actual Sample Rate: %f\n", v98, v40];
  }

  clockDeviceUID = [(ASAAudioDevice *)selfCopy clockDeviceUID];
  v42 = clockDeviceUID;
  if (clockDeviceUID)
  {
    [v7 appendFormat:@"%@|    Clock Device UID: %s\n", v98, objc_msgSend(clockDeviceUID, "UTF8String")];
  }

  [v7 appendFormat:@"%@|    Input Streams:\n", v98];
  inputStreamObjectIDs = [(ASAAudioDevice *)selfCopy inputStreamObjectIDs];
  v94 = v42;
  if ([inputStreamObjectIDs count])
  {
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v43 = inputStreamObjectIDs;
    v44 = [v43 countByEnumeratingWithState:&v112 objects:v124 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v113;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v113 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v112 + 1) + 8 * j);
          v49 = -[ASAObject initWithAudioObjectID:]([ASAStream alloc], "initWithAudioObjectID:", [v48 unsignedIntValue]);
          v50 = v49;
          if (v49)
          {
            v51 = [(ASAStream *)v49 diagnosticDescriptionWithIndent:v8 walkTree:v99];
            [v7 appendString:v51];
          }

          else
          {
            [v7 appendFormat:@"%@Could not get stream object with ID %u\n", v8, objc_msgSend(v48, "unsignedIntValue")];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v112 objects:v124 count:16];
      }

      while (v45);
    }

    v36 = v98;
    v42 = v94;
    v34 = selfCopy;
  }

  [v7 appendFormat:@"%@|    Output Streams:\n", v36];
  outputStreamObjectIDs = [(ASAAudioDevice *)v34 outputStreamObjectIDs];
  if ([outputStreamObjectIDs count])
  {
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v52 = outputStreamObjectIDs;
    v53 = [v52 countByEnumeratingWithState:&v108 objects:v123 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v109;
      do
      {
        for (k = 0; k != v54; ++k)
        {
          if (*v109 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v108 + 1) + 8 * k);
          v58 = -[ASAObject initWithAudioObjectID:]([ASAStream alloc], "initWithAudioObjectID:", [v57 unsignedIntValue]);
          v59 = v58;
          if (v58)
          {
            v60 = [(ASAStream *)v58 diagnosticDescriptionWithIndent:v8 walkTree:v99];
            [v7 appendString:v60];
          }

          else
          {
            [v7 appendFormat:@"%@Could not get stream object with ID %u\n", v8, objc_msgSend(v57, "unsignedIntValue")];
          }
        }

        v54 = [v52 countByEnumeratingWithState:&v108 objects:v123 count:16];
      }

      while (v54);
    }

    v36 = v98;
    v42 = v94;
    v34 = selfCopy;
  }

  [v7 appendFormat:@"%@|    Controls:\n", v36];
  controlObjectIDs = [(ASAAudioDevice *)v34 controlObjectIDs];
  if ([controlObjectIDs count])
  {
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v91 = controlObjectIDs;
    v96 = controlObjectIDs;
    v62 = [v96 countByEnumeratingWithState:&v104 objects:v122 count:16];
    if (!v62)
    {
      goto LABEL_120;
    }

    v63 = v62;
    v64 = 0;
    v65 = *v105;
    while (1)
    {
      for (m = 0; m != v63; ++m)
      {
        if (*v105 != v65)
        {
          objc_enumerationMutation(v96);
        }

        v67 = -[ASAObject initWithAudioObjectID:]([ASAObject alloc], "initWithAudioObjectID:", [*(*(&v104 + 1) + 8 * m) unsignedIntValue]);
        baseClass = [(ASAObject *)v67 baseClass];
        v69 = baseClass;
        if (baseClass > 1936483441)
        {
          if (baseClass == 1936483442)
          {
            v70 = ASASliderControl;
            goto LABEL_117;
          }

          if (baseClass == 1953458028)
          {
            v70 = ASABooleanControl;
            goto LABEL_117;
          }
        }

        else
        {
          if (baseClass == 1818588780)
          {
            v70 = ASALevelControl;
            goto LABEL_117;
          }

          if (baseClass == 1936483188)
          {
            v70 = ASASelectorControl;
LABEL_117:
            v81 = [[v70 alloc] initWithAudioObjectID:{-[ASAObject objectID](v67, "objectID")}];
            v82 = [v81 diagnosticDescriptionWithIndent:v8 walkTree:v99];
            [v7 appendString:v82];

            goto LABEL_118;
          }
        }

        objectClass = [(ASAObject *)v67 objectClass];
        objectID = [(ASAObject *)v67 objectID];
        LODWORD(v73) = v69 >> 24;
        if (((v69 >> 24) - 32) >= 0x5F)
        {
          v73 = 32;
        }

        else
        {
          v73 = v73;
        }

        LODWORD(v74) = (v69 << 8) >> 24;
        if ((v74 - 32) >= 0x5F)
        {
          v74 = 32;
        }

        else
        {
          v74 = v74;
        }

        LODWORD(v75) = v69 >> 8;
        if ((v75 - 32) >= 0x5F)
        {
          v75 = 32;
        }

        else
        {
          v75 = v75;
        }

        if ((v69 - 32) >= 0x5F)
        {
          v76 = 32;
        }

        else
        {
          v76 = v69;
        }

        LODWORD(v77) = objectClass >> 24;
        if (((objectClass >> 24) - 32) >= 0x5F)
        {
          v77 = 32;
        }

        else
        {
          v77 = v77;
        }

        LODWORD(v78) = (objectClass << 8) >> 24;
        if ((v78 - 32) >= 0x5F)
        {
          v78 = 32;
        }

        else
        {
          v78 = v78;
        }

        LODWORD(v79) = objectClass >> 8;
        if ((v79 - 32) >= 0x5F)
        {
          v79 = 32;
        }

        else
        {
          v79 = v79;
        }

        if ((objectClass - 32) >= 0x5F)
        {
          v80 = 32;
        }

        else
        {
          v80 = objectClass;
        }

        [v7 appendFormat:@"%@|        %u: Object %u has unknown control class  %c%c%c%c (0x%08x) %c%c%c%c (0x%08x)\n", v98, v64, objectID, v73, v74, v75, v76, v69, v77, v78, v79, v80, objectClass];
LABEL_118:
        v64 = (v64 + 1);
      }

      v63 = [v96 countByEnumeratingWithState:&v104 objects:v122 count:16];
      if (!v63)
      {
LABEL_120:

        v36 = v98;
        v42 = v94;
        v34 = selfCopy;
        controlObjectIDs = v91;
        break;
      }
    }
  }

  relatedDeviceObjectIDs = [(ASAAudioDevice *)v34 relatedDeviceObjectIDs];
  if ([relatedDeviceObjectIDs count])
  {
    [v7 appendFormat:@"%@|    Related Device Objects:\n", v36];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v84 = relatedDeviceObjectIDs;
    v85 = [v84 countByEnumeratingWithState:&v100 objects:v121 count:16];
    if (v85)
    {
      v86 = v85;
      v87 = 0;
      v88 = *v101;
      do
      {
        for (n = 0; n != v86; ++n)
        {
          if (*v101 != v88)
          {
            objc_enumerationMutation(v84);
          }

          [v7 appendFormat:@"%@|        %u: %u\n", v98, v87, objc_msgSend(*(*(&v100 + 1) + 8 * n), "unsignedIntValue")];
          v87 = (v87 + 1);
        }

        v86 = [v84 countByEnumeratingWithState:&v100 objects:v121 count:16];
      }

      while (v86);
    }

    v36 = v98;
    v42 = v94;
  }

  return v7;
}

- (BOOL)createAudioProcID:(void *)d forIOProc:(void *)proc withClientData:(void *)data error:(id *)error
{
  IOProcID = AudioDeviceCreateIOProcID([(ASAObject *)self objectID], proc, data, d);
  v8 = IOProcID;
  if (error && IOProcID)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:IOProcID userInfo:0];
  }

  return v8 == 0;
}

- (BOOL)destroyAudioProcID:(void *)d error:(id *)error
{
  v5 = AudioDeviceDestroyIOProcID([(ASAObject *)self objectID], d);
  v6 = v5;
  if (error && v5)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
  }

  return v6 == 0;
}

- (BOOL)startAudioProc:(void *)proc error:(id *)error
{
  v5 = AudioDeviceStart([(ASAObject *)self objectID], proc);
  v6 = v5;
  if (error && v5)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
  }

  return v6 == 0;
}

- (BOOL)stopAudioProc:(void *)proc error:(id *)error
{
  v5 = AudioDeviceStop([(ASAObject *)self objectID], proc);
  v6 = v5;
  if (error && v5)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
  }

  return v6 == 0;
}

- (id)inputStreamUsageForAudioProc:(void *)proc
{
  v5 = [(ASAObject *)self sizeOfMainInputProperty:1937009955 withQualifier:0 ofSize:0];
  v14 = v5;
  if (v5 >= 4 && (v6 = v5, v14 = (v5 & 0xFFFFFFFC) + 12, (v7 = malloc_type_calloc(1uLL, v14, 0x1080040FC6463CFuLL)) != 0))
  {
    v8 = v7;
    *v7 = proc;
    v7[2] = v6 >> 2;
    v9 = [(ASAObject *)self getMainInputProperty:1937077093 withData:v7 ofSize:&v14 withQualifier:0 ofSize:0];
    array = 0;
    if (v9)
    {
      array = [MEMORY[0x277CBEB18] array];
      if (v8[2])
      {
        v11 = 0;
        do
        {
          v12 = [MEMORY[0x277CCABB0] numberWithBool:v8[v11 + 3] != 0];
          [array addObject:v12];

          ++v11;
        }

        while (v11 < v8[2]);
      }
    }

    free(v8);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (BOOL)setInputStreamUsage:(id)usage forAudioProc:(void *)proc
{
  usageCopy = usage;
  v7 = [usageCopy count];
  v8 = v7;
  if (v7 && (v9 = (4 * v7 + 12), (v10 = malloc_type_calloc(1uLL, v9, 0x1080040FC6463CFuLL)) != 0))
  {
    v11 = v10;
    v12 = 0;
    *v10 = proc;
    *(v10 + 2) = v8;
    do
    {
      v13 = [usageCopy objectAtIndexedSubscript:v12];
      v11[v12 + 3] = [v13 unsignedIntValue];

      ++v12;
    }

    while (v8 != v12);
    v14 = [(ASAObject *)self setMainInputProperty:1937077093 withData:v11 ofSize:v9 withQualifier:0 ofSize:0];
    free(v11);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)outputStreamUsageForAudioProc:(void *)proc
{
  v5 = [(ASAObject *)self sizeOfMainOutputProperty:1937009955 withQualifier:0 ofSize:0];
  v14 = v5;
  if (v5 >= 4 && (v6 = v5, v14 = (v5 & 0xFFFFFFFC) + 12, (v7 = malloc_type_calloc(1uLL, v14, 0x1080040FC6463CFuLL)) != 0))
  {
    v8 = v7;
    *v7 = proc;
    v7[2] = v6 >> 2;
    v9 = [(ASAObject *)self getMainOutputProperty:1937077093 withData:v7 ofSize:&v14 withQualifier:0 ofSize:0];
    array = 0;
    if (v9)
    {
      array = [MEMORY[0x277CBEB18] array];
      if (v8[2])
      {
        v11 = 0;
        do
        {
          v12 = [MEMORY[0x277CCABB0] numberWithBool:v8[v11 + 3] != 0];
          [array addObject:v12];

          ++v11;
        }

        while (v11 < v8[2]);
      }
    }

    free(v8);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (BOOL)setOutputStreamUsage:(id)usage forAudioProc:(void *)proc
{
  usageCopy = usage;
  v7 = [usageCopy count];
  v8 = v7;
  if (v7 && (v9 = (4 * v7 + 12), (v10 = malloc_type_calloc(1uLL, v9, 0x1080040FC6463CFuLL)) != 0))
  {
    v11 = v10;
    v12 = 0;
    *v10 = proc;
    *(v10 + 2) = v8;
    do
    {
      v13 = [usageCopy objectAtIndexedSubscript:v12];
      v11[v12 + 3] = [v13 unsignedIntValue];

      ++v12;
    }

    while (v8 != v12);
    v14 = [(ASAObject *)self setMainOutputProperty:1937077093 withData:v11 ofSize:v9 withQualifier:0 ofSize:0];
    free(v11);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unsigned)isolatedUseCaseID
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1769302372 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read Device isolate use case ID property\n", v3, 2u);
  }

  return v4;
}

@end