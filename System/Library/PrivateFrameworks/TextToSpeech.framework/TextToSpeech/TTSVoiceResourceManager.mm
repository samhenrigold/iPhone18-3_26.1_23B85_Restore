@interface TTSVoiceResourceManager
+ (id)effectiveResourceForLanguageCode:(id)code andVoiceType:(int64_t)type;
+ (void)enumerateLoadableResourcesInAsset:(id)asset usingBlock:(id)block;
@end

@implementation TTSVoiceResourceManager

+ (id)effectiveResourceForLanguageCode:(id)code andVoiceType:(int64_t)type
{
  codeCopy = code;
  if ((_AXSSpeechSynthesisOptions() & 8) != 0)
  {
    v7 = AXTTSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A9324000, v7, OS_LOG_TYPE_DEFAULT, "Pref AXSpeechSynthesisOptionMauiEngineSkipSiriProvidedRules=YES. will not load Siri-provided rules", v9, 2u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [TTSSiriAssetManager voiceResourceForLanguage:codeCopy voiceType:type];
  }

  return v6;
}

+ (void)enumerateLoadableResourcesInAsset:(id)asset usingBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  blockCopy = block;
  v21 = assetCopy;
  if (assetCopy)
  {
    v7 = AXTTSLogRange();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1A957878C(assetCopy, v7);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [assetCopy resourceList];
    v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:@"mime-type"];
          v14 = [v12 objectForKeyedSubscript:@"filename"];
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"application/edct-bin-dictionary"];
          v16 = [v13 isEqualToString:v15];

          if (v16)
          {
            searchPathURL = [v21 searchPathURL];
            v18 = [searchPathURL URLByAppendingPathComponent:v14];

            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = sub_1A9348328;
            aBlock[3] = &unk_1E78803A8;
            v24 = v18;
            v19 = v18;
            v20 = _Block_copy(aBlock);
            blockCopy[2](blockCopy, v14, v13, v20, v19);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }
  }
}

@end