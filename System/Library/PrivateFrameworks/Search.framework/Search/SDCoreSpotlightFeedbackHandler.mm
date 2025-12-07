@interface SDCoreSpotlightFeedbackHandler
+ (id)sharedInstance;
- (BOOL)_isSafari:(id)safari;
- (SDCoreSpotlightFeedbackHandler)init;
- (id)_remapSafariSyntheticBookmarkID:(id)d;
- (void)deleteEngagementItem:(id)item externalIdentifier:(id)identifier protectionClass:(id)class;
- (void)didEngageResult:(id)result engagedAnalyticsItem:(id)item atPosition:(unint64_t)position withEvent:(unint64_t)event forQuery:(id)query currentTime:(id)time;
- (void)didEngageSection:(id)section;
- (void)didEngageSection:(id)section withEvent:(unint64_t)event;
- (void)didPerformCommand:(id)command;
- (void)didRankSections:(id)sections;
- (void)didStartSearch:(id)search;
- (void)indexEngagementItem:(id)item currentTime:(id)time externalIdentifier:(id)identifier protectionClass:(id)class expire:(BOOL)expire shortcutString:(id)string update:(BOOL)update;
- (void)searchViewDidDisappear:(id)disappear;
- (void)updateRankingSectionItemsForResult:(id)result withQuery:(id)query;
- (void)updateShortcutForResult:(id)result withQuery:(id)query currentTime:(id)time;
- (void)updateSpotlightUsageCount;
@end

@implementation SDCoreSpotlightFeedbackHandler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SDCoreSpotlightFeedbackHandler sharedInstance];
  }

  v3 = sharedInstance_handler;

  return v3;
}

uint64_t __48__SDCoreSpotlightFeedbackHandler_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_handler;
  sharedInstance_handler = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SDCoreSpotlightFeedbackHandler)init
{
  v5.receiver = self;
  v5.super_class = SDCoreSpotlightFeedbackHandler;
  v2 = [(SDCoreSpotlightFeedbackHandler *)&v5 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
    -[SDCoreSpotlightFeedbackHandler setIgnoreResultEngagements:](v2, "setIgnoreResultEngagements:", [v3 BOOLForKey:@"ignoreResultEngagements"]);
    [(SDCoreSpotlightFeedbackHandler *)v2 setClientRankAndBlend:_os_feature_enabled_impl()];
  }

  return v2;
}

- (void)didEngageSection:(id)section
{
  sectionCopy = section;
  section = [sectionCopy section];
  triggerEvent = [sectionCopy triggerEvent];

  [(SDCoreSpotlightFeedbackHandler *)self didEngageSection:section withEvent:triggerEvent];
}

- (void)didEngageSection:(id)section withEvent:(unint64_t)event
{
  bundleIdentifier = [section bundleIdentifier];
  [SPCoreAnalyticsManager logEngagementWithBundleIdentifier:bundleIdentifier forEvent:event];
}

- (void)didStartSearch:(id)search
{
  searchCopy = search;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = searchCopy;
  if (isKindOfClass)
  {
    v6 = searchCopy;
    if ([v6 indexType] == 1)
    {
      if ([v6 triggerEvent] == 23)
      {
        input = [v6 input];
        if (input)
        {
          [MEMORY[0x1E69D3E98] cacheSearchString:input];
        }
      }

      input2 = [v6 input];
      [(SDCoreSpotlightFeedbackHandler *)self setLastQuery:input2];

      v9 = objc_opt_new();
      analyticsItems = self->_analyticsItems;
      self->_analyticsItems = v9;
    }

    v5 = searchCopy;
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v5);
}

- (void)didRankSections:(id)sections
{
  v51 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  topAnalyticsItemPerSection = self->_topAnalyticsItemPerSection;
  self->_topAnalyticsItemPerSection = 0;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v32 = sectionsCopy;
  obj = [sectionsCopy sections];
  v6 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v46;
    v9 = *MEMORY[0x1E69D3F10];
    v33 = *v46;
    selfCopy = self;
    do
    {
      v10 = 0;
      v35 = v7;
      do
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v45 + 1) + 8 * v10);
        section = [v11 section];
        if (!section)
        {
          goto LABEL_32;
        }

        v38 = v10;
        if (!self->_topAnalyticsItemPerSection)
        {
          v13 = objc_opt_new();
          v14 = self->_topAnalyticsItemPerSection;
          self->_topAnalyticsItemPerSection = v13;
        }

        results = [v11 results];
        v40 = objc_opt_new();
        maxInitiallyVisibleResults = [section maxInitiallyVisibleResults];
        bundleIdentifier = [section bundleIdentifier];
        if (![bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"] || (objc_msgSend(section, "isInitiallyHidden") & 1) != 0)
        {
          goto LABEL_13;
        }

        results2 = [section results];
        v18 = [results2 count];

        if (maxInitiallyVisibleResults != v18)
        {
          bundleIdentifier = [section results];
          maxInitiallyVisibleResults = [bundleIdentifier count];
LABEL_13:
        }

        v37 = section;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v19 = results;
        v20 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = 0;
          v23 = 0;
          v24 = *v42;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v42 != v24)
              {
                objc_enumerationMutation(v19);
              }

              result = [*(*(&v41 + 1) + 8 * i) result];
              [result type];
              if ((SSResultTypeIsSuggestion() & 1) == 0)
              {
                sectionBundleIdentifier = [result sectionBundleIdentifier];
                v28 = [sectionBundleIdentifier isEqualToString:v9];

                if ((v28 & 1) == 0)
                {
                  v29 = [[SPAnalyticsItem alloc] initWithResult:result];
                  v30 = v29;
                  if (!v22)
                  {
                    v31 = v29;

                    v23 = v31;
                  }

                  [v40 addObject:v30];
                  ++v22;

                  if (v22 == maxInitiallyVisibleResults)
                  {

                    goto LABEL_28;
                  }
                }
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }

LABEL_28:

          v8 = v33;
          v7 = v35;
          self = selfCopy;
          if (v23)
          {
            [(NSMutableArray *)selfCopy->_topAnalyticsItemPerSection addObject:v23];
          }
        }

        else
        {

          v23 = 0;
        }

        v10 = v38;
        [(NSMutableArray *)self->_analyticsItems addObjectsFromArray:v40];

        section = v37;
LABEL_32:

        ++v10;
      }

      while (v10 != v7);
      v7 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v7);
  }
}

- (BOOL)_isSafari:(id)safari
{
  safariCopy = safari;
  if ([safariCopy isEqualToString:@"com.apple.mobilesafari"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [safariCopy isEqualToString:@"com.apple.Safari"];
  }

  return v4;
}

- (id)_remapSafariSyntheticBookmarkID:(id)d
{
  dCopy = d;
  if ([dCopy hasPrefix:SyntheticBookmarkPrefix])
  {
    v4 = [dCopy substringFromIndex:{objc_msgSend(SyntheticBookmarkPrefix, "length")}];
  }

  else
  {
    v4 = dCopy;
  }

  v5 = v4;

  return v5;
}

- (void)didPerformCommand:(id)command
{
  v32 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  result = [commandCopy result];
  if (!self->_ignoreResultEngagements)
  {
    v25 = commandCopy;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = self->_analyticsItems;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        identifier = [v11 identifier];
        identifier2 = [result identifier];
        v14 = [identifier isEqualToString:identifier2];

        if (v14)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v16 = [(NSMutableArray *)self->_analyticsItems indexOfObject:v11];
      v15 = v11;

      if (!v15)
      {
        goto LABEL_14;
      }

      [SPCoreAnalyticsManager computeEngagementMatrixForEngagedItem:v15 topAnalyticsItemsPerSection:self->_topAnalyticsItemPerSection];
      v17 = 0;
    }

    else
    {
LABEL_11:

      v15 = 0;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:
      v17 = 1;
    }

    date = [MEMORY[0x1E695DF00] date];
    applicationBundleIdentifier = [result applicationBundleIdentifier];
    v20 = [(SDCoreSpotlightFeedbackHandler *)self _isSafari:applicationBundleIdentifier];

    if (v20)
    {
      identifier3 = [result identifier];
      v22 = [(SDCoreSpotlightFeedbackHandler *)self _remapSafariSyntheticBookmarkID:identifier3];
      [result setIdentifier:v22];
    }

    commandCopy = v25;
    if ((PRSRankingSDEnabledFlagState() & 2) != 0)
    {
      [(SDCoreSpotlightFeedbackHandler *)date didPerformCommand:?];
      date = v30;
      if (v17)
      {
        goto LABEL_20;
      }
    }

    else if (v17)
    {
LABEL_20:

      goto LABEL_21;
    }

    triggerEvent = [v25 triggerEvent];
    lastQuery = [(SDCoreSpotlightFeedbackHandler *)self lastQuery];
    [(SDCoreSpotlightFeedbackHandler *)self didEngageResult:result engagedAnalyticsItem:v15 atPosition:v16 withEvent:triggerEvent forQuery:lastQuery currentTime:date];

    goto LABEL_20;
  }

  NSLog(&cfstr_SkippingFeedba.isa);
LABEL_21:
}

- (void)didEngageResult:(id)result engagedAnalyticsItem:(id)item atPosition:(unint64_t)position withEvent:(unint64_t)event forQuery:(id)query currentTime:(id)time
{
  resultCopy = result;
  queryCopy = query;
  timeCopy = time;
  [SPCoreAnalyticsManager logEngagementWithItem:item atPosition:position forEvent:event];
  if (event != 5)
  {
    [(SDCoreSpotlightFeedbackHandler *)self updateRankingSectionItemsForResult:resultCopy withQuery:queryCopy];
    [(SDCoreSpotlightFeedbackHandler *)self updateSpotlightUsageCount];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SDCoreSpotlightFeedbackHandler *)self updateShortcutForResult:resultCopy withQuery:queryCopy currentTime:timeCopy];
    }
  }
}

- (void)searchViewDidDisappear:(id)disappear
{
  analyticsItems = self->_analyticsItems;
  self->_analyticsItems = 0;
  MEMORY[0x1EEE66BB8](self, analyticsItems);
}

- (void)updateSpotlightUsageCount
{
  v2 = dispatch_get_global_queue(17, 0);
  dispatch_async(v2, &__block_literal_global_128_0);
}

void __59__SDCoreSpotlightFeedbackHandler_updateSpotlightUsageCount__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
  v0 = [v2 objectForKey:@"usedCount"];

  if (v0)
  {
    v1 = [v2 integerForKey:@"usedCount"] + 1;
  }

  else
  {
    v1 = 1;
  }

  [v2 setInteger:v1 forKey:@"usedCount"];
}

- (void)indexEngagementItem:(id)item currentTime:(id)time externalIdentifier:(id)identifier protectionClass:(id)class expire:(BOOL)expire shortcutString:(id)string update:(BOOL)update
{
  expireCopy = expire;
  v33[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  timeCopy = time;
  classCopy = class;
  stringCopy = string;
  v19 = MEMORY[0x1E6964E80];
  identifierCopy = identifier;
  v21 = objc_alloc_init(v19);
  [v21 setUniqueIdentifier:identifierCopy];

  [v21 setBundleID:itemCopy];
  if (expireCopy)
  {
    v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:2592000.0];
    [v21 setExpirationDate:v22];
  }

  v23 = objc_alloc(MEMORY[0x1E6964E90]);
  v32[0] = @"_kMDItemShortcutLastUsedDate";
  v32[1] = @"kMDItemLastUsedDate";
  v33[0] = timeCopy;
  v33[1] = timeCopy;
  v32[2] = @"_kMDItemLaunchString";
  v33[2] = stringCopy;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v25 = [v23 initWithAttributes:v24];
  [v21 setAttributeSet:v25];

  if (!update)
  {
    attributeSet = [v21 attributeSet];
    [attributeSet setDisplayName:stringCopy];
  }

  [v21 setIsUpdate:update];
  if (self->_clientRankAndBlend)
  {
    defaultSearchableIndex = [MEMORY[0x1E6964E78] defaultSearchableIndex];
    v31 = v21;
    v28 = &v31;
  }

  else
  {
    defaultSearchableIndex = [MEMORY[0x1E69D3DC0] sharedInstance];
    v30 = v21;
    v28 = &v30;
  }

  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [defaultSearchableIndex indexSearchableItems:v29 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:classCopy forBundleID:itemCopy options:0 completionHandler:0];
}

- (void)deleteEngagementItem:(id)item externalIdentifier:(id)identifier protectionClass:(id)class
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (self->_clientRankAndBlend)
  {
    v8 = MEMORY[0x1E6964E78];
    classCopy = class;
    identifierCopy = identifier;
    itemCopy = item;
    defaultSearchableIndex = [v8 defaultSearchableIndex];
    v20[0] = identifierCopy;
    v13 = v20;
  }

  else
  {
    v14 = MEMORY[0x1E69D3DC0];
    classCopy2 = class;
    identifierCopy2 = identifier;
    itemCopy2 = item;
    defaultSearchableIndex = [v14 sharedInstance];
    v19 = identifierCopy2;
    v13 = &v19;
  }

  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  [defaultSearchableIndex indexSearchableItems:0 deleteSearchableItemsWithIdentifiers:v18 clientState:0 protectionClass:class forBundleID:item options:0 completionHandler:0];
}

- (void)updateShortcutForResult:(id)result withQuery:(id)query currentTime:(id)time
{
  v27 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  queryCopy = query;
  timeCopy = time;
  NSLog(&cfstr_Updateshortcut.isa, resultCopy);
  getStableServerResultIdentifier = [resultCopy getStableServerResultIdentifier];
  feedbackSectionIdentifier = [resultCopy feedbackSectionIdentifier];
  getSPMLSharedInstance = [MEMORY[0x1E69D3E40] getSPMLSharedInstance];
  v12 = [resultCopy type] == 36 || objc_msgSend(resultCopy, "type") == 37;
  protectionClass = [resultCopy protectionClass];
  if (!_os_feature_enabled_impl())
  {
    v14 = 0;
    goto LABEL_12;
  }

  if ([feedbackSectionIdentifier isEqual:*MEMORY[0x1E69D3F20]] & 1) != 0 || (objc_msgSend(feedbackSectionIdentifier, "isEqual:", *MEMORY[0x1E69D3F18]) & 1) != 0 || (objc_msgSend(feedbackSectionIdentifier, "isEqual:", *MEMORY[0x1E69D3F08]))
  {
    v14 = 1;
  }

  else
  {
    v14 = [feedbackSectionIdentifier isEqual:*MEMORY[0x1E69D3F00]];
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  if (!protectionClass)
  {
    protectionClass = *MEMORY[0x1E696A388];
    v14 = 1;
  }

LABEL_12:
  type = [resultCopy type];
  if (queryCopy)
  {
    userInput = queryCopy;
    goto LABEL_15;
  }

  userInput = [resultCopy userInput];
  if (userInput)
  {
LABEL_15:
    v17 = [feedbackSectionIdentifier isEqual:*MEMORY[0x1E69D3F78]];
    if (type == 20)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (getStableServerResultIdentifier && feedbackSectionIdentifier && protectionClass)
    {
      v19 = type == 2 || v12;
      if (v19 & 1) != 0 || type <= 7 && ((1 << type) & 0xD0) != 0 || ((v14 | v18))
      {
        [getSPMLSharedInstance addCategoryAndGroupNameToTrainCategories:feedbackSectionIdentifier groupName:feedbackSectionIdentifier];
        LOBYTE(v20) = 1;
        [(SDCoreSpotlightFeedbackHandler *)self indexEngagementItem:feedbackSectionIdentifier currentTime:timeCopy externalIdentifier:getStableServerResultIdentifier protectionClass:protectionClass expire:v14 shortcutString:userInput update:v20];
      }
    }

    if (updateShortcutForResult_withQuery_currentTime__onceToken == -1)
    {
      if (!feedbackSectionIdentifier)
      {
        goto LABEL_39;
      }
    }

    else
    {
      [SDCoreSpotlightFeedbackHandler updateShortcutForResult:withQuery:currentTime:];
      if (!feedbackSectionIdentifier)
      {
        goto LABEL_39;
      }
    }

    if ([updateShortcutForResult_withQuery_currentTime__priorityBundleIds containsObject:feedbackSectionIdentifier])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = feedbackSectionIdentifier;
        v25 = 2112;
        v26 = userInput;
        _os_log_impl(&dword_1C81BF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Clear non-priority engagement for %@ (%@)", buf, 0x16u);
      }

      [(SDCoreSpotlightFeedbackHandler *)self deleteEngagementItem:@"com.apple.searchd.engagement" externalIdentifier:userInput protectionClass:@"Priority"];
LABEL_42:

      goto LABEL_43;
    }

LABEL_39:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = feedbackSectionIdentifier;
      v25 = 2112;
      v26 = userInput;
      _os_log_impl(&dword_1C81BF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Capture non-priority engagement for %@ (%@)", buf, 0x16u);
    }

    LOBYTE(v20) = 0;
    [(SDCoreSpotlightFeedbackHandler *)self indexEngagementItem:@"com.apple.searchd.engagement" currentTime:timeCopy externalIdentifier:userInput protectionClass:@"Priority" expire:1 shortcutString:userInput update:v20];
    goto LABEL_42;
  }

LABEL_43:
}

uint64_t __80__SDCoreSpotlightFeedbackHandler_updateShortcutForResult_withQuery_currentTime___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F47DBEA0];
  v1 = updateShortcutForResult_withQuery_currentTime__priorityBundleIds;
  updateShortcutForResult_withQuery_currentTime__priorityBundleIds = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)updateRankingSectionItemsForResult:(id)result withQuery:(id)query
{
  v33[2] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  resultCopy = result;
  feedbackSectionIdentifier = [resultCopy feedbackSectionIdentifier];
  sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];

  if (([sectionBundleIdentifier isEqualToString:@"com.apple.application"] & 1) != 0 || !feedbackSectionIdentifier)
  {
  }

  else
  {

    if (queryCopy)
    {
      if (self->_clientRankAndBlend)
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __79__SDCoreSpotlightFeedbackHandler_updateRankingSectionItemsForResult_withQuery___block_invoke;
        v26[3] = &unk_1E82F8FF0;
        v27 = queryCopy;
        v10 = &v28;
        v11 = feedbackSectionIdentifier;
        v12 = &v29;
        v28 = v11;
        v29 = @"com.apple.spotlight.category";
        mEMORY[0x1E69D3DC0] = MEMORY[0x1CCA71310](v26);
        defaultSearchableIndex = [MEMORY[0x1E6964E78] defaultSearchableIndex];
        v15 = *MEMORY[0x1E6964980];
        v33[0] = *MEMORY[0x1E6964988];
        v33[1] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
        v17 = *MEMORY[0x1E696A378];
        v32 = v11;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
        v19 = v17;
        v20 = &v27;
        [defaultSearchableIndex slowFetchAttributes:v16 protectionClass:v19 bundleID:@"com.apple.spotlight.category" identifiers:v18 completionHandler:mEMORY[0x1E69D3DC0]];
      }

      else
      {
        mEMORY[0x1E69D3DC0] = [MEMORY[0x1E69D3DC0] sharedInstance];
        v21 = *MEMORY[0x1E696A378];
        v22 = *MEMORY[0x1E6964980];
        v31[0] = *MEMORY[0x1E6964988];
        v31[1] = v22;
        defaultSearchableIndex = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
        v30 = feedbackSectionIdentifier;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        v20 = &v23;
        v23 = feedbackSectionIdentifier;
        v10 = &v24;
        v12 = &v25;
        v24 = queryCopy;
        v25 = @"com.apple.spotlight.category";
        [mEMORY[0x1E69D3DC0] fetchAttributesForProtectionClass:v21 attributes:defaultSearchableIndex bundleID:? identifiers:? completion:?];
      }
    }
  }
}

void __79__SDCoreSpotlightFeedbackHandler_updateRankingSectionItemsForResult_withQuery___block_invoke(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count] && (objc_msgSend(v3, "objectAtIndexedSubscript:", 0), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        while (2)
        {
          v10 = 0;
          do
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v11 = v6;
              goto LABEL_16;
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v28 objects:v35 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v11 = 0;
LABEL_16:
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v12 = [v11 firstObject];
      v13 = [v11 objectAtIndex:1];
      v14 = objc_opt_new();
      v15 = objc_opt_new();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v14 addObjectsFromArray:v12];
        [v15 addObjectsFromArray:v13];
      }

      v26 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.0];
      [v14 addObject:a1[4]];
      [v15 addObject:v26];
      v27 = v13;
      v16 = objc_opt_new();
      [v16 setUniqueIdentifier:a1[5]];
      [v16 setBundleID:a1[6]];
      v17 = objc_alloc(MEMORY[0x1E6964E90]);
      v18 = *MEMORY[0x1E6964980];
      v33[0] = *MEMORY[0x1E6964988];
      v33[1] = v18;
      v34[0] = v14;
      v34[1] = v15;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
      v19 = v25 = v12;
      v20 = [v17 initWithAttributes:v19];
      [v16 setAttributeSet:v20];

      v21 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
      v32 = v16;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      v23 = *MEMORY[0x1E696A378];
      v24 = [v16 bundleID];
      [v21 indexSearchableItems:v22 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v23 forBundleID:v24 options:0 completionHandler:0];
    }
  }

  else
  {
    v5 = 0;
  }
}

void __79__SDCoreSpotlightFeedbackHandler_updateRankingSectionItemsForResult_withQuery___block_invoke_2(void *a1, void *a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = [a2 valueForKey:a1[4]];
  v4 = [v3 firstObject];
  v5 = [v3 objectAtIndex:1];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 addObjectsFromArray:v4];
    [v7 addObjectsFromArray:v5];
  }

  [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.0];
  v8 = v18 = v5;
  [v6 addObject:a1[5]];
  [v7 addObject:v8];
  v9 = objc_opt_new();
  [v9 setUniqueIdentifier:a1[4]];
  [v9 setBundleID:a1[6]];
  v10 = objc_alloc(MEMORY[0x1E6964E90]);
  v11 = *MEMORY[0x1E6964980];
  v20[0] = *MEMORY[0x1E6964988];
  v20[1] = v11;
  v21[0] = v6;
  v21[1] = v7;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v13 = [v10 initWithAttributes:v12];
  [v9 setAttributeSet:v13];

  v14 = [MEMORY[0x1E69D3DC0] sharedInstance];
  v19 = v9;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v16 = *MEMORY[0x1E696A378];
  v17 = [v9 bundleID];
  [v14 indexSearchableItems:v15 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v16 forBundleID:v17 options:0 completionHandler:0];
}

- (void)didPerformCommand:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
  [v4 doubleForKey:@"RankingFeaturesTestFirstQueryTime"];
  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"RankingFeaturesTest: RankingFeaturesTestFirstQueryTime = %f", *&v5];
  NSLog(&stru_1F47D4948.isa, v7);

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  [a1 timeIntervalSinceReferenceDate];
  v10 = [v8 initWithFormat:@"RankingFeaturesTest: currentTime = %f", v9];
  NSLog(&stru_1F47D4948.isa, v10);

  if (v6 == 0.0)
  {
    [a1 timeIntervalSinceReferenceDate];
    [v4 setDouble:@"RankingFeaturesTestFirstQueryTime" forKey:?];
    v11 = @"RankingFeaturesTest: updated RankingFeaturesTestFirstQueryTime to currentTime";
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v6];

    v11 = @"RankingFeaturesTest: updated currentTime to RankingFeaturesTestFirstQueryTime";
    a1 = v12;
  }

  *a2 = a1;
  NSLog(&v11->isa);
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  [a1 timeIntervalSinceReferenceDate];
  v15 = [v13 initWithFormat:@"RankingFeaturesTest: currentTime = %f", v14];
  NSLog(&stru_1F47D4948.isa, v15);
}

@end