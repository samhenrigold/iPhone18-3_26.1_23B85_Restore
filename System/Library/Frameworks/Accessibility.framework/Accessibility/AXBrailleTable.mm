@interface AXBrailleTable
+ (id)defaultTableForLocale:(id)locale;
+ (id)languageAgnosticTables;
+ (id)supportedLocales;
+ (id)tablesForLocale:(id)locale;
- (AXBrailleTable)initWithBRLTTable:(id)table;
- (AXBrailleTable)initWithCoder:(id)coder;
- (AXBrailleTable)initWithIdentifier:(id)identifier;
- (BOOL)isEightDot;
- (NSSet)locales;
- (NSString)identifier;
- (NSString)language;
- (NSString)localizedName;
- (NSString)localizedProviderName;
- (NSString)providerIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXBrailleTable

- (AXBrailleTable)initWithBRLTTable:(id)table
{
  tableCopy = table;
  v9.receiver = self;
  v9.super_class = AXBrailleTable;
  v6 = [(AXBrailleTable *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_brltTable, table);
  }

  return v7;
}

- (AXBrailleTable)initWithIdentifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [objc_alloc(getBRLTTableClass()) initWithExternalIdentifier:identifierCopy];
  v6 = [[AXBrailleTable alloc] initWithBRLTTable:v5];
  locales = [(AXBrailleTable *)v6 locales];
  v8 = [locales count];

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v20 = identifierCopy;
    selfCopy = self;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = +[AXBrailleTable languageAgnosticTables];
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          brltTable = [*(*(&v22 + 1) + 8 * v14) brltTable];
          identifier = [brltTable identifier];
          identifier2 = [v5 identifier];
          v18 = [identifier isEqualToString:identifier2];

          if (v18)
          {
            v9 = v6;

            goto LABEL_13;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_13:
    identifierCopy = v20;
    self = selfCopy;
  }

  return v9;
}

- (NSString)identifier
{
  v3 = MEMORY[0x1E696AEC0];
  providerIdentifier = [(AXBrailleTable *)self providerIdentifier];
  brltTable = [(AXBrailleTable *)self brltTable];
  tableIdentifier = [brltTable tableIdentifier];
  v7 = [v3 stringWithFormat:@"%@.%@", providerIdentifier, tableIdentifier];

  return v7;
}

- (NSString)localizedName
{
  brltTable = [(AXBrailleTable *)self brltTable];
  localizedName = [brltTable localizedName];

  return localizedName;
}

- (NSString)providerIdentifier
{
  brltTable = [(AXBrailleTable *)self brltTable];
  externalServiceIdentifier = [brltTable externalServiceIdentifier];

  return externalServiceIdentifier;
}

- (NSString)localizedProviderName
{
  brltTable = [(AXBrailleTable *)self brltTable];
  localizedService = [brltTable localizedService];

  return localizedService;
}

- (NSString)language
{
  brltTable = [(AXBrailleTable *)self brltTable];
  language = [brltTable language];

  return language;
}

- (NSSet)locales
{
  brltTable = [(AXBrailleTable *)self brltTable];
  locales = [brltTable locales];

  return locales;
}

- (BOOL)isEightDot
{
  brltTable = [(AXBrailleTable *)self brltTable];
  supportsTranslationMode8Dot = [brltTable supportsTranslationMode8Dot];

  return supportsTranslationMode8Dot;
}

+ (id)supportedLocales
{
  v2 = [getBRLTTableEnumeratorClass(self a2)];
  supportedLocales = [v2 supportedLocales];

  return supportedLocales;
}

+ (id)defaultTableForLocale:(id)locale
{
  v3 = getBRLTTableEnumeratorClass;
  localeCopy = locale;
  v5 = [(objc_class *)v3() defaultTablesArrayForLocale:localeCopy];

  if ([v5 count])
  {
    firstObject = [v5 firstObject];
    v7 = [[AXBrailleTable alloc] initWithBRLTTable:firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)tablesForLocale:(id)locale
{
  v30 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v3 = objc_opt_new();
  [getBRLTTableEnumeratorClass(v3 v4)];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v27 = 0u;
  obj = [v18 translatorBundles];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [v18 tablesForLocale:localeCopy inBundle:v9];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [[AXBrailleTable alloc] initWithBRLTTable:*(*(&v20 + 1) + 8 * j)];
              [v3 addObject:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)languageAgnosticTables
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v4 = [getBRLTTableEnumeratorClass(v2 v3)];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  languageAgnosticTables = [v4 languageAgnosticTables];
  v6 = [languageAgnosticTables countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(languageAgnosticTables);
        }

        v10 = [[AXBrailleTable alloc] initWithBRLTTable:*(*(&v12 + 1) + 8 * i)];
        [v2 addObject:v10];
      }

      v7 = [languageAgnosticTables countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AXBrailleTable alloc];
  brltTable = [(AXBrailleTable *)self brltTable];
  v6 = [brltTable copy];
  v7 = [(AXBrailleTable *)v4 initWithBRLTTable:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  brltTable = [(AXBrailleTable *)self brltTable];
  identifier = [brltTable identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (AXBrailleTable)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AXBrailleTable;
  v5 = [(AXBrailleTable *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v7 = [objc_alloc(getBRLTTableClass()) initWithIdentifier:v6];
    brltTable = v5->_brltTable;
    v5->_brltTable = v7;
  }

  return v5;
}

@end