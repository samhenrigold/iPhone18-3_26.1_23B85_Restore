@interface CalDAVPrincipalEmailDetailsResult
+ (id)resultFromResponseItem:(id)item;
- (id)addresses;
- (id)description;
@end

@implementation CalDAVPrincipalEmailDetailsResult

+ (id)resultFromResponseItem:(id)item
{
  v44 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v4 = objc_alloc_init(CalDAVPrincipalEmailDetailsResult);
  firstHref = [itemCopy firstHref];
  payloadAsFullURL = [firstHref payloadAsFullURL];
  [(CalDAVPrincipalEmailDetailsResult *)v4 setPrincipalURL:payloadAsFullURL];

  successfulPropertiesToValues = [itemCopy successfulPropertiesToValues];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __60__CalDAVPrincipalEmailDetailsResult_resultFromResponseItem___block_invoke;
  v40[3] = &unk_278D66C78;
  v8 = successfulPropertiesToValues;
  v41 = v8;
  v9 = MEMORY[0x245D182B0](v40);
  v10 = v9[2](v9, 3);
  payloadAsString = [v10 payloadAsString];
  [(CalDAVPrincipalEmailDetailsResult *)v4 setDisplayName:payloadAsString];

  v12 = [MEMORY[0x277CBEB58] set];
  v13 = v9[2](v9, 6);
  objc_opt_class();
  v30 = v8;
  v31 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v29 = v4;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    hrefs = [v13 hrefs];
    v15 = [hrefs countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v37;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(hrefs);
          }

          v19 = [CalDAVCalendarUserAddressItemTranslator calDAVUserAddressForItem:*(*(&v36 + 1) + 8 * i)];
          if (v19)
          {
            [v12 addObject:v19];
          }
        }

        v16 = [hrefs countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v16);
    }

    v4 = v29;
    v8 = v30;
  }

  v20 = v9[2](v9, 4);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    emailAddresses = [v20 emailAddresses];
    v22 = [emailAddresses countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(emailAddresses);
          }

          v26 = [CalDAVCalendarUserAddressItemTranslator calDAVUserAddressForItem:*(*(&v32 + 1) + 8 * j) prependMailTo:1];
          if (v26)
          {
            [v12 addObject:v26];
          }
        }

        v23 = [emailAddresses countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v23);
    }

    v8 = v30;
    itemCopy = v31;
  }

  v27 = [MEMORY[0x277CBEB98] setWithSet:v12];
  [(CalDAVPrincipalEmailDetailsResult *)v4 setPreferredAddresses:v27];

  return v4;
}

id __60__CalDAVPrincipalEmailDetailsResult_resultFromResponseItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [CalDAVPrincipalSearchSupport namespaceAndNameForWellKnownType:a2];
  v4 = [v2 objectForKey:v3];

  return v4;
}

- (id)addresses
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  preferredAddresses = [(CalDAVPrincipalEmailDetailsResult *)self preferredAddresses];
  v5 = [preferredAddresses countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(preferredAddresses);
        }

        address = [*(*(&v12 + 1) + 8 * i) address];
        absoluteString = [address absoluteString];
        [v3 addObject:absoluteString];
      }

      v6 = [preferredAddresses countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  displayName = [(CalDAVPrincipalEmailDetailsResult *)self displayName];
  addresses = [(CalDAVPrincipalEmailDetailsResult *)self addresses];
  v8 = [v3 stringWithFormat:@"<%@ %p: '%@' addresses: (%lu)>", v5, self, displayName, objc_msgSend(addresses, "count")];

  return v8;
}

@end