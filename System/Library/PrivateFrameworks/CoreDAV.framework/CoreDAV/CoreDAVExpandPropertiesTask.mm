@interface CoreDAVExpandPropertiesTask
- (CoreDAVExpandPropertiesTask)initWithPropertiesToFind:(id)find atURL:(id)l expandedName:(id)name expandedNameSpace:(id)space;
- (id)description;
- (id)parseHints;
- (id)requestBody;
- (void)addPropertyToExpandWithPropertiesToFind:(id)find expandedName:(id)name expandedNameSpace:(id)space;
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CoreDAVExpandPropertiesTask

- (CoreDAVExpandPropertiesTask)initWithPropertiesToFind:(id)find atURL:(id)l expandedName:(id)name expandedNameSpace:(id)space
{
  findCopy = find;
  nameCopy = name;
  spaceCopy = space;
  v16.receiver = self;
  v16.super_class = CoreDAVExpandPropertiesTask;
  v13 = [(CoreDAVPropertyFindBaseTask *)&v16 initWithPropertiesToFind:0 atURL:l];
  if (v13)
  {
    v14 = [MEMORY[0x277CBEB58] set];
    [(CoreDAVExpandPropertiesTask *)v13 setPropertiesToExpand:v14];

    [(CoreDAVExpandPropertiesTask *)v13 addPropertyToExpandWithPropertiesToFind:findCopy expandedName:nameCopy expandedNameSpace:spaceCopy];
  }

  return v13;
}

- (void)addPropertyToExpandWithPropertiesToFind:(id)find expandedName:(id)name expandedNameSpace:(id)space
{
  spaceCopy = space;
  nameCopy = name;
  findCopy = find;
  v12 = [[CoreDAVExpandProperty alloc] initWithPropertiesToFind:findCopy expandedName:nameCopy expandedNameSpace:spaceCopy];

  propertiesToExpand = [(CoreDAVExpandPropertiesTask *)self propertiesToExpand];
  [propertiesToExpand addObject:v12];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVExpandPropertiesTask;
  v4 = [(CoreDAVPropertyFindBaseTask *)&v7 description];
  [v3 appendFormat:@"[%@]", v4];

  propertiesToExpand = [(CoreDAVExpandPropertiesTask *)self propertiesToExpand];
  [v3 appendFormat:@"\n  Number of properties to expand: [%lu]", objc_msgSend(propertiesToExpand, "count")];

  return v3;
}

- (id)requestBody
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(CoreDAVXMLData);
  propertiesToExpand = [(CoreDAVExpandPropertiesTask *)self propertiesToExpand];
  v5 = [propertiesToExpand count];

  if (v5)
  {
    [CoreDAVXMLData startElement:v3 inNamespace:"startElement:inNamespace:withAttributes:" withAttributes:?];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(CoreDAVExpandPropertiesTask *)self propertiesToExpand];
    v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v23)
    {
      v22 = *v30;
      do
      {
        v6 = 0;
        do
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = v6;
          v7 = *(*(&v29 + 1) + 8 * v6);
          expandedName = [v7 expandedName];
          expandedNameSpace = [v7 expandedNameSpace];
          v10 = v3;
          [(CoreDAVXMLData *)v3 startElement:@"property" inNamespace:@"DAV:" withAttributeNamesAndValues:@"name", expandedName, @"namespace", expandedNameSpace, 0];

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          propertiesToFind = [v7 propertiesToFind];
          v12 = [propertiesToFind countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v26;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v26 != v14)
                {
                  objc_enumerationMutation(propertiesToFind);
                }

                v16 = *(*(&v25 + 1) + 8 * i);
                name = [v16 name];
                nameSpace = [v16 nameSpace];
                [(CoreDAVXMLData *)v10 appendElement:@"property" inNamespace:@"DAV:" withStringContent:0 withAttributeNamesAndValues:@"name", name, @"namespace", nameSpace, 0];
              }

              v13 = [propertiesToFind countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v13);
          }

          v3 = v10;
          [(CoreDAVXMLData *)v10 endElement:@"property" inNamespace:@"DAV:"];
          v6 = v24 + 1;
        }

        while (v24 + 1 != v23);
        v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v23);
    }

    [(CoreDAVXMLData *)v3 endElement:@"expand-property" inNamespace:@"DAV:"];
  }

  data = [(CoreDAVXMLData *)v3 data];

  return data;
}

- (id)parseHints
{
  v50 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  selfCopy = self;
  obj = [(CoreDAVExpandPropertiesTask *)self propertiesToExpand];
  v32 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v32)
  {
    v31 = *v44;
    do
    {
      v4 = 0;
      do
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v4;
        v5 = *(*(&v43 + 1) + 8 * v4);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        propertiesToFind = [v5 propertiesToFind];
        v7 = [propertiesToFind countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v40;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v40 != v9)
              {
                objc_enumerationMutation(propertiesToFind);
              }

              v11 = *(*(&v39 + 1) + 8 * i);
              v12 = MEMORY[0x277CCACA8];
              nameSpace = [v11 nameSpace];
              name = [v11 name];
              v15 = [v12 CDVStringWithNameSpace:nameSpace andName:name];

              [dictionary setObject:v11 forKey:v15];
            }

            v8 = [propertiesToFind countByEnumeratingWithState:&v39 objects:v48 count:16];
          }

          while (v8);
        }

        v4 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v32);
  }

  v16 = MEMORY[0x277CBEB58];
  allValues = [dictionary allValues];
  v18 = [v16 setWithArray:allValues];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  propertiesToExpand = [(CoreDAVExpandPropertiesTask *)selfCopy propertiesToExpand];
  v19 = [propertiesToExpand countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(propertiesToExpand);
        }

        v23 = *(*(&v35 + 1) + 8 * j);
        v24 = [CoreDAVItemParserMapping alloc];
        expandedNameSpace = [v23 expandedNameSpace];
        expandedName = [v23 expandedName];
        v27 = [(CoreDAVItemParserMapping *)v24 initWithNameSpace:expandedNameSpace name:expandedName parseClass:objc_opt_class()];

        [v18 addObject:v27];
      }

      v20 = [propertiesToExpand countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v20);
  }

  return v18;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    getTotalFailureError = errorCopy;
  }

  else
  {
    getTotalFailureError = [(CoreDAVPropertyFindBaseTask *)self getTotalFailureError];
  }

  v7 = getTotalFailureError;
  v8.receiver = self;
  v8.super_class = CoreDAVExpandPropertiesTask;
  [(CoreDAVPropertyFindBaseTask *)&v8 finishCoreDAVTaskWithError:getTotalFailureError];
}

@end