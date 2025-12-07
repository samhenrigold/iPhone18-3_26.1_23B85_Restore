@interface ATXActionToWidgetConverter
+ (BOOL)isWidgetIntent:(id)intent validConversionFromActionIntent:(id)actionIntent;
- (ATXActionToWidgetConverter)initWithAllowsSendMessageIntentConversion:(BOOL)conversion;
- (ATXActionToWidgetConverter)initWithIntentMetadataCache:(id)cache widgetDescriptorCache:(id)descriptorCache infoConfidenceMapper:(id)mapper engagementRecordManager:(id)manager metadataProvider:(id)provider allowsSendMessageIntentConversion:(BOOL)conversion;
- (id)_convertedSuggestionFromInfoSuggestion:(id)suggestion originalSuggestion:(id)originalSuggestion;
- (id)_infoSuggestionForAction:(id)action;
- (id)_infoSuggestionForLinkActionContainer:(id)container;
- (id)_peopleInfoSuggestionForSendMessageIntent:(id)intent action:(id)action;
- (id)_selectPersonIntentForSendMessageIntent:(id)intent;
- (id)_widgetForIntent:(id)intent;
- (id)convertSuggestions:(id)suggestions;
@end

@implementation ATXActionToWidgetConverter

- (ATXActionToWidgetConverter)initWithAllowsSendMessageIntentConversion:(BOOL)conversion
{
  conversionCopy = conversion;
  v5 = +[ATXIntentMetadataCache sharedInstance];
  mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
  v7 = objc_opt_new();
  mEMORY[0x277CEB500] = [MEMORY[0x277CEB500] sharedInstance];
  v9 = objc_opt_new();
  v10 = [(ATXActionToWidgetConverter *)self initWithIntentMetadataCache:v5 widgetDescriptorCache:mEMORY[0x277CEB998] infoConfidenceMapper:v7 engagementRecordManager:mEMORY[0x277CEB500] metadataProvider:v9 allowsSendMessageIntentConversion:conversionCopy];

  return v10;
}

- (ATXActionToWidgetConverter)initWithIntentMetadataCache:(id)cache widgetDescriptorCache:(id)descriptorCache infoConfidenceMapper:(id)mapper engagementRecordManager:(id)manager metadataProvider:(id)provider allowsSendMessageIntentConversion:(BOOL)conversion
{
  cacheCopy = cache;
  descriptorCacheCopy = descriptorCache;
  mapperCopy = mapper;
  managerCopy = manager;
  providerCopy = provider;
  v23.receiver = self;
  v23.super_class = ATXActionToWidgetConverter;
  v18 = [(ATXActionToWidgetConverter *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_descriptorCache, descriptorCache);
    objc_storeStrong(&v19->_intentMetadataCache, cache);
    objc_storeStrong(&v19->_infoConfidenceMapper, mapper);
    objc_storeStrong(&v19->_engagementRecordManager, manager);
    objc_storeStrong(&v19->_metadataProvider, provider);
    v19->_allowsSendMessageIntentConversion = conversion;
  }

  return v19;
}

- (id)convertSuggestions:(id)suggestions
{
  v39 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = suggestionsCopy;
  v28 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v28)
  {
    v27 = *v31;
    *&v7 = 138412546;
    v24 = v7;
    selfCopy = self;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        atxActionExecutableObject = [v9 atxActionExecutableObject];
        if (atxActionExecutableObject)
        {
          v11 = [(ATXActionToWidgetConverter *)self _infoSuggestionForAction:atxActionExecutableObject];
        }

        else
        {
          v11 = 0;
        }

        linkActionExecutableObject = [v9 linkActionExecutableObject];
        if (linkActionExecutableObject)
        {
          v13 = [(ATXActionToWidgetConverter *)self _infoSuggestionForLinkActionContainer:linkActionExecutableObject];

          v11 = v13;
        }

        if (v11)
        {
          v14 = [(ATXActionToWidgetConverter *)self _convertedSuggestionFromInfoSuggestion:v11 originalSuggestion:v9];
          v15 = v14;
          if (v14)
          {
            v16 = v6;
            v17 = __atxlog_handle_blending(v14);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v24;
              v35 = v9;
              v36 = 2112;
              v37 = v15;
              _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "ATXActionToWidgetConverter: Converted action suggestion: %@, to widget suggestion: %@", buf, 0x16u);
            }

            clientModelSpecification = [v15 clientModelSpecification];
            clientModelId = [clientModelSpecification clientModelId];

            v20 = [v5 objectForKeyedSubscript:clientModelId];

            if (!v20)
            {
              v21 = objc_opt_new();
              [v5 setObject:v21 forKeyedSubscript:clientModelId];
            }

            v22 = [v5 objectForKeyedSubscript:clientModelId];
            [v22 addObject:v15];

            v6 = v16;
            [v16 addObject:v15];

            self = selfCopy;
          }
        }

        [v6 addObject:v9];
      }

      v28 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v28);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __49__ATXActionToWidgetConverter_convertSuggestions___block_invoke;
  v29[3] = &unk_278597070;
  v29[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v29];

  return v6;
}

- (id)_infoSuggestionForLinkActionContainer:(id)container
{
  containerCopy = container;
  cachedAppIntent = [containerCopy cachedAppIntent];

  if (cachedAppIntent)
  {
    cachedAppIntent2 = [containerCopy cachedAppIntent];
  }

  else
  {
    metadataProvider = self->_metadataProvider;
    bundleId = [containerCopy bundleId];
    action = [containerCopy action];
    identifier = [action identifier];
    v25 = 0;
    v11 = [(LNMetadataProvider *)metadataProvider actionForBundleIdentifier:bundleId andActionIdentifier:identifier error:&v25];
    cachedAppIntent2 = v25;

    if (cachedAppIntent2 || !v11)
    {
      launchId = __atxlog_handle_blending(v12);
      if (os_log_type_enabled(launchId, OS_LOG_TYPE_ERROR))
      {
        [(ATXActionToWidgetConverter *)containerCopy _infoSuggestionForLinkActionContainer:cachedAppIntent2, launchId];
      }

      v23 = 0;
      goto LABEL_12;
    }

    v13 = objc_alloc(MEMORY[0x277CD3A70]);
    bundleId2 = [containerCopy bundleId];
    action2 = [containerCopy action];
    cachedAppIntent2 = [v13 initWithAppBundleIdentifier:bundleId2 linkAction:action2 linkActionMetadata:v11];

    [containerCopy setCachedAppIntent:cachedAppIntent2];
  }

  v11 = [(ATXActionToWidgetConverter *)self _widgetForIntent:cachedAppIntent2];
  if (!v11)
  {
    v23 = 0;
    goto LABEL_13;
  }

  v16 = MEMORY[0x277D42040];
  cachedAppIntent2 = cachedAppIntent2;
  v17 = [v16 alloc];
  launchId = [cachedAppIntent2 launchId];
  extensionBundleIdentifier = [v11 extensionBundleIdentifier];
  kind = [v11 kind];
  atx_layoutOptions = [v11 atx_layoutOptions];
  appIntentIdentifier = [cachedAppIntent2 appIntentIdentifier];
  v23 = [v17 initWithAppBundleIdentifier:launchId widgetBundleIdentifier:extensionBundleIdentifier widgetKind:kind criterion:&stru_2839A6058 applicableLayouts:atx_layoutOptions suggestionIdentifier:appIntentIdentifier startDate:0 endDate:0 intent:cachedAppIntent2 metadata:0 relevanceScore:0];

LABEL_12:
LABEL_13:

  return v23;
}

- (id)_infoSuggestionForAction:(id)action
{
  actionCopy = action;
  intent = [actionCopy intent];
  v6 = intent;
  if (intent)
  {
    if (!self->_allowsSendMessageIntentConversion)
    {
      goto LABEL_9;
    }

    launchId = [intent launchId];
    if (([launchId isEqualToString:@"com.apple.MobileSMS"] & 1) == 0)
    {

      goto LABEL_9;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0 || ([(ATXActionToWidgetConverter *)self _peopleInfoSuggestionForSendMessageIntent:v6 action:actionCopy], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_9:
      v10 = [(ATXActionToWidgetConverter *)self _widgetForIntent:v6];
      if (v10)
      {
        v9 = createInfoSuggestion(actionCopy, v10, v6);
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_widgetForIntent:(id)intent
{
  v14 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || [(ATXIntentMetadataCache *)self->_intentMetadataCache isEligibleForWidgetsForIntent:intentCopy])
  {
    v5 = [(ATXWidgetDescriptorCache *)self->_descriptorCache homeScreenDescriptorForIntent:intentCopy];
    v6 = __atxlog_handle_blending(v5);
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412546;
        v11 = v5;
        v12 = 2112;
        v13 = intentCopy;
        _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXActionToWidgetConverter: Found descriptor %@ for eligible intent %@", &v10, 0x16u);
      }

      v8 = v5;
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(ATXActionToWidgetConverter *)intentCopy _widgetForIntent:v7];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_convertedSuggestionFromInfoSuggestion:(id)suggestion originalSuggestion:(id)originalSuggestion
{
  infoConfidenceMapper = self->_infoConfidenceMapper;
  originalSuggestionCopy = originalSuggestion;
  suggestionCopy = suggestion;
  scoreSpecification = [originalSuggestionCopy scoreSpecification];
  [suggestionCopy setConfidenceLevel:{-[ATXInfoToBlendingConfidenceMapper minInfoConfidenceLevelForBlendingConfidenceCategory:](infoConfidenceMapper, "minInfoConfidenceLevelForBlendingConfidenceCategory:", objc_msgSend(scoreSpecification, "suggestedConfidenceCategory"))}];

  v9 = MEMORY[0x277D42070];
  clientModelSpecification = [originalSuggestionCopy clientModelSpecification];
  clientModelId = [clientModelSpecification clientModelId];
  v12 = [v9 clientModelTypeFromClientModelId:clientModelId];

  v13 = [MEMORY[0x277D42070] actionConversionTypeForClientModelType:v12];
  v14 = MEMORY[0x277D42040];
  v15 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:v13];
  clientModelSpecification2 = [originalSuggestionCopy clientModelSpecification];
  clientModelVersion = [clientModelSpecification2 clientModelVersion];
  scoreSpecification2 = [originalSuggestionCopy scoreSpecification];
  [scoreSpecification2 rawScore];
  v20 = v19;
  scoreSpecification3 = [originalSuggestionCopy scoreSpecification];

  v22 = [v14 proactiveSuggestionForInfoSuggestion:suggestionCopy withClientModelId:v15 clientModelVersion:clientModelVersion rawScore:objc_msgSend(scoreSpecification3 confidenceCategory:{"suggestedConfidenceCategory"), v20}];

  return v22;
}

- (id)_peopleInfoSuggestionForSendMessageIntent:(id)intent action:(id)action
{
  actionCopy = action;
  v7 = [(ATXActionToWidgetConverter *)self _selectPersonIntentForSendMessageIntent:intent];
  if (v7)
  {
    v8 = [(ATXWidgetDescriptorCache *)self->_descriptorCache homeScreenDescriptorForIntent:v7];
    if (v8)
    {
      v9 = createInfoSuggestion(actionCopy, v8, v7);
    }

    else
    {
      v10 = __atxlog_handle_blending(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ATXActionToWidgetConverter _peopleInfoSuggestionForSendMessageIntent:v7 action:v10];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_selectPersonIntentForSendMessageIntent:(id)intent
{
  v27 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  recipients = [intentCopy recipients];
  v5 = [recipients count];

  if (v5 == 1)
  {
    recipients2 = [intentCopy recipients];
    firstObject = [recipients2 firstObject];

    contactIdentifier = [firstObject contactIdentifier];

    if (contactIdentifier)
    {
      v11 = objc_alloc(MEMORY[0x277CD3A70]);
      v23 = @"person";
      contactIdentifier2 = [firstObject contactIdentifier];
      v21[1] = @"displayString";
      v22[0] = contactIdentifier2;
      displayName = [firstObject displayName];
      v22[1] = displayName;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
      v24 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v16 = [v11 initWithAppBundleIdentifier:@"com.apple.PeopleViewService" appIntentIdentifier:@"SelectPersonIntent" serializedParameters:v15];

      if (v16)
      {
        goto LABEL_13;
      }

      v18 = __atxlog_handle_blending(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [ATXActionToWidgetConverter _selectPersonIntentForSendMessageIntent:v18];
      }
    }

    else
    {
      v18 = __atxlog_handle_blending(v10);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "ATXActionToWidgetConverter: Not converting INSendMessageIntent: no contact identifier", buf, 2u);
      }

      v16 = 0;
    }
  }

  else
  {
    firstObject = __atxlog_handle_blending(v6);
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      recipients3 = [intentCopy recipients];
      *buf = 134217984;
      v26 = [recipients3 count];
      _os_log_impl(&dword_2263AA000, firstObject, OS_LOG_TYPE_DEFAULT, "ATXActionToWidgetConverter: Not converting INSendMessageIntent: recipient count (%lu) is not 1", buf, 0xCu);
    }

    v16 = 0;
  }

LABEL_13:

  return v16;
}

+ (BOOL)isWidgetIntent:(id)intent validConversionFromActionIntent:(id)actionIntent
{
  intentCopy = intent;
  actionIntentCopy = actionIntent;
  launchId = [intentCopy launchId];
  if (([launchId isEqualToString:@"com.apple.PeopleViewService"] & 1) == 0)
  {

    goto LABEL_8;
  }

  launchId2 = [actionIntentCopy launchId];
  v9 = [launchId2 isEqualToString:@"com.apple.MobileSMS"];

  if (!v9)
  {
LABEL_8:
    v13 = [intentCopy atx_isEqualToIntent:actionIntentCopy];
    goto LABEL_30;
  }

  v10 = NSClassFromString(&cfstr_Insendmessagei.isa);
  v11 = actionIntentCopy;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = v12;

  recipients = [v14 recipients];
  v16 = [recipients count];

  if (v16 == 1)
  {
    recipients2 = [v14 recipients];
    v18 = [recipients2 objectAtIndexedSubscript:0];
    contactIdentifier = [v18 contactIdentifier];

    if (contactIdentifier)
    {
      v20 = NSClassFromString(&cfstr_Inappintent.isa);
      v21 = intentCopy;
      if (v20)
      {
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;

      if (v23)
      {
        serializedParameters = [v23 serializedParameters];
        v25 = [serializedParameters objectForKeyedSubscript:@"person"];
        v26 = NSClassFromString(&cfstr_Nsdictionary.isa);
        v27 = v25;
        if (v26)
        {
          if (objc_opt_isKindOfClass())
          {
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;

        v30 = [v29 objectForKeyedSubscript:@"identifier"];

        v13 = [contactIdentifier isEqualToString:v30];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_30:
  return v13;
}

- (void)_infoSuggestionForLinkActionContainer:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXActionToWidgetConverter: error fetching metadata for link action (%@): %@", &v3, 0x16u);
}

- (void)_widgetForIntent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXActionToWidgetConverter: Unable to find descriptor for eligible intent %@", &v2, 0xCu);
}

- (void)_peopleInfoSuggestionForSendMessageIntent:(uint64_t)a1 action:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXActionToWidgetConverter: Unable to find People widget descriptor for select person intent: %@", &v2, 0xCu);
}

@end