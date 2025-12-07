@interface PLAccountingQualificationEventEntry
+ (void)load;
- (BOOL)isEmptyEvent;
- (BOOL)isEqualContentsWithEvent:(id)event;
- (NSSet)childNodeIDs;
- (NSSet)childNodeNames;
- (PLAccountingQualificationEventEntry)initWithQualificationID:(id)d withChildNodeIDs:(id)ds withRange:(id)range;
- (PLAccountingQualificationEventEntry)initWithQualificationID:(id)d withChildNodeNames:(id)names withRange:(id)range;
- (int)instanceDirectionality;
@end

@implementation PLAccountingQualificationEventEntry

- (NSSet)childNodeIDs
{
  v27 = *MEMORY[0x277D85DE8];
  if (!self->_childNodeIDs && [(PLEntry *)self existsInDB])
  {
    [(PLEntry *)self loadDynamicKeys];
    v3 = [MEMORY[0x277CBEB58] set];
    v4 = MEMORY[0x277CBEB98];
    v5 = MEMORY[0x277D3F198];
    entryKey = [(PLEntry *)self entryKey];
    v7 = [v5 keyConfigsForEntryKey:entryKey];
    allKeys = [v7 allKeys];
    v9 = [v4 setWithArray:allKeys];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    keys = [(PLEntry *)self keys];
    v11 = [keys countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      v14 = *MEMORY[0x277D3F448];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(keys);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          if (([v9 containsObject:v16] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v16 objectForKeyedSubscript:v14];
            }

            else
            {
              v17 = v16;
            }

            v18 = v17;
            if (v17)
            {
              [(NSSet *)v3 addObject:v17];
            }
          }
        }

        v12 = [keys countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    childNodeIDs = self->_childNodeIDs;
    self->_childNodeIDs = v3;
  }

  v20 = self->_childNodeIDs;

  return v20;
}

- (int)instanceDirectionality
{
  qualificationID = [(PLAccountingQualificationEventEntry *)self qualificationID];
  v3 = [&unk_2870F8780 objectAtIndexedSubscript:{objc_msgSend(qualificationID, "intValue")}];
  intValue = [v3 intValue];

  return intValue;
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccountingQualificationEventEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLAccountingQualificationEventEntry)initWithQualificationID:(id)d withChildNodeNames:(id)names withRange:(id)range
{
  v8 = MEMORY[0x277CBEB98];
  rangeCopy = range;
  namesCopy = names;
  dCopy = d;
  v12 = +[PLAccountingNodeManager sharedInstance];
  allObjects = [namesCopy allObjects];

  v14 = [v12 childNodeIDsFromChildNodeNames:allObjects];
  v15 = [v8 setWithArray:v14];

  v16 = [(PLAccountingQualificationEventEntry *)self initWithQualificationID:dCopy withChildNodeIDs:v15 withRange:rangeCopy];
  return v16;
}

- (PLAccountingQualificationEventEntry)initWithQualificationID:(id)d withChildNodeIDs:(id)ds withRange:(id)range
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  rangeCopy = range;
  if ([dCopy intValue] < 1)
  {
LABEL_10:
    selfCopy = 0;
    goto LABEL_20;
  }

  v11 = +[PLAccountingEngine allQualificationIDs];
  v12 = [v11 containsObject:dCopy];

  selfCopy = 0;
  if (dsCopy && v12)
  {
    v37.receiver = self;
    v37.super_class = PLAccountingQualificationEventEntry;
    v14 = [(PLAccountingEventEntry *)&v37 initWithRange:rangeCopy];
    self = v14;
    if (v14)
    {
      [(PLEntry *)v14 setObject:dCopy forKeyedSubscript:*MEMORY[0x277D3F458]];
      instanceDirectionality = [(PLAccountingQualificationEventEntry *)self instanceDirectionality];
      classDirectionality = [objc_opt_class() classDirectionality];
      if (instanceDirectionality != classDirectionality && classDirectionality != 3)
      {
        dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Directionality mismatch for qualificationID=%@", dCopy];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/Qualification/PLAccountingQualificationEventEntry.m"];
        lastPathComponent = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationEventEntry initWithQualificationID:withChildNodeIDs:withRange:]"];
        [v18 logMessage:dCopy fromFile:lastPathComponent fromFunction:v21 fromLineNumber:45];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDistributionEventEntry initWithDistributionID:dCopy withChildNodeIDToWeight:v22 withRange:?];
        }

        goto LABEL_10;
      }

      v32 = dsCopy;
      objc_storeStrong(&self->_childNodeIDs, ds);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v23 = self->_childNodeIDs;
      v24 = [(NSSet *)v23 countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v34;
        v27 = *MEMORY[0x277D3F448];
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v34 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v33 + 1) + 8 * i);
            v38 = v27;
            v39 = v29;
            v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
            [(PLEntry *)self setObject:&unk_2870F80C0 forKeyedSubscript:v30];
          }

          v25 = [(NSSet *)v23 countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v25);
      }

      dsCopy = v32;
    }

    self = self;
    selfCopy = self;
  }

LABEL_20:

  return selfCopy;
}

- (NSSet)childNodeNames
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  childNodeIDs = [(PLAccountingQualificationEventEntry *)self childNodeIDs];
  v5 = [childNodeIDs countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(childNodeIDs);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = +[PLAccountingNodeManager sharedInstance];
        v11 = [v10 nodeNameForNodeID:v9];

        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v6 = [childNodeIDs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isEqualContentsWithEvent:(id)event
{
  eventCopy = event;
  childNodeIDs = [(PLAccountingQualificationEventEntry *)self childNodeIDs];
  childNodeIDs2 = [eventCopy childNodeIDs];

  LOBYTE(eventCopy) = [childNodeIDs isEqualToSet:childNodeIDs2];
  return eventCopy;
}

- (BOOL)isEmptyEvent
{
  childNodeIDs = [(PLAccountingQualificationEventEntry *)self childNodeIDs];
  v3 = [childNodeIDs count] == 0;

  return v3;
}

@end