@interface VSAMSChannelAppsResponseDictionaryValueTransformer
- (id)parseAppData:(id)data;
- (id)transformedValue:(id)value;
@end

@implementation VSAMSChannelAppsResponseDictionaryValueTransformer

- (id)transformedValue:(id)value
{
  v42 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = valueCopy;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Handling response %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(VSIdentityProviderChannelAppsResponse);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_opt_class();
  v9 = 0x277CE2000;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  v10 = [valueCopy vs_arrayOfDictionariesForKey:@"data"];
  firstObject = [v10 firstObject];
  v12 = [firstObject vs_dictionaryForKey:@"relationships"];

  v13 = [v12 vs_dictionaryForKey:@"subscription-apps"];
  v14 = [v12 vs_dictionaryForKey:@"channel-apps"];
  v15 = [v12 vs_dictionaryForKey:@"apps"];
  v16 = !v12 || v13 == 0;
  v38 = v15;
  v39 = v14;
  v17 = v16 || v14 == 0;
  v18 = v17 || v15 == 0;
  v19 = !v18;
  v36 = v19;
  v37 = v13;
  if (v18)
  {
    v9 = 0x277CE2000uLL;
    v30 = MEMORY[0x277CE2250];
    v20 = [(VSAMSChannelAppsResponseDictionaryValueTransformer *)self parseAppData:valueCopy];
    v29 = [v30 failableWithObject:v20];
  }

  else
  {
    selfCopy = self;
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = [v13 vs_arrayForKey:@"data"];
    if (v21)
    {
      [v20 addObjectsFromArray:v21];
    }

    v22 = [v14 vs_arrayForKey:@"data"];
    if (v22)
    {
      [v20 addObjectsFromArray:v22];
    }

    v32 = v22;
    v35 = v21;
    v23 = [v38 vs_arrayForKey:@"data"];
    if (v23)
    {
      [v20 addObjectsFromArray:v23];
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v24 setObject:v20 forKey:@"data"];
    v25 = [(VSAMSChannelAppsResponseDictionaryValueTransformer *)selfCopy parseAppData:v24];
    allApps = [v25 allApps];
    [v7 addObjectsFromArray:allApps];

    appsByChannelID = [v25 appsByChannelID];
    v34 = v7;
    v28 = v23;
    v29 = [appsByChannelID mutableCopy];
    [v8 addEntriesFromDictionary:v29];

    v7 = v34;
    v9 = 0x277CE2000;
  }

  if (v36)
  {
LABEL_26:
    [(VSIdentityProviderChannelAppsResponse *)v6 setAllApps:v7];
    [(VSIdentityProviderChannelAppsResponse *)v6 setAppsByChannelID:v8];
    v29 = [*(v9 + 592) failableWithObject:v6];
  }

  return v29;
}

- (id)parseAppData:(id)data
{
  v47 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v27 = objc_alloc_init(VSIdentityProviderChannelAppsResponse);
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = [MEMORY[0x277CCAE68] valueTransformerForName:@"VSAMSAppsValueTransformer"];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = dataCopy;
  obj = [dataCopy vs_arrayOfDictionariesForKey:@"data"];
  v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v32)
  {
    v30 = *v42;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v41 + 1) + 8 * i);
        v7 = [v31 transformedValue:v6];
        if (v7)
        {
          v36 = i;
          v8 = [v6 vs_dictionaryForKey:@"meta"];
          v9 = [v8 vs_arrayOfStringsForKey:@"channels"];
          v35 = v8;
          v10 = [v8 vs_arrayOfStringsForKey:@"subscriptions"];
          v33 = v10;
          v34 = v9;
          if (v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = v10;
          }

          v12 = v11;
          v13 = v12;
          if (v12)
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v14 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v38;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v38 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v37 + 1) + 8 * j);
                  v19 = [v4 objectForKey:v18];
                  v20 = v19;
                  if (v19)
                  {
                    v21 = v19;
                  }

                  else
                  {
                    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  }

                  v22 = v21;

                  [v22 addObject:v7];
                  [v4 setObject:v22 forKey:v18];
                }

                v15 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
              }

              while (v15);
            }
          }

          v23 = 1;
          if (v33)
          {
            v23 = 2;
          }

          if (v34)
          {
            v24 = 0;
          }

          else
          {
            v24 = v23;
          }

          [v7 setAppType:v24];
          [v29 addObject:v7];

          i = v36;
        }
      }

      v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v32);
  }

  [(VSIdentityProviderChannelAppsResponse *)v27 setAllApps:v29];
  [(VSIdentityProviderChannelAppsResponse *)v27 setAppsByChannelID:v4];

  return v27;
}

@end