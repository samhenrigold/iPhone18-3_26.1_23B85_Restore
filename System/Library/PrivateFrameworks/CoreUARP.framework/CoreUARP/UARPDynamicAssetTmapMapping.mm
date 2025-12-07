@interface UARPDynamicAssetTmapMapping
+ (id)tag;
- (BOOL)appendTmapEvents:(id)events endian:(id)endian;
- (BOOL)isEqualAppleModel:(id)model;
- (UARPDynamicAssetTmapMapping)init;
- (UARPDynamicAssetTmapMapping)initWithCoder:(id)coder;
- (UARPDynamicAssetTmapMapping)initWithEvents:(id)events appleModelNumber:(id)number endian:(id)endian;
- (id)description;
- (id)expandMticData:(id)data withEventID:(unsigned int)d serialNumber:(id)number;
- (id)findTmapEvent:(unint64_t)event;
- (void)addSysdiagnoseMetrics:(id)metrics coreAnalyticsEvent:(id)event serialNumber:(id)number;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPDynamicAssetTmapMapping

- (UARPDynamicAssetTmapMapping)init
{
  [(UARPDynamicAssetTmapMapping *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetTmapMapping)initWithEvents:(id)events appleModelNumber:(id)number endian:(id)endian
{
  v35 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  numberCopy = number;
  endianCopy = endian;
  v11 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
  log = self->_log;
  self->_log = v11;

  v13 = [numberCopy copy];
  appleModelNumber = self->_appleModelNumber;
  self->_appleModelNumber = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = eventsCopy;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    v28 = numberCopy;
    selfCopy = self;
    while (2)
    {
      v20 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v30 + 1) + 8 * v20);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          self = selfCopy;
          if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetTmapMapping initWithEvents:appleModelNumber:endian:];
          }

          goto LABEL_17;
        }

        v22 = [v21 objectForKeyedSubscript:@"EventID"];
        if (!v22)
        {
          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetTmapMapping initWithEvents:appleModelNumber:endian:];
          }

LABEL_16:

          self = selfCopy;
LABEL_17:

          selfCopy2 = 0;
          numberCopy = v28;
          goto LABEL_18;
        }

        v23 = -[UARPDynamicAssetTmapEvent initWithEventFields:eventID:endian:]([UARPDynamicAssetTmapEvent alloc], "initWithEventFields:eventID:endian:", v21, [v22 unsignedIntValue], endianCopy);
        [v15 addObject:v23];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      numberCopy = v28;
      self = selfCopy;
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v24 = [v15 copy];
  tmapEvents = self->_tmapEvents;
  self->_tmapEvents = v24;

  selfCopy2 = self;
LABEL_18:

  return selfCopy2;
}

- (UARPDynamicAssetTmapMapping)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = UARPDynamicAssetTmapMapping;
  v5 = [(UARPDynamicAssetTmapMapping *)&v17 init];
  if (v5)
  {
    v6 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
    log = v5->_log;
    v5->_log = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppleModelNumber"];
    appleModelNumber = v5->_appleModelNumber;
    v5->_appleModelNumber = v8;

    v10 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"Events"];
    tmapEvents = v5->_tmapEvents;
    v5->_tmapEvents = v13;

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  appleModelNumber = self->_appleModelNumber;
  coderCopy = coder;
  [coderCopy encodeObject:appleModelNumber forKey:@"AppleModelNumber"];
  [coderCopy encodeObject:self->_tmapEvents forKey:@"Events"];
}

- (BOOL)isEqualAppleModel:(id)model
{
  v18 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if ([(NSString *)self->_appleModelNumber isEqualToString:modelCopy])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = [UARPSupportedAccessory findByAppleModelNumber:self->_appleModelNumber];
    appleModelNumber = [v6 appleModelNumber];
    v8 = [modelCopy isEqualToString:appleModelNumber];

    if (v8)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      alternativeAppleModelNumbers = [v6 alternativeAppleModelNumbers];
      v5 = [alternativeAppleModelNumbers countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v10 = *v14;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(alternativeAppleModelNumbers);
            }

            if ([modelCopy isEqualToString:*(*(&v13 + 1) + 8 * i)])
            {
              LOBYTE(v5) = 1;
              goto LABEL_15;
            }
          }

          v5 = [alternativeAppleModelNumbers countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  return v5;
}

- (id)findTmapEvent:(unint64_t)event
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_tmapEvents;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 eventID] == event)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)expandMticData:(id)data withEventID:(unsigned int)d serialNumber:(id)number
{
  dataCopy = data;
  numberCopy = number;
  v10 = [(UARPDynamicAssetTmapMapping *)self findTmapEvent:d];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 expandMticData:dataCopy];
    if (v12)
    {
      if (numberCopy)
      {
        v13 = numberCopy;
      }

      else
      {
        v13 = @"Unknown";
      }

      [(UARPDynamicAssetTmapMapping *)self addSysdiagnoseMetrics:v11 coreAnalyticsEvent:v12 serialNumber:v13];
      v14 = v12;
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetTmapMapping expandMticData:withEventID:serialNumber:];
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetTmapMapping expandMticData:withEventID:serialNumber:];
    }

    v12 = 0;
  }

  return v12;
}

- (void)addSysdiagnoseMetrics:(id)metrics coreAnalyticsEvent:(id)event serialNumber:(id)number
{
  v21[4] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  eventCopy = event;
  eventName = [metrics eventName];
  v11 = MEMORY[0x277CCACA8];
  v12 = UARPStringSysdiagnoseDirectoryFilePath(eventName);
  v13 = [v11 stringWithFormat:@"%@/%@", v12, eventName];

  UARPUtilsCreateTemporaryFolder(v13);
  v21[0] = self->_appleModelNumber;
  v21[1] = numberCopy;
  v14 = UARPTimestamp();
  v21[2] = v14;
  v21[3] = eventName;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  v16 = UARPUniqueFilePathWithIdentifierComponents(v13, v15, @".log");
  v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16 isDirectory:0];
  v20 = 0;
  v18 = [MEMORY[0x277CCAAA0] dataWithJSONObject:eventCopy options:0 error:&v20];

  v19 = v20;
  if (v18)
  {
    UARPWriteFile(v18, v17);
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPDynamicAssetTmapMapping addSysdiagnoseMetrics:coreAnalyticsEvent:serialNumber:];
  }
}

- (BOOL)appendTmapEvents:(id)events endian:(id)endian
{
  v29 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  endianCopy = endian;
  v7 = [(NSArray *)self->_tmapEvents mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = eventsCopy;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    v22 = v7;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = v22;
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetTmapMapping initWithEvents:appleModelNumber:endian:];
          }

          v20 = 0;
          tmapEvents = v8;
          goto LABEL_20;
        }

        v14 = [v13 objectForKeyedSubscript:@"EventID"];
        if (!v14)
        {
          goto LABEL_19;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetTmapMapping initWithEvents:appleModelNumber:endian:];
          }

LABEL_19:

          v20 = 0;
          tmapEvents = v8;
          v7 = v22;
          goto LABEL_20;
        }

        unsignedIntValue = [v14 unsignedIntValue];
        v16 = [(UARPDynamicAssetTmapMapping *)self findTmapEvent:unsignedIntValue];
        if (!v16)
        {
          v17 = [[UARPDynamicAssetTmapEvent alloc] initWithEventFields:v13 eventID:unsignedIntValue endian:endianCopy];
          [v22 addObject:v17];
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v7 = v22;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v18 = [v7 copy];
  tmapEvents = self->_tmapEvents;
  self->_tmapEvents = v18;
  v20 = 1;
LABEL_20:

  return v20;
}

+ (id)tag
{
  v2 = [[UARPAssetTag alloc] initWithString:@"TMAP"];

  return v2;
}

- (id)description
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = v3;
  if (self->_appleModelNumber)
  {
    [v3 appendFormat:@"Apple Model Number %@\n", self->_appleModelNumber];
  }

  else
  {
    [v3 appendFormat:@"No Apple Model Number for TMAP Mapping", v12];
  }

  tmapEvents = self->_tmapEvents;
  if (tmapEvents)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = tmapEvents;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v4 appendFormat:@"TMAP Event %@\n", *(*(&v13 + 1) + 8 * i)];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [v4 appendFormat:@"No TMAP Events"];
  }

  return v4;
}

@end