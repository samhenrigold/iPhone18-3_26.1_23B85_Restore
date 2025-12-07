id logForSPLogCategoryDefault(uint64_t a1)
{
  if (logForSPLogCategoryDefault_onceDefaultToken != -1)
  {
    logForSPLogCategoryDefault_cold_1();
  }

  v2 = logForSPLogCategoryDefault_sDefaultLog;

  return v2;
}

uint64_t __logForSPLogCategoryDefault_block_invoke()
{
  logForSPLogCategoryDefault_sDefaultLog = os_log_create("com.apple.spotlight", "default");

  return MEMORY[0x2821F96F8]();
}

id attributesForTopicIdentifier(void *a1, unsigned __int8 *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = attributesWithTopicIdentifier(v3);
  v6 = v5;
  if (a2)
  {
    v7 = [v5 objectForKeyedSubscript:@"isR"];
    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"isR"];
      v9 = [v8 BOOLValue];
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  v10 = [v6 objectForKeyedSubscript:@"pQId"];
  v11 = attributesWithEntityIdentifier(v10);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [v11 objectForKeyedSubscript:*(*(&v19 + 1) + 8 * i)];
        [v4 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [v4 allObjects];

  return v17;
}

id attributesWithTopicIdentifier(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v1 componentsSeparatedByString:{@"=;", 0}];;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 length])
        {
          v9 = [v8 componentsSeparatedByString:@":=:"];
          v10 = [v9 firstObject];
          v11 = [v9 lastObject];
          [v2 setObject:v11 forKey:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

id attributesWithEntityIdentifier(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v1 componentsSeparatedByString:{@"\t", 0}];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 length])
        {
          v9 = [v8 componentsSeparatedByString:@"="];
          v10 = [v9 firstObject];
          v11 = [v9 lastObject];
          [v2 setObject:v11 forKey:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

id logForSPLogCategoryCaching(uint64_t a1)
{
  if (logForSPLogCategoryCaching_onceCachingToken != -1)
  {
    logForSPLogCategoryCaching_cold_1();
  }

  v2 = logForSPLogCategoryCaching_sCachingLog;

  return v2;
}

uint64_t __logForSPLogCategoryCaching_block_invoke()
{
  logForSPLogCategoryCaching_sCachingLog = os_log_create("com.apple.spotlight", "caching");

  return MEMORY[0x2821F96F8]();
}

id logForSPLogCategoryRecents(uint64_t a1)
{
  if (logForSPLogCategoryRecents_onceRecentToken != -1)
  {
    logForSPLogCategoryRecents_cold_1();
  }

  v2 = logForSPLogCategoryRecents_sRecentsLog;

  return v2;
}

uint64_t __logForSPLogCategoryRecents_block_invoke()
{
  logForSPLogCategoryRecents_sRecentsLog = os_log_create("com.apple.spotlight", "recents");

  return MEMORY[0x2821F96F8]();
}

__CFString *truncatedTitle(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 length] > 0x7F)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2020000000;
      v11 = 0;
      v4 = [v2 length];
      v5 = *MEMORY[0x277CCA408];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __truncatedTitle_block_invoke;
      v7[3] = &unk_279D025B0;
      v7[4] = &v8;
      [v2 enumerateLinguisticTagsInRange:0 scheme:v4 options:v5 orthography:6 usingBlock:{0, v7}];
      v3 = [v2 substringWithRange:{0, v9[3]}];
      _Block_object_dispose(&v8, 8);
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = &stru_287C3D120;
  }

  return v3;
}

void sub_26B79EAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __truncatedTitle_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ((a3 + a4) < 0x80)
  {
    *(*(*(result + 32) + 8) + 24) = a3 + a4;
  }

  else
  {
    *a7 = 1;
  }

  return result;
}

__CFString *truncatedSearchString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 length] > 0x3F)
    {
      v3 = [v2 substringToIndex:64];
    }

    else
    {
      v3 = v2;
    }

    v4 = v3;
  }

  else
  {
    v4 = &stru_287C3D120;
  }

  return v4;
}

id topicIdentifierWithIdentifierAndDetail(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v12 isEqual:*MEMORY[0x277CCA190]])
  {
    v15 = @"1";
  }

  else if ([v12 isEqual:*MEMORY[0x277CCA198]])
  {
    v15 = @"2";
  }

  else if ([v12 isEqual:*MEMORY[0x277CCA1A0]])
  {
    v15 = @"3";
  }

  else if ([v12 isEqual:@"Priority"])
  {
    v15 = @"4";
  }

  else if ([v12 isEqual:@"Default"])
  {
    v15 = @"5";
  }

  else
  {
    v15 = @"0";
  }

  if (v10)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"id%@%@", @":=:", v10];
    [v14 addObject:v16];
  }

  if (v11)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"bId%@%@", @":=:", v11];
    [v14 addObject:v17];
  }

  if (v12)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"pC%@%@", @":=:", v15];
    [v14 addObject:v18];
  }

  if (v13)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"dt%@%@", @":=:", v13];
    [v14 addObject:v19];
  }

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"tp%@%d", @":=:", a5];
  [v14 addObject:v20];

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"isR%@%d", @":=:", a6];
  [v14 addObject:v21];

  if ([v14 count])
  {
    v22 = [v14 componentsJoinedByString:@"=;"];;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

id topicIdentifierWithPersonQueryIdentifierAndDetail(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = 0x277CCA000;
  if (v7)
  {
    v29 = a4;
    v30 = a3;
    v31 = v8;
    v28 = v7;
    v11 = attributesWithEntityIdentifier(v7);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v32 + 1) + 8 * i);
          v17 = MEMORY[0x277CCACA8];
          v18 = [v11 objectForKeyedSubscript:v16];
          v19 = [v17 stringWithFormat:@"%@%@%@", v16, @"=", v18];
          [v9 addObject:v19];
        }

        v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v13);
    }

    v20 = [v9 sortedArrayUsingSelector:sel_compare_];
    v21 = [v20 componentsJoinedByString:@"\t"];

    [v9 removeAllObjects];
    v10 = 0x277CCA000uLL;
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"pQId%@%@", @":=:", v21];
    [v9 addObject:v22];

    a3 = v30;
    v8 = v31;
    a4 = v29;
  }

  if (v8)
  {
    v23 = [*(v10 + 3240) stringWithFormat:@"dt%@%@", @":=:", v8];
    [v9 addObject:v23];
  }

  v24 = [*(v10 + 3240) stringWithFormat:@"isR%@%d", @":=:", a4];
  [v9 addObject:v24];

  v25 = [*(v10 + 3240) stringWithFormat:@"tp%@%d", @":=:", a3];
  [v9 addObject:v25];

  if ([v9 count])
  {
    v26 = [v9 componentsJoinedByString:@"=;"];;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

id topicIdentifierWithContactIdentifierAndDetail(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = MEMORY[0x277CBEB18];
  v11 = a3;
  v12 = a2;
  v13 = objc_alloc_init(v10);
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"contactIdentifier%@%@", @"=", v12];

  [v13 addObject:v14];
  if ([v9 length])
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"displayName%@%@", @"=", v9];
    [v13 addObject:v15];

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"name%@%@", @"=", v9];
    [v13 addObject:v16];
  }

  v17 = [v13 sortedArrayUsingSelector:sel_compare_];
  v18 = [v17 componentsJoinedByString:@"\t"];

  v19 = topicIdentifierWithPersonQueryIdentifierAndDetail(v18, v11, a4, a5);

  return v19;
}

id topicIdentifierWithContactInfoAndDetail(void *a1, void *a2, void *a3, void *a4, unsigned int a5, unsigned int a6)
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v37 = a4;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [v14 description];
  v16 = [v13 stringWithFormat:@"personIdentifier%@%@", @"=", v15];
  [v12 addObject:v16];

  if ([v9 length])
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"displayName%@%@", @"=", v9];
    [v12 addObject:v17];

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"name%@%@", @"=", v9];
    [v12 addObject:v18];
  }

  v40 = v11;
  v41 = v10;
  if ([v10 count])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v19 = v10;
    v20 = [v19 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v47;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v47 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v46 + 1) + 8 * i);
          if ([v24 length])
          {
            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"email%@%@", @"=", v24];
            [v12 addObject:v25];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v21);
    }

    v11 = v40;
    v10 = v41;
  }

  if ([v11 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v26 = v11;
    v27 = [v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v43;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v42 + 1) + 8 * j);
          if ([v31 length])
          {
            v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"phone%@%@", @"=", v31];
            [v12 addObject:v32];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v28);
    }

    v11 = v40;
    v10 = v41;
  }

  v33 = [v12 sortedArrayUsingSelector:sel_compare_];
  v34 = [v33 componentsJoinedByString:@"\t"];

  v35 = topicIdentifierWithPersonQueryIdentifierAndDetail(v34, v37, a5, a6);

  return v35;
}

id topicIdentifierWithTitleAndType(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"ti%@%@", @":=:", v5];
    [v6 addObject:v7];
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"tp%@%d", @":=:", a2];
  [v6 addObject:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"isR%@%d", @":=:", a3];
  [v6 addObject:v9];

  if ([v6 count])
  {
    v10 = [v6 componentsJoinedByString:@"=;"];;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t topicIsCoreSuggestion(void *a1)
{
  v1 = [a1 identifier];
  v2 = attributesWithTopicIdentifier(v1);

  v3 = [v2 objectForKeyedSubscript:@"bId"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isEqualToString:@"com.apple.CoreSuggestions"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id searchResultWithTopicIdentifier(void *a1, double a2)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v3 = attributesWithTopicIdentifier(a1);
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    v15 = 0;
    goto LABEL_41;
  }

  v5 = v4;
  v6 = [v5 objectForKeyedSubscript:@"tp"];
  if (!v6)
  {

    v10 = [v5 objectForKeyedSubscript:@"dt"];
    v9 = 0;
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [v5 objectForKeyedSubscript:@"tp"];
  v9 = [v8 intValue];

  v10 = [v5 objectForKeyedSubscript:@"dt"];
  if (v9 <= 31)
  {
    if ((v9 - 2) < 3 || v9 == 20)
    {
      v11 = [v5 objectForKeyedSubscript:@"id"];
      v12 = [v5 objectForKeyedSubscript:@"bId"];
      v13 = [v5 objectForKeyedSubscript:@"pC"];
      if ([v13 isEqualToString:@"1"])
      {
        v14 = MEMORY[0x277CCA190];
      }

      else if ([v13 isEqualToString:@"2"])
      {
        v14 = MEMORY[0x277CCA198];
      }

      else
      {
        if (([v13 isEqualToString:@"3"] & 1) == 0)
        {
          if ([v13 isEqualToString:@"4"])
          {
            v35 = @"Priority";
          }

          else
          {
            if (([v13 isEqualToString:@"5"] & 1) == 0)
            {
              v14 = MEMORY[0x277CCA1B8];
              goto LABEL_30;
            }

            v35 = @"Default";
          }

LABEL_31:

          v18 = 0;
          if (v11 && v12 && v35)
          {
            v36 = MEMORY[0x277D4C5D0];
            v44 = v11;
            v37 = v12;
            v38 = v11;
            v39 = v35;
            v46 = v10;
            v18 = objc_alloc_init(v36);
            v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v39, v37];

            v11 = v38;
            [v18 setResultBundleId:v40];

            [v18 setSectionBundleIdentifier:@"com.apple.searchd.recent.results"];
            [v18 setIdentifier:v44];

            [v18 setType:v9];
            [v18 setRankingScore:a2];
            [v18 setSecondaryTitle:v46];
          }

          goto LABEL_40;
        }

        v14 = MEMORY[0x277CCA1A0];
      }

LABEL_30:
      v35 = *v14;
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  if ((v9 - 37) < 2)
  {
    v20 = [v5 objectForKeyedSubscript:@"pQId"];
    if (v20)
    {
      v18 = objc_alloc_init(MEMORY[0x277D4C5D0]);
      v32 = valueForKeyWithEntityQueryIdentifier(@"displayName", v20);
      if (!v32)
      {
        v32 = valueForKeyWithEntityQueryIdentifier(@"name", v20);
      }

      v33 = valueForKeyWithEntityQueryIdentifier(@"personIdentifier", v20);
      v34 = [MEMORY[0x277D4C690] textWithString:v32];
      [v18 setTitle:v34];
      [v18 setCompletion:v32];
      [v18 setIdentifier:v33];
      [v18 setContactIdentifier:v20];
      [v18 setResultBundleId:@"com.apple.searchd.suggestion"];
      [v18 setSectionBundleIdentifier:@"com.apple.searchd.recent.suggestions"];
      [v18 setRankingScore:a2];
      [v18 setType:38];

      goto LABEL_25;
    }

LABEL_38:
    v18 = 0;
    goto LABEL_39;
  }

  if (v9 == 32)
  {
    v41 = [v5 objectForKeyedSubscript:@"pQId"];
    v20 = v41;
    if (v41)
    {
      v18 = suggestionResultWithContactEntityIdentifier(v41, a2);
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v9 != 36)
  {
LABEL_11:
    v16 = [v5 objectForKeyedSubscript:@"ti"];
    v17 = v10;
    v18 = objc_alloc_init(MEMORY[0x277D4C5D0]);
    v45 = [MEMORY[0x277D4C690] textWithString:v16];
    [v18 setTitle:?];
    [v18 setCompletion:v16];
    [v18 setResultBundleId:@"com.apple.searchd.suggestion"];
    [v18 setSectionBundleIdentifier:@"com.apple.searchd.recent.suggestions"];
    [v18 setRankingScore:a2];
    [v18 setType:v9];
    v19 = [v18 resultBundleId];
    v20 = v16;
    v10 = v17;
    v21 = objc_opt_new();
    [v21 setSymbolName:@"magnifyingglass"];
    [v21 setIsTemplate:1];
    v22 = objc_opt_new();
    v43 = v19;
    [v22 setBundleIdentifier:v19];
    v23 = objc_opt_new();
    [v23 setThumbnail:v21];
    [v23 setShouldUseCompactDisplay:1];
    v24 = [MEMORY[0x277D4C598] textWithString:v20];
    [v23 setTitle:v24];

    v25 = [v23 title];
    [v25 setMaxLines:1];

    if (v10 && [v10 length])
    {
      v26 = [MEMORY[0x277D4C598] textWithString:v10];
      v48[0] = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
      [v23 setDescriptions:v27];
    }

    v28 = objc_opt_new();
    [v28 setSearchString:v20];
    [v28 setQuerySource:1];
    [v23 setCommand:v28];
    v29 = objc_opt_new();
    v47 = v23;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
    [v29 setCardSections:v30];

    [v18 setInlineCard:v29];
    goto LABEL_39;
  }

  v20 = [v5 objectForKeyedSubscript:@"bId"];
  if ([v20 isEqualToString:@"com.apple.CoreSuggestions"])
  {
    goto LABEL_38;
  }

  v31 = [v5 objectForKeyedSubscript:@"pQId"];
  v32 = v31;
  if (v31)
  {
    v18 = suggestionResultWithContactEntityIdentifier(v31, a2);
  }

  else
  {
    v18 = 0;
  }

LABEL_25:

LABEL_39:
LABEL_40:
  v15 = v18;

LABEL_41:

  return v15;
}

id suggestionResultWithContactEntityIdentifier(void *a1, double a2)
{
  v3 = MEMORY[0x277D4C5D0];
  v4 = a1;
  v5 = objc_alloc_init(v3);
  v6 = valueForKeyWithEntityQueryIdentifier(@"displayName", v4);
  v7 = valueForKeyWithEntityQueryIdentifier(@"contactIdentifier", v4);

  v8 = [MEMORY[0x277D4C690] textWithString:v6];
  [v5 setTitle:v8];
  [v5 setCompletion:v6];
  [v5 setIdentifier:v7];
  [v5 setContactIdentifier:v7];
  [v5 setResultBundleId:@"com.apple.searchd.suggestion"];
  [v5 setSectionBundleIdentifier:@"com.apple.searchd.recent.suggestions"];
  [v5 setRankingScore:a2];
  [v5 setType:32];

  return v5;
}

id valueForKeyWithEntityQueryIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = attributesWithEntityIdentifier(a2);
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26B7A30B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}