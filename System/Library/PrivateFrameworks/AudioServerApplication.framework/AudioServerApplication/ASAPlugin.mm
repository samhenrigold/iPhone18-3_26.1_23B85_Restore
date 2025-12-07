@interface ASAPlugin
+ (id)pluginWithBundleIdentifier:(id)identifier;
- (ASAPlugin)initWithBundleIdentifier:(id)identifier;
- (NSArray)audioDeviceObjectIDs;
- (NSArray)audioDevices;
- (NSArray)boxObjectIDs;
- (NSArray)boxes;
- (NSArray)clockDeviceObjectIDs;
- (NSArray)clockDevices;
- (NSString)bundleID;
- (NSString)manufacturer;
- (NSURL)resourceBundleURL;
- (id)audioDeviceWithUID:(id)d;
- (id)boxWithUID:(id)d;
- (id)clockDeviceWithUID:(id)d;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (unsigned)audioDeviceObjectIDWithUID:(id)d;
- (unsigned)boxObjectIDWithUID:(id)d;
- (unsigned)clockDeviceObjectIDWithUID:(id)d;
@end

@implementation ASAPlugin

+ (id)pluginWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithBundleIdentifier:identifierCopy];

  return v5;
}

- (ASAPlugin)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[ASACoreAudio sharedCoreAudioObject];
  v6 = [v5 pluginObjectIDWithBundleID:identifierCopy];

  if (v6)
  {
    v8.receiver = self;
    v8.super_class = ASAPlugin;
    return [(ASAObject *)&v8 initWithAudioObjectID:v6];
  }

  else
  {

    return 0;
  }
}

- (NSString)bundleID
{
  v6 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1885956452 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0])
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
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read bundle ID property\n", v4, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (NSURL)resourceBundleURL
{
  if (![(ASAObject *)self hasMainGlobalProperty:1768124270])
  {
    goto LABEL_7;
  }

  cf = 0;
  v6 = 8;
  if (![(ASAObject *)self getMainOutputProperty:1920168547 withData:&cf ofSize:&v6 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read output resource bundle property\n", v5, 2u);
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

- (unsigned)boxObjectIDWithUID:(id)d
{
  dCopy = d;
  v6 = 4;
  v7 = 0;
  if (!dCopy)
  {
    return 0;
  }

  [(ASAObject *)self getMainGlobalProperty:1969841250 withData:&v7 ofSize:&v6 withQualifier:&dCopy ofSize:8];
  v4 = v7;

  return v4;
}

- (id)boxWithUID:(id)d
{
  dCopy = d;
  v5 = [ASABox alloc];
  v6 = [(ASAPlugin *)self boxObjectIDWithUID:dCopy];

  v7 = [(ASAObject *)v5 initWithAudioObjectID:v6];

  return v7;
}

- (unsigned)audioDeviceObjectIDWithUID:(id)d
{
  dCopy = d;
  v6 = 4;
  v7 = 0;
  if (!dCopy)
  {
    return 0;
  }

  [(ASAObject *)self getMainGlobalProperty:1969841252 withData:&v7 ofSize:&v6 withQualifier:&dCopy ofSize:8];
  v4 = v7;

  return v4;
}

- (id)audioDeviceWithUID:(id)d
{
  dCopy = d;
  v5 = [ASAAudioDevice alloc];
  v6 = [(ASAPlugin *)self audioDeviceObjectIDWithUID:dCopy];

  v7 = [(ASAObject *)v5 initWithAudioObjectID:v6];

  return v7;
}

- (unsigned)clockDeviceObjectIDWithUID:(id)d
{
  dCopy = d;
  v6 = 4;
  v7 = 0;
  if (!dCopy)
  {
    return 0;
  }

  [(ASAObject *)self getMainGlobalProperty:1969841251 withData:&v7 ofSize:&v6 withQualifier:&dCopy ofSize:8];
  v4 = v7;

  return v4;
}

- (id)clockDeviceWithUID:(id)d
{
  dCopy = d;
  v5 = [ASAClockDevice alloc];
  v6 = [(ASAPlugin *)self clockDeviceObjectIDWithUID:dCopy];

  v7 = [(ASAObject *)v5 initWithAudioObjectID:v6];

  return v7;
}

- (NSArray)boxObjectIDs
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainGlobalProperty:1651472419 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0xA8A9D3F6uLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainGlobalProperty:1651472419 withData:v7 ofSize:&v13 withQualifier:0 ofSize:0]&& v13 >= 4)
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

- (NSArray)boxes
{
  v18 = *MEMORY[0x277D85DE8];
  boxObjectIDs = [(ASAPlugin *)self boxObjectIDs];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = boxObjectIDs;
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
        v10 = [ASABox alloc];
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

- (NSArray)audioDeviceObjectIDs
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainGlobalProperty:1684370979 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0x292D906uLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainGlobalProperty:1684370979 withData:v7 ofSize:&v13 withQualifier:0 ofSize:0]&& v13 >= 4)
      {
        v8 = v13 >> 2;
        v9 = v7;
        do
        {
          if (*v9++)
          {
            v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
            [array addObject:v11];
          }

          --v8;
        }

        while (v8);
      }

      free(v7);
    }
  }

  return array;
}

- (NSArray)audioDevices
{
  v18 = *MEMORY[0x277D85DE8];
  audioDeviceObjectIDs = [(ASAPlugin *)self audioDeviceObjectIDs];
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
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(ASAObject *)self sizeOfMainGlobalProperty:1668049699 withQualifier:0 ofSize:0];
  v13 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(v4, 0x132A2AAAuLL);
    if (v6)
    {
      v7 = v6;
      bzero(v6, v5);
      if ([(ASAObject *)self getMainGlobalProperty:1668049699 withData:v7 ofSize:&v13 withQualifier:0 ofSize:0]&& v13 >= 4)
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

- (NSArray)clockDevices
{
  v18 = *MEMORY[0x277D85DE8];
  clockDeviceObjectIDs = [(ASAPlugin *)self clockDeviceObjectIDs];
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
  v61 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  v57.receiver = self;
  v57.super_class = ASAPlugin;
  v7 = [(ASAObject *)&v57 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  v44 = [indentCopy stringByAppendingString:@"|        "];
  bundleID = [(ASAPlugin *)self bundleID];
  [v7 appendFormat:@"%@|    Bundle ID: %s\n", indentCopy, objc_msgSend(bundleID, "UTF8String")];

  resourceBundleURL = [(ASAPlugin *)self resourceBundleURL];
  absoluteString = [resourceBundleURL absoluteString];
  [v7 appendFormat:@"%@|    Resource Bundle URL: %s\n", indentCopy, objc_msgSend(absoluteString, "UTF8String")];

  manufacturer = [(ASAPlugin *)self manufacturer];
  v12 = indentCopy;
  [v7 appendFormat:@"%@|    Manufacturer: %s\n", indentCopy, objc_msgSend(manufacturer, "UTF8String")];

  boxObjectIDs = [(ASAPlugin *)self boxObjectIDs];
  selfCopy = self;
  if ([boxObjectIDs count])
  {
    [v7 appendFormat:@"%@|    Box Objects:\n", indentCopy];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v13 = boxObjectIDs;
    v14 = [v13 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v54;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v54 != v17)
          {
            objc_enumerationMutation(v13);
          }

          if (treeCopy)
          {
            v19 = -[ASAObject initWithAudioObjectID:]([ASABox alloc], "initWithAudioObjectID:", [*(*(&v53 + 1) + 8 * i) unsignedIntValue]);
            v20 = [(ASABox *)v19 diagnosticDescriptionWithIndent:v44 walkTree:1];
            [v7 appendString:v20];
          }

          else
          {
            [v7 appendFormat:@"%@|        %u: %u\n", v12, v16, objc_msgSend(*(*(&v53 + 1) + 8 * i), "unsignedIntValue")];
          }

          v16 = (v16 + 1);
        }

        v15 = [v13 countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v15);
    }

    self = selfCopy;
  }

  deviceObjectIDs = [(ASAPlugin *)self deviceObjectIDs];
  v40 = deviceObjectIDs;
  if ([deviceObjectIDs count])
  {
    [v7 appendFormat:@"%@|    Device Objects:\n", v12];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v22 = deviceObjectIDs;
    v23 = [v22 countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v50;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v50 != v26)
          {
            objc_enumerationMutation(v22);
          }

          if (treeCopy)
          {
            v28 = -[ASAObject initWithAudioObjectID:]([ASAAudioDevice alloc], "initWithAudioObjectID:", [*(*(&v49 + 1) + 8 * j) unsignedIntValue]);
            v29 = [(ASAAudioDevice *)v28 diagnosticDescriptionWithIndent:v44 walkTree:1];
            if (v29)
            {
              [v7 appendString:v29];
            }
          }

          else
          {
            [v7 appendFormat:@"%@|        %u: %u\n", v12, v25, objc_msgSend(*(*(&v49 + 1) + 8 * j), "unsignedIntValue")];
          }

          v25 = (v25 + 1);
        }

        v24 = [v22 countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v24);
    }

    deviceObjectIDs = v40;
    self = selfCopy;
  }

  clockDeviceObjectIDs = [(ASAPlugin *)self clockDeviceObjectIDs];
  if ([clockDeviceObjectIDs count])
  {
    [v7 appendFormat:@"%@|    Clock Device Objects:\n", v12];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v42 = clockDeviceObjectIDs;
    v31 = clockDeviceObjectIDs;
    v32 = [v31 countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = 0;
      v35 = *v46;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(v31);
          }

          if (treeCopy)
          {
            v37 = -[ASAObject initWithAudioObjectID:]([ASAClockDevice alloc], "initWithAudioObjectID:", [*(*(&v45 + 1) + 8 * k) unsignedIntValue]);
            v38 = [(ASAClockDevice *)v37 diagnosticDescriptionWithIndent:v44 walkTree:1];
            [v7 appendString:v38];
          }

          else
          {
            [v7 appendFormat:@"%@|        %u: %u\n", v12, v34, objc_msgSend(*(*(&v45 + 1) + 8 * k), "unsignedIntValue")];
          }

          v34 = (v34 + 1);
        }

        v33 = [v31 countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v33);
    }

    deviceObjectIDs = v40;
    clockDeviceObjectIDs = v42;
  }

  return v7;
}

@end