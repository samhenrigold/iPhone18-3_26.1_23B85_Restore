@interface WLKAMSMediaProxy
- (WLKAMSMediaProxy)initWithDictionary:(id)dictionary;
- (void)_initializeProperties:(id)properties;
@end

@implementation WLKAMSMediaProxy

- (WLKAMSMediaProxy)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = WLKAMSMediaProxy;
  v5 = [(WLKAMSMediaProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WLKAMSMediaProxy *)v5 _initializeProperties:dictionaryCopy];
  }

  return v6;
}

- (void)_initializeProperties:(id)properties
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [properties wlk_arrayForKey:@"data"];
  if ([v4 count])
  {
    v23 = [v4 objectAtIndexedSubscript:0];
    v5 = [v23 wlk_dictionaryForKey:@"attributes"];
    v6 = [v5 wlk_dictionaryForKey:@"contentRatingsBySystem"];
    contentRatingsBySystemDictionary = self->_contentRatingsBySystemDictionary;
    self->_contentRatingsBySystemDictionary = v6;

    v22 = v5;
    v21 = [v5 wlk_dictionaryForKey:@"platformAttributes"];
    v8 = [v21 wlk_dictionaryForKey:@"appletvos"];
    v9 = [v8 wlk_arrayForKey:@"offers"];
    self->_hasInAppPurchases = [v8 wlk_BOOLForKey:@"hasInAppPurchases" defaultValue:0];
    v10 = [v8 wlk_stringForKey:@"subtitle"];
    subtitle = self->_subtitle;
    self->_subtitle = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v24 + 1) + 8 * v17) wlk_stringForKey:@"buyParams"];
          [v12 addObject:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    v19 = [v12 copy];
    buyParameters = self->_buyParameters;
    self->_buyParameters = v19;

    NSLog(&cfstr_Wlkamsmediapro.isa, self->_contentRatingsBySystemDictionary, self->_hasInAppPurchases, self->_subtitle, self->_buyParameters);
  }

  else
  {
    NSLog(&cfstr_DictionaryResp.isa);
  }
}

@end