@interface WLKChannel
+ (id)channelsWithDictionaries:(id)dictionaries context:(id)context;
+ (id)channelsWithDictionaries:(id)dictionaries context:(id)context seasons:(id)seasons;
- (WLKChannel)init;
- (WLKChannel)initWithDictionary:(id)dictionary context:(id)context;
@end

@implementation WLKChannel

- (WLKChannel)initWithDictionary:(id)dictionary context:(id)context
{
  dictionaryCopy = dictionary;
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = WLKChannel;
  v8 = [(WLKChannel *)&v26 init];
  if (v8)
  {
    v9 = [dictionaryCopy wlk_stringForKey:@"channelId"];
    ID = v8->_ID;
    v8->_ID = v9;

    v11 = [dictionaryCopy wlk_dictionaryForKey:@"punchoutUrls"];
    punchoutUrls = v8->_punchoutUrls;
    v8->_punchoutUrls = v11;

    v13 = [dictionaryCopy wlk_arrayForKey:@"seasonNumbers"];
    seasonNumbers = v8->_seasonNumbers;
    v8->_seasonNumbers = v13;

    v15 = [dictionaryCopy wlk_arrayForKey:@"subscriptionOffers"];
    if (v15)
    {
      v16 = [WLKStoreOffer offersWithSubscriptionDictionaries:v15];
      subscriptionOffers = v8->_subscriptionOffers;
      v8->_subscriptionOffers = v16;
    }

    v18 = contextCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 wlk_arrayForKey:@"WLKModelContextKeyChannels"];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __41__WLKChannel_initWithDictionary_context___block_invoke;
      v24[3] = &unk_279E5F158;
      v25 = v8;
      [v19 enumerateObjectsUsingBlock:v24];
    }

    if (!v8->_details)
    {
      v20 = +[WLKChannelUtilities sharedInstance];
      v21 = [v20 channelForID:v8->_ID];
      details = v8->_details;
      v8->_details = v21;
    }
  }

  return v8;
}

void __41__WLKChannel_initWithDictionary_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 channelID];
  v8 = [v7 isEqualToString:*(*(a1 + 32) + 8)];

  if (v8)
  {
    objc_storeStrong((*(a1 + 32) + 16), a2);
    *a4 = 1;
  }
}

- (WLKChannel)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKChannelInitException" format:@"-init not supported. Use initWithDictionary: instead"];

  return 0;
}

+ (id)channelsWithDictionaries:(id)dictionaries context:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  contextCopy = context;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = dictionariesCopy;
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
        v14 = [WLKChannel alloc];
        v15 = [(WLKChannel *)v14 initWithDictionary:v13 context:contextCopy, v18];
        if (v15)
        {
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];

  return v16;
}

+ (id)channelsWithDictionaries:(id)dictionaries context:(id)context seasons:(id)seasons
{
  v41 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  contextCopy = context;
  seasonsCopy = seasons;
  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = dictionariesCopy;
  v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v28)
  {
    v10 = 0;
    v26 = *v36;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v35 + 1) + 8 * v11);
        v30 = v11;
        v12 = [v29 wlk_arrayForKey:@"seasons"];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v10 = v12;
        v13 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v32;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v32 != v15)
              {
                objc_enumerationMutation(v10);
              }

              v17 = [*(*(&v31 + 1) + 8 * i) wlk_stringForKey:@"id"];
              v18 = [seasonsCopy wlk_dictionaryForKey:v17];
              v19 = [v18 wlk_numberForKey:@"seasonNumber"];

              [v9 addObject:v19];
            }

            v14 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v14);
        }

        v20 = [v29 mutableCopy];
        [v20 setObject:v9 forKey:@"seasonNumbers"];
        v21 = [[WLKChannel alloc] initWithDictionary:v20 context:contextCopy];
        if (v21)
        {
          [v25 addObject:v21];
        }

        v11 = v30 + 1;
      }

      while (v30 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v28);
  }

  v22 = [v25 copy];

  return v22;
}

@end