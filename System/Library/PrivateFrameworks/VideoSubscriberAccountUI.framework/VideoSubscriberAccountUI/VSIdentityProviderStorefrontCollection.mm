@interface VSIdentityProviderStorefrontCollection
- (VSIdentityProviderStorefrontCollection)init;
- (id)allIdentityProviders;
- (id)featuredIdentityProviders;
- (void)featureProvidersInCurrentStorefront;
@end

@implementation VSIdentityProviderStorefrontCollection

- (VSIdentityProviderStorefrontCollection)init
{
  v8.receiver = self;
  v8.super_class = VSIdentityProviderStorefrontCollection;
  v2 = [(VSIdentityProviderStorefrontCollection *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableFeaturedIdentityProviders = v2->_mutableFeaturedIdentityProviders;
    v2->_mutableFeaturedIdentityProviders = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableAllIdentityProviders = v2->_mutableAllIdentityProviders;
    v2->_mutableAllIdentityProviders = v5;
  }

  return v2;
}

- (id)featuredIdentityProviders
{
  mutableFeaturedIdentityProviders = [(VSIdentityProviderStorefrontCollection *)self mutableFeaturedIdentityProviders];
  v3 = [mutableFeaturedIdentityProviders copy];

  return v3;
}

- (id)allIdentityProviders
{
  mutableAllIdentityProviders = [(VSIdentityProviderStorefrontCollection *)self mutableAllIdentityProviders];
  v3 = [mutableAllIdentityProviders copy];

  return v3;
}

- (void)featureProvidersInCurrentStorefront
{
  v27 = *MEMORY[0x277D85DE8];
  storefrontTwoCharCode = [(VSIdentityProviderStorefrontCollection *)self storefrontTwoCharCode];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(VSIdentityProviderStorefrontCollection *)self featuredIdentityProviders];
  v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        storefronts = [v5 storefronts];
        v7 = [storefronts countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v18;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v18 != v9)
              {
                objc_enumerationMutation(storefronts);
              }

              v11 = *(*(&v17 + 1) + 8 * j);
              storefrontTwoCharCode2 = [v11 storefrontTwoCharCode];
              if ([storefrontTwoCharCode2 isEqualToString:storefrontTwoCharCode])
              {
                rankForSorting = [v5 rankForSorting];

                if (rankForSorting)
                {
                  continue;
                }

                storefrontTwoCharCode2 = [v11 sortOrdinal];
                [v5 setRankForSorting:storefrontTwoCharCode2];
              }
            }

            v8 = [storefronts countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v8);
        }
      }

      v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v16);
  }
}

@end