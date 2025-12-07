@interface CDMAsrUtils
+ (id)createAsrUuidCharIndexTimingMaps:(id)maps;
+ (id)createCharIndexTimingMap:(id)map;
@end

@implementation CDMAsrUtils

+ (id)createAsrUuidCharIndexTimingMaps:(id)maps
{
  v33 = *MEMORY[0x1E69E9840];
  mapsCopy = maps;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v27 = "+[CDMAsrUtils createAsrUuidCharIndexTimingMaps:]";
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Building maps of {char_index: asr_timing} for each ASR alternative", buf, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(mapsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = mapsCopy;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    *&v8 = 136315650;
    v21 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [CDMAsrUtils createCharIndexTimingMap:v12, v21, v22];
        v14 = [v12 idA];
        [v5 setObject:v13 forKey:v14];

        v15 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = MEMORY[0x1E69D1428];
          v17 = [v12 idA];
          v18 = [v16 convertUUID:v17];
          *buf = v21;
          v27 = "+[CDMAsrUtils createAsrUuidCharIndexTimingMaps:]";
          v28 = 2112;
          v29 = v18;
          v30 = 2112;
          v31 = v13;
          _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Added asrUuid: %@ {char_index->asr_timing} asrMap: %@", buf, 0x20u);
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v9);
  }

  v19 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v27 = "+[CDMAsrUtils createAsrUuidCharIndexTimingMaps:]";
    v28 = 2112;
    v29 = v5;
    _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s Created asrMaps: %@", buf, 0x16u);
  }

  return v5;
}

+ (id)createCharIndexTimingMap:(id)map
{
  v26 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  asrTokens = [mapCopy asrTokens];
  v6 = [asrTokens countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(asrTokens);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "startMilliSeconds")}];
        v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "beginIndex")}];
        [v4 setObject:v11 forKey:v12];

        v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "endMilliSeconds")}];
        v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "endIndex")}];
        [v4 setObject:v13 forKey:v14];
      }

      v7 = [asrTokens countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "+[CDMAsrUtils createCharIndexTimingMap:]";
    v23 = 2112;
    v24 = v4;
    _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Created {char_index: asr_timing} dict: %@", buf, 0x16u);
  }

  return v4;
}

@end