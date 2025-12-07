@interface ASABox
- (BOOL)hasAudio;
- (BOOL)hasMIDI;
- (BOOL)hasVideo;
- (BOOL)identify;
- (BOOL)isAcquired;
- (BOOL)isProtected;
- (NSArray)audioDeviceObjectIDs;
- (NSArray)audioDevices;
- (NSArray)clockDeviceObjectIDs;
- (NSArray)clockDevices;
- (NSString)boxUID;
- (NSString)firmwareVersion;
- (NSString)manufacturer;
- (NSString)modelName;
- (NSString)modelUID;
- (NSString)name;
- (NSString)serialNumber;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (int)acquisitionFailure;
- (unsigned)transportType;
- (void)setAcquired:(BOOL)acquired;
- (void)setIdentify:(BOOL)identify;
- (void)setName:(id)name;
@end

@implementation ASABox

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

- (NSString)modelName
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1819111268 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
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
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read model name property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (NSString)serialNumber
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1936618861 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
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
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read serial number property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (NSString)firmwareVersion
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1719105134 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
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
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read firmware version property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (NSString)boxUID
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1651861860 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
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
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read box UID property\n", v4, 2u);
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

- (BOOL)hasAudio
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1651007861 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read has audio property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)hasVideo
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1651013225 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read has video property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)hasMIDI
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1651010921 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read has MIDI property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)isProtected
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1651536495 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read is protected property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)isAcquired
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1652060014 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read acquired property\n", v3, 2u);
  }

  return v4 != 0;
}

- (void)setAcquired:(BOOL)acquired
{
  acquiredCopy = acquired;
  if ([(ASABox *)self isAcquireSettable])
  {
    v5 = acquiredCopy;
    [(ASAObject *)self setMainGlobalProperty:1652060014 withData:&v5 ofSize:4 withQualifier:0 ofSize:0];
  }
}

- (int)acquisitionFailure
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1652060006 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read acquisition failure property\n", v3, 2u);
  }

  return v4;
}

- (BOOL)identify
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1768187246 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read identify property\n", v3, 2u);
  }

  return v4 != 0;
}

- (void)setIdentify:(BOOL)identify
{
  identifyCopy = identify;
  if ([(ASABox *)self isIdentifySettable])
  {
    v5 = identifyCopy;
    [(ASAObject *)self setMainGlobalProperty:1768187246 withData:&v5 ofSize:4 withQualifier:0 ofSize:0];
  }
}

- (NSArray)audioDeviceObjectIDs
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1650751011 withQualifier:0 ofSize:0];
  v15 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0x9A243BFBuLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    v7 = [(ASAObject *)self getMainGlobalProperty:1650751011 withData:v6 ofSize:&v15 withQualifier:0 ofSize:0];
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

- (NSArray)audioDevices
{
  v18 = *MEMORY[0x277D85DE8];
  audioDeviceObjectIDs = [(ASABox *)self audioDeviceObjectIDs];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = audioDeviceObjectIDs;
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
        v10 = [ASAAudioDevice alloc];
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

- (NSArray)clockDeviceObjectIDs
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1650682915 withQualifier:0 ofSize:0];
  v15 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0xA0973024uLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    v7 = [(ASAObject *)self getMainGlobalProperty:1650682915 withData:v6 ofSize:&v15 withQualifier:0 ofSize:0];
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

- (NSArray)clockDevices
{
  v18 = *MEMORY[0x277D85DE8];
  clockDeviceObjectIDs = [(ASABox *)self clockDeviceObjectIDs];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = clockDeviceObjectIDs;
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
        v10 = [ASAClockDevice alloc];
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

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v68 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  v65.receiver = self;
  v65.super_class = ASABox;
  v7 = [(ASAObject *)&v65 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  v56 = [indentCopy stringByAppendingString:@"|        "];
  name = [(ASABox *)self name];
  [v7 appendFormat:@"%@|    Name: %s\n", indentCopy, objc_msgSend(name, "UTF8String")];

  manufacturer = [(ASABox *)self manufacturer];
  [v7 appendFormat:@"%@|    Manufacturer: %s\n", indentCopy, objc_msgSend(manufacturer, "UTF8String")];

  modelName = [(ASABox *)self modelName];
  [v7 appendFormat:@"%@|    Model Name: %s\n", indentCopy, objc_msgSend(modelName, "UTF8String")];

  serialNumber = [(ASABox *)self serialNumber];
  [v7 appendFormat:@"%@|    Serial Number: %s\n", indentCopy, objc_msgSend(serialNumber, "UTF8String")];

  firmwareVersion = [(ASABox *)self firmwareVersion];
  [v7 appendFormat:@"%@|    Firmware Version: %s\n", indentCopy, objc_msgSend(firmwareVersion, "UTF8String")];

  boxUID = [(ASABox *)self boxUID];
  [v7 appendFormat:@"%@|    Box UID: %s\n", indentCopy, objc_msgSend(boxUID, "UTF8String")];

  modelUID = [(ASABox *)self modelUID];
  [v7 appendFormat:@"%@|    Model UID: %s\n", indentCopy, objc_msgSend(modelUID, "UTF8String")];

  transportType = [(ASABox *)self transportType];
  LODWORD(v16) = transportType >> 24;
  if (((transportType >> 24) - 32) >= 0x5F)
  {
    v16 = 32;
  }

  else
  {
    v16 = v16;
  }

  LODWORD(v17) = transportType << 8 >> 24;
  if ((v17 - 32) >= 0x5F)
  {
    v17 = 32;
  }

  else
  {
    v17 = v17;
  }

  LODWORD(v18) = transportType >> 8;
  if ((v18 - 32) >= 0x5F)
  {
    v18 = 32;
  }

  else
  {
    v18 = v18;
  }

  if ((transportType - 32) >= 0x5F)
  {
    v19 = 32;
  }

  else
  {
    v19 = transportType;
  }

  [v7 appendFormat:@"%@|    Transport Type: %c%c%c%c\n", indentCopy, v16, v17, v18, v19];
  if ([(ASABox *)self hasAudio])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  [v7 appendFormat:@"%@|    Has Audio: %@\n", indentCopy, v20];
  if ([(ASABox *)self hasVideo])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v7 appendFormat:@"%@|    Has Video: %@\n", indentCopy, v21];
  if ([(ASABox *)self hasMIDI])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v7 appendFormat:@"%@|    Has MIDI: %@\n", indentCopy, v22];
  if ([(ASABox *)self isProtected])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Protected: %@\n", indentCopy, v23];
  if ([(ASABox *)self isAcquired])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v7 appendFormat:@"%@|    Acquired: %@\n", indentCopy, v24];
  if ([(ASABox *)self isAcquireSettable])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Acquire Settable: %@\n", indentCopy, v25];
  if ([(ASABox *)self isIdentifySettable])
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Identify Settable: %@\n", indentCopy, v26];
  if ([(ASABox *)self isNameSettable])
  {
    v27 = @"YES";
  }

  else
  {
    v27 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Name Settable: %@\n", indentCopy, v27];
  acquisitionFailure = [(ASABox *)self acquisitionFailure];
  LODWORD(v29) = acquisitionFailure >> 24;
  if (((acquisitionFailure >> 24) - 32) >= 0x5F)
  {
    v29 = 32;
  }

  else
  {
    v29 = v29;
  }

  LODWORD(v30) = acquisitionFailure << 8 >> 24;
  if ((v30 - 32) >= 0x5F)
  {
    v30 = 32;
  }

  else
  {
    v30 = v30;
  }

  LODWORD(v31) = acquisitionFailure >> 8;
  if ((v31 - 32) >= 0x5F)
  {
    v31 = 32;
  }

  else
  {
    v31 = v31;
  }

  if ((acquisitionFailure - 32) >= 0x5F)
  {
    v32 = 32;
  }

  else
  {
    v32 = acquisitionFailure;
  }

  v33 = indentCopy;
  [v7 appendFormat:@"%@|    Acquisition Failure: %c%c%c%c\n", indentCopy, v29, v30, v31, v32];
  audioDeviceObjectIDs = [(ASABox *)self audioDeviceObjectIDs];
  v55 = audioDeviceObjectIDs;
  if ([audioDeviceObjectIDs count])
  {
    selfCopy = self;
    [v7 appendFormat:@"%@|    Device Objects:\n", indentCopy];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v35 = audioDeviceObjectIDs;
    v36 = [v35 countByEnumeratingWithState:&v61 objects:v67 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = 0;
      v39 = *v62;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v62 != v39)
          {
            objc_enumerationMutation(v35);
          }

          if (treeCopy)
          {
            v41 = -[ASAObject initWithAudioObjectID:]([ASAAudioDevice alloc], "initWithAudioObjectID:", [*(*(&v61 + 1) + 8 * i) unsignedIntValue]);
            v42 = [(ASAAudioDevice *)v41 diagnosticDescriptionWithIndent:v56 walkTree:1];
            [v7 appendString:v42];
          }

          else
          {
            [v7 appendFormat:@"%@|        %u: %u\n", v33, v38, objc_msgSend(*(*(&v61 + 1) + 8 * i), "unsignedIntValue")];
          }

          v38 = (v38 + 1);
        }

        v37 = [v35 countByEnumeratingWithState:&v61 objects:v67 count:16];
      }

      while (v37);
    }

    self = selfCopy;
    audioDeviceObjectIDs = v55;
  }

  clockDeviceObjectIDs = [(ASABox *)self clockDeviceObjectIDs];
  if ([clockDeviceObjectIDs count])
  {
    [v7 appendFormat:@"%@|    Clock Device Objects:\n", v33];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v54 = clockDeviceObjectIDs;
    v44 = clockDeviceObjectIDs;
    v45 = [v44 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = 0;
      v48 = *v58;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v58 != v48)
          {
            objc_enumerationMutation(v44);
          }

          if (treeCopy)
          {
            v50 = -[ASAObject initWithAudioObjectID:]([ASAClockDevice alloc], "initWithAudioObjectID:", [*(*(&v57 + 1) + 8 * j) unsignedIntValue]);
            v51 = [(ASAClockDevice *)v50 diagnosticDescriptionWithIndent:v56 walkTree:1];
            [v7 appendString:v51];
          }

          else
          {
            [v7 appendFormat:@"%@|        %u: %u\n", v33, v47, objc_msgSend(*(*(&v57 + 1) + 8 * j), "unsignedIntValue")];
          }

          v47 = (v47 + 1);
        }

        v46 = [v44 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v46);
    }

    clockDeviceObjectIDs = v54;
    audioDeviceObjectIDs = v55;
  }

  return v7;
}

@end