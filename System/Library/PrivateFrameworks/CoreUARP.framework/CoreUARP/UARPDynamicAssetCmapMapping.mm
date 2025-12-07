@interface UARPDynamicAssetCmapMapping
+ (id)tag;
- (BOOL)appendCmapEvents:(id)events;
- (BOOL)appendCmapEventsArray:(id)array;
- (BOOL)isEqualAppleModel:(id)model;
- (UARPDynamicAssetCmapMapping)init;
- (UARPDynamicAssetCmapMapping)initWithCoder:(id)coder;
- (UARPDynamicAssetCmapMapping)initWithEvents:(id)events appleModelNumber:(id)number;
- (UARPDynamicAssetCmapMapping)initWithEventsArray:(id)array appleModelNumber:(id)number;
- (id)expandCrshDictionary:(id)dictionary;
- (id)findCmapEvent:(id)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPDynamicAssetCmapMapping

- (UARPDynamicAssetCmapMapping)init
{
  [(UARPDynamicAssetCmapMapping *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetCmapMapping)initWithEvents:(id)events appleModelNumber:(id)number
{
  eventsCopy = events;
  numberCopy = number;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(UARPDynamicAssetCmapMapping *)self initWithEventsArray:eventsCopy appleModelNumber:numberCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (UARPDynamicAssetCmapMapping)initWithEventsArray:(id)array appleModelNumber:(id)number
{
  v35 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  numberCopy = number;
  v8 = os_log_create("com.apple.accessoryupdater.uarp", "crsh");
  log = self->_log;
  self->_log = v8;

  objc_storeStrong(&self->_appleModelNumber, number);
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = arrayCopy;
  v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    v26 = numberCopy;
    selfCopy = self;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [v14 objectForKeyedSubscript:{@"decoderId", v26}];
        if (!v15)
        {
          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetCmapMapping initWithEventsArray:appleModelNumber:];
          }

          goto LABEL_23;
        }

        unsignedIntValue = [v15 unsignedIntValue];
        v17 = [v14 objectForKeyedSubscript:@"SectionName"];
        if (!v17)
        {
          goto LABEL_22;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetCmapMapping initWithEventsArray:appleModelNumber:];
          }

          goto LABEL_22;
        }

        v18 = [v14 objectForKeyedSubscript:@"InputDictionary"];
        if (!v18)
        {
          goto LABEL_21;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetCmapMapping initWithEventsArray:appleModelNumber:];
          }

LABEL_21:

LABEL_22:
LABEL_23:

          v20 = obj;
          selfCopy2 = 0;
          numberCopy = v26;
          self = selfCopy;
          v21 = v29;
          goto LABEL_24;
        }

        v19 = [[UARPDynamicAssetCmapEvent alloc] initWithSectionName:v17 decoderId:unsignedIntValue inputDictionary:v18];
        [v29 addObject:v19];
      }

      v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      numberCopy = v26;
      self = selfCopy;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v20 = obj;

  v21 = v29;
  v22 = [v29 copy];
  cmapEvents = self->_cmapEvents;
  self->_cmapEvents = v22;

  selfCopy2 = self;
LABEL_24:

  return selfCopy2;
}

- (UARPDynamicAssetCmapMapping)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = UARPDynamicAssetCmapMapping;
  v5 = [(UARPDynamicAssetCmapMapping *)&v19 init];
  if (v5)
  {
    v6 = os_log_create("com.apple.accessoryupdater.uarp", "crsh");
    log = v5->_log;
    v5->_log = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppleModelNumber"];
    appleModelNumber = v5->_appleModelNumber;
    v5->_appleModelNumber = v8;

    v10 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"CmapEvents"];
    cmapEvents = v5->_cmapEvents;
    v5->_cmapEvents = v13;

    v15 = v5->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v5->_appleModelNumber;
      *buf = 138412290;
      v21 = v16;
      _os_log_impl(&dword_247AA7000, v15, OS_LOG_TYPE_INFO, "amn: %@", buf, 0xCu);
    }

    v17 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  appleModelNumber = self->_appleModelNumber;
  coderCopy = coder;
  [coderCopy encodeObject:appleModelNumber forKey:@"AppleModelNumber"];
  [coderCopy encodeObject:self->_cmapEvents forKey:@"CmapEvents"];
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

- (id)findCmapEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_cmapEvents;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 isSection:{eventCopy, v14}])
        {
          v12 = v10;

          goto LABEL_13;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [UARPDynamicAssetCmapMapping findCmapEvent:?];
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (BOOL)appendCmapEvents:(id)events
{
  eventsCopy = events;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(UARPDynamicAssetCmapMapping *)self appendCmapEventsArray:eventsCopy];

  return v5;
}

- (BOOL)appendCmapEventsArray:(id)array
{
  v29 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v5 = [(NSArray *)self->_cmapEvents mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = arrayCopy;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    v22 = v5;
    while (2)
    {
      v9 = 0;
      v21 = v7;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          log = self->_log;
          v5 = v22;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetCmapMapping appendCmapEventsArray:?];
          }

          v18 = 0;
          cmapEvents = obj;
          goto LABEL_30;
        }

        v11 = [v10 objectForKeyedSubscript:@"SectionName"];
        if (!v11)
        {
          goto LABEL_29;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetCmapMapping initWithEventsArray:appleModelNumber:];
          }

          goto LABEL_29;
        }

        v12 = [(UARPDynamicAssetCmapMapping *)self findCmapEvent:v11];
        if (!v12)
        {
          v13 = [v10 objectForKeyedSubscript:@"InputDictionary"];
          if (!v13)
          {
            goto LABEL_28;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              [UARPDynamicAssetCmapMapping initWithEventsArray:appleModelNumber:];
            }

            goto LABEL_28;
          }

          v14 = [v10 objectForKeyedSubscript:@"decoderId"];
          if (!v14)
          {
            goto LABEL_27;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              [UARPDynamicAssetCmapMapping appendCmapEventsArray:];
            }

LABEL_27:

LABEL_28:
LABEL_29:

            v18 = 0;
            cmapEvents = obj;
            v5 = v22;
            goto LABEL_30;
          }

          v15 = -[UARPDynamicAssetCmapEvent initWithSectionName:decoderId:inputDictionary:]([UARPDynamicAssetCmapEvent alloc], "initWithSectionName:decoderId:inputDictionary:", v11, [v14 unsignedIntValue], v13);
          [v22 addObject:v15];

          v7 = v21;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      v5 = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = [v5 copy];
  cmapEvents = self->_cmapEvents;
  self->_cmapEvents = v16;
  v18 = 1;
LABEL_30:

  return v18;
}

- (id)expandCrshDictionary:(id)dictionary
{
  v40[9] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v39[0] = @"mailboxes";
  v28 = objc_opt_new();
  v40[0] = v28;
  v39[1] = @"panic";
  null = [MEMORY[0x277CBEB68] null];
  v40[1] = null;
  v39[2] = @"crashlog-version";
  null2 = [MEMORY[0x277CBEB68] null];
  v40[2] = null2;
  v39[3] = @"exception";
  null3 = [MEMORY[0x277CBEB68] null];
  v40[3] = null3;
  v39[4] = @"uuid";
  null4 = [MEMORY[0x277CBEB68] null];
  v40[4] = null4;
  v39[5] = @"call-stack";
  null5 = [MEMORY[0x277CBEB68] null];
  v40[5] = null5;
  v39[6] = @"tasks";
  null6 = [MEMORY[0x277CBEB68] null];
  v40[6] = null6;
  v39[7] = @"registers";
  null7 = [MEMORY[0x277CBEB68] null];
  v40[7] = null7;
  v39[8] = @"scenario";
  null8 = [MEMORY[0x277CBEB68] null];
  v40[8] = null8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:9];
  v31 = v4;
  [v4 setDictionary:v11];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"panic"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setObject:v12 forKey:@"panic"];
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"crashlog-version"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setObject:v13 forKey:@"crashlog-version"];
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"exception"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setObject:v14 forKey:@"exception"];
  }

  v29 = v14;
  v15 = [dictionaryCopy objectForKeyedSubscript:@"sections"];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    v19 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        v22 = [v21 objectForKeyedSubscript:@"section-name"];
        v23 = [(UARPDynamicAssetCmapMapping *)self findCmapEvent:v22];
        v24 = v23;
        if (v23)
        {
          if (([v23 decodeCrash:v21 inDictionary:v31] & 1) == 0 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [(UARPDynamicAssetCmapMapping *)buf expandCrshDictionary:v22, &buf[4]];
          }
        }

        else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [(UARPDynamicAssetCmapMapping *)v37 expandCrshDictionary:v22, &v37[4]];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v17);
  }

  return v31;
}

+ (id)tag
{
  v2 = [[UARPAssetTag alloc] initWithString:@"CMAP"];

  return v2;
}

- (void)expandCrshDictionary:(void *)a3 .cold.1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to add section:%@", buf, 0xCu);
}

- (void)expandCrshDictionary:(void *)a3 .cold.2(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No Cmap Event for SectionName:%@", buf, 0xCu);
}

@end