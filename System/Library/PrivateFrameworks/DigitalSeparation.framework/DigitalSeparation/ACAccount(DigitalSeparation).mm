@interface ACAccount(DigitalSeparation)
- (id)ds_accountEmails;
@end

@implementation ACAccount(DigitalSeparation)

- (id)ds_accountEmails
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  aa_primaryEmail = [self aa_primaryEmail];

  if (aa_primaryEmail)
  {
    aa_primaryEmail2 = [self aa_primaryEmail];
    [v2 addObject:aa_primaryEmail2];
  }

  username = [self username];

  if (username)
  {
    username2 = [self username];
    [v2 addObject:username2];
  }

  accountType = [self accountType];
  identifier = [accountType identifier];
  v9 = [identifier isEqualToString:*MEMORY[0x277CB8BC8]];

  if (v9)
  {
    accountProperties = [self accountProperties];
    v11 = [accountProperties objectForKeyedSubscript:@"CalDAVPrincipals"];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v11;
    v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v25)
    {
      v24 = *v32;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [obj objectForKeyedSubscript:*(*(&v31 + 1) + 8 * i)];
          v14 = [v13 objectForKeyedSubscript:@"PreferredCalendarUserAddresses"];

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v28;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v28 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [*(*(&v27 + 1) + 8 * j) objectForKeyedSubscript:@"packedCalendarUserAddressAddress"];
                if ([v20 hasPrefix:@"mailto:"])
                {
                  v21 = [v20 substringFromIndex:{objc_msgSend(@"mailto:", "length")}];
                  [v2 addObject:v21];
                }

                else
                {
                  [v2 addObject:v20];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v17);
          }
        }

        v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v25);
    }
  }

  v22 = [MEMORY[0x277CBEB98] setWithSet:v2];

  return v22;
}

@end