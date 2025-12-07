@interface BCSPIRBatchRequest
- (BCSPIRBatchRequest)initWithQuery:(id)query;
@end

@implementation BCSPIRBatchRequest

- (BCSPIRBatchRequest)initWithQuery:(id)query
{
  v29 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v27.receiver = self;
  v27.super_class = BCSPIRBatchRequest;
  v5 = [(BCSPIRBatchRequest *)&v27 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    itemIdentifiers = [queryCopy itemIdentifiers];
    v8 = [v6 initWithCapacity:{objc_msgSend(itemIdentifiers, "count")}];
    storage = v5->_storage;
    v5->_storage = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    invalidIdentifiers = v5->_invalidIdentifiers;
    v5->_invalidIdentifiers = v10;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    itemIdentifiers2 = [queryCopy itemIdentifiers];
    v13 = [itemIdentifiers2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(itemIdentifiers2);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if ([v17 conformsToProtocol:&unk_2854664E0])
          {
            v18 = v17;
            pirKey = [v18 pirKey];
            v20 = [(NSMutableDictionary *)v5->_storage objectForKeyedSubscript:pirKey];
            v21 = [v20 mutableCopy];

            if (!v21)
            {
              v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v21 addObject:v18];
            [(NSMutableDictionary *)v5->_storage setObject:v21 forKeyedSubscript:pirKey];
          }

          else
          {
            [(NSMutableArray *)v5->_invalidIdentifiers addObject:v17];
          }
        }

        v14 = [itemIdentifiers2 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }
  }

  return v5;
}

@end