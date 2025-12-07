@interface WLKCanonicalPlayablesResponse
+ (id)_parseChannelsFromPayload:(id)payload;
- (WLKCanonicalPlayablesResponse)init;
- (WLKCanonicalPlayablesResponse)initWithDictionary:(id)dictionary;
- (WLKCanonicalPlayablesResponse)initWithSiriResponse:(id)response statsID:(id)d;
@end

@implementation WLKCanonicalPlayablesResponse

- (WLKCanonicalPlayablesResponse)initWithDictionary:(id)dictionary
{
  v47 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v43.receiver = self;
  v43.super_class = WLKCanonicalPlayablesResponse;
  v5 = [(WLKCanonicalPlayablesResponse *)&v43 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionary = v5->_dictionary;
    v35 = v5;
    v5->_dictionary = v6;

    v36 = dictionaryCopy;
    v8 = [dictionaryCopy wlk_dictionaryForKey:@"data"];
    v34 = [v8 wlk_dictionaryForKey:@"content"];
    v33 = [v8 wlk_dictionaryForKey:@"channels"];
    v37 = [v8 wlk_dictionaryForKey:@"contentPersonalizedInfo"];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v8 wlk_arrayForKey:@"smartPlayables"];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v42 = 0u;
    v10 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v15 = [v8 wlk_dictionaryForKey:@"playables"];
          v16 = [v14 wlk_stringForKey:@"playableId"];
          v17 = [v15 wlk_dictionaryForKey:v16];
          [v9 addObject:v17];
        }

        v11 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v11);
    }

    v18 = +[WLKNetworkRequestUtilities isGDPRAccepted];
    activeAccount = [MEMORY[0x277D6C478] activeAccount];

    v20 = [v37 wlk_BOOLForKey:@"isAddToUpNextEnabled" defaultValue:0];
    v21 = v20 & v18;
    if (!activeAccount)
    {
      v21 = 0;
    }

    v5 = v35;
    v35->_watchListable = v21;
    v22 = WLKSystemLogObject(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v45 = v18;
      _os_log_impl(&dword_272A0F000, v22, OS_LOG_TYPE_DEFAULT, "WLKCanonicalPlayablesResponse - isGDPRAccepted:%d", buf, 8u);
    }

    v24 = WLKSystemLogObject(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v45 = activeAccount != 0;
      _os_log_impl(&dword_272A0F000, v24, OS_LOG_TYPE_DEFAULT, "WLKCanonicalPlayablesResponse - isAccountPresent:%d", buf, 8u);
    }

    v35->_watchListed = [v37 wlk_BOOLForKey:@"inUpNext" defaultValue:0];
    v25 = [WLKCanonicalPlayablesResponse _parseChannelsFromPayload:v33];
    v26 = [v34 wlk_stringForKey:@"id"];
    canonicalID = v35->_canonicalID;
    v35->_canonicalID = v26;

    v28 = [v34 wlk_stringForKey:@"type"];
    v35->_contentType = [WLKBasicContentMetadata contentTypeForString:v28];

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([(NSString *)v35->_canonicalID length])
    {
      [v29 setObject:v35->_canonicalID forKey:@"WLKModelContextKeyCanonicalID"];
    }

    dictionaryCopy = v36;
    if (v25)
    {
      [v29 setObject:v25 forKey:@"WLKModelContextKeyChannels"];
    }

    v30 = [WLKPlayable playablesWithDictionaries:v9 context:v29];
    playables = v35->_playables;
    v35->_playables = v30;
  }

  return v5;
}

- (WLKCanonicalPlayablesResponse)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKCanonicalPlayablesResponse" format:@"-init is not supported"];

  return 0;
}

+ (id)_parseChannelsFromPayload:(id)payload
{
  v3 = MEMORY[0x277CBEB18];
  payloadCopy = payload;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(payloadCopy, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__WLKCanonicalPlayablesResponse__parseChannelsFromPayload___block_invoke;
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

void __59__WLKCanonicalPlayablesResponse__parseChannelsFromPayload___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = [[WLKChannelDetails alloc] initWithDictionary:v4];

  v5 = [(WLKChannelDetails *)v6 channelID];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (WLKCanonicalPlayablesResponse)initWithSiriResponse:(id)response statsID:(id)d
{
  responseCopy = response;
  dCopy = d;
  v21.receiver = self;
  v21.super_class = WLKCanonicalPlayablesResponse;
  v8 = [(WLKCanonicalPlayablesResponse *)&v21 init];
  v9 = v8;
  if (responseCopy && v8)
  {
    v10 = [[WLKCanonicalPlayablesSiriResponse alloc] initWithDictionary:responseCopy statsID:dCopy];
    playables = [(WLKCanonicalPlayablesSiriResponse *)v10 playables];
    v12 = [playables copy];
    playables = v9->_playables;
    v9->_playables = v12;

    dictionary = [(WLKCanonicalPlayablesSiriResponse *)v10 dictionary];
    v15 = [dictionary copy];
    dictionary = v9->_dictionary;
    v9->_dictionary = v15;

    v9->_watchListed = [(WLKCanonicalPlayablesSiriResponse *)v10 isWatchListed];
    v9->_watchListable = [(WLKCanonicalPlayablesSiriResponse *)v10 isWatchListable];
    v9->_contentType = [(WLKCanonicalPlayablesSiriResponse *)v10 contentType];
    canonicalID = [(WLKCanonicalPlayablesSiriResponse *)v10 canonicalID];
    v18 = [canonicalID copy];
    canonicalID = v9->_canonicalID;
    v9->_canonicalID = v18;
  }

  return v9;
}

@end