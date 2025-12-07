@interface SSQueryIntentManagerConfig
+ (id)_getParsecDomainMapping;
+ (id)_parseConditionalExtraSuggestions:(id)suggestions;
+ (id)_parseIntentOverrides:(id)overrides;
+ (id)_parseServerDomainExclusionSet:(id)set;
+ (id)sharedInstance;
- (BOOL)expired;
- (BOOL)getBoolParameter:(id)parameter;
- (float)getFloatParameter:(id)parameter;
- (id)_defaultOptions;
- (int)getIntParameter:(id)parameter;
- (void)_clearConfig;
- (void)_updateInternalConfig:(id)config;
- (void)update:(BOOL)update;
- (void)updateWithResources:(id)resources defaults:(id)defaults;
@end

@implementation SSQueryIntentManagerConfig

- (void)_clearConfig
{
  baseConfig = self->_baseConfig;
  self->_baseConfig = 0;

  resources = self->_resources;
  self->_resources = 0;

  self->_serverDomainDemotionExclusionSet = [MEMORY[0x1E695DFD8] setWithArray:MEMORY[0x1E695E0F0]];

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)getBoolParameter:(id)parameter
{
  v3 = [(NSDictionary *)self->_config objectForKeyedSubscript:parameter];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (int)getIntParameter:(id)parameter
{
  v3 = [(NSDictionary *)self->_config objectForKeyedSubscript:parameter];
  intValue = [v3 intValue];

  return intValue;
}

- (float)getFloatParameter:(id)parameter
{
  v3 = [(NSDictionary *)self->_config objectForKeyedSubscript:parameter];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (id)_defaultOptions
{
  if (_defaultOptions_onceToken != -1)
  {
    [SSQueryIntentManagerConfig _defaultOptions];
  }

  v3 = _defaultOptions__defaults;

  return v3;
}

void __45__SSQueryIntentManagerConfig__defaultOptions__block_invoke()
{
  v3[26] = *MEMORY[0x1E69E9840];
  v2[0] = @"IntentModelingEnabledMobile";
  v2[1] = @"IntentModelingEnabledDesktop";
  v3[0] = MEMORY[0x1E695E118];
  v3[1] = MEMORY[0x1E695E110];
  v2[2] = @"IntentModelingShowWebAsTypedBaseline";
  v2[3] = @"IntentModelingShowWebAsTypedLocal";
  v3[2] = MEMORY[0x1E695E118];
  v3[3] = MEMORY[0x1E695E118];
  v2[4] = @"IntentModelingShowWebAsTypedLocalStrong";
  v2[5] = @"IntentModelingShowWebAsTypedServer";
  v3[4] = MEMORY[0x1E695E118];
  v3[5] = MEMORY[0x1E695E118];
  v2[6] = @"IntentModelingLocalSuggestionQuotaBaseline";
  v2[7] = @"IntentModelingLocalSuggestionQuotaLocal";
  v3[6] = &unk_1F55B6A80;
  v3[7] = &unk_1F55B6A98;
  v2[8] = @"IntentModelingLocalSuggestionQuotaLocalStrong";
  v2[9] = @"IntentModelingLocalSuggestionQuotaServer";
  v3[8] = &unk_1F55B6A98;
  v3[9] = &unk_1F55B6A98;
  v2[10] = @"IntentModelingServerSuggestionQuotaBaseline";
  v2[11] = @"IntentModelingServerSuggestionQuotaLocal";
  v3[10] = &unk_1F55B6A80;
  v3[11] = &unk_1F55B6A98;
  v2[12] = @"IntentModelingServerSuggestionQuotaLocalStrong";
  v2[13] = @"IntentModelingServerSuggestionQuotaServer";
  v3[12] = &unk_1F55B6A98;
  v3[13] = &unk_1F55B6A80;
  v2[14] = @"IntentModelingServerSectionDisplayStrategyLocal";
  v2[15] = @"IntentModelingServerSectionDisplayStrategyLocalStrong";
  v3[14] = &unk_1F55B6AB0;
  v3[15] = &unk_1F55B6AC8;
  v2[16] = @"IntentModelingServerWeatherIntent";
  v2[17] = @"IntentModelingServerAppAccelerator";
  v3[16] = MEMORY[0x1E695E118];
  v3[17] = MEMORY[0x1E695E110];
  v2[18] = @"IntentModelingPhotosIntent";
  v2[19] = @"IntentModelingServerDomainsExcludedForDemotion";
  v3[18] = MEMORY[0x1E695E118];
  v3[19] = @"apps";
  v2[20] = @"IntentModelingSuppressSuggestionsUpToPrefixLength";
  v2[21] = @"IntentModelingShowSuggestionsAsOfPrefixLength";
  v3[20] = &unk_1F55B6A80;
  v3[21] = &unk_1F55B6A80;
  v2[22] = @"IntentModelingMapsPoiIntent";
  v2[23] = @"IntentModelingConditionalExtraSuggestions";
  v3[22] = MEMORY[0x1E695E118];
  v3[23] = &stru_1F556FE60;
  v2[24] = @"IntentModelingIntentOverrides";
  v2[25] = @"IntentModelingSafariEngagementThreshold";
  v3[24] = &stru_1F556FE60;
  v3[25] = &unk_1F55B6EE8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:26];
  v1 = _defaultOptions__defaults;
  _defaultOptions__defaults = v0;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[SSQueryIntentManagerConfig sharedInstance];
  }

  [sharedInstance_sharedInstance_4 update];
  v2 = sharedInstance_sharedInstance_4;

  return v2;
}

uint64_t __44__SSQueryIntentManagerConfig_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_4 = objc_alloc_init(SSQueryIntentManagerConfig);

  return MEMORY[0x1EEE66BB8]();
}

- (void)_updateInternalConfig:(id)config
{
  v24 = *MEMORY[0x1E69E9840];
  configCopy = config;
  v5 = [configCopy objectForKeyedSubscript:@"IntentModelingServerDomainsExcludedForDemotion"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [SSQueryIntentManagerConfig _parseServerDomainExclusionSet:v5];
      serverDomainDemotionExclusionSet = self->_serverDomainDemotionExclusionSet;
      self->_serverDomainDemotionExclusionSet = v6;

      v8 = SSGeneralLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_serverDomainDemotionExclusionSet;
        v20 = 138412546;
        v21 = @"IntentModelingServerDomainsExcludedForDemotion";
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_1D9F69000, v8, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Config] Processed value for %@ = %@", &v20, 0x16u);
      }
    }
  }

  v10 = [configCopy objectForKeyedSubscript:@"IntentModelingConditionalExtraSuggestions"];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [SSQueryIntentManagerConfig _parseConditionalExtraSuggestions:v10];
      conditionalExtraSuggestions = self->_conditionalExtraSuggestions;
      self->_conditionalExtraSuggestions = v11;

      v13 = SSGeneralLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_conditionalExtraSuggestions;
        v20 = 138412546;
        v21 = @"IntentModelingConditionalExtraSuggestions";
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&dword_1D9F69000, v13, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Config] Processed value for %@ = %@", &v20, 0x16u);
      }
    }
  }

  v15 = [configCopy objectForKeyedSubscript:@"IntentModelingIntentOverrides"];

  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [SSQueryIntentManagerConfig _parseIntentOverrides:v15];
      intentOverrides = self->_intentOverrides;
      self->_intentOverrides = v16;

      v18 = SSGeneralLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = self->_intentOverrides;
        v20 = 138412546;
        v21 = @"IntentModelingIntentOverrides";
        v22 = 2112;
        v23 = v19;
        _os_log_impl(&dword_1D9F69000, v18, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Config] Processed value for %@ = %@", &v20, 0x16u);
      }
    }
  }
}

- (void)updateWithResources:(id)resources defaults:(id)defaults
{
  v48 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  defaultsCopy = defaults;
  resources = self->_resources;
  location = &self->_resources;
  if (resourcesCopy && !resources)
  {
    objc_storeStrong(location, resources);
    v10 = SSGeneralLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *location;
      *buf = 138412290;
      v42 = v11;
      _os_log_impl(&dword_1D9F69000, v10, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Config] Resources: %@", buf, 0xCu);
    }

    resources = *location;
  }

  if (resources && [(SRResources *)resources hasUpdates])
  {
    baseConfig = self->_baseConfig;
    self->_baseConfig = 0;

    v13 = SSGeneralLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9F69000, v13, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Config] hasUpdates, clearing config", buf, 2u);
    }
  }

  v14 = self->_baseConfig;
  if (!v14)
  {
    v15 = SSGeneralLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9F69000, v15, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Config] Init config", buf, 2u);
    }

    if (!defaultsCopy)
    {
      defaultsCopy = [(SSQueryIntentManagerConfig *)self _defaultOptions];
    }

    v32 = defaultsCopy;
    selfCopy = self;
    v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:defaultsCopy];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [(NSDictionary *)v16 allKeys];
    v17 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    v34 = resourcesCopy;
    if (!v17)
    {
      v19 = 0;
      goto LABEL_32;
    }

    v18 = v17;
    v19 = 0;
    v20 = *v38;
    p_resources = &self->_resources;
    while (1)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v37 + 1) + 8 * i);
        if (*p_resources)
        {
          v24 = [(SRResources *)*p_resources objectForKey:*(*(&v37 + 1) + 8 * i)];

          if (v24)
          {
            [(NSDictionary *)v16 setObject:v24 forKeyedSubscript:v23];
            v25 = @"Override";
            v19 = v24;
            goto LABEL_26;
          }

          v19 = 0;
        }

        v25 = @"Loaded";
LABEL_26:
        v26 = SSGeneralLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [(NSDictionary *)v16 objectForKeyedSubscript:v23];
          *buf = 138412802;
          v42 = v25;
          v43 = 2112;
          v44 = v23;
          v45 = 2112;
          v46 = v27;
          _os_log_impl(&dword_1D9F69000, v26, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Config] %@ value for %@ = %@", buf, 0x20u);

          p_resources = location;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      if (!v18)
      {
LABEL_32:

        self = selfCopy;
        v28 = selfCopy->_baseConfig;
        selfCopy->_baseConfig = v16;
        v29 = v16;

        [(SSQueryIntentManagerConfig *)selfCopy _updateInternalConfig:v29];
        v14 = selfCopy->_baseConfig;
        resourcesCopy = v34;
        defaultsCopy = v32;
        break;
      }
    }
  }

  objc_storeStrong(&self->_config, v14);
  v30 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:300.0];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v30;
}

- (BOOL)expired
{
  if (!self->_expirationDate)
  {
    return 1;
  }

  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.0];
  v4 = [v3 compare:self->_expirationDate] == 1;

  return v4;
}

- (void)update:(BOOL)update
{
  if (update || [(SSQueryIntentManagerConfig *)self expired])
  {
    os_unfair_lock_lock(&sConfigLock);
    mEMORY[0x1E69D3E28] = [MEMORY[0x1E69D3E28] sharedResourcesManager];
    v5 = [mEMORY[0x1E69D3E28] resourcesForClient:@"Spotlight" options:&unk_1F55B7920];

    [(SSQueryIntentManagerConfig *)self updateWithResources:v5 defaults:0];
    os_unfair_lock_unlock(&sConfigLock);
  }
}

+ (id)_getParsecDomainMapping
{
  if (_getParsecDomainMapping_onceToken != -1)
  {
    +[SSQueryIntentManagerConfig _getParsecDomainMapping];
  }

  v3 = _getParsecDomainMapping__domainMapping;

  return v3;
}

void __53__SSQueryIntentManagerConfig__getParsecDomainMapping__block_invoke()
{
  v3[18] = *MEMORY[0x1E69E9840];
  v2[0] = @"stocks";
  v2[1] = @"sports";
  v3[0] = @"com.apple.parsec.stocks";
  v3[1] = @"com.apple.parsec.sports";
  v2[2] = @"maps";
  v2[3] = @"movies";
  v3[2] = @"com.apple.parsec.maps";
  v3[3] = @"com.apple.parsec.movies";
  v2[4] = @"kg";
  v2[5] = @"web";
  v3[4] = @"com.apple.parsec.kg";
  v3[5] = @"com.apple.parsec.web_index";
  v2[6] = @"dictionary";
  v2[7] = @"weather";
  v3[6] = @"com.apple.parsec.dictionary";
  v3[7] = @"com.apple.parsec.weather";
  v2[8] = @"webimages";
  v2[9] = @"webanswers";
  v3[8] = @"com.apple.parsec.web_images";
  v3[9] = @"com.apple.parsec.web_answer.passage";
  v2[10] = @"apps";
  v2[11] = @"news";
  v3[10] = @"com.apple.parsec.itunes.iosSoftware";
  v3[11] = @"com.apple.parsec.news";
  v2[12] = @"flights";
  v2[13] = @"itunes.album";
  v3[12] = @"com.apple.parsec.flights";
  v3[13] = @"com.apple.parsec.itunes.album";
  v2[14] = @"itunes.artist";
  v2[15] = @"itunes.book";
  v3[14] = @"com.apple.parsec.itunes.artist";
  v3[15] = @"com.apple.parsec.itunes.book";
  v2[16] = @"itunes.podcast";
  v2[17] = @"itunes.song";
  v3[16] = @"com.apple.parsec.itunes.podcast";
  v3[17] = @"com.apple.parsec.itunes.song";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:18];
  v1 = _getParsecDomainMapping__domainMapping;
  _getParsecDomainMapping__domainMapping = v0;
}

+ (id)_parseServerDomainExclusionSet:(id)set
{
  v21 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v4 = [MEMORY[0x1E695DFA8] set];
  if (setCopy)
  {
    v5 = setCopy;
    v6 = +[SSQueryIntentManagerConfig _getParsecDomainMapping];
    lowercaseString = [v5 lowercaseString];
    v8 = [lowercaseString componentsSeparatedByString:{@", "}];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (*(*(&v16 + 1) + 8 * i))
          {
            v14 = [v6 objectForKeyedSubscript:v16];
            if (v14)
            {
              [v4 addObject:v14];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  return v4;
}

+ (id)_parseConditionalExtraSuggestions:(id)suggestions
{
  v31 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (suggestionsCopy)
  {
    v24 = suggestionsCopy;
    v4 = suggestionsCopy;
    v5 = +[SSQueryIntentManagerConfig _getParsecDomainMapping];
    v23 = v4;
    lowercaseString = [v4 lowercaseString];
    v7 = [lowercaseString componentsSeparatedByString:{@", "}];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          if (v13 && [*(*(&v26 + 1) + 8 * i) containsString:@":"])
          {
            lowercaseString2 = [v13 lowercaseString];
            v15 = [lowercaseString2 componentsSeparatedByString:@":"];

            if (objc_msgSend_count(v15) == 2)
            {
              v16 = [v15 objectAtIndexedSubscript:0];
              v17 = [v5 objectForKeyedSubscript:v16];

              v18 = [v15 objectAtIndexedSubscript:1];
              integerValue = [v18 integerValue];

              if (v17)
              {
                v20 = integerValue < 1;
              }

              else
              {
                v20 = 1;
              }

              if (!v20)
              {
                v21 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
                [dictionary setValue:v21 forKey:v17];
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    suggestionsCopy = v24;
  }

  return dictionary;
}

+ (id)_parseIntentOverrides:(id)overrides
{
  v29 = *MEMORY[0x1E69E9840];
  overridesCopy = overrides;
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (overridesCopy)
  {
    v22 = overridesCopy;
    lowercaseString = [overridesCopy lowercaseString];
    v5 = [lowercaseString componentsSeparatedByString:{@", "}];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          if (v11 && [*(*(&v24 + 1) + 8 * i) containsString:@":"])
          {
            lowercaseString2 = [v11 lowercaseString];
            v13 = [lowercaseString2 componentsSeparatedByString:@":"];

            if (objc_msgSend_count(v13) == 2)
            {
              v14 = [v13 objectAtIndexedSubscript:0];
              intValue = [v14 intValue];

              v16 = [v13 objectAtIndexedSubscript:1];
              intValue2 = [v16 intValue];

              if (intValue <= 0x15 && intValue2 <= 0x15)
              {
                v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:intValue2];
                v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:intValue];
                [v23 setObject:v19 forKey:v20];
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    overridesCopy = v22;
  }

  return v23;
}

@end