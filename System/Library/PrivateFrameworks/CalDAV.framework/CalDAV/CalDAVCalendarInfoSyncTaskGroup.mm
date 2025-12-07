@interface CalDAVCalendarInfoSyncTaskGroup
- (id)copyContainerParserMappings;
@end

@implementation CalDAVCalendarInfoSyncTaskGroup

- (id)copyContainerParserMappings
{
  v28 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = CalDAVCalendarInfoSyncTaskGroup;
  copyContainerParserMappings = [(CoreDAVContainerInfoSyncTaskGroup *)&v26 copyContainerParserMappings];
  v4 = +[CalDAVContainer copyPropertyMappingsForParser];
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:copyContainerParserMappings];
  if ([(CalDAVCalendarInfoSyncTaskGroup *)self fetchSharees])
  {
    [v5 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDE90] name:@"invite" parseClass:objc_opt_class()];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (!v7)
  {

    v17 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v19 = v4;
  v20 = copyContainerParserMappings;
  v21 = 0;
  v9 = *v23;
  v10 = *MEMORY[0x277CFDEF8];
  v11 = *MEMORY[0x277CFDFE0];
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v22 + 1) + 8 * i);
      nameSpace = [v13 nameSpace];
      if ([nameSpace isEqualToString:v10])
      {
        name = [v13 name];
        v16 = [name isEqualToString:v11];

        if (!v16)
        {
          continue;
        }

        nameSpace = v21;
        v21 = v13;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  }

  while (v8);

  v4 = v19;
  copyContainerParserMappings = v20;
  v17 = v21;
  if (v21)
  {
    [v6 removeObject:v21];
  }

LABEL_17:
  [v6 unionSet:v4];

  return v6;
}

@end