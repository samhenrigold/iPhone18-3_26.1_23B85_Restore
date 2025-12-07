@interface SFSpeechSynthesisVoice
+ (id)getDefaultVoiceByLocale:(id)locale;
+ (id)getVoiceByName:(id)name;
+ (id)supportedVoicesByLocale:(id)locale;
+ (void)initialize;
- (SFSpeechSynthesisVoice)initWithVoiceAsset:(id)asset resourceAsset:(id)resourceAsset;
- (id)init:(id)init gender:(id)gender name:(id)name isDefault:(BOOL)default;
@end

@implementation SFSpeechSynthesisVoice

- (id)init:(id)init gender:(id)gender name:(id)name isDefault:(BOOL)default
{
  initCopy = init;
  genderCopy = gender;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = SFSpeechSynthesisVoice;
  v14 = [(SFSpeechSynthesisVoice *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_locale, init);
    objc_storeStrong(&v15->_gender, gender);
    objc_storeStrong(&v15->_name, name);
    v15->_isDefault = default;
  }

  return v15;
}

- (SFSpeechSynthesisVoice)initWithVoiceAsset:(id)asset resourceAsset:(id)resourceAsset
{
  assetCopy = asset;
  resourceAssetCopy = resourceAsset;
  v12.receiver = self;
  v12.super_class = SFSpeechSynthesisVoice;
  v9 = [(SFSpeechSynthesisVoice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_voiceAsset, asset);
    objc_storeStrong(&v10->_resourceAsset, resourceAsset);
  }

  return v10;
}

+ (id)getDefaultVoiceByLocale:(id)locale
{
  v17 = *MEMORY[0x277D85DE8];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [self supportedVoicesByLocale:currentLocale];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isDefault])
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (id)getVoiceByName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = sSupportedVoices;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        name = [v8 name];
        v10 = [name isEqualToString:nameCopy];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

+ (id)supportedVoicesByLocale:(id)locale
{
  v19 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = sSupportedVoices;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        locale = [v10 locale];
        v12 = [locale isEqual:localeCopy];

        if (v12)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (void)initialize
{
  v28 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 pathForResource:@"tts_voices" ofType:@"plist"];

    v20 = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        v8 = 0;
        do
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [v4 objectForKey:*(*(&v23 + 1) + 8 * v8)];
          v10 = [v9 objectForKey:@"default"];
          v11 = v10 != 0;

          v12 = [v9 objectForKey:@"locale"];
          v13 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v12];
          v14 = [v9 objectForKey:@"gender"];
          v15 = [v9 objectForKey:@"name"];
          v16 = [[SFSpeechSynthesisVoice alloc] init:v13 gender:v14 name:v15 isDefault:v11];
          [v21 addObject:v16];
          [v22 addObject:v13];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v6);
    }

    v17 = sSupportedVoices;
    sSupportedVoices = v21;
    v18 = v21;

    v19 = sSupportedLocales;
    sSupportedLocales = v22;
  }
}

@end