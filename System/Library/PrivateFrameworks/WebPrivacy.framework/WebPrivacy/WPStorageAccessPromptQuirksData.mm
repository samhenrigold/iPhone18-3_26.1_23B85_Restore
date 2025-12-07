@interface WPStorageAccessPromptQuirksData
- (WPStorageAccessPromptQuirksData)initWithQuirks:(id)quirks;
@end

@implementation WPStorageAccessPromptQuirksData

- (WPStorageAccessPromptQuirksData)initWithQuirks:(id)quirks
{
  v33 = *MEMORY[0x277D85DE8];
  quirksCopy = quirks;
  v31.receiver = self;
  v31.super_class = WPStorageAccessPromptQuirksData;
  v16 = [(WPStorageAccessPromptQuirksData *)&v31 init];
  if (v16)
  {
    v14 = quirksCopy;
    v28 = 0;
    v29[0] = &v28;
    v29[1] = 0x2020000000;
    v30 = 0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *(v29[0] + 24) = 0x7FFFFFFF;
      quirksCopy = [MEMORY[0x277CBEA60] array];
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__0;
    v26 = __Block_byref_object_dispose__0;
    v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(quirksCopy, "count", quirksCopy)}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    quirksCopy = v15;
    v5 = [quirksCopy countByEnumeratingWithState:&v18 objects:v32 count:16];
    if (v5)
    {
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(quirksCopy);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __50__WPStorageAccessPromptQuirksData_initWithQuirks___block_invoke;
            v17[3] = &unk_279EAF520;
            v17[4] = &v28;
            v17[5] = &v22;
            [v8 enumerateKeysAndObjectsUsingBlock:v17];
          }

          else
          {
            ++*(v29[0] + 24);
          }
        }

        v5 = [quirksCopy countByEnumeratingWithState:&v18 objects:v32 count:16];
      }

      while (v5);
    }

    objc_storeStrong(&v16->_quirks, v23[5]);
    if (*(v29[0] + 24))
    {
      v11 = WPOSLogServer(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(WPStorageAccessPromptQuirksData *)v29 initWithQuirks:v11];
      }
    }

    v12 = v16;
    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(&v28, 8);
  }

  return v16;
}

void __50__WPStorageAccessPromptQuirksData_initWithQuirks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [[WPStorageAccessPromptQuirk alloc] initWithName:v7 withDomainData:v5];
    if ([(WPStorageAccessPromptQuirk *)v6 isValid])
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
    }

    else
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
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
  _os_log_error_impl(&dword_273D20000, a2, OS_LOG_TYPE_ERROR, "WPStorageAccessPromptQuirksData initWithQuirks: skipped %d entries due to malformed entries", v3, 8u);
}

@end