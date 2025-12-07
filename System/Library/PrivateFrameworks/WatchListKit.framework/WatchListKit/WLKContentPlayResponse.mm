@interface WLKContentPlayResponse
- (WLKContentPlayResponse)init;
- (WLKContentPlayResponse)initWithDictionary:(id)dictionary;
@end

@implementation WLKContentPlayResponse

- (WLKContentPlayResponse)initWithDictionary:(id)dictionary
{
  v17[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = WLKContentPlayResponse;
  v6 = [(WLKContentPlayResponse *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
    v8 = [dictionaryCopy wlk_dictionaryForKey:@"data"];
    v9 = [WLKChannelsResponse parseChannelsFromPayload:v8];
    v10 = v9;
    if (v9)
    {
      v16 = @"WLKModelContextKeyChannels";
      v17[0] = v9;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    }

    else
    {
      v11 = 0;
    }

    v12 = [[WLKPlayable alloc] initWithDictionary:v8 context:v11];
    playable = v7->_playable;
    v7->_playable = v12;
  }

  return v7;
}

- (WLKContentPlayResponse)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKContentPlayResponse" format:@"-init is not supported"];

  return 0;
}

@end