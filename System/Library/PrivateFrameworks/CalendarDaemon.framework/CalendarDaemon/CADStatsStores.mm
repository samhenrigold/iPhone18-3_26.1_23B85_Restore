@interface CADStatsStores
- (id)eventDictionaries;
- (void)prepareWithContext:(id)context;
- (void)processStores:(id)stores;
@end

@implementation CADStatsStores

- (void)prepareWithContext:(id)context
{
  objc_storeStrong(&self->_context, context);
  contextCopy = context;
  v5 = objc_opt_new();
  storeInfos = self->_storeInfos;
  self->_storeInfos = v5;
}

- (void)processStores:(id)stores
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  storesCopy = stores;
  v5 = [storesCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(storesCopy);
        }

        v9 = objc_opt_new();
        [(NSMutableArray *)self->_storeInfos addObject:v9];
        v10 = CalStoreCopyCalendars();
        if (v10)
        {
          v11 = v10;
          if (CFArrayGetCount(v10) >= 1)
          {
            CFArrayGetValueAtIndex(v11, 0);
            v12 = CalCalendarCopyDomainName();
            v13 = *(v9 + 40);
            *(v9 + 40) = v12;

            *(v9 + 48) = CalCalendarEmailIsUsedForOtherSource();
          }

          CFRelease(v11);
        }

        *(v9 + 8) = CalStoreGetType();
        *(v9 + 32) = CalStoreIsDelegate();
        *(v9 + 33) = CalStoreIsEnabled();
        v14 = CalStoreCopyUUID();
        if (v14)
        {
          v15 = v14;
          accountStore = [(CADStatCollectionContext *)self->_context accountStore];
          v17 = [accountStore accountWithIdentifier:v15];

          displayAccount = [v17 displayAccount];
          accountType = [displayAccount accountType];
          identifier = [accountType identifier];
          v21 = *(v9 + 24);
          *(v9 + 24) = identifier;

          if (*(v9 + 24))
          {
            *(v9 + 16) = PCSettingsGetStyle();
          }

          CFRelease(v15);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [storesCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }
}

- (id)eventDictionaries
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_storeInfos, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_storeInfos;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = objc_opt_new();
        [v9 setObject:&unk_2837C7558 forKeyedSubscript:@"instance"];
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(v8 + 8)];
        [v9 setObject:v10 forKeyedSubscript:@"storeType"];

        v11 = *(v8 + 24);
        if (v11)
        {
          [v9 setObject:v11 forKeyedSubscript:@"accountType"];
          v12 = [MEMORY[0x277CCABB0] numberWithInteger:*(v8 + 16)];
          [v9 setObject:v12 forKeyedSubscript:@"syncStyle"];
        }

        v13 = *(v8 + 40);
        if (v13)
        {
          [v9 setObject:v13 forKeyedSubscript:@"emailDomain"];
          v14 = [MEMORY[0x277CCABB0] numberWithBool:*(v8 + 48)];
          [v9 setObject:v14 forKeyedSubscript:@"emailIsUsedInOtherSource"];
        }

        v15 = [MEMORY[0x277CCABB0] numberWithBool:*(v8 + 32)];
        [v9 setObject:v15 forKeyedSubscript:@"isDelegate"];

        v16 = [MEMORY[0x277CCABB0] numberWithBool:*(v8 + 33)];
        [v9 setObject:v16 forKeyedSubscript:@"isEnabled"];

        [v3 addObject:v9];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  return v3;
}

@end