@interface ASAClockDevice
- (BOOL)isAlive;
- (BOOL)isHidden;
- (BOOL)isRunning;
- (NSArray)controlObjectIDs;
- (NSArray)controls;
- (NSArray)nominalSampleRateRanges;
- (NSArray)nominalSampleRates;
- (NSString)deviceUID;
- (NSString)manufacturer;
- (NSString)name;
- (double)nominalSampleRate;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (unsigned)clockDomain;
- (unsigned)inputLatency;
- (unsigned)outputLatency;
- (unsigned)transportType;
- (unsigned)zeroTimestampPeriod;
- (void)setName:(id)name;
- (void)setNominalSampleRate:(double)rate;
@end

@implementation ASAClockDevice

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
  if ([(ASAObject *)self getMainGlobalProperty:1668639076 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
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

- (NSArray)nominalSampleRates
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1853059619 withQualifier:0 ofSize:0];
  v14 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0xCFE97229uLL)) != 0))
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
          if (*(v11 - 1) == *v11)
          {
            v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
            [array addObject:v12];
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
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0xE91DBE65uLL)) != 0))
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

- (NSArray)controlObjectIDs
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainGlobalProperty:1668575852 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0x69C874DuLL);
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
  controlObjectIDs = [(ASAClockDevice *)self controlObjectIDs];
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

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v71 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  v68.receiver = self;
  v68.super_class = ASAClockDevice;
  v59 = treeCopy;
  v7 = [(ASAObject *)&v68 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  v8 = [indentCopy stringByAppendingString:@"|        "];
  name = [(ASAClockDevice *)self name];
  [v7 appendFormat:@"%@|    Name: %s\n", indentCopy, objc_msgSend(name, "UTF8String")];

  manufacturer = [(ASAClockDevice *)self manufacturer];
  [v7 appendFormat:@"%@|    Manufacturer: %s\n", indentCopy, objc_msgSend(manufacturer, "UTF8String")];

  deviceUID = [(ASAClockDevice *)self deviceUID];
  [v7 appendFormat:@"%@|    Device UID: %s\n", indentCopy, objc_msgSend(deviceUID, "UTF8String")];

  transportType = [(ASAClockDevice *)self transportType];
  LODWORD(v13) = transportType >> 24;
  if (((transportType >> 24) - 32) >= 0x5F)
  {
    v13 = 32;
  }

  else
  {
    v13 = v13;
  }

  LODWORD(v14) = transportType << 8 >> 24;
  if ((v14 - 32) >= 0x5F)
  {
    v14 = 32;
  }

  else
  {
    v14 = v14;
  }

  LODWORD(v15) = transportType >> 8;
  if ((v15 - 32) >= 0x5F)
  {
    v15 = 32;
  }

  else
  {
    v15 = v15;
  }

  if ((transportType - 32) >= 0x5F)
  {
    v16 = 32;
  }

  else
  {
    v16 = transportType;
  }

  [v7 appendFormat:@"%@|    Transport Type: %c%c%c%c\n", indentCopy, v13, v14, v15, v16];
  [v7 appendFormat:@"%@|    Clock Domain: 0x%08x\n", indentCopy, -[ASAClockDevice clockDomain](self, "clockDomain")];
  if ([(ASAClockDevice *)self isAlive])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Active: %@\n", indentCopy, v17];
  if ([(ASAClockDevice *)self isRunning])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Running: %@\n", indentCopy, v18];
  [(ASAClockDevice *)self nominalSampleRate];
  [v7 appendFormat:@"%@|    Nominal Sample Rate: %f\n", indentCopy, v19];
  v58 = indentCopy;
  [v7 appendFormat:@"%@|    Available Nominal Sample Rate Ranges:\n", indentCopy];
  nominalSampleRateRanges = [(ASAClockDevice *)self nominalSampleRateRanges];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v21 = [nominalSampleRateRanges countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v65;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v65 != v24)
        {
          objc_enumerationMutation(nominalSampleRateRanges);
        }

        v26 = *(*(&v64 + 1) + 8 * i);
        [v26 minimum];
        v28 = v27;
        [v26 maximum];
        [v7 appendFormat:@"%@RateRange[%u]: %f - %f\n", v8, v23, v28, v29];
        v23 = (v23 + 1);
      }

      v22 = [nominalSampleRateRanges countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v22);
  }

  isHidden = [(ASAClockDevice *)self isHidden];
  v31 = @"NO";
  if (isHidden)
  {
    v31 = @"YES";
  }

  [v7 appendFormat:@"%@|    Is Hidden: %@\n", v58, v31];
  [v7 appendFormat:@"%@|    Zero Timestamp Period: %u\n", v58, -[ASAClockDevice zeroTimestampPeriod](self, "zeroTimestampPeriod")];
  [v7 appendFormat:@"%@|    Controls:\n", v58];
  controlObjectIDs = [(ASAClockDevice *)self controlObjectIDs];
  if ([controlObjectIDs count])
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v56 = controlObjectIDs;
    obj = controlObjectIDs;
    v33 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (!v33)
    {
      goto LABEL_74;
    }

    v34 = v33;
    v35 = 0;
    v36 = *v61;
    while (1)
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v61 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v60 + 1) + 8 * j);
        if (!v59)
        {
          [v7 appendFormat:@"%@|        %u: %u\n", v58, v35, objc_msgSend(v38, "unsignedIntValue")];
          goto LABEL_72;
        }

        v39 = -[ASAObject initWithAudioObjectID:]([ASAObject alloc], "initWithAudioObjectID:", [v38 unsignedIntValue]);
        baseClass = [(ASAObject *)v39 baseClass];
        v41 = baseClass;
        if (baseClass > 1936483441)
        {
          if (baseClass == 1936483442)
          {
            v42 = ASASliderControl;
          }

          else
          {
            if (baseClass != 1953458028)
            {
LABEL_43:
              objectClass = [(ASAObject *)v39 objectClass];
              objectID = [(ASAObject *)v39 objectID];
              LODWORD(v45) = v41 >> 24;
              if (((v41 >> 24) - 32) >= 0x5F)
              {
                v45 = 32;
              }

              else
              {
                v45 = v45;
              }

              LODWORD(v46) = (v41 << 8) >> 24;
              if ((v46 - 32) >= 0x5F)
              {
                v46 = 32;
              }

              else
              {
                v46 = v46;
              }

              LODWORD(v47) = v41 >> 8;
              if ((v47 - 32) >= 0x5F)
              {
                v47 = 32;
              }

              else
              {
                v47 = v47;
              }

              if ((v41 - 32) >= 0x5F)
              {
                v48 = 32;
              }

              else
              {
                v48 = v41;
              }

              LODWORD(v49) = objectClass >> 24;
              if (((objectClass >> 24) - 32) >= 0x5F)
              {
                v49 = 32;
              }

              else
              {
                v49 = v49;
              }

              LODWORD(v50) = (objectClass << 8) >> 24;
              if ((v50 - 32) >= 0x5F)
              {
                v50 = 32;
              }

              else
              {
                v50 = v50;
              }

              LODWORD(v51) = objectClass >> 8;
              if ((v51 - 32) >= 0x5F)
              {
                v51 = 32;
              }

              else
              {
                v51 = v51;
              }

              if ((objectClass - 32) >= 0x5F)
              {
                v52 = 32;
              }

              else
              {
                v52 = objectClass;
              }

              [v7 appendFormat:@"%@|        %u: Object %u has unknown control class  %c%c%c%c (0x%08x) %c%c%c%c (0x%08x)\n", v58, v35, objectID, v45, v46, v47, v48, v41, v49, v50, v51, v52, objectClass];
              goto LABEL_71;
            }

            v42 = ASABooleanControl;
          }
        }

        else if (baseClass == 1818588780)
        {
          v42 = ASALevelControl;
        }

        else
        {
          if (baseClass != 1936483188)
          {
            goto LABEL_43;
          }

          v42 = ASASelectorControl;
        }

        v53 = [[v42 alloc] initWithAudioObjectID:{-[ASAObject objectID](v39, "objectID")}];
        v54 = [v53 diagnosticDescriptionWithIndent:v8 walkTree:1];
        [v7 appendString:v54];

LABEL_71:
LABEL_72:
        v35 = (v35 + 1);
      }

      v34 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (!v34)
      {
LABEL_74:

        controlObjectIDs = v56;
        break;
      }
    }
  }

  return v7;
}

@end