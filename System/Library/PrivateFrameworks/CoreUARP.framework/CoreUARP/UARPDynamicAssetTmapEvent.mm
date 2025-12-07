@interface UARPDynamicAssetTmapEvent
- (UARPDynamicAssetTmapEvent)init;
- (UARPDynamicAssetTmapEvent)initWithCoder:(id)coder;
- (UARPDynamicAssetTmapEvent)initWithEventFields:(id)fields eventID:(unsigned int)d endian:(id)endian;
- (id)description;
- (id)expandMticData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPDynamicAssetTmapEvent

- (UARPDynamicAssetTmapEvent)init
{
  [(UARPDynamicAssetTmapEvent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetTmapEvent)initWithEventFields:(id)fields eventID:(unsigned int)d endian:(id)endian
{
  v59 = *MEMORY[0x277D85DE8];
  fieldsCopy = fields;
  endianCopy = endian;
  v57.receiver = self;
  v57.super_class = UARPDynamicAssetTmapEvent;
  v10 = [(UARPDynamicAssetTmapEvent *)&v57 init];
  if (!v10)
  {
LABEL_17:
    v26 = 0;
    goto LABEL_18;
  }

  v11 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
  log = v10->_log;
  v10->_log = v11;

  v10->_eventID = d;
  v13 = [fieldsCopy objectForKeyedSubscript:@"EventName"];
  v14 = [v13 copy];
  eventName = v10->_eventName;
  v10->_eventName = v14;

  if (!v10->_eventName)
  {
    v27 = v10->_log;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetTmapEvent *)v27 initWithEventFields:v28 eventID:v29 endian:v30, v31, v32, v33, v34];
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = v10->_log;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetTmapEvent *)v35 initWithEventFields:v36 eventID:v37 endian:v38, v39, v40, v41, v42];
    }

    goto LABEL_17;
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v52 = fieldsCopy;
  v17 = [fieldsCopy objectForKeyedSubscript:@"EventFields"];
  v18 = [v17 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v54;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v54 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v53 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v44 = v10->_log;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [(UARPDynamicAssetTmapEvent *)v44 initWithEventFields:v45 eventID:v46 endian:v47, v48, v49, v50, v51];
          }

          v26 = 0;
          goto LABEL_22;
        }

        v23 = [[TmapFieldTLV alloc] initWithDictionary:v22 endian:endianCopy];
        [v16 addObject:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  eventFields = v10->_eventFields;
  v10->_eventFields = v24;

  v26 = v10;
LABEL_22:
  fieldsCopy = v52;

LABEL_18:
  return v26;
}

- (UARPDynamicAssetTmapEvent)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = UARPDynamicAssetTmapEvent;
  v5 = [(UARPDynamicAssetTmapEvent *)&v17 init];
  if (v5)
  {
    v5->_eventID = [coderCopy decodeIntForKey:@"EventID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EventName"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v8 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"EventFields"];
    eventFields = v5->_eventFields;
    v5->_eventFields = v11;

    v13 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
    log = v5->_log;
    v5->_log = v13;

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  eventID = self->_eventID;
  coderCopy = coder;
  [coderCopy encodeInteger:eventID forKey:@"EventID"];
  [coderCopy encodeObject:self->_eventName forKey:@"EventName"];
  [coderCopy encodeObject:self->_eventFields forKey:@"EventFields"];
}

- (id)expandMticData:(id)data
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_opt_new();
  v6 = [(NSString *)self->_eventName copy];
  [v5 setObject:v6 forKeyedSubscript:@"EventName"];

  v7 = MGGetBoolAnswer();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_eventFields;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (((v7 & 1) != 0 || ([*(*(&v19 + 1) + 8 * i) isFieldPrivacyRestricted] & 1) == 0) && !objc_msgSend(v14, "expandFieldData:withOffset:inCoreAnalytics:", dataCopy, v11, v5) || (v18 = 0, !objc_msgSend(v14, "getNextOffset:fromStart:", &v18, v11)))
        {

          goto LABEL_19;
        }

        v11 = v18;
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11 == [dataCopy length])
  {
    v15 = [v5 copy];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetTmapEvent *)log expandMticData:dataCopy, v11];
    }

LABEL_19:
    v15 = 0;
  }

  return v15;
}

- (id)description
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"Event ID %u\n", self->_eventID];
  if (self->_eventName)
  {
    [v3 appendFormat:@"Event Name %@\n", self->_eventName];
  }

  else
  {
    [v3 appendFormat:@"No Event Name", v11];
  }

  eventFields = self->_eventFields;
  if (eventFields)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = eventFields;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v3 appendFormat:@"TMAP Event TLV %@\n", *(*(&v12 + 1) + 8 * i)];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [v3 appendFormat:@"No TMAP Event TLVs"];
  }

  return v3;
}

- (void)initWithEventFields:(uint64_t)a3 eventID:(uint64_t)a4 endian:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPDynamicAssetTmapEvent initWithEventFields:eventID:endian:]";
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s: Event Name is not type String", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithEventFields:(uint64_t)a3 eventID:(uint64_t)a4 endian:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPDynamicAssetTmapEvent initWithEventFields:eventID:endian:]";
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s: Event Entry is not type Dictionary", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithEventFields:(uint64_t)a3 eventID:(uint64_t)a4 endian:(uint64_t)a5 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPDynamicAssetTmapEvent initWithEventFields:eventID:endian:]";
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s: Event Name doesn't exist in Tmap Event", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)expandMticData:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = 134218240;
  v7 = [a2 length];
  v8 = 2048;
  v9 = a3;
  _os_log_error_impl(&dword_247AA7000, v5, OS_LOG_TYPE_ERROR, "Lengths of MTIC Data(%lu) and TMAP Data(%lu) do not match.", &v6, 0x16u);
}

@end