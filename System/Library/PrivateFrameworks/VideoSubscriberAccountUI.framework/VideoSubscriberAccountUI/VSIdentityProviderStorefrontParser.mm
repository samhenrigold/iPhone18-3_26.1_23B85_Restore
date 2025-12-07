@interface VSIdentityProviderStorefrontParser
- (NSArray)tvProviderSupportedStorefronts;
- (NSDictionary)identityProvidersByStorefront;
- (VSIdentityProviderStorefrontParser)init;
- (id)providersForStorefront:(id)storefront featuredOnly:(BOOL)only;
- (id)updateFeaturedStorefronts:(id)storefronts withCurrentStorefrontCodeOrNil:(id)nil;
- (void)setAllStorefronts:(id)storefronts withCurrentStorefrontCode:(id)code;
@end

@implementation VSIdentityProviderStorefrontParser

- (VSIdentityProviderStorefrontParser)init
{
  v10.receiver = self;
  v10.super_class = VSIdentityProviderStorefrontParser;
  v2 = [(VSIdentityProviderStorefrontParser *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
    allIdentityProviders = v2->_allIdentityProviders;
    v2->_allIdentityProviders = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
    allStorefronts = v2->_allStorefronts;
    v2->_allStorefronts = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    storefrontsByCountryCode = v2->_storefrontsByCountryCode;
    v2->_storefrontsByCountryCode = v7;
  }

  return v2;
}

- (void)setAllStorefronts:(id)storefronts withCurrentStorefrontCode:(id)code
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(VSIdentityProviderStorefrontParser *)self updateFeaturedStorefronts:storefronts withCurrentStorefrontCodeOrNil:code];
  objc_storeStrong(&self->_allStorefronts, v5);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        identitifer = [v12 identitifer];
        [v6 setObject:v12 forKey:identitifer];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = objc_alloc_init(VSStorefront);
  vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v16 = [vs_frameworkBundle localizedStringForKey:@"REGIONS_PICKER_SETTINGS_DEVELOPER_PROVIDERS_DISPLAY_NAME" value:0 table:0];
  [(VSStorefront *)v14 setDisplayName:v16];

  [(VSStorefront *)v14 setIdentitifer:@"__"];
  [(VSStorefront *)v14 setIsFeatured:1];
  [v6 setObject:v14 forKey:@"__"];
  v17 = [v6 copy];
  [(VSIdentityProviderStorefrontParser *)self setStorefrontsByCountryCode:v17];
}

- (NSDictionary)identityProvidersByStorefront
{
  v47 = *MEMORY[0x277D85DE8];
  allIdentityProviders = [(VSIdentityProviderStorefrontParser *)self allIdentityProviders];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = allIdentityProviders;
  v5 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  v34 = v3;
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    v33 = *MEMORY[0x277CBE660];
    v28 = *v42;
    v29 = v4;
    do
    {
      v8 = 0;
      v30 = v6;
      do
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * v8);
        if ([v9 isDeveloper])
        {
          [v4 addObject:v9];
        }

        else
        {
          v32 = v8;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          storefronts = [v9 storefronts];
          v10 = [storefronts countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v38;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v38 != v12)
                {
                  objc_enumerationMutation(storefronts);
                }

                v14 = *(*(&v37 + 1) + 8 * i);
                storefrontTwoCharCode = [v14 storefrontTwoCharCode];
                v16 = [v3 objectForKey:storefrontTwoCharCode];
                if (!v16)
                {
                  v16 = objc_alloc_init(VSIdentityProviderStorefrontCollection);
                  [(VSIdentityProviderStorefrontCollection *)v16 setStorefrontTwoCharCode:storefrontTwoCharCode];
                  storefrontsByCountryCode = [(VSIdentityProviderStorefrontParser *)self storefrontsByCountryCode];
                  v18 = [storefrontsByCountryCode valueForKey:storefrontTwoCharCode];
                  displayName = [v18 displayName];

                  if (displayName)
                  {
                    v20 = displayName;
                  }

                  else
                  {
                    v20 = storefrontTwoCharCode;
                  }

                  [(VSIdentityProviderStorefrontCollection *)v16 setLocalizedDisplayName:v20];
                  if (!v16)
                  {
                    [MEMORY[0x277CBEAD8] raise:v33 format:@"The sfCollection parameter must not be nil."];
                  }

                  v3 = v34;
                  [v34 setObject:v16 forKey:storefrontTwoCharCode];
                }

                mutableAllIdentityProviders = [(VSIdentityProviderStorefrontCollection *)v16 mutableAllIdentityProviders];
                [mutableAllIdentityProviders addObject:v9];

                if ([v14 isFeatured])
                {
                  mutableFeaturedIdentityProviders = [(VSIdentityProviderStorefrontCollection *)v16 mutableFeaturedIdentityProviders];
                  [mutableFeaturedIdentityProviders addObject:v9];
                }
              }

              v11 = [storefronts countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v11);
          }

          v7 = v28;
          v4 = v29;
          v6 = v30;
          v8 = v32;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v23 = objc_alloc_init(VSIdentityProviderStorefrontCollection);
    [(VSIdentityProviderStorefrontCollection *)v23 setStorefrontTwoCharCode:@"__"];
    vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v25 = [vs_frameworkBundle localizedStringForKey:@"REGIONS_PICKER_SETTINGS_DEVELOPER_PROVIDERS_DISPLAY_NAME" value:0 table:0];
    [(VSIdentityProviderStorefrontCollection *)v23 setLocalizedDisplayName:v25];

    v3 = v34;
    [(VSIdentityProviderStorefrontCollection *)v23 setMutableAllIdentityProviders:v4];
    [v34 setObject:v23 forKey:@"__"];
  }

  v26 = [v3 copy];
  [(VSIdentityProviderStorefrontParser *)self setProvidersByStorefront:v26];

  return v3;
}

- (NSArray)tvProviderSupportedStorefronts
{
  v22 = *MEMORY[0x277D85DE8];
  providersByStorefront = [(VSIdentityProviderStorefrontParser *)self providersByStorefront];
  v4 = providersByStorefront;
  if (providersByStorefront)
  {
    identityProvidersByStorefront = providersByStorefront;
  }

  else
  {
    identityProvidersByStorefront = [(VSIdentityProviderStorefrontParser *)self identityProvidersByStorefront];
  }

  v6 = identityProvidersByStorefront;

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        storefrontsByCountryCode = [(VSIdentityProviderStorefrontParser *)self storefrontsByCountryCode];
        v15 = [storefrontsByCountryCode objectForKey:v13];

        if (v15)
        {
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)providersForStorefront:(id)storefront featuredOnly:(BOOL)only
{
  onlyCopy = only;
  v33 = *MEMORY[0x277D85DE8];
  storefrontCopy = storefront;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(VSIdentityProviderStorefrontParser *)self allIdentityProviders];
  v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v21 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        storefronts = [v7 storefronts];
        v9 = [storefronts countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v24;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v24 != v11)
              {
                objc_enumerationMutation(storefronts);
              }

              v13 = *(*(&v23 + 1) + 8 * j);
              storefrontTwoCharCode = [v13 storefrontTwoCharCode];
              v15 = [storefrontTwoCharCode isEqualToString:storefrontCopy];

              if (v15)
              {
                if (!onlyCopy || [v13 isFeatured])
                {
                  [v18 addObject:v7];
                }

                goto LABEL_18;
              }
            }

            v10 = [storefronts countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  v16 = [v18 copy];

  return v16;
}

- (id)updateFeaturedStorefronts:(id)storefronts withCurrentStorefrontCodeOrNil:(id)nil
{
  v23 = *MEMORY[0x277D85DE8];
  storefrontsCopy = storefronts;
  nilCopy = nil;
  if (nilCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = storefrontsCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          identitifer = [v13 identitifer];
          v15 = [identitifer isEqualToString:nilCopy];

          [v13 setIsFeatured:v15];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v16 = [v7 copy];
  }

  else
  {
    v16 = storefrontsCopy;
  }

  return v16;
}

@end