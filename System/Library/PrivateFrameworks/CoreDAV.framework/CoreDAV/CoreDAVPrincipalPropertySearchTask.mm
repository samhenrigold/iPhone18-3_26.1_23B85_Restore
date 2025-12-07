@interface CoreDAVPrincipalPropertySearchTask
- (CoreDAVPrincipalPropertySearchTask)initWithPropertiesToFind:(id)find atURL:(id)l;
- (CoreDAVPrincipalPropertySearchTask)initWithPropertySearches:(id)searches propertiesToFind:(id)find atURL:(id)l applyToPrincipalCollectionSet:(BOOL)set extraAttributes:(id)attributes;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CoreDAVPrincipalPropertySearchTask

- (CoreDAVPrincipalPropertySearchTask)initWithPropertiesToFind:(id)find atURL:(id)l
{
  v5.receiver = self;
  v5.super_class = CoreDAVPrincipalPropertySearchTask;
  result = [(CoreDAVPropertyFindBaseTask *)&v5 initWithPropertiesToFind:find atURL:l];
  if (result)
  {
    result->super.super._depth = 2;
  }

  return result;
}

- (CoreDAVPrincipalPropertySearchTask)initWithPropertySearches:(id)searches propertiesToFind:(id)find atURL:(id)l applyToPrincipalCollectionSet:(BOOL)set extraAttributes:(id)attributes
{
  setCopy = set;
  searchesCopy = searches;
  attributesCopy = attributes;
  v14 = [(CoreDAVPrincipalPropertySearchTask *)self initWithPropertiesToFind:find atURL:l];
  v15 = v14;
  if (v14)
  {
    [(CoreDAVPrincipalPropertySearchTask *)v14 setSearchItems:searchesCopy];
    [(CoreDAVPrincipalPropertySearchTask *)v15 setApplyToPrincipalCollectionSet:setCopy];
    [(CoreDAVPrincipalPropertySearchTask *)v15 setExtraAttributes:attributesCopy];
  }

  return v15;
}

- (id)requestBody
{
  v31 = *MEMORY[0x277D85DE8];
  propertiesToFind = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
  data = [propertiesToFind count];

  if (data)
  {
    v5 = objc_alloc_init(CoreDAVXMLData);
    extraAttributes = [(CoreDAVPrincipalPropertySearchTask *)self extraAttributes];
    [(CoreDAVXMLData *)v5 startElement:@"principal-property-search" inNamespace:@"DAV:" withAttributes:extraAttributes];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    searchItems = [(CoreDAVPrincipalPropertySearchTask *)self searchItems];
    v8 = [searchItems countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(searchItems);
          }

          [*(*(&v25 + 1) + 8 * i) write:v5];
        }

        v9 = [searchItems countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    [(CoreDAVXMLData *)v5 startElement:@"prop" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    propertiesToFind2 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
    v13 = [propertiesToFind2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(propertiesToFind2);
          }

          v17 = *(*(&v21 + 1) + 8 * j);
          name = [v17 name];
          nameSpace = [v17 nameSpace];
          [(CoreDAVXMLData *)v5 appendElement:name inNamespace:nameSpace withStringContent:0 withAttributeNamesAndValues:0];
        }

        v14 = [propertiesToFind2 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v14);
    }

    [(CoreDAVXMLData *)v5 endElement:@"prop" inNamespace:@"DAV:"];
    [(CoreDAVXMLData *)v5 endElement:@"principal-property-search" inNamespace:@"DAV:"];
    data = [(CoreDAVXMLData *)v5 data];
  }

  return data;
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
  v8.super_class = CoreDAVPrincipalPropertySearchTask;
  [(CoreDAVPropertyFindBaseTask *)&v8 finishCoreDAVTaskWithError:getTotalFailureError];
}

@end