@interface WLKSiriBestPlayablesResponse
- (WLKSiriBestPlayablesResponse)init;
- (WLKSiriBestPlayablesResponse)initWithDictionary:(id)dictionary;
- (id)playableForStatsID:(id)d;
@end

@implementation WLKSiriBestPlayablesResponse

- (WLKSiriBestPlayablesResponse)init
{
  [(WLKSiriBestPlayablesResponse *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (WLKSiriBestPlayablesResponse)initWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = WLKSiriBestPlayablesResponse;
  v5 = [(WLKSiriBestPlayablesResponse *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionary = v5->_dictionary;
    v22 = v5;
    v5->_dictionary = v6;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v23 = dictionaryCopy;
    v8 = [dictionaryCopy wlk_dictionaryForKey:@"data"];
    v9 = [WLKChannelsResponse parseChannelsFromPayload:v8];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v8;
    obj = [v8 allKeys];
    v10 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v25 wlk_dictionaryForKey:v14];
            v16 = [v15 wlk_stringForKey:@"canonicalId"];
            v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
            if ([v16 length])
            {
              [v17 setObject:v16 forKey:@"WLKModelContextKeyCanonicalID"];
            }

            if (v9)
            {
              [v17 setObject:v9 forKey:@"WLKModelContextKeyChannels"];
            }

            v18 = [[WLKPlayable alloc] initWithDictionary:v15 context:v17];
            if (v18)
            {
              [v24 setObject:v18 forKey:v14];
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    v19 = [v24 copy];
    v5 = v22;
    playablesByID = v22->_playablesByID;
    v22->_playablesByID = v19;

    dictionaryCopy = v23;
  }

  return v5;
}

- (id)playableForStatsID:(id)d
{
  dCopy = d;
  playablesByID = [(WLKSiriBestPlayablesResponse *)self playablesByID];
  v6 = [playablesByID objectForKey:dCopy];

  return v6;
}

@end