@interface ASAStream
- (ASAAudioFormat)physicalFormat;
- (ASAAudioFormat)virtualFormat;
- (BOOL)isActive;
- (BOOL)isInput;
- (BOOL)isOutput;
- (BOOL)isTapStream;
- (NSArray)availablePhysicalFormats;
- (NSArray)availableVirtualFormats;
- (NSArray)controlObjectIDs;
- (NSArray)controls;
- (NSString)name;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (unsigned)latency;
- (unsigned)startingChannel;
- (unsigned)terminalType;
- (void)setName:(id)name;
- (void)setPhysicalFormat:(id)format;
- (void)setVirtualFormat:(id)format;
@end

@implementation ASAStream

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

- (BOOL)isActive
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1935762292 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read is active property\n", v3, 2u);
  }

  return v4 != 0;
}

- (BOOL)isInput
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1935960434 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read direction property\n", v3, 2u);
  }

  return v4 == 1;
}

- (BOOL)isOutput
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1935960434 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read direction property\n", v3, 2u);
  }

  return v4 == 0;
}

- (unsigned)terminalType
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1952805485 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read terminal type property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)startingChannel
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1935894638 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read starting channel property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)latency
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1819569763 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read latency property\n", v3, 2u);
  }

  return v4;
}

- (ASAAudioFormat)virtualFormat
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = 40;
  if ([(ASAObject *)self getMainGlobalProperty:1936092532 withData:v6 ofSize:&v5 withQualifier:0 ofSize:0])
  {
    v2 = [[ASAAudioFormat alloc] initWithAudioStreamBasicDescription:v6];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read virtual format property\n", v4, 2u);
    }

    v2 = 0;
  }

  return v2;
}

- (void)setVirtualFormat:(id)format
{
  formatCopy = format;
  if ([(ASAStream *)self isVirtualFormatSettable])
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    if (formatCopy)
    {
      objc_msgSend_audioStreamBasicDescription(formatCopy);
    }

    if (![(ASAObject *)self setMainGlobalProperty:1936092532 withData:v6 ofSize:40 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not write virtual format property\n", v5, 2u);
    }
  }
}

- (ASAAudioFormat)physicalFormat
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = 40;
  if ([(ASAObject *)self getMainGlobalProperty:1885762592 withData:v6 ofSize:&v5 withQualifier:0 ofSize:0])
  {
    v2 = [[ASAAudioFormat alloc] initWithAudioStreamBasicDescription:v6];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read physical format property\n", v4, 2u);
    }

    v2 = 0;
  }

  return v2;
}

- (void)setPhysicalFormat:(id)format
{
  formatCopy = format;
  if ([(ASAStream *)self isPhysicalFormatSettable])
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    if (formatCopy)
    {
      objc_msgSend_audioStreamBasicDescription(formatCopy);
    }

    if (![(ASAObject *)self setMainGlobalProperty:1885762592 withData:v6 ofSize:40 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not write physical format property\n", v5, 2u);
    }
  }
}

- (NSArray)availableVirtualFormats
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1936092513 withQualifier:0 ofSize:0];
  v14 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0x199FD535uLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    v7 = [(ASAObject *)self getMainGlobalProperty:1936092513 withData:v6 ofSize:&v14 withQualifier:0 ofSize:0];
    array = 0;
    if (v7)
    {
      v9 = v14;
      array = [MEMORY[0x277CBEB18] array];
      if (v9 >= 0x38)
      {
        v10 = v9 / 0x38uLL;
        v11 = v6;
        do
        {
          v12 = [[ASAAudioFormat alloc] initWithAudioStreamRangedDescription:v11];
          [array addObject:v12];

          v11 += 56;
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

- (NSArray)availablePhysicalFormats
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1885762657 withQualifier:0 ofSize:0];
  v14 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0xE734E876uLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    v7 = [(ASAObject *)self getMainGlobalProperty:1885762657 withData:v6 ofSize:&v14 withQualifier:0 ofSize:0];
    array = 0;
    if (v7)
    {
      v9 = v14;
      array = [MEMORY[0x277CBEB18] array];
      if (v9 >= 0x38)
      {
        v10 = v9 / 0x38uLL;
        v11 = v6;
        do
        {
          v12 = [[ASAAudioFormat alloc] initWithAudioStreamRangedDescription:v11];
          [array addObject:v12];

          v11 += 56;
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
  v15 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0x99A834AEuLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainGlobalProperty:1668575852 withData:v7 ofSize:&v15 withQualifier:0 ofSize:0])
      {
        v8 = v15;
        array2 = [MEMORY[0x277CBEB18] array];

        if (v8 >= 4)
        {
          v10 = v8 >> 2;
          v11 = v7;
          do
          {
            v12 = *v11++;
            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
            [array2 addObject:v13];

            --v10;
          }

          while (v10);
        }

        array = array2;
      }

      free(v7);
    }
  }

  return array;
}

- (NSArray)controls
{
  v21 = *MEMORY[0x277D85DE8];
  controlObjectIDs = [(ASAStream *)self controlObjectIDs];
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

- (BOOL)isTapStream
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1952542835 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read tap stream property\n", v3, 2u);
  }

  return v4 != 0;
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v105 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  v101.receiver = self;
  v101.super_class = ASAStream;
  v82 = treeCopy;
  v7 = [(ASAObject *)&v101 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  v8 = [indentCopy stringByAppendingString:@"|        "];
  name = [(ASAStream *)self name];
  [v7 appendFormat:@"%@|    Name: %s\n", indentCopy, objc_msgSend(name, "UTF8String")];

  if ([(ASAStream *)self isActive])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Active: %@\n", indentCopy, v10];
  isInput = [(ASAStream *)self isInput];
  v12 = @"Output";
  if (isInput)
  {
    v12 = @"Input";
  }

  [v7 appendFormat:@"%@|    Direction: %@\n", indentCopy, v12];
  if ([(ASAStream *)self isTapStream])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Tap Stream: %@\n", indentCopy, v13];
  terminalType = [(ASAStream *)self terminalType];
  LODWORD(v15) = terminalType >> 24;
  v16 = 32;
  if (((terminalType >> 24) - 32) >= 0x5F)
  {
    v15 = 32;
  }

  else
  {
    v15 = v15;
  }

  LODWORD(v17) = (terminalType << 8) >> 24;
  if ((v17 - 32) >= 0x5F)
  {
    v17 = 32;
  }

  else
  {
    v17 = v17;
  }

  LODWORD(v18) = terminalType >> 8;
  if ((v18 - 32) >= 0x5F)
  {
    v18 = 32;
  }

  else
  {
    v18 = v18;
  }

  if ((terminalType - 32) >= 0x5F)
  {
    v19 = 32;
  }

  else
  {
    v19 = terminalType;
  }

  [v7 appendFormat:@"%@|    Terminal Type: %c%c%c%c (0x%08x)\n", indentCopy, v15, v17, v18, v19, terminalType];
  [v7 appendFormat:@"%@|    Starting Channel: %u\n", indentCopy, -[ASAStream startingChannel](self, "startingChannel")];
  [v7 appendFormat:@"%@|    Latency: %u\n", indentCopy, -[ASAStream latency](self, "latency")];
  virtualFormat = [(ASAStream *)self virtualFormat];
  [v7 appendFormat:@"%@|    Virtual Format\n", indentCopy];
  [virtualFormat sampleRate];
  v81 = indentCopy;
  [v7 appendFormat:@"%@|        Sample Rate: %f\n", indentCopy, v21];
  if ([virtualFormat formatID] >= 0x20000000)
  {
    if ([virtualFormat formatID] > 2130706431)
    {
      v16 = 32;
    }

    else
    {
      v16 = ([virtualFormat formatID] >> 24);
    }
  }

  if (([virtualFormat formatID] << 8) < 0x20000000 || (objc_msgSend(virtualFormat, "formatID") << 8) > 2130706431)
  {
    v22 = 32;
  }

  else
  {
    v22 = (([virtualFormat formatID] << 8) >> 24);
  }

  if ([virtualFormat formatID] < 0x2000 || objc_msgSend(virtualFormat, "formatID") > 32511)
  {
    v23 = 32;
  }

  else
  {
    v23 = ([virtualFormat formatID] >> 8);
  }

  if ([virtualFormat formatID] < 32 || objc_msgSend(virtualFormat, "formatID") == 127)
  {
    formatID = 32;
  }

  else
  {
    formatID = [virtualFormat formatID];
  }

  [v7 appendFormat:@"%@|        Format ID: %c%c%c%c\n", v81, v16, v22, v23, formatID];
  [v7 appendFormat:@"%@|        Format Flags: 0x%08x\n", v81, objc_msgSend(virtualFormat, "formatFlags")];
  [v7 appendFormat:@"%@|        Bytes Per Packet: %u\n", v81, objc_msgSend(virtualFormat, "bytesPerFrame")];
  [v7 appendFormat:@"%@|        Frames Per Packet: %u\n", v81, objc_msgSend(virtualFormat, "framesPerPacket")];
  [v7 appendFormat:@"%@|        Bytes Per Frame: %u\n", v81, objc_msgSend(virtualFormat, "bytesPerFrame")];
  [v7 appendFormat:@"%@|        Channels Per Frame: %u\n", v81, objc_msgSend(virtualFormat, "channelsPerFrame")];
  v78 = virtualFormat;
  [v7 appendFormat:@"%@|        Bits Per Channel: %u\n", v81, objc_msgSend(virtualFormat, "bitsPerChannel")];
  [v7 appendFormat:@"%@|    Available Virtual Format\n", v81];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  selfCopy = self;
  obj = [(ASAStream *)self availableVirtualFormats];
  v25 = [obj countByEnumeratingWithState:&v97 objects:v104 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v86 = *v98;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v98 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v97 + 1) + 8 * i);
        [v7 appendFormat:@"%@%u: Virtual Format\n", v8, v27];
        [v29 sampleRate];
        [v7 appendFormat:@"%@    Sample Rate: %f\n", v8, v30];
        if ([v29 formatID] < 0x20000000 || objc_msgSend(v29, "formatID") > 2130706431)
        {
          v31 = 32;
        }

        else
        {
          v31 = ([v29 formatID] >> 24);
        }

        if (([v29 formatID] << 8) < 0x20000000 || (objc_msgSend(v29, "formatID") << 8) > 2130706431)
        {
          v32 = 32;
        }

        else
        {
          v32 = (([v29 formatID] << 8) >> 24);
        }

        if ([v29 formatID] < 0x2000 || objc_msgSend(v29, "formatID") > 32511)
        {
          v33 = 32;
        }

        else
        {
          v33 = ([v29 formatID] >> 8);
        }

        if ([v29 formatID] < 32 || objc_msgSend(v29, "formatID") == 127)
        {
          formatID2 = 32;
        }

        else
        {
          formatID2 = [v29 formatID];
        }

        [v7 appendFormat:@"%@    Format ID: %c%c%c%c\n", v8, v31, v32, v33, formatID2];
        [v7 appendFormat:@"%@    Format Flags: 0x%08x\n", v8, objc_msgSend(v29, "formatFlags")];
        [v7 appendFormat:@"%@    Bytes Per Packet: %u\n", v8, objc_msgSend(v29, "bytesPerFrame")];
        [v7 appendFormat:@"%@    Frames Per Packet: %u\n", v8, objc_msgSend(v29, "framesPerPacket")];
        [v7 appendFormat:@"%@    Bytes Per Frame: %u\n", v8, objc_msgSend(v29, "bytesPerFrame")];
        [v7 appendFormat:@"%@    Channels Per Frame: %u\n", v8, objc_msgSend(v29, "channelsPerFrame")];
        [v7 appendFormat:@"%@    Bits Per Channel: %u\n", v8, objc_msgSend(v29, "bitsPerChannel")];
        [v29 minimumSampleRate];
        [v7 appendFormat:@"%@    Minimum Sample Rate: %f\n", v8, v35];
        [v29 maximumSampleRate];
        [v7 appendFormat:@"%@    Maximum Sample Rate: %f\n", v8, v36];
        v27 = (v27 + 1);
      }

      v26 = [obj countByEnumeratingWithState:&v97 objects:v104 count:16];
    }

    while (v26);
  }

  physicalFormat = [(ASAStream *)self physicalFormat];

  [v7 appendFormat:@"%@|    Physical Format\n", v81];
  [physicalFormat sampleRate];
  [v7 appendFormat:@"%@|        Sample Rate: %f\n", v81, v38];
  if ([physicalFormat formatID] < 0x20000000 || objc_msgSend(physicalFormat, "formatID") > 2130706431)
  {
    v39 = 32;
  }

  else
  {
    v39 = ([physicalFormat formatID] >> 24);
  }

  if (([physicalFormat formatID] << 8) < 0x20000000 || (objc_msgSend(physicalFormat, "formatID") << 8) > 2130706431)
  {
    v40 = 32;
  }

  else
  {
    v40 = (([physicalFormat formatID] << 8) >> 24);
  }

  if ([physicalFormat formatID] < 0x2000 || objc_msgSend(physicalFormat, "formatID") > 32511)
  {
    v41 = 32;
  }

  else
  {
    v41 = ([physicalFormat formatID] >> 8);
  }

  if ([physicalFormat formatID] < 32 || objc_msgSend(physicalFormat, "formatID") == 127)
  {
    formatID3 = 32;
  }

  else
  {
    formatID3 = [physicalFormat formatID];
  }

  [v7 appendFormat:@"%@|        Format ID: %c%c%c%c\n", v81, v39, v40, v41, formatID3];
  [v7 appendFormat:@"%@|        Format Flags: 0x%08x\n", v81, objc_msgSend(physicalFormat, "formatFlags")];
  [v7 appendFormat:@"%@|        Bytes Per Packet: %u\n", v81, objc_msgSend(physicalFormat, "bytesPerFrame")];
  [v7 appendFormat:@"%@|        Frames Per Packet: %u\n", v81, objc_msgSend(physicalFormat, "framesPerPacket")];
  [v7 appendFormat:@"%@|        Bytes Per Frame: %u\n", v81, objc_msgSend(physicalFormat, "bytesPerFrame")];
  [v7 appendFormat:@"%@|        Channels Per Frame: %u\n", v81, objc_msgSend(physicalFormat, "channelsPerFrame")];
  v79 = physicalFormat;
  [v7 appendFormat:@"%@|        Bits Per Channel: %u\n", v81, objc_msgSend(physicalFormat, "bitsPerChannel")];
  [v7 appendFormat:@"%@|    Available Physical Format\n", v81];
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obja = [(ASAStream *)self availablePhysicalFormats];
  v43 = [obja countByEnumeratingWithState:&v93 objects:v103 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = 0;
    v87 = *v94;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v94 != v87)
        {
          objc_enumerationMutation(obja);
        }

        v47 = *(*(&v93 + 1) + 8 * j);
        [v7 appendFormat:@"%@%u: Physical Format\n", v8, v45];
        [v47 sampleRate];
        [v7 appendFormat:@"%@    Sample Rate: %f\n", v8, v48];
        if ([v47 formatID] < 0x20000000 || objc_msgSend(v47, "formatID") > 2130706431)
        {
          v49 = 32;
        }

        else
        {
          v49 = ([v47 formatID] >> 24);
        }

        if (([v47 formatID] << 8) < 0x20000000 || (objc_msgSend(v47, "formatID") << 8) > 2130706431)
        {
          v50 = 32;
        }

        else
        {
          v50 = (([v47 formatID] << 8) >> 24);
        }

        if ([v47 formatID] < 0x2000 || objc_msgSend(v47, "formatID") > 32511)
        {
          v51 = 32;
        }

        else
        {
          v51 = ([v47 formatID] >> 8);
        }

        if ([v47 formatID] < 32 || objc_msgSend(v47, "formatID") == 127)
        {
          formatID4 = 32;
        }

        else
        {
          formatID4 = [v47 formatID];
        }

        [v7 appendFormat:@"%@    Format ID: %c%c%c%c\n", v8, v49, v50, v51, formatID4];
        [v7 appendFormat:@"%@    Format Flags: 0x%08x\n", v8, objc_msgSend(v47, "formatFlags")];
        [v7 appendFormat:@"%@    Bytes Per Packet: %u\n", v8, objc_msgSend(v47, "bytesPerFrame")];
        [v7 appendFormat:@"%@    Frames Per Packet: %u\n", v8, objc_msgSend(v47, "framesPerPacket")];
        [v7 appendFormat:@"%@    Bytes Per Frame: %u\n", v8, objc_msgSend(v47, "bytesPerFrame")];
        [v7 appendFormat:@"%@    Channels Per Frame: %u\n", v8, objc_msgSend(v47, "channelsPerFrame")];
        [v7 appendFormat:@"%@    Bits Per Channel: %u\n", v8, objc_msgSend(v47, "bitsPerChannel")];
        [v47 minimumSampleRate];
        [v7 appendFormat:@"%@    Minimum Sample Rate: %f\n", v8, v53];
        [v47 maximumSampleRate];
        [v7 appendFormat:@"%@    Maximum Sample Rate: %f\n", v8, v54];
        v45 = (v45 + 1);
      }

      v44 = [obja countByEnumeratingWithState:&v93 objects:v103 count:16];
    }

    while (v44);
  }

  [v7 appendFormat:@"%@|    Controls:\n", v81];
  controlObjectIDs = [(ASAStream *)selfCopy controlObjectIDs];
  if ([controlObjectIDs count])
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    objb = controlObjectIDs;
    v88 = controlObjectIDs;
    v56 = [v88 countByEnumeratingWithState:&v89 objects:v102 count:16];
    if (!v56)
    {
      goto LABEL_142;
    }

    v57 = v56;
    v58 = 0;
    v59 = *v90;
    while (1)
    {
      for (k = 0; k != v57; ++k)
      {
        if (*v90 != v59)
        {
          objc_enumerationMutation(v88);
        }

        v61 = -[ASAObject initWithAudioObjectID:]([ASAObject alloc], "initWithAudioObjectID:", [*(*(&v89 + 1) + 8 * k) unsignedIntValue]);
        baseClass = [(ASAObject *)v61 baseClass];
        v63 = baseClass;
        if (baseClass > 1936483441)
        {
          if (baseClass == 1936483442)
          {
            v64 = ASASliderControl;
            goto LABEL_139;
          }

          if (baseClass == 1953458028)
          {
            v64 = ASABooleanControl;
            goto LABEL_139;
          }
        }

        else
        {
          if (baseClass == 1818588780)
          {
            v64 = ASALevelControl;
            goto LABEL_139;
          }

          if (baseClass == 1936483188)
          {
            v64 = ASASelectorControl;
LABEL_139:
            v75 = [[v64 alloc] initWithAudioObjectID:{-[ASAObject objectID](v61, "objectID")}];
            v76 = [v75 diagnosticDescriptionWithIndent:v8 walkTree:v82];
            [v7 appendString:v76];

            goto LABEL_140;
          }
        }

        objectClass = [(ASAObject *)v61 objectClass];
        objectID = [(ASAObject *)v61 objectID];
        LODWORD(v67) = v63 >> 24;
        if (((v63 >> 24) - 32) >= 0x5F)
        {
          v67 = 32;
        }

        else
        {
          v67 = v67;
        }

        LODWORD(v68) = (v63 << 8) >> 24;
        if ((v68 - 32) >= 0x5F)
        {
          v68 = 32;
        }

        else
        {
          v68 = v68;
        }

        LODWORD(v69) = v63 >> 8;
        if ((v69 - 32) >= 0x5F)
        {
          v69 = 32;
        }

        else
        {
          v69 = v69;
        }

        if ((v63 - 32) >= 0x5F)
        {
          v70 = 32;
        }

        else
        {
          v70 = v63;
        }

        LODWORD(v71) = objectClass >> 24;
        if (((objectClass >> 24) - 32) >= 0x5F)
        {
          v71 = 32;
        }

        else
        {
          v71 = v71;
        }

        LODWORD(v72) = (objectClass << 8) >> 24;
        if ((v72 - 32) >= 0x5F)
        {
          v72 = 32;
        }

        else
        {
          v72 = v72;
        }

        LODWORD(v73) = objectClass >> 8;
        if ((v73 - 32) >= 0x5F)
        {
          v73 = 32;
        }

        else
        {
          v73 = v73;
        }

        if ((objectClass - 32) >= 0x5F)
        {
          v74 = 32;
        }

        else
        {
          v74 = objectClass;
        }

        [v7 appendFormat:@"%@|        %u: Object %u has unknown control class  %c%c%c%c (0x%08x) %c%c%c%c (0x%08x)\n", v81, v58, objectID, v67, v68, v69, v70, v63, v71, v72, v73, v74, objectClass];
LABEL_140:
        v58 = (v58 + 1);
      }

      v57 = [v88 countByEnumeratingWithState:&v89 objects:v102 count:16];
      if (!v57)
      {
LABEL_142:

        controlObjectIDs = objb;
        break;
      }
    }
  }

  return v7;
}

@end