@interface WPStorageAccessUserAgentStringQuirksData
- (WPStorageAccessUserAgentStringQuirksData)initWithQuirks:(id)quirks;
@end

@implementation WPStorageAccessUserAgentStringQuirksData

- (WPStorageAccessUserAgentStringQuirksData)initWithQuirks:(id)quirks
{
  v32 = *MEMORY[0x277D85DE8];
  quirksCopy = quirks;
  v30.receiver = self;
  v30.super_class = WPStorageAccessUserAgentStringQuirksData;
  v15 = [(WPStorageAccessUserAgentStringQuirksData *)&v30 init];
  if (v15)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__1;
    v28 = __Block_byref_object_dispose__1;
    v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(quirksCopy, "count")}];
    v21 = 0;
    v22[0] = &v21;
    v22[1] = 0x2020000000;
    v23 = 0;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = quirksCopy;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v31 count:16];
    if (v5)
    {
      v6 = *v18;
      do
      {
        v7 = 0;
        do
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v17 + 1) + 8 * v7);
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __59__WPStorageAccessUserAgentStringQuirksData_initWithQuirks___block_invoke;
          v16[3] = &unk_279EAF548;
          v16[4] = &v21;
          v16[5] = &v24;
          [v8 enumerateKeysAndObjectsUsingBlock:v16];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v17 objects:v31 count:16];
      }

      while (v5);
    }

    objc_storeStrong(&v15->_quirks, v25[5]);
    if (*(v22[0] + 24))
    {
      v11 = WPOSLogServer(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(WPStorageAccessUserAgentStringQuirksData *)v22 initWithQuirks:v11];
      }
    }

    v12 = v15;
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v24, 8);
  }

  return v15;
}

void __59__WPStorageAccessUserAgentStringQuirksData_initWithQuirks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [[WPStorageAccessUserAgentStringQuirk alloc] initWithDomain:v7 withUserAgentString:v5];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }

  else
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (void)initWithQuirks:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 24);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_273D20000, a2, OS_LOG_TYPE_ERROR, "WPStorageAccessUserAgentStringQuirksData initWithQuirks: skipped %d entries due to unexpected class types", v3, 8u);
}

@end