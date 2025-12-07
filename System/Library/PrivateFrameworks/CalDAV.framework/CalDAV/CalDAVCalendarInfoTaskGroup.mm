@interface CalDAVCalendarInfoTaskGroup
- (CalDAVCalendarInfoTaskGroup)initWithAccountInfoProvider:(id)provider containerURLs:(id)ls taskManager:(id)manager;
- (id)_copyContainerParserMappings;
- (id)_copyContainerWithURL:(id)l andProperties:(id)properties;
- (id)containerForURL:(id)l;
@end

@implementation CalDAVCalendarInfoTaskGroup

- (CalDAVCalendarInfoTaskGroup)initWithAccountInfoProvider:(id)provider containerURLs:(id)ls taskManager:(id)manager
{
  v8.receiver = self;
  v8.super_class = CalDAVCalendarInfoTaskGroup;
  v5 = [(CoreDAVContainerInfoTaskGroup *)&v8 initWithAccountInfoProvider:provider containerURLs:ls taskManager:manager];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong((&v5->super.super.super.isa + *MEMORY[0x277CFDCB8]), *MEMORY[0x277CFDDC0]);
    objc_storeStrong((&v6->super.super.super.isa + *MEMORY[0x277CFDCB0]), *MEMORY[0x277CFDD78]);
    v6->_fetchSharees = 0;
  }

  return v6;
}

- (id)_copyContainerParserMappings
{
  v28 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = CalDAVCalendarInfoTaskGroup;
  _copyContainerParserMappings = [(CoreDAVContainerInfoTaskGroup *)&v26 _copyContainerParserMappings];
  v4 = +[CalDAVContainer copyPropertyMappingsForParser];
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:_copyContainerParserMappings];
  if ([(CalDAVCalendarInfoTaskGroup *)self fetchSharees])
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
  v20 = _copyContainerParserMappings;
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
  _copyContainerParserMappings = v20;
  v17 = v21;
  if (v21)
  {
    [v6 removeObject:v21];
  }

LABEL_17:
  [v6 unionSet:v4];

  return v6;
}

- (id)_copyContainerWithURL:(id)l andProperties:(id)properties
{
  propertiesCopy = properties;
  lCopy = l;
  v7 = [(CoreDAVContainer *)[CalDAVContainer alloc] initWithURL:lCopy andProperties:propertiesCopy];

  return v7;
}

- (id)containerForURL:(id)l
{
  v37 = *MEMORY[0x277D85DE8];
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  appendSlashIfNeeded = [absoluteString appendSlashIfNeeded];

  v26 = lCopy;
  uRLWithoutUsername = [lCopy URLWithoutUsername];
  absoluteString2 = [uRLWithoutUsername absoluteString];
  appendSlashIfNeeded2 = [absoluteString2 appendSlashIfNeeded];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(&self->super.super.super.isa + *MEMORY[0x277CFDCC0]);
  v29 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v29)
  {
    v10 = 0;
    goto LABEL_22;
  }

  v30 = *v33;
  while (2)
  {
    for (i = 0; i != v29; ++i)
    {
      if (*v33 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v32 + 1) + 8 * i);
      v11 = [v10 url];
      absoluteString3 = [v11 absoluteString];
      appendSlashIfNeeded3 = [absoluteString3 appendSlashIfNeeded];

      if ([appendSlashIfNeeded3 isEqualToString:appendSlashIfNeeded])
      {
        v22 = v10;
LABEL_20:

        goto LABEL_22;
      }

      stringByRemovingPercentEncoding = [appendSlashIfNeeded3 stringByRemovingPercentEncoding];
      if ([stringByRemovingPercentEncoding isEqualToString:appendSlashIfNeeded])
      {
        v23 = v10;
LABEL_19:

        goto LABEL_20;
      }

      stringByRemovingPercentEncoding2 = [appendSlashIfNeeded stringByRemovingPercentEncoding];
      if ([appendSlashIfNeeded3 isEqualToString:stringByRemovingPercentEncoding2])
      {
        v24 = v10;

        goto LABEL_19;
      }

      v16 = [v10 url];
      uRLWithoutUsername2 = [v16 URLWithoutUsername];
      absoluteString4 = [uRLWithoutUsername2 absoluteString];
      appendSlashIfNeeded4 = [absoluteString4 appendSlashIfNeeded];

      v20 = [appendSlashIfNeeded4 isEqualToString:appendSlashIfNeeded2];
      v21 = v20;
      if (v20)
      {
        v27 = v10;
      }

      if (v21)
      {
        v10 = v27;
        goto LABEL_22;
      }
    }

    v10 = 0;
    v29 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_22:

  return v10;
}

@end