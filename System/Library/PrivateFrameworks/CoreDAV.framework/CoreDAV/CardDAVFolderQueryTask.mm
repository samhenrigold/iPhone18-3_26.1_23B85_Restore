@interface CardDAVFolderQueryTask
- (CardDAVFolderQueryTask)initWithSearchTerms:(id)terms searchLimit:(unint64_t)limit atURL:(id)l appSpecificDataItemClass:(Class)class;
- (void)addFiltersToXMLData:(id)data;
@end

@implementation CardDAVFolderQueryTask

- (CardDAVFolderQueryTask)initWithSearchTerms:(id)terms searchLimit:(unint64_t)limit atURL:(id)l appSpecificDataItemClass:(Class)class
{
  v9.receiver = self;
  v9.super_class = CardDAVFolderQueryTask;
  v6 = [(CoreDAVContainerQueryTask *)&v9 _initWithSearchTerms:terms searchLimit:limit atURL:l appSpecificDataItemClass:class];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 39, @"urn:ietf:params:xml:ns:carddav");
    objc_storeStrong(&v7->super._appSpecificQueryCommand, @"addressbook-query");
    objc_storeStrong(&v7->super._appSpecificDataProp, @"address-data");
  }

  return v7;
}

- (void)addFiltersToXMLData:(id)data
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = @"urn:ietf:params:xml:ns:carddav";
  [dataCopy startElement:@"anyof" inNamespace:0 withAttributeNamesAndValues:?];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [MEMORY[0x277CBEB98] setWithObjects:{@"NICKNAME", @"FN", @"EMAIL", @"ADR", @"IMPP", @"ORG", @"TEL", 0}];
  v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v17 = *v26;
    selfCopy = self;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v6;
        v15 = *(*(&v25 + 1) + 8 * v6);
        v7 = dataCopy;
        v8 = v5;
        [dataCopy startElement:@"prop-filter" inNamespace:v5 withAttributeNamesAndValues:{@"name", v15, @"test", @"allof", 0}];
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v9 = self->super._searchTerms;
        v10 = [(NSSet *)v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [v7 appendElement:@"text-match" inNamespace:v8 withStringContent:*(*(&v21 + 1) + 8 * i) withAttributeNamesAndValues:{@"collation", @"i;unicode-casemap", @"match-type", @"contains", 0}];
            }

            v11 = [(NSSet *)v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v11);
        }

        dataCopy = v7;
        v5 = v8;
        [v7 endElement:@"prop-filter" inNamespace:v8];
        v6 = v20 + 1;
        self = selfCopy;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }

  [dataCopy endElement:@"filter" inNamespace:v5];
  if (self->super._searchLimit)
  {
    [dataCopy startElement:@"limit" inNamespace:v5 withAttributeNamesAndValues:0];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", self->super._searchLimit];
    [dataCopy appendElement:@"nresults" inNamespace:v5 withStringContent:v14 withAttributeNamesAndValues:0];

    [dataCopy endElement:@"limit" inNamespace:v5];
  }
}

@end