@interface NSBundle(BRLTBrailleTables)
+ (id)brl_brailleTableBundleWithIdentifier:()BRLTBrailleTables;
- (id)brl_brailleTablesDictionary;
- (id)brl_languageAgnosticTables;
- (id)brl_supportedLocaleIdentifiersForTableWithIdentifier:()BRLTBrailleTables;
- (id)brl_supportedLocales;
- (id)brl_supportedLocalesForTableWithIdentifier:()BRLTBrailleTables;
- (id)brl_supportedTablesForLocale:()BRLTBrailleTables;
- (uint64_t)brl_tableIsLanguageAgnosticWithIdentifier:()BRLTBrailleTables;
- (void)brl_brailleTablesDictionary;
@end

@implementation NSBundle(BRLTBrailleTables)

+ (id)brl_brailleTableBundleWithIdentifier:()BRLTBrailleTables
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[BRLTTableEnumerator tableEnumeratorWithSystemBundlePath];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  translatorBundles = [v4 translatorBundles];
  v6 = [translatorBundles countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(translatorBundles);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        bundleIdentifier = [v9 bundleIdentifier];
        v11 = [bundleIdentifier isEqualToString:v3];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [translatorBundles countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)brl_brailleTablesDictionary
{
  v1 = [self objectForInfoDictionaryKey:@"BrailleTables"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = BRLTLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(NSBundle(BRLTBrailleTables) *)v1 brl_brailleTablesDictionary];
    }

    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

- (id)brl_supportedLocales
{
  selfCopy = self;
  v29 = *MEMORY[0x277D85DE8];
  brl_brailleTablesDictionary = [self brl_brailleTablesDictionary];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(brl_brailleTablesDictionary, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = brl_brailleTablesDictionary;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      v17 = v5;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        if (([selfCopy brl_tableIsLanguageAgnosticWithIdentifier:{v8, v17}] & 1) == 0)
        {
          v9 = selfCopy;
          v10 = [selfCopy brl_supportedLocaleIdentifiersForTableWithIdentifier:v8];
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v20;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:*(*(&v19 + 1) + 8 * i)];
                if (v15)
                {
                  [v3 addObject:v15];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v12);
          }

          v5 = v17;
          selfCopy = v9;
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)brl_supportedTablesForLocale:()BRLTBrailleTables
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  selfCopy = self;
  brl_brailleTablesDictionary = [self brl_brailleTablesDictionary];
  v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = brl_brailleTablesDictionary;
  v31 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v31)
  {
    v29 = *v41;
    do
    {
      v7 = 0;
      do
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v7;
        v8 = *(*(&v40 + 1) + 8 * v7);
        v9 = [selfCopy brl_supportedLocaleIdentifiersForTableWithIdentifier:v8];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v33 = v9;
        v35 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v35)
        {
          v34 = *v37;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v37 != v34)
              {
                objc_enumerationMutation(v33);
              }

              v11 = *(*(&v36 + 1) + 8 * i);
              v12 = MEMORY[0x277CBEAF8];
              languageCode = [v4 languageCode];
              v14 = [v12 localeWithLocaleIdentifier:languageCode];

              localeIdentifier = [v4 localeIdentifier];
              v16 = __60__NSBundle_BRLTBrailleTables__brl_supportedTablesForLocale___block_invoke(localeIdentifier, localeIdentifier);
              v17 = __60__NSBundle_BRLTBrailleTables__brl_supportedTablesForLocale___block_invoke(v16, v11);
              v18 = [v16 isEqualToString:v17];

              if (v18)
              {
                if ([v6 containsObject:v8])
                {
                  [v6 removeObject:v8];
                }

                [v6 insertObject:v8 atIndex:0];
              }

              else
              {
                languageCode2 = [v4 languageCode];
                v20 = __60__NSBundle_BRLTBrailleTables__brl_supportedTablesForLocale___block_invoke(languageCode2, languageCode2);
                v21 = __60__NSBundle_BRLTBrailleTables__brl_supportedTablesForLocale___block_invoke(v20, v11);
                v22 = [v20 isEqualToString:v21];

                if (v22 || ([v14 languageCode], v23 = objc_claimAutoreleasedReturnValue(), __60__NSBundle_BRLTBrailleTables__brl_supportedTablesForLocale___block_invoke(v23, v23), v24 = objc_claimAutoreleasedReturnValue(), __60__NSBundle_BRLTBrailleTables__brl_supportedTablesForLocale___block_invoke(v24, v11), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "isEqualToString:", v25), v25, v24, v23, v26))
                {
                  if (([v6 containsObject:v8] & 1) == 0)
                  {
                    [v6 addObject:v8];
                  }
                }
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v35);
        }

        v7 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v31);
  }

  return v6;
}

- (id)brl_languageAgnosticTables
{
  v16 = *MEMORY[0x277D85DE8];
  brl_brailleTablesDictionary = [self brl_brailleTablesDictionary];
  v3 = [MEMORY[0x277CBEB58] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = brl_brailleTablesDictionary;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([self brl_tableIsLanguageAgnosticWithIdentifier:{v9, v11}])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)brl_supportedLocaleIdentifiersForTableWithIdentifier:()BRLTBrailleTables
{
  v4 = a3;
  brl_brailleTablesDictionary = [self brl_brailleTablesDictionary];
  v6 = [brl_brailleTablesDictionary objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"languages"];

  return v7;
}

- (id)brl_supportedLocalesForTableWithIdentifier:()BRLTBrailleTables
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [self brl_supportedLocaleIdentifiersForTableWithIdentifier:{v4, 0}];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:*(*(&v13 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (uint64_t)brl_tableIsLanguageAgnosticWithIdentifier:()BRLTBrailleTables
{
  v4 = a3;
  brl_brailleTablesDictionary = [self brl_brailleTablesDictionary];
  v6 = [brl_brailleTablesDictionary objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"languageAgnostic"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)brl_brailleTablesDictionary
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = @"BrailleTables";
  v6 = 2112;
  v7 = objc_opt_class();
  v3 = v7;
  _os_log_error_impl(&dword_241DFD000, a2, OS_LOG_TYPE_ERROR, "Expected NSDictionary for %@ key, but found %@ instead.", &v4, 0x16u);
}

@end