@interface WLKCanonicalPlayablesSiriResponse
+ (id)_parseChannelsFromPayload:(id)payload;
- (WLKCanonicalPlayablesSiriResponse)init;
- (WLKCanonicalPlayablesSiriResponse)initWithDictionary:(id)dictionary;
- (WLKCanonicalPlayablesSiriResponse)initWithDictionary:(id)dictionary statsID:(id)d;
@end

@implementation WLKCanonicalPlayablesSiriResponse

- (WLKCanonicalPlayablesSiriResponse)initWithDictionary:(id)dictionary
{
  v48 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v44.receiver = self;
  v44.super_class = WLKCanonicalPlayablesSiriResponse;
  v5 = [(WLKCanonicalPlayablesSiriResponse *)&v44 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionary = v5->_dictionary;
    v36 = v5;
    v5->_dictionary = v6;

    v37 = dictionaryCopy;
    v8 = [dictionaryCopy wlk_dictionaryForKey:@"data"];
    v35 = [v8 wlk_dictionaryForKey:@"content"];
    v34 = [v8 wlk_dictionaryForKey:@"channels"];
    v38 = [v8 wlk_dictionaryForKey:@"contentPersonalizedInfo"];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v8 wlk_arrayForKey:@"smartPlayables"];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v43 = 0u;
    v10 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v40 + 1) + 8 * i);
          v15 = [v8 wlk_dictionaryForKey:@"playables"];
          v16 = [v14 wlk_stringForKey:@"playableId"];
          v17 = [v15 wlk_dictionaryForKey:v16];
          [v9 addObject:v17];
        }

        v11 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v11);
    }

    v18 = +[WLKNetworkRequestUtilities isGDPRAccepted];
    activeAccount = [MEMORY[0x277D6C478] activeAccount];

    v20 = [v38 wlk_BOOLForKey:@"isWatchlistEnabled" defaultValue:0];
    v21 = v20 & v18;
    if (!activeAccount)
    {
      v21 = 0;
    }

    v5 = v36;
    v36->_watchListable = v21;
    v22 = WLKSystemLogObject(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v46 = v18;
      _os_log_impl(&dword_272A0F000, v22, OS_LOG_TYPE_DEFAULT, "WLKCanonicalPlayablesSiriResponse - isGDPRAccepted:%d", buf, 8u);
    }

    v24 = WLKSystemLogObject(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v46 = activeAccount != 0;
      _os_log_impl(&dword_272A0F000, v24, OS_LOG_TYPE_DEFAULT, "WLKCanonicalPlayablesSiriResponse - isAccountPresent:%d", buf, 8u);
    }

    v36->_watchListed = [v38 wlk_BOOLForKey:@"inUpNext" defaultValue:0];
    v25 = [WLKCanonicalPlayablesSiriResponse _parseChannelsFromPayload:v34];
    v26 = [v35 wlk_stringForKey:@"id"];
    canonicalID = v36->_canonicalID;
    v36->_canonicalID = v26;

    v28 = [v35 wlk_stringForKey:@"type"];
    v36->_contentType = [WLKBasicContentMetadata contentTypeForString:v28];

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([(NSString *)v36->_canonicalID length])
    {
      [v29 setObject:v36->_canonicalID forKey:@"WLKModelContextKeyCanonicalID"];
    }

    if (v25)
    {
      [v29 setObject:v25 forKey:@"WLKModelContextKeyChannels"];
    }

    v30 = [v9 copy];
    v31 = [WLKPlayable playablesWithDictionaries:v30 context:v29];
    playables = v36->_playables;
    v36->_playables = v31;

    dictionaryCopy = v37;
  }

  return v5;
}

- (WLKCanonicalPlayablesSiriResponse)initWithDictionary:(id)dictionary statsID:(id)d
{
  v34[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dCopy = d;
  v31.receiver = self;
  v31.super_class = WLKCanonicalPlayablesSiriResponse;
  v8 = [(WLKCanonicalPlayablesSiriResponse *)&v31 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_canonicalID, d);
    v9->_contentType = 5;
    v10 = [dictionaryCopy copy];
    dictionary = v9->_dictionary;
    v9->_dictionary = v10;

    v12 = [dictionaryCopy wlk_dictionaryForKey:@"data"];
    v13 = [v12 wlk_dictionaryForKey:@"playables"];
    v14 = [v12 wlk_dictionaryForKey:@"channels"];
    v15 = v14;
    if (v13 && v14 && v9->_canonicalID)
    {
      v16 = [v13 wlk_dictionaryForKey:?];
      v17 = [[WLKPlayable alloc] initWithDictionary:v16];
      v34[0] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
      playables = v9->_playables;
      v9->_playables = v18;

      v30 = v16;
      v29 = [v16 objectForKey:@"channelId"];
      v20 = [v15 wlk_dictionaryForKey:?];
      v21 = +[WLKNetworkRequestUtilities isGDPRAccepted];
      activeAccount = [MEMORY[0x277D6C478] activeAccount];

      v23 = [v20 wlk_BOOLForKey:@"isWatchlistEnabled" defaultValue:0];
      v24 = v23 & v21;
      if (!activeAccount)
      {
        v24 = 0;
      }

      v9->_watchListable = v24;
      v25 = WLKSystemLogObject(v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v33 = v21;
        _os_log_impl(&dword_272A0F000, v25, OS_LOG_TYPE_DEFAULT, "WLKCanonicalPlayablesSiriResponse - isGDPRAccepted:%d", buf, 8u);
      }

      v27 = WLKSystemLogObject(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v33 = activeAccount != 0;
        _os_log_impl(&dword_272A0F000, v27, OS_LOG_TYPE_DEFAULT, "WLKCanonicalPlayablesSiriResponse - isAccountPresent:%d", buf, 8u);
      }

      v9->_watchListed = 0;
    }
  }

  return v9;
}

+ (id)_parseChannelsFromPayload:(id)payload
{
  v3 = MEMORY[0x277CBEB18];
  payloadCopy = payload;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(payloadCopy, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__WLKCanonicalPlayablesSiriResponse__parseChannelsFromPayload___block_invoke;
  v9[3] = &unk_279E5F2F8;
  v6 = v5;
  v10 = v6;
  [payloadCopy enumerateKeysAndObjectsUsingBlock:v9];

  if ([v6 count])
  {
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __63__WLKCanonicalPlayablesSiriResponse__parseChannelsFromPayload___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = [[WLKChannelDetails alloc] initWithDictionary:v4];

  v5 = [(WLKChannelDetails *)v6 channelID];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (WLKCanonicalPlayablesSiriResponse)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKCanonicalPlayablesSiriResponse" format:@"-init is not supported"];

  return 0;
}

@end