@interface WRTaskingFilteredSignposts
@end

@implementation WRTaskingFilteredSignposts

void ___WRTaskingFilteredSignposts_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v11];
  if ([(__CFString *)v11 isEqualToString:@"diagnostics"])
  {
    v7 = _WRTaskingFilteredDiagnostics(v5, v6);
    v8 = *(a1 + 40);
    v9 = v7;
    v10 = @"diagnostics";
LABEL_6:
    [v8 setObject:v9 forKeyedSubscript:v10];
    goto LABEL_7;
  }

  v7 = [*(a1 + 32) objectForKeyedSubscript:v11];
  if (!v7 || ([v5 isEqual:v7] & 1) == 0)
  {
    v8 = *(a1 + 40);
    v9 = v5;
    v10 = v11;
    goto LABEL_6;
  }

LABEL_7:
}

void ___WRTaskingFilteredSignposts_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 40);
      v9 = &unk_28838A6F8;
LABEL_6:
      [v8 setObject:v9 forKeyedSubscript:v5];
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 40);
      v9 = &stru_288387A58;
      goto LABEL_6;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    if (![v5 isEqualToString:@"diagnostics"])
    {
      v8 = *(a1 + 40);
      v9 = MEMORY[0x277CBEBF8];
      goto LABEL_6;
    }

    v10 = v6;
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = _WRTaskingDiagnosticRemovedDict(*(*(&v19 + 1) + 8 * i));
          [v11 addObject:{v17, v19}];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    v18 = [v11 copy];
    [*(a1 + 40) setObject:v18 forKeyedSubscript:v5];
  }

LABEL_7:
}

@end