@interface BRLTTableEnumerator
+ (id)defaultTableForLocale:(id)locale;
+ (id)defaultTablesArrayForLocale:(id)locale;
+ (id)localizedNameForLanguage:(id)language;
+ (id)tableEnumeratorWithSystemBundlePath;
- (BRLTTableEnumerator)initWithTranslatorBundlesPath:(id)path;
- (NSArray)translatorBundles;
- (NSMutableDictionary)languageAgnosticIdentifiersToTables;
- (NSSet)languageAgnosticTableIdentifiers;
- (NSSet)supportedLanguageLocales;
- (NSSet)supportedLocales;
- (id)languageAgnosticTables;
- (id)languageAgnosticTablesForIdentifier:(id)identifier inBundle:(id)bundle;
- (id)languageAgnosticTablesInBundle:(id)bundle;
- (id)supportedLocalesForTable:(id)table;
- (id)tablesForLocale:(id)locale inBundle:(id)bundle;
- (void)translatorBundles;
@end

@implementation BRLTTableEnumerator

+ (id)localizedNameForLanguage:(id)language
{
  languageCopy = language;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [currentLocale localizedStringForLanguage:languageCopy context:3];
  if (![v5 length])
  {
    languageCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.language", languageCopy];
    v7 = BRLTLocalizedStringForKey(languageCopy);

    v5 = v7;
  }

  return v5;
}

+ (id)defaultTableForLocale:(id)locale
{
  v3 = [self defaultTablesArrayForLocale:locale];
  firstObject = [v3 firstObject];

  return firstObject;
}

+ (id)defaultTablesArrayForLocale:(id)locale
{
  v49[1] = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  if (defaultTablesArrayForLocale__onceToken != -1)
  {
    +[BRLTTableEnumerator defaultTablesArrayForLocale:];
  }

  collatorIdentifier = [localeCopy collatorIdentifier];
  v6 = [defaultTablesArrayForLocale__DefaultTables objectForKeyedSubscript:collatorIdentifier];
  v36 = collatorIdentifier;
  if (v6)
  {
    goto LABEL_4;
  }

  v8 = collatorIdentifier;
  v9 = [v8 rangeOfString:@"-"];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9 + 1;
    v11 = [v8 substringFromIndex:v9 + 1];
    v12 = [v11 rangeOfString:@"-"];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [v8 substringToIndex:v12 + v10];

      v8 = v13;
    }
  }

  v7 = [defaultTablesArrayForLocale__DefaultTables objectForKeyedSubscript:v8];

  if (v7)
  {
    goto LABEL_11;
  }

  v14 = defaultTablesArrayForLocale__DefaultTables;
  languageCode = [localeCopy languageCode];
  v7 = [v14 objectForKeyedSubscript:languageCode];

  if (v7)
  {
    goto LABEL_11;
  }

  systemTranslatorBundle = [self systemTranslatorBundle];
  v32 = [systemTranslatorBundle brl_supportedTablesForLocale:localeCopy];

  firstObject = [v32 firstObject];
  if (firstObject)
  {
    v34 = firstObject;
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.scrod.braille.table.duxbury", firstObject];

    v49[0] = v35;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];

    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v6 = [defaultTablesArrayForLocale__DefaultTables objectForKeyedSubscript:@"en"];
  if (v6)
  {
LABEL_4:
    v7 = v6;
LABEL_11:
    v16 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v7;
    v17 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v17)
    {
      v18 = v17;
      v38 = *v44;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v20 = [[BRLTTable alloc] initWithIdentifier:*(*(&v43 + 1) + 8 * i)];
          replacements = [(BRLTTable *)v20 replacements];
          v22 = [replacements count];

          if (v22)
          {
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            replacements2 = [(BRLTTable *)v20 replacements];
            v24 = [replacements2 countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v40;
              do
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v40 != v26)
                  {
                    objc_enumerationMutation(replacements2);
                  }

                  v28 = [[BRLTTable alloc] initWithIdentifier:*(*(&v39 + 1) + 8 * j)];
                  [v16 addObject:v28];
                }

                v25 = [replacements2 countByEnumeratingWithState:&v39 objects:v47 count:16];
              }

              while (v25);
            }
          }

          else
          {
            [v16 addObject:v20];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v18);
    }

    v29 = obj;

    collatorIdentifier = v36;
    goto LABEL_29;
  }

  v29 = BRLTLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [BRLTTableEnumerator defaultTablesArrayForLocale:localeCopy];
  }

  v16 = MEMORY[0x277CBEBF8];
LABEL_29:

  return v16;
}

void __51__BRLTTableEnumerator_defaultTablesArrayForLocale___block_invoke()
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v0 = [v3 pathForResource:@"DefaultTables" ofType:@"plist"];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v0];
  v2 = defaultTablesArrayForLocale__DefaultTables;
  defaultTablesArrayForLocale__DefaultTables = v1;
}

+ (id)tableEnumeratorWithSystemBundlePath
{
  if (MEMORY[0x2822129C0])
  {
    v2 = AXBrailleTablesDirectory();
  }

  else
  {
    v2 = @"/System/Library/ScreenReader/BrailleTables";
  }

  v3 = [objc_alloc(objc_opt_class()) initWithTranslatorBundlesPath:v2];

  return v3;
}

- (BRLTTableEnumerator)initWithTranslatorBundlesPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = BRLTTableEnumerator;
  v5 = [(BRLTTableEnumerator *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    translatorBundlePath = v5->_translatorBundlePath;
    v5->_translatorBundlePath = v6;
  }

  return v5;
}

- (NSArray)translatorBundles
{
  v34 = *MEMORY[0x277D85DE8];
  translatorBundles = self->_translatorBundles;
  if (translatorBundles)
  {
LABEL_2:
    v3 = translatorBundles;
    goto LABEL_7;
  }

  array = [MEMORY[0x277CBEB18] array];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  translatorBundlePath = [(BRLTTableEnumerator *)self translatorBundlePath];
  v30 = 0;
  v7 = [defaultManager contentsOfDirectoryAtPath:translatorBundlePath error:&v30];
  v8 = v30;

  if (!v8)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          pathExtension = [v16 pathExtension];
          v18 = [pathExtension isEqualToString:@"brailletable"];

          if (v18)
          {
            translatorBundlePath2 = [(BRLTTableEnumerator *)self translatorBundlePath];
            v20 = [translatorBundlePath2 stringByAppendingPathComponent:v16];

            v21 = [MEMORY[0x277CCA8D8] bundleWithPath:v20];
            if (v21)
            {
              [(NSArray *)array addObject:v21];
            }

            else
            {
              v22 = BRLTLog();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v32 = v20;
                _os_log_error_impl(&dword_241DFD000, v22, OS_LOG_TYPE_ERROR, "Error loading brailletable bundle at %@", buf, 0xCu);
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v13);
    }

    v23 = self->_translatorBundles;
    self->_translatorBundles = array;
    v24 = array;

    translatorBundles = self->_translatorBundles;
    goto LABEL_2;
  }

  v9 = BRLTLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(BRLTTableEnumerator *)self translatorBundles];
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (NSSet)supportedLocales
{
  v18 = *MEMORY[0x277D85DE8];
  supportedLocales = self->_supportedLocales;
  if (!supportedLocales)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    translatorBundles = [(BRLTTableEnumerator *)self translatorBundles];
    v6 = [translatorBundles countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(translatorBundles);
          }

          brl_supportedLocales = [*(*(&v13 + 1) + 8 * v9) brl_supportedLocales];
          [(NSSet *)v4 unionSet:brl_supportedLocales];

          ++v9;
        }

        while (v7 != v9);
        v7 = [translatorBundles countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = self->_supportedLocales;
    self->_supportedLocales = v4;

    supportedLocales = self->_supportedLocales;
  }

  return supportedLocales;
}

- (id)supportedLocalesForTable:(id)table
{
  v22 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  translatorBundles = [(BRLTTableEnumerator *)self translatorBundles];
  v6 = [translatorBundles countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(translatorBundles);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        bundleIdentifier = [v10 bundleIdentifier];
        serviceIdentifier = [tableCopy serviceIdentifier];
        v13 = [bundleIdentifier isEqualToString:serviceIdentifier];

        if (v13)
        {
          tableIdentifier = [tableCopy tableIdentifier];
          v14 = [v10 brl_supportedLocaleIdentifiersForTableWithIdentifier:tableIdentifier];

          goto LABEL_11;
        }
      }

      v7 = [translatorBundles countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = objc_opt_new();
LABEL_11:

  return v14;
}

- (NSSet)supportedLanguageLocales
{
  v20 = *MEMORY[0x277D85DE8];
  supportedLanguageLocales = self->_supportedLanguageLocales;
  if (!supportedLanguageLocales)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    supportedLocales = [(BRLTTableEnumerator *)self supportedLocales];
    v6 = [supportedLocales countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(supportedLocales);
          }

          v10 = MEMORY[0x277CBEAF8];
          languageCode = [*(*(&v15 + 1) + 8 * v9) languageCode];
          v12 = [v10 localeWithLocaleIdentifier:languageCode];

          [(NSSet *)v4 addObject:v12];
          ++v9;
        }

        while (v7 != v9);
        v7 = [supportedLocales countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v13 = self->_supportedLanguageLocales;
    self->_supportedLanguageLocales = v4;

    supportedLanguageLocales = self->_supportedLanguageLocales;
  }

  return supportedLanguageLocales;
}

- (id)languageAgnosticTables
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  translatorBundles = [(BRLTTableEnumerator *)self translatorBundles];
  v5 = [translatorBundles countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(translatorBundles);
        }

        v9 = [(BRLTTableEnumerator *)self languageAgnosticTablesInBundle:*(*(&v11 + 1) + 8 * i)];
        [v3 unionSet:v9];
      }

      v6 = [translatorBundles countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSSet)languageAgnosticTableIdentifiers
{
  v2 = MEMORY[0x277CBEB98];
  languageAgnosticIdentifiersToTables = [(BRLTTableEnumerator *)self languageAgnosticIdentifiersToTables];
  allKeys = [languageAgnosticIdentifiersToTables allKeys];
  v5 = [v2 setWithArray:allKeys];

  return v5;
}

- (id)languageAgnosticTablesInBundle:(id)bundle
{
  v22 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v4 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [bundleCopy brl_languageAgnosticTables];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:@"-"];
        if ([v9 count] == 2)
        {
          v10 = [v9 objectAtIndexedSubscript:1];
        }

        else
        {
          v10 = 0;
        }

        v11 = [BRLTTable alloc];
        bundleIdentifier = [bundleCopy bundleIdentifier];
        v13 = [v9 objectAtIndexedSubscript:0];
        v14 = [(BRLTTable *)v11 initWithServiceIdentifier:bundleIdentifier language:v13 variant:v10];

        [v4 addObject:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)languageAgnosticTablesForIdentifier:(id)identifier inBundle:(id)bundle
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  bundleCopy = bundle;
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [(BRLTTableEnumerator *)self languageAgnosticTablesInBundle:bundleCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        language = [v14 language];
        v16 = [language isEqualToString:identifierCopy];

        if (v16)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)tablesForLocale:(id)locale inBundle:(id)bundle
{
  v28 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  bundleCopy = bundle;
  [MEMORY[0x277CBEB58] set];
  v21 = v20 = localeCopy;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [bundleCopy brl_supportedTablesForLocale:localeCopy];
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v23 + 1) + 8 * i) componentsSeparatedByString:@"-"];
        if ([v11 count] == 2)
        {
          v12 = [v11 objectAtIndexedSubscript:1];
        }

        else
        {
          v12 = 0;
        }

        v13 = [BRLTTable alloc];
        bundleIdentifier = [bundleCopy bundleIdentifier];
        v15 = [v11 objectAtIndexedSubscript:0];
        v16 = [(BRLTTable *)v13 initWithServiceIdentifier:bundleIdentifier language:v15 variant:v12];

        replacements = [(BRLTTable *)v16 replacements];
        v18 = [replacements count];

        if (!v18)
        {
          [v21 addObject:v16];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  return v21;
}

- (NSMutableDictionary)languageAgnosticIdentifiersToTables
{
  selfCopy = self;
  v31 = *MEMORY[0x277D85DE8];
  languageAgnosticIdentifiersToTables = self->_languageAgnosticIdentifiersToTables;
  if (!languageAgnosticIdentifiersToTables)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(BRLTTableEnumerator *)selfCopy translatorBundles];
    v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v20)
    {
      v18 = *v26;
      v19 = selfCopy;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v6 = [(BRLTTableEnumerator *)selfCopy languageAgnosticTablesInBundle:*(*(&v25 + 1) + 8 * i)];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v22;
            do
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v22 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v21 + 1) + 8 * j);
                language = [v11 language];
                v13 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:language];

                if (!v13)
                {
                  v13 = [MEMORY[0x277CBEB58] set];
                  language2 = [v11 language];
                  [(NSMutableDictionary *)dictionary setObject:v13 forKeyedSubscript:language2];
                }

                [v13 addObject:v11];
              }

              v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v8);
          }

          selfCopy = v19;
        }

        v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v20);
    }

    v15 = selfCopy->_languageAgnosticIdentifiersToTables;
    selfCopy->_languageAgnosticIdentifiersToTables = dictionary;

    languageAgnosticIdentifiersToTables = selfCopy->_languageAgnosticIdentifiersToTables;
  }

  return languageAgnosticIdentifiersToTables;
}

+ (void)defaultTablesArrayForLocale:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 localeIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_241DFD000, v2, v3, "Couldn't find any table for locale %@ (identifiers: %@)", v4, v5, v6, v7);
}

- (void)translatorBundles
{
  translatorBundlePath = [self translatorBundlePath];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_241DFD000, v2, v3, "Couldn't get contents of %@: %@", v4, v5, v6, v7);
}

@end