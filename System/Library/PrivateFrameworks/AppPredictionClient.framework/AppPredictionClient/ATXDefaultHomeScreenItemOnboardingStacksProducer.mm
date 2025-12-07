@interface ATXDefaultHomeScreenItemOnboardingStacksProducer
- (ATXDefaultHomeScreenItemOnboardingStacksProducer)initWithCandidateWidgets:(id)widgets cachedWidgetPersonalityToAppScore:(id)score personalityToDescriptorDictionary:(id)dictionary adblDrainClassification:(unint64_t)classification isiPad:(BOOL)pad isDayZeroExperience:(BOOL)experience shouldIncludeContactsWidget:(BOOL)widget cachedHasiCloudFamily:(id)self0 appLaunchCounts:(id)self1 isAmbient:(BOOL)self2;
- (ATXDefaultHomeScreenItemOnboardingStacksProducer)initWithOnboardingStackWidgetCache:(id)cache adblDrainClassification:(unint64_t)classification isiPad:(BOOL)pad shouldIncludeContactsWidget:(BOOL)widget appLaunchCounts:(id)counts;
- (BOOL)_shouldAddWidget:(id)widget andFilterFromApps:(id)apps;
- (BOOL)hasConfiguredHomeAccessoryControl;
- (id)_ambientOnboardingStacks;
- (id)_dayZeroOnboardingStacks;
- (id)_firstUnusedWidgetFromList:(id)list fallbackWidgets:(id)widgets usedPersonalities:(id)personalities size:(unint64_t)size;
- (id)_firstWidgetThatIsntUsedYet:(id)yet usedPersonalities:(id)personalities;
- (id)_personalizedAmbientOnboardingStacksForSize:(unint64_t)size stack1RequiredWidgetPersonalities:(id)personalities stack2RequiredWidgetPersonalities:(id)widgetPersonalities rankedWidgets:(id)widgets usedWidgetPersonalities:(id)usedWidgetPersonalities;
- (id)_personalizedOnboardingStackForSize:(unint64_t)size requiredWidgetPersonalities:(id)personalities conditionalWidgetPersonalities:(id)widgetPersonalities fallbackWidgetPersonalities:(id)fallbackWidgetPersonalities rankedThirdPartyWidgets:(id)widgets usedWidgetPersonalities:(id)usedWidgetPersonalities shouldAdd3PWidgetToStack:(BOOL)stack;
- (id)_personalizedOnboardingStacksForSize:(unint64_t)size requiredWidgetPersonalitiesForStack1:(id)stack1 requiredWidgetPersonalitiesForStack2:(id)stack2 conditionalWidgetPersonalitiesForStack1:(id)forStack1 conditionalWidgetPersonalitiesForStack2:(id)forStack2 fallbackWidgetPersonalitiesForStack1:(id)personalitiesForStack1 fallbackWidgetPersonalitiesForStack2:(id)personalitiesForStack2 rankedThirdPartyWidgets:(id)self0 blockedWidgetPersonalities:(id)self1;
- (id)_personalizedStacksForSize:(unint64_t)size requiredWidgetPersonalitiesPerStack:(id)stack rankedWidgets:(id)widgets usedWidgetPersonalities:(id)personalities maxNumberOfWidgetsPerStack:(unint64_t)perStack denyListOfExtensions:(id)extensions;
- (id)generatedStacksWithRequest:(id)request;
- (id)onboardingStacks;
- (id)personalizedOnboardingStacksWithRankingAlgorithm:(int)algorithm;
- (void)_addWidget:(id)widget toStack:(id)stack andMarkAsUsed:(id)used;
@end

@implementation ATXDefaultHomeScreenItemOnboardingStacksProducer

- (ATXDefaultHomeScreenItemOnboardingStacksProducer)initWithOnboardingStackWidgetCache:(id)cache adblDrainClassification:(unint64_t)classification isiPad:(BOOL)pad shouldIncludeContactsWidget:(BOOL)widget appLaunchCounts:(id)counts
{
  padCopy = pad;
  countsCopy = counts;
  cacheCopy = cache;
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  descriptorToAppLaunchData = [cacheCopy descriptorToAppLaunchData];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __162__ATXDefaultHomeScreenItemOnboardingStacksProducer_initWithOnboardingStackWidgetCache_adblDrainClassification_isiPad_shouldIncludeContactsWidget_appLaunchCounts___block_invoke;
  v26[3] = &unk_1E80C1C18;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  [descriptorToAppLaunchData enumerateKeysAndObjectsUsingBlock:v26];

  hasiCloudFamily = [cacheCopy hasiCloudFamily];

  LOBYTE(v25) = 0;
  LOBYTE(v24) = widget;
  v22 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self initWithCandidateWidgets:v20 cachedWidgetPersonalityToAppScore:v19 personalityToDescriptorDictionary:v18 adblDrainClassification:classification isiPad:padCopy isDayZeroExperience:0 shouldIncludeContactsWidget:v24 cachedHasiCloudFamily:hasiCloudFamily appLaunchCounts:countsCopy isAmbient:v25];

  return v22;
}

void __162__ATXDefaultHomeScreenItemOnboardingStacksProducer_initWithOnboardingStackWidgetCache_adblDrainClassification_isiPad_shouldIncludeContactsWidget_appLaunchCounts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 extensionIdentity];
  v8 = [v7 containerBundleIdentifier];
  v15 = [ATXDefaultHomeScreenItemProducerUtilities widgetDescriptorFromChronoDescriptor:v6 appBundleId:v8 rankType:1];

  v9 = [ATXWidgetPersonality alloc];
  v10 = [v6 extensionBundleIdentifier];
  v11 = [v6 kind];

  v12 = [(ATXWidgetPersonality *)v9 initWithExtensionBundleId:v10 kind:v11];
  [*(a1 + 32) addObject:v15];
  v13 = *(a1 + 40);
  v14 = [(ATXWidgetPersonality *)v12 stringRepresentation];
  [v13 setObject:v5 forKeyedSubscript:v14];

  [*(a1 + 48) setObject:v15 forKeyedSubscript:v12];
}

- (ATXDefaultHomeScreenItemOnboardingStacksProducer)initWithCandidateWidgets:(id)widgets cachedWidgetPersonalityToAppScore:(id)score personalityToDescriptorDictionary:(id)dictionary adblDrainClassification:(unint64_t)classification isiPad:(BOOL)pad isDayZeroExperience:(BOOL)experience shouldIncludeContactsWidget:(BOOL)widget cachedHasiCloudFamily:(id)self0 appLaunchCounts:(id)self1 isAmbient:(BOOL)self2
{
  widgetsCopy = widgets;
  scoreCopy = score;
  dictionaryCopy = dictionary;
  familyCopy = family;
  countsCopy = counts;
  v27.receiver = self;
  v27.super_class = ATXDefaultHomeScreenItemOnboardingStacksProducer;
  v20 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_stackableCandidates, widgets);
    objc_storeStrong(&v21->_cachedWidgetPersonalityToAppScore, score);
    objc_storeStrong(&v21->_personalityToDescriptorDictionary, dictionary);
    v21->_adblDrainClassification = classification;
    v21->_isiPad = pad;
    v21->_isDayZeroExperience = experience;
    v21->_shouldIncludeContactsWidget = widget;
    objc_storeStrong(&v21->_cachedHasiCloudFamily, family);
    objc_storeStrong(&v21->_appLaunchCounts, counts);
    v21->_isAmbient = ambient;
  }

  return v21;
}

- (id)onboardingStacks
{
  if ([(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self isAmbient])
  {
    _ambientOnboardingStacks = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _ambientOnboardingStacks];
  }

  else
  {
    if ([(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self isDayZeroExperience])
    {
      [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _dayZeroOnboardingStacks];
    }

    else
    {
      [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self personalizedOnboardingStacksWithRankingAlgorithm:3];
    }
    _ambientOnboardingStacks = ;
  }

  return _ambientOnboardingStacks;
}

- (id)generatedStacksWithRequest:(id)request
{
  v80 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  clientIdentity = [requestCopy clientIdentity];
  widgetClient = [clientIdentity widgetClient];

  if (widgetClient == 2)
  {
    unsignedIntegerValue = 2;
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  numberOfStacks = [requestCopy numberOfStacks];

  if (numberOfStacks)
  {
    numberOfStacks2 = [requestCopy numberOfStacks];
    unsignedIntegerValue = [numberOfStacks2 unsignedIntegerValue];
  }

  maximumWidgetsPerStack = [requestCopy maximumWidgetsPerStack];

  if (maximumWidgetsPerStack)
  {
    maximumWidgetsPerStack2 = [requestCopy maximumWidgetsPerStack];
    unsignedIntegerValue2 = [maximumWidgetsPerStack2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 3;
  }

  array = [MEMORY[0x1E695DF70] array];
  v12 = __atxlog_handle_home_screen(array);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v77 = "[ATXDefaultHomeScreenItemOnboardingStacksProducer generatedStacksWithRequest:]";
    v78 = 2048;
    v79 = unsignedIntegerValue;
    _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "%s: Number of Stacks being requested %lu", buf, 0x16u);
  }

  v64 = requestCopy;
  if (unsignedIntegerValue == 1)
  {
    if (widgetClient == 3)
    {
      v13 = @"dayZeroDefaultStackTvOS";
    }

    else
    {
      v13 = @"carPlayOnboardingRequiredWidgetsForDefaultStack1-only";
    }

    v14 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v13 launchCounts:self->_appLaunchCounts];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 _pas_mappedArrayWithTransform:&__block_literal_global_21];
      v17 = __atxlog_handle_home_screen(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v77 = v13;
        v78 = 2112;
        v79 = v16;
        _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "Required widgets for Stack with key %@ are %@", buf, 0x16u);
      }

      [array addObject:v15];
    }

    else
    {
      [array addObject:MEMORY[0x1E695E0F0]];
    }
  }

  else
  {
    hasConfiguredHomeAccessoryControl = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self hasConfiguredHomeAccessoryControl];
    if (unsignedIntegerValue)
    {
      v19 = hasConfiguredHomeAccessoryControl;
      v20 = 1;
      do
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"carPlayOnboardingRequiredWidgetsForDefaultStack%ld", v20];
        v22 = v21;
        if (widgetClient == 3)
        {

          v22 = @"dayZeroDefaultStackTvOS";
        }

        v23 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v22 launchCounts:self->_appLaunchCounts];
        if (v23)
        {
          v24 = v23;
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __79__ATXDefaultHomeScreenItemOnboardingStacksProducer_generatedStacksWithRequest___block_invoke_94;
          v73[3] = &__block_descriptor_33_e30_B16__0__ATXWidgetPersonality_8l;
          v74 = v19;
          v25 = [v23 _pas_filteredArrayWithTest:v73];

          v26 = [v25 _pas_mappedArrayWithTransform:&__block_literal_global_101];
          v27 = __atxlog_handle_home_screen(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v77 = v22;
            v78 = 2112;
            v79 = v26;
            _os_log_impl(&dword_1BF549000, v27, OS_LOG_TYPE_DEFAULT, "Required widgets for Stack with key %@ are %@", buf, 0x16u);
          }

          [array addObject:v25];
        }

        else
        {
          [array addObject:MEMORY[0x1E695E0F0]];
        }

        ++v20;
        --unsignedIntegerValue;
      }

      while (unsignedIntegerValue);
    }
  }

  v28 = [[ATXDefaultHomeScreenItemRanker alloc] initWithCachedWidgetPersonalityToAppScore:self->_cachedWidgetPersonalityToAppScore spotlightAppLaunchHistogram:0 appLaunchCounts:self->_appLaunchCounts];
  v29 = [(ATXDefaultHomeScreenItemRanker *)v28 widgetsBySortingAndFilteringWidgetsUsingOnboardingStacksAlgorithm:self->_stackableCandidates algorithm:2 regularlyUsedThreshold:7uLL];
  v30 = [v29 mutableCopy];

  [ATXDefaultHomeScreenItemRanker filterOutDuplicateWidgetsFromSameAppBundleId:v30];
  _blockedWidgetPersonalities = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _blockedWidgetPersonalities];
  denyListOfExtensions = [v64 denyListOfExtensions];
  v60 = denyListOfExtensions;
  if (denyListOfExtensions)
  {
    v33 = denyListOfExtensions;
  }

  else
  {
    v33 = MEMORY[0x1E695E0F0];
  }

  v34 = [MEMORY[0x1E695DFD8] setWithArray:v33];
  stackLayoutSize = [v64 stackLayoutSize];
  clientIdentity2 = [v64 clientIdentity];
  v63 = v28;
  if ([clientIdentity2 widgetClient] == 2)
  {

    v37 = 0x1E695D000;
  }

  else
  {
    clientIdentity3 = [v64 clientIdentity];
    v39 = v34;
    widgetClient2 = [clientIdentity3 widgetClient];

    v41 = widgetClient2 == 3;
    v34 = v39;
    v37 = 0x1E695D000uLL;
    if (!v41)
    {
      goto LABEL_40;
    }
  }

  stackLayoutSize = 0;
LABEL_40:
  v61 = _blockedWidgetPersonalities;
  v62 = v30;
  v59 = v34;
  v42 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedStacksForSize:stackLayoutSize requiredWidgetPersonalitiesPerStack:array rankedWidgets:v30 usedWidgetPersonalities:_blockedWidgetPersonalities maxNumberOfWidgetsPerStack:unsignedIntegerValue2 denyListOfExtensions:v34];
  array2 = [*(v37 + 3952) array];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v42;
  v43 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (!v43)
  {
    goto LABEL_62;
  }

  v44 = v43;
  v45 = *v70;
  v46 = MEMORY[0x1E695E0F0];
  do
  {
    v47 = 0;
    do
    {
      if (*v70 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v48 = *(*(&v69 + 1) + 8 * v47);
      if (stackLayoutSize > 2)
      {
        if ((stackLayoutSize - 3) < 2)
        {
          v52 = v48;
          v50 = v46;
          v51 = v46;
          v49 = v46;
          goto LABEL_60;
        }

LABEL_54:
        v53 = __atxlog_handle_home_screen(v43);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v77 = stackLayoutSize;
          _os_log_error_impl(&dword_1BF549000, v53, OS_LOG_TYPE_ERROR, "Unknown ATXStackLayoutSize: %lu", buf, 0xCu);
        }

        v50 = v46;
LABEL_57:
        v51 = v46;
LABEL_58:
        v49 = v46;
        goto LABEL_59;
      }

      if (!stackLayoutSize)
      {
        v50 = v48;
        goto LABEL_57;
      }

      if (stackLayoutSize == 1)
      {
        v51 = v48;
        v50 = v46;
        goto LABEL_58;
      }

      if (stackLayoutSize != 2)
      {
        goto LABEL_54;
      }

      v49 = v48;
      v50 = v46;
      v51 = v46;
LABEL_59:
      v52 = v46;
LABEL_60:
      LOBYTE(v58) = [MEMORY[0x1E69C5CF8] isiPad];
      v54 = [ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:v50 mediumStack:v51 largeStack:v49 extraLargeStack:v52 suggestedSize:stackLayoutSize maxWidgetsPerStack:unsignedIntegerValue2 isiPad:v58];
      [array2 addObject:v54];

      ++v47;
    }

    while (v44 != v47);
    v43 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
    v44 = v43;
  }

  while (v43);
LABEL_62:

  v55 = [ATXDefaultHomeScreenItemOnboardingStacks alloc];
  v56 = [(ATXDefaultHomeScreenItemOnboardingStacks *)v55 initWithOnboardingStacks:array2 sortedThirdPartyWidgets:MEMORY[0x1E695E0F0]];

  return v56;
}

uint64_t __79__ATXDefaultHomeScreenItemOnboardingStacksProducer_generatedStacksWithRequest___block_invoke_94(uint64_t a1, void *a2)
{
  v3 = [a2 extensionBundleId];
  if (![v3 isEqualToString:@"com.apple.Home.HomeWidget.Interactive"])
  {

    return 1;
  }

  v4 = *(a1 + 32);

  if (v4)
  {
    return 1;
  }

  v6 = __atxlog_handle_home_screen(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "No Home accessory is configured. Filtering out default Home widget", v8, 2u);
  }

  return 0;
}

- (id)_ambientOnboardingStacks
{
  v3 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:@"ambientOnboardingDefaultStack1RequiredWidgets"];
  v4 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:@"ambientOnboardingDefaultStack2RequiredWidgets"];
  if ([(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self isDayZeroExperience])
  {
    v5 = [ATXDefaultHomeScreenItemProducerUtilities stackFromDefaultStackPersonalities:v3 suggestedSize:0 maxWidgetsPerStack:6 personalityToDescriptorDictionary:self->_personalityToDescriptorDictionary isiPad:self->_isiPad];
    v6 = [ATXDefaultHomeScreenItemProducerUtilities stackFromDefaultStackPersonalities:v4 suggestedSize:0 maxWidgetsPerStack:6 personalityToDescriptorDictionary:self->_personalityToDescriptorDictionary isiPad:self->_isiPad];
    v7 = [ATXDefaultHomeScreenItemOnboardingStacks alloc];
    v8 = [(ATXDefaultHomeScreenItemOnboardingStacks *)v7 initWithOnboardingStack1:v5 stack2:v6 sortedThirdPartyWidgets:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v5 = [[ATXDefaultHomeScreenItemRanker alloc] initWithCachedWidgetPersonalityToAppScore:self->_cachedWidgetPersonalityToAppScore spotlightAppLaunchHistogram:0 appLaunchCounts:self->_appLaunchCounts];
    v9 = [(ATXDefaultHomeScreenItemRanker *)v5 widgetsBySortingAndFilteringWidgetsUsingOnboardingStacksAlgorithm:self->_stackableCandidates algorithm:2 regularlyUsedThreshold:7uLL];
    v6 = [v9 mutableCopy];

    [ATXDefaultHomeScreenItemRanker filterOutDuplicateWidgetsFromSameAppBundleId:v6];
    _blockedWidgetPersonalities = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _blockedWidgetPersonalities];
    v11 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedAmbientOnboardingStacksForSize:0 stack1RequiredWidgetPersonalities:v3 stack2RequiredWidgetPersonalities:v4 rankedWidgets:v6 usedWidgetPersonalities:_blockedWidgetPersonalities];
    v20 = v3;
    first = [v11 first];
    LOBYTE(v18) = self->_isiPad;
    v13 = MEMORY[0x1E695E0F0];
    v14 = [ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:first mediumStack:MEMORY[0x1E695E0F0] largeStack:MEMORY[0x1E695E0F0] extraLargeStack:MEMORY[0x1E695E0F0] suggestedSize:0 maxWidgetsPerStack:6 isiPad:v18];

    second = [v11 second];
    LOBYTE(v19) = self->_isiPad;
    v16 = [ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:second mediumStack:v13 largeStack:v13 extraLargeStack:v13 suggestedSize:0 maxWidgetsPerStack:6 isiPad:v19];

    v8 = [[ATXDefaultHomeScreenItemOnboardingStacks alloc] initWithOnboardingStack1:v14 stack2:v16 sortedThirdPartyWidgets:v13];
    v3 = v20;
  }

  return v8;
}

- (id)_dayZeroOnboardingStacks
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_isiPad)
  {
    v3 = @"dayZeroOnboardingDefaultStack1iPad";
  }

  else
  {
    v3 = @"dayZeroOnboardingDefaultStack1iPhone";
  }

  v4 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v3];
  if (self->_isiPad)
  {
    v5 = @"dayZeroOnboardingDefaultStack2iPad";
  }

  else
  {
    v5 = @"dayZeroOnboardingDefaultStack2iPhone";
  }

  v6 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v5];
  v7 = objc_opt_new();
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v9 = [v7 isTodayWidgetPermittedForLocale:currentLocale];

  v11 = __atxlog_handle_home_screen(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      v19 = 136315138;
      v20 = "[ATXDefaultHomeScreenItemOnboardingStacksProducer _dayZeroOnboardingStacks]";
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "%s: allowing news widget", &v19, 0xCu);
    }
  }

  else
  {
    if (v12)
    {
      v19 = 136315138;
      v20 = "[ATXDefaultHomeScreenItemOnboardingStacksProducer _dayZeroOnboardingStacks]";
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "%s: not allowing news widget", &v19, 0xCu);
    }

    v13 = [v4 _pas_filteredArrayWithTest:&__block_literal_global_109];

    [v6 _pas_filteredArrayWithTest:&__block_literal_global_111];
    v6 = v11 = v6;
    v4 = v13;
  }

  v14 = [ATXDefaultHomeScreenItemProducerUtilities stackFromDefaultStackPersonalities:v4 suggestedSize:0 maxWidgetsPerStack:4 personalityToDescriptorDictionary:self->_personalityToDescriptorDictionary isiPad:self->_isiPad];
  v15 = [ATXDefaultHomeScreenItemProducerUtilities stackFromDefaultStackPersonalities:v6 suggestedSize:0 maxWidgetsPerStack:4 personalityToDescriptorDictionary:self->_personalityToDescriptorDictionary isiPad:self->_isiPad];
  v16 = [ATXDefaultHomeScreenItemOnboardingStacks alloc];
  v17 = [(ATXDefaultHomeScreenItemOnboardingStacks *)v16 initWithOnboardingStack1:v14 stack2:v15 sortedThirdPartyWidgets:MEMORY[0x1E695E0F0]];

  return v17;
}

uint64_t __76__ATXDefaultHomeScreenItemOnboardingStacksProducer__dayZeroOnboardingStacks__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 stringRepresentation];
  if ([v3 isEqualToString:@"com.apple.news.widget:today"])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 stringRepresentation];
    v4 = [v5 isEqualToString:@"com.apple.news.widget:topic"] ^ 1;
  }

  return v4;
}

uint64_t __76__ATXDefaultHomeScreenItemOnboardingStacksProducer__dayZeroOnboardingStacks__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 stringRepresentation];
  if ([v3 isEqualToString:@"com.apple.news.widget:today"])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 stringRepresentation];
    v4 = [v5 isEqualToString:@"com.apple.news.widget:topic"] ^ 1;
  }

  return v4;
}

- (id)personalizedOnboardingStacksWithRankingAlgorithm:(int)algorithm
{
  v3 = *&algorithm;
  v64 = *MEMORY[0x1E69E9840];
  v5 = [[ATXDefaultHomeScreenItemRanker alloc] initWithCachedWidgetPersonalityToAppScore:self->_cachedWidgetPersonalityToAppScore spotlightAppLaunchHistogram:0 appLaunchCounts:self->_appLaunchCounts];
  v55 = [ATXDefaultHomeScreenItemProducerUtilities splitDescriptorsIntoFirstPartyAndThirdParty:self->_stackableCandidates];
  second = [v55 second];
  v56 = v5;
  v7 = [(ATXDefaultHomeScreenItemRanker *)v5 widgetsBySortingAndFilteringWidgetsUsingOnboardingStacksAlgorithm:second algorithm:v3 regularlyUsedThreshold:7uLL];

  v9 = __atxlog_handle_home_screen(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v61 = "[ATXDefaultHomeScreenItemOnboardingStacksProducer personalizedOnboardingStacksWithRankingAlgorithm:]";
    v62 = 2048;
    v63 = [v7 count];
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "%s: %lu available 3P widgets to add to stack (all sizes)", buf, 0x16u);
  }

  if (self->_isiPad)
  {
    v10 = @"personalizedOnboardingDefaultStack1RequiredWidgetsiPad";
  }

  else
  {
    v10 = @"personalizedOnboardingDefaultStack1RequiredWidgetsiPhone";
  }

  v11 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v10];
  if (self->_isiPad)
  {
    v12 = @"personalizedOnboardingDefaultStack2RequiredWidgetsiPad";
  }

  else
  {
    v12 = @"personalizedOnboardingDefaultStack2RequiredWidgetsiPhone";
  }

  v13 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v12];
  if (self->_isiPad)
  {
    v14 = @"personalizedOnboardingDefaultStack1ConditionalWidgetsiPad";
  }

  else
  {
    v14 = @"personalizedOnboardingDefaultStack1ConditionalWidgetsiPhone";
  }

  v15 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v14];
  if (self->_isiPad)
  {
    v16 = @"personalizedOnboardingDefaultStack2ConditionalWidgetsiPad";
  }

  else
  {
    v16 = @"personalizedOnboardingDefaultStack2ConditionalWidgetsiPhone";
  }

  v17 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v16];
  if (self->_isiPad)
  {
    v18 = @"personalizedOnboardingDefaultStack1FallbackWidgetsiPad";
  }

  else
  {
    v18 = @"personalizedOnboardingDefaultStack1FallbackWidgetsiPhone";
  }

  v19 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v18];
  if (self->_isiPad)
  {
    v20 = @"personalizedOnboardingDefaultStack2FallbackWidgetsiPad";
  }

  else
  {
    v20 = @"personalizedOnboardingDefaultStack2FallbackWidgetsiPhone";
  }

  v21 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v20];
  _blockedWidgetPersonalities = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _blockedWidgetPersonalities];
  v59 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedOnboardingStacksForSize:0 requiredWidgetPersonalitiesForStack1:v11 requiredWidgetPersonalitiesForStack2:v13 conditionalWidgetPersonalitiesForStack1:v15 conditionalWidgetPersonalitiesForStack2:v17 fallbackWidgetPersonalitiesForStack1:v19 fallbackWidgetPersonalitiesForStack2:v21 rankedThirdPartyWidgets:v7 blockedWidgetPersonalities:_blockedWidgetPersonalities];
  v58 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedOnboardingStacksForSize:1 requiredWidgetPersonalitiesForStack1:v11 requiredWidgetPersonalitiesForStack2:v13 conditionalWidgetPersonalitiesForStack1:v15 conditionalWidgetPersonalitiesForStack2:v17 fallbackWidgetPersonalitiesForStack1:v19 fallbackWidgetPersonalitiesForStack2:v21 rankedThirdPartyWidgets:v7 blockedWidgetPersonalities:_blockedWidgetPersonalities];
  v57 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedOnboardingStacksForSize:2 requiredWidgetPersonalitiesForStack1:v11 requiredWidgetPersonalitiesForStack2:v13 conditionalWidgetPersonalitiesForStack1:v15 conditionalWidgetPersonalitiesForStack2:v17 fallbackWidgetPersonalitiesForStack1:v19 fallbackWidgetPersonalitiesForStack2:v21 rankedThirdPartyWidgets:v7 blockedWidgetPersonalities:_blockedWidgetPersonalities];
  v53 = v11;
  v54 = v7;
  v51 = v15;
  v52 = v13;
  v49 = v19;
  v50 = v17;
  v48 = v21;
  if (self->_isiPad)
  {
    v23 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedOnboardingStacksForSize:4 requiredWidgetPersonalitiesForStack1:v11 requiredWidgetPersonalitiesForStack2:v13 conditionalWidgetPersonalitiesForStack1:v15 conditionalWidgetPersonalitiesForStack2:v17 fallbackWidgetPersonalitiesForStack1:v19 fallbackWidgetPersonalitiesForStack2:v21 rankedThirdPartyWidgets:v7 blockedWidgetPersonalities:_blockedWidgetPersonalities];
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x1E69C5D98]);
    v23 = [v24 initWithFirst:MEMORY[0x1E695E0F0] second:MEMORY[0x1E695E0F0]];
  }

  v25 = v23;
  first = [v59 first];
  first2 = [v58 first];
  first3 = [v57 first];
  first4 = [v25 first];
  LOBYTE(v46) = self->_isiPad;
  v30 = [ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:"defaultWidgetStackFromSmallStack:mediumStack:largeStack:extraLargeStack:suggestedSize:maxWidgetsPerStack:isiPad:" mediumStack:first largeStack:first2 extraLargeStack:first3 suggestedSize:first4 maxWidgetsPerStack:v46 isiPad:?];

  v32 = __atxlog_handle_home_screen(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    compactDescription = [v30 compactDescription];
    adblDrainClassification = self->_adblDrainClassification;
    *buf = 138543618;
    v61 = compactDescription;
    v62 = 2048;
    v63 = adblDrainClassification;
    _os_log_impl(&dword_1BF549000, v32, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: generated personalized onboarding stack 1:%{public}@, battery drain: %lu", buf, 0x16u);
  }

  second2 = [v59 second];
  second3 = [v58 second];
  second4 = [v57 second];
  second5 = [v25 second];
  LOBYTE(v47) = self->_isiPad;
  v39 = [ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:"defaultWidgetStackFromSmallStack:mediumStack:largeStack:extraLargeStack:suggestedSize:maxWidgetsPerStack:isiPad:" mediumStack:second2 largeStack:second3 extraLargeStack:second4 suggestedSize:second5 maxWidgetsPerStack:v47 isiPad:?];

  v41 = __atxlog_handle_home_screen(v40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    compactDescription2 = [v30 compactDescription];
    v43 = self->_adblDrainClassification;
    *buf = 138543618;
    v61 = compactDescription2;
    v62 = 2048;
    v63 = v43;
    _os_log_impl(&dword_1BF549000, v41, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: generated personalized onboarding stack 2:%{public}@, battery drain: %lu", buf, 0x16u);
  }

  v44 = [[ATXDefaultHomeScreenItemOnboardingStacks alloc] initWithOnboardingStack1:v30 stack2:v39 sortedThirdPartyWidgets:v54];

  return v44;
}

- (id)_personalizedAmbientOnboardingStacksForSize:(unint64_t)size stack1RequiredWidgetPersonalities:(id)personalities stack2RequiredWidgetPersonalities:(id)widgetPersonalities rankedWidgets:(id)widgets usedWidgetPersonalities:(id)usedWidgetPersonalities
{
  v61 = *MEMORY[0x1E69E9840];
  personalitiesCopy = personalities;
  widgetPersonalitiesCopy = widgetPersonalities;
  widgetsCopy = widgets;
  usedWidgetPersonalitiesCopy = usedWidgetPersonalities;
  v48 = objc_opt_new();
  v14 = objc_opt_new();
  selfCopy = self;
  sizeCopy = size;
  v15 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:personalitiesCopy size:size personalityToDescriptorDictionary:self->_personalityToDescriptorDictionary];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v54;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v54 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v53 + 1) + 8 * i);
        v21 = [ATXWidgetPersonality stringRepresentationForATXHomeScreenWidgetDescriptor:v20];
        v22 = objc_msgSend_containsObject_(usedWidgetPersonalitiesCopy);
        if (v22)
        {
          v23 = __atxlog_handle_home_screen(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v59 = v21;
            _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: not adding required widget %{public}@ to first ambient onboarding stack because it is already used (or on deny list)", buf, 0xCu);
          }
        }

        else
        {
          [v48 addObject:v20];
          [usedWidgetPersonalitiesCopy addObject:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v17);
  }

  v44 = personalitiesCopy;
  v24 = [personalitiesCopy _pas_mappedArrayWithTransform:&__block_literal_global_115];
  [usedWidgetPersonalitiesCopy addObjectsFromArray:v24];

  v25 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:widgetPersonalitiesCopy size:sizeCopy personalityToDescriptorDictionary:selfCopy->_personalityToDescriptorDictionary];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v26 = [v25 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v50;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v50 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v49 + 1) + 8 * j);
        v31 = [ATXWidgetPersonality stringRepresentationForATXHomeScreenWidgetDescriptor:v30];
        v32 = objc_msgSend_containsObject_(usedWidgetPersonalitiesCopy);
        if (v32)
        {
          v33 = __atxlog_handle_home_screen(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v59 = v31;
            _os_log_impl(&dword_1BF549000, v33, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: not adding required widget %{public}@ to second ambient onboarding stack because it is already used (or on deny list)", buf, 0xCu);
          }
        }

        else
        {
          [v14 addObject:v30];
          [usedWidgetPersonalitiesCopy addObject:v31];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v27);
  }

  v34 = [widgetPersonalitiesCopy _pas_mappedArrayWithTransform:&__block_literal_global_118];
  [usedWidgetPersonalitiesCopy addObjectsFromArray:v34];

  if ([v48 count] <= 5)
  {
    v35 = MEMORY[0x1E695E0F0];
    do
    {
      v36 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy _firstUnusedWidgetFromList:widgetsCopy fallbackWidgets:v35 usedPersonalities:usedWidgetPersonalitiesCopy size:sizeCopy];
      if (!v36)
      {
        break;
      }

      v37 = v36;
      [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy _addWidget:v36 toStack:v48 andMarkAsUsed:usedWidgetPersonalitiesCopy];
    }

    while ([v48 count] < 6);
  }

  if ([v14 count] <= 5)
  {
    v38 = MEMORY[0x1E695E0F0];
    do
    {
      v39 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy _firstUnusedWidgetFromList:widgetsCopy fallbackWidgets:v38 usedPersonalities:usedWidgetPersonalitiesCopy size:sizeCopy];
      if (!v39)
      {
        break;
      }

      v40 = v39;
      [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy _addWidget:v39 toStack:v14 andMarkAsUsed:usedWidgetPersonalitiesCopy];
    }

    while ([v14 count] < 6);
  }

  v41 = [objc_alloc(MEMORY[0x1E69C5D98]) initWithFirst:v48 second:v14];

  return v41;
}

- (id)_personalizedStacksForSize:(unint64_t)size requiredWidgetPersonalitiesPerStack:(id)stack rankedWidgets:(id)widgets usedWidgetPersonalities:(id)personalities maxNumberOfWidgetsPerStack:(unint64_t)perStack denyListOfExtensions:(id)extensions
{
  perStackCopy = perStack;
  v68 = *MEMORY[0x1E69E9840];
  stackCopy = stack;
  widgetsCopy = widgets;
  personalitiesCopy = personalities;
  extensionsCopy = extensions;
  v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(stackCopy, "count")}];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = stackCopy;
  v45 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v45)
  {
    v43 = *v60;
    do
    {
      v14 = 0;
      do
      {
        if (*v60 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v14;
        v15 = *(*(&v59 + 1) + 8 * v14);
        array = [MEMORY[0x1E695DF70] array];
        v46 = v15;
        v17 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v15 size:size personalityToDescriptorDictionary:self->_personalityToDescriptorDictionary];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v18 = [v17 countByEnumeratingWithState:&v55 objects:v66 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v56;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v56 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v55 + 1) + 8 * i);
              v23 = [ATXWidgetPersonality stringRepresentationForATXHomeScreenWidgetDescriptor:v22];
              v24 = objc_msgSend_containsObject_(personalitiesCopy);
              if (v24)
              {
                v25 = __atxlog_handle_home_screen(v24);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v65 = v23;
                  v26 = v25;
                  v27 = "ATXDefaultHomeScreenItemProducer: not adding required widget %{public}@ to stack because it is already used";
                  goto LABEL_17;
                }

                goto LABEL_18;
              }

              v28 = [ATXDefaultHomeScreenItemManager shouldFilterOutWidgetDescriptorDueToDenyList:v22 fromExcludedWidgetsWithIdentifiers:extensionsCopy];
              if (v28)
              {
                v25 = __atxlog_handle_home_screen(v28);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v65 = v23;
                  v26 = v25;
                  v27 = "ATXDefaultHomeScreenItemProducer: not adding required widget %{public}@ to stack because it is in client's deny list";
LABEL_17:
                  _os_log_impl(&dword_1BF549000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
                }

LABEL_18:

                goto LABEL_20;
              }

              [array addObject:v22];
              [personalitiesCopy addObject:v23];
LABEL_20:
            }

            v19 = [v17 countByEnumeratingWithState:&v55 objects:v66 count:16];
          }

          while (v19);
        }

        v29 = [v46 _pas_mappedArrayWithTransform:&__block_literal_global_121];
        [personalitiesCopy addObjectsFromArray:v29];

        [v44 addObject:array];
        v14 = v47 + 1;
      }

      while (v47 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v45);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v30 = v44;
  v31 = [v30 countByEnumeratingWithState:&v51 objects:v63 count:16];
  v32 = perStackCopy;
  if (v31)
  {
    v33 = v31;
    v34 = *v52;
    v35 = MEMORY[0x1E695E0F0];
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v52 != v34)
        {
          objc_enumerationMutation(v30);
        }

        v37 = *(*(&v51 + 1) + 8 * j);
        while ([v37 count] < v32)
        {
          v38 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _firstUnusedWidgetFromList:widgetsCopy fallbackWidgets:v35 usedPersonalities:personalitiesCopy size:size];
          if (!v38)
          {
            break;
          }

          v39 = v38;
          if (![ATXDefaultHomeScreenItemManager shouldFilterOutWidgetDescriptorDueToDenyList:v38 fromExcludedWidgetsWithIdentifiers:extensionsCopy])
          {
            [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _addWidget:v39 toStack:v37 andMarkAsUsed:personalitiesCopy];
          }
        }
      }

      v33 = [v30 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v33);
  }

  return v30;
}

- (id)_personalizedOnboardingStacksForSize:(unint64_t)size requiredWidgetPersonalitiesForStack1:(id)stack1 requiredWidgetPersonalitiesForStack2:(id)stack2 conditionalWidgetPersonalitiesForStack1:(id)forStack1 conditionalWidgetPersonalitiesForStack2:(id)forStack2 fallbackWidgetPersonalitiesForStack1:(id)personalitiesForStack1 fallbackWidgetPersonalitiesForStack2:(id)personalitiesForStack2 rankedThirdPartyWidgets:(id)self0 blockedWidgetPersonalities:(id)self1
{
  v41 = *MEMORY[0x1E69E9840];
  personalitiesCopy = personalities;
  personalitiesForStack2Copy = personalitiesForStack2;
  personalitiesForStack1Copy = personalitiesForStack1;
  forStack2Copy = forStack2;
  forStack1Copy = forStack1;
  stack2Copy = stack2;
  stack1Copy = stack1;
  v21 = [ATXDefaultHomeScreenItemProducerUtilities widgets:widgets filteredForSize:size];
  v22 = [v21 mutableCopy];

  v23 = __atxlog_handle_home_screen([ATXDefaultHomeScreenItemRanker filterOutDuplicateWidgetsFromSameAppBundleId:v22]);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v36 = "[ATXDefaultHomeScreenItemOnboardingStacksProducer _personalizedOnboardingStacksForSize:requiredWidgetPersonalitiesForStack1:requiredWidgetPersonalitiesForStack2:conditionalWidgetPersonalitiesForStack1:conditionalWidgetPersonalitiesForStack2:fallbackWidgetPersonalitiesForStack1:fallbackWidgetPersonalitiesForStack2:rankedThirdPartyWidgets:blockedWidgetPersonalities:]";
    v37 = 2048;
    v38 = [v22 count];
    v39 = 2048;
    sizeCopy = size;
    _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_DEFAULT, "%s: %lu available 3P widgets for onboarding stack of size:%lu)", buf, 0x20u);
  }

  v24 = [personalitiesCopy mutableCopy];
  LOBYTE(v29) = 1;
  v25 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedOnboardingStackForSize:size requiredWidgetPersonalities:stack1Copy conditionalWidgetPersonalities:forStack1Copy fallbackWidgetPersonalities:personalitiesForStack1Copy rankedThirdPartyWidgets:v22 usedWidgetPersonalities:v24 shouldAdd3PWidgetToStack:v29];

  LOBYTE(v30) = self->_adblDrainClassification != 3;
  v26 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedOnboardingStackForSize:size requiredWidgetPersonalities:stack2Copy conditionalWidgetPersonalities:forStack2Copy fallbackWidgetPersonalities:personalitiesForStack2Copy rankedThirdPartyWidgets:v22 usedWidgetPersonalities:v24 shouldAdd3PWidgetToStack:v30];

  v27 = [objc_alloc(MEMORY[0x1E69C5D98]) initWithFirst:v25 second:v26];

  return v27;
}

- (id)_personalizedOnboardingStackForSize:(unint64_t)size requiredWidgetPersonalities:(id)personalities conditionalWidgetPersonalities:(id)widgetPersonalities fallbackWidgetPersonalities:(id)fallbackWidgetPersonalities rankedThirdPartyWidgets:(id)widgets usedWidgetPersonalities:(id)usedWidgetPersonalities shouldAdd3PWidgetToStack:(BOOL)stack
{
  v84 = *MEMORY[0x1E69E9840];
  personalitiesCopy = personalities;
  widgetPersonalitiesCopy = widgetPersonalities;
  fallbackWidgetPersonalitiesCopy = fallbackWidgetPersonalities;
  widgetsCopy = widgets;
  usedWidgetPersonalitiesCopy = usedWidgetPersonalities;
  sizeCopy = size;
  v73 = objc_opt_new();
  selfCopy = self;
  v67 = personalitiesCopy;
  v17 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:personalitiesCopy size:size personalityToDescriptorDictionary:self->_personalityToDescriptorDictionary];
  v18 = [v17 mutableCopy];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v18;
  v19 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v77;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v77 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v76 + 1) + 8 * i);
        v24 = [ATXWidgetPersonality stringRepresentationForATXHomeScreenWidgetDescriptor:v23];
        v25 = objc_msgSend_containsObject_(usedWidgetPersonalitiesCopy);
        if (v25)
        {
          v26 = __atxlog_handle_home_screen(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *v81 = v24;
            *&v81[8] = 2048;
            v82 = sizeCopy;
            _os_log_impl(&dword_1BF549000, v26, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: not adding required widget %{public}@ to onboarding stack of size: %lu because it is already used (or on deny list)", buf, 0x16u);
          }
        }

        else
        {
          [v73 addObject:v23];
          [usedWidgetPersonalitiesCopy addObject:v24];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
    }

    while (v20);
  }

  v27 = [personalitiesCopy _pas_mappedArrayWithTransform:&__block_literal_global_127];
  [usedWidgetPersonalitiesCopy addObjectsFromArray:v27];

  v28 = objc_alloc(MEMORY[0x1E695DFD8]);
  v29 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = objc_opt_new();
  }

  v32 = v31;

  v68 = [v28 initWithArray:v32];
  isiPad = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy isiPad];
  if (isiPad && (isiPad = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy shouldIncludeContactsWidget], isiPad))
  {
    v34 = __atxlog_handle_home_screen(isiPad);
    v36 = fallbackWidgetPersonalitiesCopy;
    v35 = widgetPersonalitiesCopy;
    v37 = widgetsCopy;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v34, OS_LOG_TYPE_DEFAULT, "Considering Contacts widget... is iPad: YES, should include: YES", buf, 2u);
    }

    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __248__ATXDefaultHomeScreenItemOnboardingStacksProducer__personalizedOnboardingStackForSize_requiredWidgetPersonalities_conditionalWidgetPersonalities_fallbackWidgetPersonalities_rankedThirdPartyWidgets_usedWidgetPersonalities_shouldAdd3PWidgetToStack___block_invoke_128;
    v75[3] = &unk_1E80C1CC0;
    v75[4] = selfCopy;
    v38 = MEMORY[0x1BFB5BA40](v75);
    v39 = v38[2]();
    if (v39)
    {
      v40 = [[ATXWidgetPersonality alloc] initWithExtensionBundleId:@"com.apple.PeopleViewService.PeopleWidget-iOS" kind:@"MultipleContactWidget_iOS"];
      stringRepresentation = [(ATXWidgetPersonality *)v40 stringRepresentation];
      v42 = objc_msgSend_containsObject_(usedWidgetPersonalitiesCopy);

      if (v42)
      {
        v44 = __atxlog_handle_home_screen(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BF549000, v44, OS_LOG_TYPE_DEFAULT, "Contacts widget already exists in used personalities list, not adding", buf, 2u);
        }
      }

      else
      {
        v70 = v40;
        v49 = objc_alloc(MEMORY[0x1E6994310]);
        v50 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:@"com.apple.PeopleViewService.PeopleWidget-iOS" containerBundleIdentifier:@"com.apple.PeopleViewService" deviceIdentifier:0];
        v44 = [v49 initWithExtensionIdentity:v50 kind:@"MultipleContactWidget_iOS" supportedFamilies:28 intentType:@"SelectPeopleIntent"];

        v51 = objc_opt_new();
        [v51 setAvocadoDescriptor:v44];
        [v51 setSuggestedSize:1];
        v52 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy _shouldAddWidget:v51 andFilterFromApps:v68];
        if (v52)
        {
          v52 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy _addWidget:v51 toStack:v73 andMarkAsUsed:usedWidgetPersonalitiesCopy];
        }

        v53 = __atxlog_handle_home_screen(v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v81 = v51;
          _os_log_impl(&dword_1BF549000, v53, OS_LOG_TYPE_DEFAULT, "Added contacts widget to stack: %@", buf, 0xCu);
        }

        v40 = v70;
      }
    }

    else
    {
      v40 = __atxlog_handle_home_screen(v39);
      if (os_log_type_enabled(&v40->super, OS_LOG_TYPE_DEFAULT))
      {
        cachedHasiCloudFamily = selfCopy->_cachedHasiCloudFamily;
        *buf = 138412290;
        *v81 = cachedHasiCloudFamily;
        _os_log_impl(&dword_1BF549000, &v40->super, OS_LOG_TYPE_DEFAULT, "Not considering Contacts widget... no iCloud family (cached bit: %@)", buf, 0xCu);
      }
    }
  }

  else
  {
    v45 = __atxlog_handle_home_screen(isiPad);
    v36 = fallbackWidgetPersonalitiesCopy;
    v35 = widgetPersonalitiesCopy;
    v37 = widgetsCopy;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      isiPad2 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy isiPad];
      shouldIncludeContactsWidget = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy shouldIncludeContactsWidget];
      *buf = 67109376;
      *v81 = isiPad2;
      *&v81[4] = 1024;
      *&v81[6] = shouldIncludeContactsWidget;
      _os_log_impl(&dword_1BF549000, v45, OS_LOG_TYPE_DEFAULT, "Not considering Contacts widget... is iPad: %{BOOL}d, should include: %{BOOL}d", buf, 0xEu);
    }
  }

  v54 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v35 size:sizeCopy personalityToDescriptorDictionary:selfCopy->_personalityToDescriptorDictionary];
  v66 = [[ATXDefaultHomeScreenItemRanker alloc] initWithCachedWidgetPersonalityToAppScore:selfCopy->_cachedWidgetPersonalityToAppScore spotlightAppLaunchHistogram:0 appLaunchCounts:selfCopy->_appLaunchCounts];
  v55 = [(ATXDefaultHomeScreenItemRanker *)v66 widgetsBySortingAndFilteringWidgetsUsingOnboardingStacksAlgorithm:v54 algorithm:3 regularlyUsedThreshold:7uLL];
  v56 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v36 size:sizeCopy personalityToDescriptorDictionary:selfCopy->_personalityToDescriptorDictionary];
  v71 = v55;
  v57 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy _firstUnusedWidgetFromList:v55 fallbackWidgets:v56 usedPersonalities:usedWidgetPersonalitiesCopy size:sizeCopy];
  [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy _addWidget:v57 toStack:v73 andMarkAsUsed:usedWidgetPersonalitiesCopy];
  v58 = [v73 count];
  if (v58 <= 2)
  {
    v59 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy _firstUnusedWidgetFromList:v71 fallbackWidgets:v56 usedPersonalities:usedWidgetPersonalitiesCopy size:sizeCopy];
    [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy _addWidget:v59 toStack:v73 andMarkAsUsed:usedWidgetPersonalitiesCopy];
  }

  if (stack)
  {
    v60 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy _firstWidgetThatIsntUsedYet:v37 usedPersonalities:usedWidgetPersonalitiesCopy];
    [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)selfCopy _addWidget:v60 toStack:v73 andMarkAsUsed:usedWidgetPersonalitiesCopy];
  }

  else
  {
    v60 = __atxlog_handle_home_screen(v58);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      adblDrainClassification = selfCopy->_adblDrainClassification;
      *buf = 134218240;
      *v81 = sizeCopy;
      *&v81[8] = 2048;
      v82 = adblDrainClassification;
      _os_log_impl(&dword_1BF549000, v60, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: not adding 3P widget to onboarding stack of size: %lu because of drain: %lu", buf, 0x16u);
    }
  }

  return v73;
}

uint64_t __248__ATXDefaultHomeScreenItemOnboardingStacksProducer__personalizedOnboardingStackForSize_requiredWidgetPersonalities_conditionalWidgetPersonalities_fallbackWidgetPersonalities_rankedThirdPartyWidgets_usedWidgetPersonalities_shouldAdd3PWidgetToStack___block_invoke_128(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(*(a1 + 32) + 48) BOOLValue];
  if (v1)
  {
    v2 = __atxlog_handle_home_screen(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "Considering Contacts widget... has cached iCloud family", v7, 2u);
    }

    v3 = 1;
  }

  else
  {
    v4 = objc_opt_new();
    v3 = [v4 hasiCloudFamily];

    v2 = __atxlog_handle_home_screen(v5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = v3;
      _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "Considering Contacts widget... scorer response: %{BOOL}d", v7, 8u);
    }
  }

  return v3;
}

- (void)_addWidget:(id)widget toStack:(id)stack andMarkAsUsed:(id)used
{
  if (widget)
  {
    usedCopy = used;
    widgetCopy = widget;
    [stack addObject:widgetCopy];
    v9 = [ATXWidgetPersonality stringRepresentationForATXHomeScreenWidgetDescriptor:widgetCopy];

    [usedCopy addObject:v9];
  }
}

- (BOOL)_shouldAddWidget:(id)widget andFilterFromApps:(id)apps
{
  v25 = *MEMORY[0x1E69E9840];
  widgetCopy = widget;
  appsCopy = apps;
  appBundleId = [widgetCopy appBundleId];
  v8 = appBundleId == 0;

  if (!appBundleId)
  {
    v13 = __atxlog_handle_home_screen(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "[ATXDefaultHomeScreenItemOnboardingStacksProducer _shouldAddWidget:andFilterFromApps:]";
      v23 = 2112;
      v24 = widgetCopy;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "%s: No parent bundleId for Widget descriptor: %@", &v21, 0x16u);
    }

    goto LABEL_11;
  }

  appBundleId2 = [widgetCopy appBundleId];
  v11 = objc_msgSend_containsObject_(appsCopy);

  if (v11)
  {
    v13 = __atxlog_handle_home_screen(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      appBundleId3 = [widgetCopy appBundleId];
      v21 = 138412290;
      v22 = appBundleId3;
      v15 = "ATXDefaultHomeScreenItemProducer: Show on Homescreen is turned off for app with bundleId: %@. Hence not adding its widget";
LABEL_10:
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, v15, &v21, 0xCu);
    }
  }

  else
  {
    v16 = objc_opt_new();
    appBundleId4 = [widgetCopy appBundleId];
    v18 = [v16 bundleIdIsLockedOrHiddenByUserPreference:appBundleId4];

    if (!v18)
    {
      v8 = 1;
      goto LABEL_12;
    }

    v13 = __atxlog_handle_home_screen(v19);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      appBundleId3 = [widgetCopy appBundleId];
      v21 = 138412290;
      v22 = appBundleId3;
      v15 = "ATXDefaultHomeScreenItemProducer: App: %@ is locked or hidden by user preference. Hence not adding its widget";
      goto LABEL_10;
    }
  }

LABEL_11:

LABEL_12:
  return v8;
}

- (id)_firstUnusedWidgetFromList:(id)list fallbackWidgets:(id)widgets usedPersonalities:(id)personalities size:(unint64_t)size
{
  widgetsCopy = widgets;
  personalitiesCopy = personalities;
  v11 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _firstWidgetThatIsntUsedYet:list usedPersonalities:personalitiesCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _firstWidgetThatIsntUsedYet:widgetsCopy usedPersonalities:personalitiesCopy];
  }

  v14 = v13;

  return v14;
}

- (id)_firstWidgetThatIsntUsedYet:(id)yet usedPersonalities:(id)personalities
{
  v31 = *MEMORY[0x1E69E9840];
  yetCopy = yet;
  personalitiesCopy = personalities;
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  v12 = [v7 initWithArray:v11];
  v13 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = yetCopy;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = [ATXWidgetPersonality stringRepresentationForATXHomeScreenWidgetDescriptor:v19];
        if (!-[ATXDefaultHomeScreenItemOnboardingStacksProducer _shouldAddWidget:andFilterFromApps:](self, "_shouldAddWidget:andFilterFromApps:", v19, v12) || ([v13 addObject:v20], !objc_msgSend_containsObject_(personalitiesCopy)))
        {
          v23 = v19;

          v22 = v14;
          goto LABEL_17;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v22 = __atxlog_handle_home_screen(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)personalitiesCopy _firstWidgetThatIsntUsedYet:v13 usedPersonalities:v22];
  }

  v23 = 0;
LABEL_17:

  return v23;
}

- (BOOL)hasConfiguredHomeAccessoryControl
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = BiomeLibrary();
  homeKit = [v2 HomeKit];
  client = [homeKit Client];
  accessoryControl = [client AccessoryControl];

  v6 = [accessoryControl atx_publisherFromStartDate:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__ATXDefaultHomeScreenItemOnboardingStacksProducer_hasConfiguredHomeAccessoryControl__block_invoke_150;
  v9[3] = &unk_1E80C1530;
  v9[4] = &v10;
  v7 = [v6 sinkWithCompletion:&__block_literal_global_149 shouldContinue:v9];

  LOBYTE(v6) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __85__ATXDefaultHomeScreenItemOnboardingStacksProducer_hasConfiguredHomeAccessoryControl__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_home_screen(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __85__ATXDefaultHomeScreenItemOnboardingStacksProducer_hasConfiguredHomeAccessoryControl__block_invoke_cold_1(v2);
    }
  }
}

BOOL __85__ATXDefaultHomeScreenItemOnboardingStacksProducer_hasConfiguredHomeAccessoryControl__block_invoke_150(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v3 eventBody];
    v8 = [v7 serviceType];

    v9 = v8 == 0;
    if (v8)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  else
  {
    v10 = __atxlog_handle_home_screen(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __85__ATXDefaultHomeScreenItemOnboardingStacksProducer_hasConfiguredHomeAccessoryControl__block_invoke_150_cold_1(v3);
    }

    v9 = 1;
  }

  return v9;
}

- (void)_firstWidgetThatIsntUsedYet:(os_log_t)log usedPersonalities:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = "[ATXDefaultHomeScreenItemOnboardingStacksProducer _firstWidgetThatIsntUsedYet:usedPersonalities:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: could not find widget that wasn't already used, used personalities: %@, available widgets: %@", &v3, 0x20u);
}

void __85__ATXDefaultHomeScreenItemOnboardingStacksProducer_hasConfiguredHomeAccessoryControl__block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_4(&dword_1BF549000, v2, v3, "Could not fetch Home accessory events. Error: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void __85__ATXDefaultHomeScreenItemOnboardingStacksProducer_hasConfiguredHomeAccessoryControl__block_invoke_150_cold_1(void *a1)
{
  v1 = [a1 eventBody];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  LODWORD(v10) = 138412290;
  *(&v10 + 4) = v3;
  OUTLINED_FUNCTION_0_4(&dword_1BF549000, v4, v5, "Incorrect class received while fetching home accessory events: %@", v6, v7, v8, v9, v10, DWORD2(v10));
}

@end