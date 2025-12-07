@interface WLAppSearchRequest
- (WLAppSearchRequest)initWithAndroidIdentifiers:(id)identifiers;
- (void)search:(id)search;
@end

@implementation WLAppSearchRequest

- (WLAppSearchRequest)initWithAndroidIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v8.receiver = self;
  v8.super_class = WLAppSearchRequest;
  v5 = [(WLAppSearchRequest *)&v8 init];
  if (v5)
  {
    v6 = [identifiersCopy componentsJoinedByString:{@", "}];
    [(WLAppSearchRequest *)v5 setIdentifiers:v6];
  }

  return v5;
}

- (void)search:(id)search
{
  v18[1] = *MEMORY[0x277D85DE8];
  searchCopy = search;
  if ([(NSString *)self->_identifiers length])
  {
    createBagForSubProfile = [MEMORY[0x277CEE570] createBagForSubProfile];
    v6 = [objc_alloc(MEMORY[0x277CEE570]) initWithType:0 clientIdentifier:@"com.apple.welcomemat" clientVersion:@"1" bag:createBagForSubProfile];
    identifiers = self->_identifiers;
    v15 = @"androidAppId";
    v16 = identifiers;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v6 setFilters:v8];

    perform = [v6 perform];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __29__WLAppSearchRequest_search___block_invoke;
    v13[3] = &unk_279EB56A0;
    v14 = searchCopy;
    [perform addFinishBlock:v13];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D7B8F8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"WLAppSearchRequest could not search identifiers because the request was empty.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    createBagForSubProfile = [v10 errorWithDomain:v11 code:1 userInfo:v12];

    if (searchCopy)
    {
      (*(searchCopy + 2))(searchCopy, 0, createBagForSubProfile);
    }
  }
}

void __29__WLAppSearchRequest_search___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v6);
    }
  }

  else
  {
    v32 = a1;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = v5;
    v9 = [v5 responseDataItems];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v10)
    {
      v11 = v10;
      v39 = *v45;
      v34 = v9;
      v35 = v8;
      do
      {
        v12 = 0;
        v36 = v11;
        do
        {
          if (*v45 != v39)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v44 + 1) + 8 * v12);
          v14 = [v13 objectForKeyedSubscript:@"id"];
          if (v14)
          {
            v15 = [v13 objectForKeyedSubscript:@"attributes"];
            v16 = [v15 objectForKeyedSubscript:@"platformAttributes"];
            v17 = [v16 objectForKeyedSubscript:@"ios"];

            if (v17)
            {
              v18 = [v17 objectForKeyedSubscript:@"bundleId"];
              v19 = [v17 objectForKeyedSubscript:@"offers"];
              if (v18)
              {
                v20 = v19 == 0;
              }

              else
              {
                v20 = 1;
              }

              if (!v20)
              {
                v37 = v19;
                v38 = v18;
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                v21 = v19;
                v22 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
                if (v22)
                {
                  v23 = *v41;
                  while (2)
                  {
                    for (i = 0; i != v22; ++i)
                    {
                      if (*v41 != v23)
                      {
                        objc_enumerationMutation(v21);
                      }

                      v25 = *(*(&v40 + 1) + 8 * i);
                      v26 = [v25 objectForKeyedSubscript:@"type"];
                      v27 = [v26 lowercaseString];

                      v28 = [v25 objectForKeyedSubscript:@"price"];
                      if (v28 && [v27 isEqualToString:@"get"])
                      {
                        [v28 floatValue];
                        v22 = v29 == 0.0;

                        goto LABEL_26;
                      }
                    }

                    v22 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
                    if (v22)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_26:
                  v9 = v34;
                  v8 = v35;
                }

                v18 = v38;
                v30 = [[WLApp alloc] initWithBundleIdentifier:v38 appStoreIdentifier:v14 isFree:v22];
                [v8 addObject:v30];

                v11 = v36;
                v19 = v37;
              }
            }
          }

          ++v12;
        }

        while (v12 != v11);
        v11 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v11);
    }

    v31 = *(v32 + 32);
    if (v31)
    {
      (*(v31 + 16))(v31, v8, 0);
    }

    v6 = 0;
    v5 = v33;
  }
}

@end