@interface DADStatusReportAggregator
- (DADStatusReportAggregator)initWithStatusReports:(id)reports numOutstandingReports:(int)outstandingReports timeout:(double)timeout completionBlock:(id)block;
- (void)_coalesceAndReport;
- (void)noteAdditionalReportDicts:(id)dicts;
@end

@implementation DADStatusReportAggregator

- (DADStatusReportAggregator)initWithStatusReports:(id)reports numOutstandingReports:(int)outstandingReports timeout:(double)timeout completionBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  reportsCopy = reports;
  blockCopy = block;
  v33.receiver = self;
  v33.super_class = DADStatusReportAggregator;
  v12 = [(DADStatusReportAggregator *)&v33 init];
  v13 = v12;
  if (v12)
  {
    v12->_numOutstandingReports = outstandingReports;
    if (blockCopy)
    {
      v14 = [blockCopy copy];
      completionBlock = v13->_completionBlock;
      v13->_completionBlock = v14;
    }

    v16 = objc_opt_new();
    persistentUUIDToStatusReport = v13->_persistentUUIDToStatusReport;
    v13->_persistentUUIDToStatusReport = v16;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = reportsCopy;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v29 + 1) + 8 * i);
          persistentUUID = [v23 persistentUUID];
          [(NSMutableDictionary *)v13->_persistentUUIDToStatusReport setObject:v23 forKeyedSubscript:persistentUUID];
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v20);
    }

    v25 = dispatch_time(0, (timeout * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__DADStatusReportAggregator_initWithStatusReports_numOutstandingReports_timeout_completionBlock___block_invoke;
    block[3] = &unk_278F1CDC0;
    v28 = v13;
    dispatch_after(v25, MEMORY[0x277D85CD0], block);
  }

  return v13;
}

- (void)_coalesceAndReport
{
  v18 = *MEMORY[0x277D85DE8];
  obj = self;
  objc_sync_enter(obj);
  if (obj->_finished)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_finished = 1;
    objc_sync_exit(obj);

    if ([(NSMutableDictionary *)obj->_persistentUUIDToStatusReport count])
    {
      allValues = [(NSMutableDictionary *)obj->_persistentUUIDToStatusReport allValues];
      v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](obj->_persistentUUIDToStatusReport, "count")}];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v4 = allValues;
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

            dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
            [v3 addObject:dictionaryRepresentation];
          }

          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }
    }

    else
    {
      v3 = 0;
    }

    completionBlock = obj->_completionBlock;
    if (completionBlock)
    {
      completionBlock[2](completionBlock, v3);
      v11 = obj->_completionBlock;
      obj->_completionBlock = 0;
    }
  }
}

- (void)noteAdditionalReportDicts:(id)dicts
{
  v18 = *MEMORY[0x277D85DE8];
  dictsCopy = dicts;
  --self->_numOutstandingReports;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [dictsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(dictsCopy);
        }

        v9 = [objc_alloc(MEMORY[0x277D03978]) initWithDictionaryRepresentation:*(*(&v13 + 1) + 8 * i)];
        persistentUUID = [v9 persistentUUID];
        v11 = [(NSMutableDictionary *)self->_persistentUUIDToStatusReport objectForKeyedSubscript:persistentUUID];
        v12 = v11;
        if (v11)
        {
          [v11 mergeStatusReport:v9];
        }

        else
        {
          [(NSMutableDictionary *)self->_persistentUUIDToStatusReport setObject:v9 forKeyedSubscript:persistentUUID];
        }
      }

      v6 = [dictsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if (self->_numOutstandingReports <= 0)
  {
    [(DADStatusReportAggregator *)self _coalesceAndReport];
  }
}

@end