@interface TTSVoiceResourceAsset
+ (id)legacyPlatforms;
- (TTSVoiceResourceAsset)initWithCoder:(id)coder;
- (id)defaultFootprintString;
- (id)defaultTypeString;
- (id)defaultVoice;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)syncWithConfigData:(id)data voiceType:(int64_t)type;
- (void)syncWithConfigFile:(id)file voiceType:(int64_t)type;
@end

@implementation TTSVoiceResourceAsset

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSArray *)self->_languages componentsJoinedByString:@", "];
  contentVersion = [(TTSAssetBase *)self contentVersion];
  masteredVersion = [(TTSAssetBase *)self masteredVersion];
  v7 = [v3 stringWithFormat:@"Voice resource, Languages: %@, ContentVersion: %@, MasteredVersion: %@", v4, contentVersion, masteredVersion];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TTSVoiceResourceAsset;
  coderCopy = coder;
  [(TTSAssetBase *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_languages forKey:{@"_languages", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_searchPathURL forKey:@"_searchPathURL"];
}

- (TTSVoiceResourceAsset)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = TTSVoiceResourceAsset;
  v5 = [(TTSAssetBase *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_languages"];
    languages = v5->_languages;
    v5->_languages = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_searchPathURL"];
    searchPathURL = v5->_searchPathURL;
    v5->_searchPathURL = v11;
  }

  return v5;
}

+ (id)legacyPlatforms
{
  if (qword_1EB390FC0 != -1)
  {
    sub_1A9578764();
  }

  v3 = qword_1EB390FB8;

  return v3;
}

- (void)syncWithConfigFile:(id)file voiceType:(int64_t)type
{
  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:file];
  [(TTSVoiceResourceAsset *)self syncWithConfigData:v6 voiceType:type];
}

- (void)syncWithConfigData:(id)data voiceType:(int64_t)type
{
  v36 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = dataCopy;
  if (dataCopy)
  {
    allKeys = [dataCopy allKeys];
    v9 = [allKeys containsObject:@"ax_resources"];

    selfCopy = self;
    v26 = v7;
    if (v9)
    {
      v10 = [v7 objectForKeyedSubscript:@"ax_resources"];
      if ((type & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v11 = @"ax_gryphon_resource_order";
      }

      else
      {
        v11 = @"ax_compact_resource_order";
      }

      v12 = [v7 objectForKeyedSubscript:v11];
    }

    else
    {
      v12 = [v7 objectForKeyedSubscript:@"vocalizer_resource_order"];
      v10 = [v7 objectForKeyedSubscript:@"vocalizer_resources"];
    }

    array = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    allKeys2 = [v10 allKeys];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1A9347128;
    v27[3] = &unk_1E7880370;
    v15 = v12;
    v28 = v15;
    v16 = [allKeys2 sortedArrayUsingComparator:v27];

    v17 = [v16 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          if ([v15 containsObject:v21])
          {
            v33[0] = @"filename";
            v33[1] = @"mime-type";
            v34[0] = v21;
            v22 = [v10 objectForKeyedSubscript:v21];
            v34[1] = v22;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
            v24 = v23 = v10;
            [array addObject:v24];

            v10 = v23;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v18);
    }

    [(TTSVoiceResourceAsset *)selfCopy setResourceList:array];
    v7 = v26;
    [(TTSVoiceResourceAsset *)selfCopy setVoiceConfig:v26];
  }
}

- (id)defaultVoice
{
  voiceConfig = [(TTSVoiceResourceAsset *)self voiceConfig];
  v3 = [voiceConfig objectForKeyedSubscript:@"_voices"];

  if (!v3)
  {
    v8 = 0;
    goto LABEL_13;
  }

  if (qword_1EB390FD0 != -1)
  {
    sub_1A9578778();
  }

  if (byte_1EB390FC8 == 1 && CFPreferencesGetAppBooleanValue(@"DisableGryphon", @"com.apple.voiced", 0) || (+[TTSVoiceResourceAsset legacyPlatforms](TTSVoiceResourceAsset, "legacyPlatforms"), v4 = objc_claimAutoreleasedReturnValue(), v5 = MGCopyAnswer(), v6 = [v4 containsObject:v5], v5, v4, (v6 & 1) != 0))
  {
    v7 = @"legacy";
    goto LABEL_11;
  }

  if (MGGetProductType() == 4240173202)
  {
    v7 = @"premiumhigh";
LABEL_11:
    v8 = [v3 objectForKeyedSubscript:v7];
    if (v8)
    {
      goto LABEL_13;
    }
  }

  v8 = [v3 objectForKeyedSubscript:@"default"];
LABEL_13:

  return v8;
}

- (id)defaultTypeString
{
  defaultVoice = [(TTSVoiceResourceAsset *)self defaultVoice];
  v3 = [defaultVoice objectForKeyedSubscript:@"Type"];

  return v3;
}

- (id)defaultFootprintString
{
  defaultVoice = [(TTSVoiceResourceAsset *)self defaultVoice];
  v3 = [defaultVoice objectForKeyedSubscript:@"Footprint"];

  return v3;
}

@end