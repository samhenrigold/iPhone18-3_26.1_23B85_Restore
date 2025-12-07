@interface NSMutableArray
@end

@implementation NSMutableArray

uint64_t __64__NSMutableArray_CTDisplayPlan__filteredPlansWithoutSODATether___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isAccountMemberTransferablePlan])
    {
      v6 = *(a1 + 32);
      v7 = [v5 carrierName];
      LODWORD(v6) = [v6 containsStringCaseInsensitive:v7];

      if (v6)
      {
        v9 = _TSLogDomain(v8);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
LABEL_8:

          goto LABEL_10;
        }

        v10 = [v5 identifier];
        v17 = 138412546;
        v18 = v10;
        v19 = 2080;
        v20 = "[NSMutableArray(CTDisplayPlan) filteredPlansWithoutSODATether:]_block_invoke";
        v11 = "Account member plan (%@) with a SODA tether @%s";
LABEL_7:
        _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, v11, &v17, 0x16u);

        goto LABEL_8;
      }
    }

    else if (([v5 isOneClickTransferablePlan] & 1) == 0)
    {
      if ([v5 isWebsheetTransferablePlan])
      {
        v13 = *(a1 + 32);
        v14 = [v5 carrierName];
        LODWORD(v13) = [v13 containsStringCaseInsensitive:v14];

        if (v13)
        {
          v15 = +[TSUtilities inBuddy];
          if (v15)
          {
            v9 = _TSLogDomain(v15);
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_8;
            }

            v10 = [v5 identifier];
            v17 = 138412546;
            v18 = v10;
            v19 = 2080;
            v20 = "[NSMutableArray(CTDisplayPlan) filteredPlansWithoutSODATether:]_block_invoke";
            v11 = "Websheet-inbuddy plan (%@) with a SODA tether @%s";
            goto LABEL_7;
          }
        }
      }
    }

    v12 = 1;
    goto LABEL_18;
  }

LABEL_10:
  v12 = 0;
LABEL_18:

  return v12;
}

@end