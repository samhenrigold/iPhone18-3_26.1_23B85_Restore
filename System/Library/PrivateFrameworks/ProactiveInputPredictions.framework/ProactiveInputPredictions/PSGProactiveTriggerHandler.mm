@interface PSGProactiveTriggerHandler
+ (id)sharedInstance;
- (BOOL)_handleOperationalTrigger:(id)trigger localeIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier recipientNames:(id)names availableApps:(id)apps limit:(unint64_t)limit explanationSet:(id)set results:(id)self0;
- (PSGProactiveTriggerHandler)initWithBroker:(id)broker cache:(id)cache;
- (id)_handlePortraitTrigger:(id)trigger localeIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier recipients:(id)recipients limit:(unint64_t)limit timeoutSeconds:(double)seconds explanationSet:(id)set results:(id)self0;
- (id)handleTrigger:(id)trigger localeIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier recipients:(id)recipients recipientNames:(id)names availableApps:(id)apps timeoutSeconds:(double)seconds fetchLimit:(unint64_t)self0 maxSuggestions:(unint64_t)self1 explanationSet:(id)self2 error:(id *)self3;
@end

@implementation PSGProactiveTriggerHandler

- (id)handleTrigger:(id)trigger localeIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier recipients:(id)recipients recipientNames:(id)names availableApps:(id)apps timeoutSeconds:(double)seconds fetchLimit:(unint64_t)self0 maxSuggestions:(unint64_t)self1 explanationSet:(id)self2 error:(id *)self3
{
  v60 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  recipientsCopy = recipients;
  namesCopy = names;
  appsCopy = apps;
  setCopy = set;
  triggerAttributes = [triggerCopy triggerAttributes];
  v25 = [triggerAttributes objectForKeyedSubscript:*MEMORY[0x277D23050]];

  triggerAttributes2 = [triggerCopy triggerAttributes];
  v27 = [triggerAttributes2 objectForKeyedSubscript:*MEMORY[0x277D23028]];

  v52 = v25;
  v53 = v27;
  if (([v25 isEqualToString:@"triggerTypeConnections"] & 1) == 0 && (objc_msgSend(v27, "isEqualToString:", *MEMORY[0x277D23008]) & 1) == 0 && !objc_msgSend(v27, "isEqualToString:", *MEMORY[0x277D23000]))
  {
    triggerCategory = [(PSGStructuredInfoSuggestionCache *)self->_cache searchWithTrigger:triggerCopy localeIdentifier:identifierCopy maxSuggestions:suggestions];
    if ([triggerCategory count])
    {
      v41 = psg_default_log_handle();
      v29 = recipientsCopy;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v59 = [triggerCategory count];
        _os_log_impl(&dword_260D18000, v41, OS_LOG_TYPE_INFO, "Returning %tu item(s) from structured info cache.", buf, 0xCu);
      }

      objc_storeStrong(&self->_lastTrigger, trigger);
      triggerCategory = triggerCategory;
      v40 = triggerCategory;
    }

    else
    {
      v48 = +[PSGStructuredInfoSuggestionCache emptySuggestionsPlaceholder];

      loga = psg_default_log_handle();
      v49 = os_log_type_enabled(loga, OS_LOG_TYPE_INFO);
      v29 = recipientsCopy;
      if (triggerCategory != v48)
      {
        if (v49)
        {
          *buf = 138412290;
          v59 = triggerCopy;
          _os_log_impl(&dword_260D18000, loga, OS_LOG_TYPE_INFO, "Cache lookup returns nothing for %@", buf, 0xCu);
        }

        goto LABEL_7;
      }

      if (v49)
      {
        *buf = 0;
        _os_log_impl(&dword_260D18000, loga, OS_LOG_TYPE_INFO, "Returning nil since we get empty placeholder from structured info cache.", buf, 2u);
      }

      objc_storeStrong(&self->_lastTrigger, trigger);
      v40 = 0;
    }

    v32 = namesCopy;
    goto LABEL_39;
  }

  triggerCategory = psg_default_log_handle();
  if (os_log_type_enabled(triggerCategory, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v59 = triggerCopy;
    _os_log_impl(&dword_260D18000, triggerCategory, OS_LOG_TYPE_INFO, "Skip structured info cache lookup for %@", buf, 0xCu);
  }

  v29 = recipientsCopy;
LABEL_7:

  triggerCategory = [triggerCopy triggerCategory];
  if (triggerCategory != @"TaggedTextFieldContactsAutocomplete")
  {
LABEL_8:

    goto LABEL_10;
  }

  p_lastTrigger = &self->_lastTrigger;
  triggerCategory2 = [(PSGProactiveTrigger *)self->_lastTrigger triggerCategory];

  if (triggerCategory2 != @"TaggedTextFieldContactsAutocomplete")
  {
LABEL_10:
    triggerCategory = objc_opt_new();
    v32 = namesCopy;
    if (![(PSGProactiveTriggerHandler *)self _handleOperationalTrigger:triggerCopy localeIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy recipientNames:namesCopy availableApps:appsCopy limit:limit explanationSet:setCopy results:triggerCategory])
    {
      v33 = [(PSGProactiveTriggerHandler *)self _handlePortraitTrigger:triggerCopy localeIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy recipients:v29 limit:limit timeoutSeconds:setCopy explanationSet:seconds results:triggerCategory];
      if (error && v33)
      {
        v33 = v33;
        *error = v33;
      }
    }

    if (![triggerCategory count])
    {
      triggerCategory3 = [triggerCopy triggerCategory];
      if (triggerCategory3 == @"TaggedTextFieldContactsAutocomplete")
      {
        hasContactsServingError = [setCopy hasContactsServingError];

        if ((hasContactsServingError & 1) == 0)
        {
          [(PSGStructuredInfoSuggestionCache *)self->_cache addEmptyPlaceholderForTrigger:triggerCopy localeIdentifier:identifierCopy];
LABEL_35:
          objc_storeStrong(&self->_lastTrigger, trigger);
          if ([triggerCategory count]<= suggestions)
          {
            v44 = triggerCategory;
            triggerCategory = v44;
          }

          else
          {
            v44 = [triggerCategory subarrayWithRange:0];
          }

          v40 = v44;
          goto LABEL_39;
        }
      }

      else
      {
      }
    }

    if (-[NSObject count](triggerCategory, "count") && [triggerCopy triggerSourceType] != 5)
    {
      [(PSGStructuredInfoSuggestionCache *)self->_cache addStructuredInfoSuggestions:triggerCategory localeIdentifier:identifierCopy];
    }

    else
    {
      triggerCategory4 = [triggerCopy triggerCategory];

      if (triggerCategory4 != @"TaggedTextFieldContactsAutocomplete")
      {
        [(PSGStructuredInfoSuggestionCache *)self->_cache invalidate];
      }
    }

    goto LABEL_35;
  }

  log = bundleIdentifierCopy;
  triggerAttributes3 = [triggerCopy triggerAttributes];
  triggerCategory = [PSGProactiveTrigger getSearchTerm:triggerAttributes3];

  triggerAttributes4 = [(PSGProactiveTrigger *)*p_lastTrigger triggerAttributes];
  v37 = [PSGProactiveTrigger getSearchTerm:triggerAttributes4];

  if (-[NSObject length](triggerCategory, "length") < 3 || ![v37 length] || !-[NSObject hasPrefix:](triggerCategory, "hasPrefix:", v37))
  {
    v46 = psg_default_log_handle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [triggerCategory length];
      *buf = 134217984;
      v59 = v47;
      _os_log_impl(&dword_260D18000, v46, OS_LOG_TYPE_DEFAULT, "Contacts Autocomplete query name length: %tu", buf, 0xCu);
    }

    bundleIdentifierCopy = log;
    v29 = recipientsCopy;
    goto LABEL_8;
  }

  v38 = v37;
  v39 = psg_default_log_handle();
  v29 = recipientsCopy;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_260D18000, v39, OS_LOG_TYPE_INFO, "Skipping Portrait XPC: no cached results for long Contacts Autocomplete query.", buf, 2u);
  }

  [setCopy pushInternalExplanationCode:6];
  objc_storeStrong(p_lastTrigger, trigger);

  v40 = 0;
  bundleIdentifierCopy = log;
  v32 = namesCopy;
  v25 = v52;
LABEL_39:

  return v40;
}

- (id)_handlePortraitTrigger:(id)trigger localeIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier recipients:(id)recipients limit:(unint64_t)limit timeoutSeconds:(double)seconds explanationSet:(id)set results:(id)self0
{
  v73[1] = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  recipientsCopy = recipients;
  setCopy = set;
  resultsCopy = results;
  triggerCategory = [triggerCopy triggerCategory];
  LODWORD(recipients) = [triggerCategory isEqualToString:@"TaggedTextFieldContactsAutocomplete"];

  if (!recipients)
  {
    v28 = MEMORY[0x277D3A480];
    triggerAttributes = [triggerCopy triggerAttributes];
    v27 = [v28 quickTypeQueryFromLMTokens:triggerAttributes localeIdentifier:identifierCopy recipients:recipientsCopy bundleIdentifier:bundleIdentifierCopy];

    if ([triggerCopy triggerSourceType] == 1 || objc_msgSend(triggerCopy, "triggerSourceType") == 4)
    {
      [v27 setTimeoutSeconds:&unk_287345560];
    }

LABEL_7:
    *v62 = 0;
    v63 = v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__330;
    v66 = __Block_byref_object_dispose__331;
    v67 = 0;
    v30 = dispatch_semaphore_create(0);
    v31 = psg_default_log_handle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D18000, v31, OS_LOG_TYPE_DEFAULT, "Kicking off Portrait XPC", buf, 2u);
    }

    broker = self->_broker;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __142__PSGProactiveTriggerHandler__handlePortraitTrigger_localeIdentifier_bundleIdentifier_recipients_limit_timeoutSeconds_explanationSet_results___block_invoke;
    v58[3] = &unk_279ABCF50;
    v61 = v62;
    v33 = setCopy;
    v59 = v33;
    v34 = v30;
    v60 = v34;
    [(PPQuickTypeBroker *)broker quickTypeItemsWithQuery:v27 limit:limit completion:v58];
    null = [MEMORY[0x277CBEB68] null];
    triggerAttributes2 = [triggerCopy triggerAttributes];
    v37 = [triggerAttributes2 objectForKeyedSubscript:*MEMORY[0x277D22F30]];
    v38 = [null isEqual:v37];

    if (v38)
    {
      v39 = psg_default_log_handle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_260D18000, v39, OS_LOG_TYPE_DEBUG, "Handling a priming token. Skip waiting for async call.", buf, 2u);
      }

      [v33 pushInternalExplanationCode:3];
      goto LABEL_13;
    }

    if ([MEMORY[0x277D425A0] waitForSemaphore:v34 timeoutSeconds:seconds] == 1)
    {
      v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%.3f", *&seconds];
      v42 = psg_default_log_handle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v72 = v41;
        _os_log_error_impl(&dword_260D18000, v42, OS_LOG_TYPE_ERROR, "Portrait timeout (threshold: %@ s)", buf, 0xCu);
      }

      [v33 pushInternalExplanationCode:1];
      v43 = MEMORY[0x277CCA9B8];
      v69 = @"thresholdSecs";
      v70 = v41;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v40 = [v43 errorWithDomain:@"PSGErrorDomain" code:1 userInfo:v44];
    }

    else
    {
      if (![*(v63 + 5) count])
      {
LABEL_13:
        v40 = 0;
LABEL_27:

        _Block_object_dispose(v62, 8);
        v21 = v27;
        goto LABEL_28;
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v41 = *(v63 + 5);
      v40 = [v41 countByEnumeratingWithState:&v54 objects:v68 count:16];
      if (v40)
      {
        v45 = *v55;
        do
        {
          for (i = 0; i != v40; i = i + 1)
          {
            if (*v55 != v45)
            {
              objc_enumerationMutation(v41);
            }

            v47 = [[PSGStructuredInfoSuggestion alloc] initWithProactiveTrigger:triggerCopy portraitItem:*(*(&v54 + 1) + 8 * i) operationalItem:0];
            [resultsCopy addObject:v47];
          }

          v40 = [v41 countByEnumeratingWithState:&v54 objects:v68 count:16];
        }

        while (v40);
      }
    }

    goto LABEL_27;
  }

  triggerAttributes3 = [triggerCopy triggerAttributes];
  v21 = [triggerAttributes3 objectForKeyedSubscript:@"SearchField"];

  unsignedIntegerValue = [v21 unsignedIntegerValue];
  triggerAttributes4 = [triggerCopy triggerAttributes];
  v24 = [triggerAttributes4 objectForKeyedSubscript:@"SearchTerm"];

  if ([v24 length])
  {
    v25 = MEMORY[0x277D3A480];
    v73[0] = v24;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:1];
    v27 = [v25 quickTypeQueryWithType:1 subtype:12 semanticTag:0 fields:unsignedIntegerValue time:0 subFields:0 label:0 people:v26 localeIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy recipients:recipientsCopy];

    [v27 setTimeoutSeconds:&unk_287345550];
    goto LABEL_7;
  }

  v49 = psg_default_log_handle();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
  {
    *v62 = 0;
    _os_log_fault_impl(&dword_260D18000, v49, OS_LOG_TYPE_FAULT, "Search term not specified for Contacts Autocomplete trigger.", v62, 2u);
  }

  v40 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PSGErrorDomain" code:2 userInfo:0];

LABEL_28:

  return v40;
}

void __142__PSGProactiveTriggerHandler__handlePortraitTrigger_localeIdentifier_bundleIdentifier_recipients_limit_timeoutSeconds_explanationSet_results___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = psg_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v14 = [v5 count];
    v15 = 2048;
    v16 = [v6 count];
    _os_log_impl(&dword_260D18000, v7, OS_LOG_TYPE_DEFAULT, "Portrait XPC returns %tu item(s) and %tu explanation(s)", buf, 0x16u);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __142__PSGProactiveTriggerHandler__handlePortraitTrigger_localeIdentifier_bundleIdentifier_recipients_limit_timeoutSeconds_explanationSet_results___block_invoke_91;
  v11[3] = &unk_279ABCF28;
  v12 = *(a1 + 32);
  [v6 enumerateWithBlock:v11];
  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __142__PSGProactiveTriggerHandler__handlePortraitTrigger_localeIdentifier_bundleIdentifier_recipients_limit_timeoutSeconds_explanationSet_results___block_invoke_91(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = psg_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277D3A470] stringFromExplanation:a2];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_260D18000, v4, OS_LOG_TYPE_DEFAULT, "Portrait Exp Code: %@", &v7, 0xCu);
  }

  return [*(a1 + 32) pushPortraitExplanationCode:a2];
}

- (BOOL)_handleOperationalTrigger:(id)trigger localeIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier recipientNames:(id)names availableApps:(id)apps limit:(unint64_t)limit explanationSet:(id)set results:(id)self0
{
  v131[1] = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  namesCopy = names;
  appsCopy = apps;
  setCopy = set;
  resultsCopy = results;
  triggerAttributes = [triggerCopy triggerAttributes];
  v20 = [triggerAttributes valueForKey:*MEMORY[0x277D23050]];

  triggerAttributes2 = [triggerCopy triggerAttributes];
  v22 = [triggerAttributes2 valueForKey:*MEMORY[0x277D23028]];

  triggerAttributes3 = [triggerCopy triggerAttributes];
  v116 = [triggerAttributes3 objectForKeyedSubscript:@"pov"];

  triggerAttributes4 = [triggerCopy triggerAttributes];
  v118 = [triggerAttributes4 valueForKey:*MEMORY[0x277D22FF8]];

  v25 = [namesCopy count];
  if ([v20 isEqualToString:*MEMORY[0x277D22FB8]] && objc_msgSend(v22, "isEqualToString:", *MEMORY[0x277D22F28]) && objc_msgSend(objc_opt_class(), "_isCurrentLocationSupportedPlatform"))
  {
    if ([appsCopy containsObject:@"com.apple.messages.currentLocation"])
    {
      v111 = objc_opt_new();
      [v111 setObject:@"com.apple.messages.currentLocation" forKey:@"bundleID"];
      v26 = [v116 containsString:@"mirrored"];
      v27 = @"currentLocation";
      if (v26)
      {
        v27 = @"requestLocation";
      }

      v114 = v27;
      v28 = [v116 containsString:@"mirrored"];
      v29 = psg_default_log_handle();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
      if (v28)
      {
        if (v30)
        {
          *buf = 0;
          _os_log_impl(&dword_260D18000, v29, OS_LOG_TYPE_INFO, "[PSGProactiveTriggerHandler] Preparing prediction for requesting location.", buf, 2u);
        }

        if (v25 >= 2)
        {
          v31 = psg_default_log_handle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_260D18000, v31, OS_LOG_TYPE_INFO, "[PSGProactiveTriggerHandler] Request location predictions are not allowed for group chats", buf, 2u);
          }

          v32 = 0;
          v33 = v111;
          v34 = v31;
          goto LABEL_39;
        }

        v88 = +[PSGUtilities sharedInstance];
        v89 = [v88 localizedStringForKey:@"REQUEST_LOCATION_BUTTON_CAPTION" withLocale:identifierCopy];
        v109 = _PASValidatedFormat(v89, v90, v91, v92, v93, v94, v95, v96, @"");

        v33 = v111;
        v85 = [[PSGOperationalPredictedItem alloc] initWithItemIdentifier:v114 value:v109 bundleIdentifier:bundleIdentifierCopy operationData:v111];
        v131[0] = v85;
        v86 = MEMORY[0x277CBEA60];
        v87 = v131;
      }

      else
      {
        if (v30)
        {
          *buf = 0;
          _os_log_impl(&dword_260D18000, v29, OS_LOG_TYPE_INFO, "[PSGProactiveTriggerHandler] Preparing prediction for sharing location.", buf, 2u);
        }

        v76 = +[PSGUtilities sharedInstance];
        v77 = [v76 localizedStringForKey:@"SEND_CURRENT_LOCATION_BUTTON_CAPTION" withLocale:identifierCopy];
        v109 = _PASValidatedFormat(v77, v78, v79, v80, v81, v82, v83, v84, @"");

        v33 = v111;
        v85 = [[PSGOperationalPredictedItem alloc] initWithItemIdentifier:v114 value:v109 bundleIdentifier:bundleIdentifierCopy operationData:v111];
        v130 = v85;
        v86 = MEMORY[0x277CBEA60];
        v87 = &v130;
      }

      v32 = [v86 arrayWithObjects:v87 count:1];

      v34 = v109;
LABEL_39:

LABEL_44:
      v115 = 1;
      goto LABEL_45;
    }

LABEL_43:
    [setCopy pushInternalExplanationCode:2];
    v32 = 0;
    goto LABEL_44;
  }

  if ([v20 isEqualToString:*MEMORY[0x277D46C00]])
  {
    if ([appsCopy containsObject:@"com.apple.messages.surf"])
    {
      v112 = v22;
      v35 = v20;
      v36 = setCopy;
      v37 = appsCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:@"com.apple.messages.surf" forKey:@"bundleID"];
      v39 = [v118 objectForKey:@"Currency"];
      if (v39)
      {
        [dictionary setObject:v39 forKey:@"Currency"];
        v40 = [[PSGOperationalPredictedItem alloc] initWithItemIdentifier:@"surf" value:@"Pay" bundleIdentifier:bundleIdentifierCopy operationData:dictionary];
        v129 = v40;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];
      }

      else
      {
        v32 = 0;
      }

      v115 = 1;
      appsCopy = v37;
      setCopy = v36;
      v20 = v35;
      v22 = v112;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if ([v20 isEqualToString:*MEMORY[0x277D46C10]])
  {
    if ([appsCopy containsObject:@"com.apple.messages.photos"])
    {
      v41 = MEMORY[0x277CBEB38];
      triggerAttributes5 = [triggerCopy triggerAttributes];
      [v41 dictionaryWithDictionary:triggerAttributes5];
      v43 = v106 = appsCopy;

      [v43 setObject:@"com.apple.messages.photos" forKey:@"bundleID"];
      v44 = +[PSGUtilities sharedInstance];
      v45 = [v44 localizedStringForKey:@"CHOOSE_PHOTOS_CAPTION" withLocale:identifierCopy];
      _PASValidatedFormat(v45, v46, v47, v48, v49, v50, v51, v52, @"");
      v54 = v53 = v22;

      v55 = [[PSGOperationalPredictedItem alloc] initWithItemIdentifier:@"choosePhotos" value:v54 bundleIdentifier:bundleIdentifierCopy operationData:v43];
      v128 = v55;
      v115 = 1;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];

      v22 = v53;
      v56 = bundleIdentifierCopy;
      v57 = identifierCopy;

      appsCopy = v106;
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if ([v20 isEqualToString:@"event"])
  {
    v56 = bundleIdentifierCopy;
    v57 = identifierCopy;
    if (![v22 isEqualToString:@"traveling home"] || !objc_msgSend(objc_opt_class(), "_isCheckInSupportedPlatform"))
    {
      v32 = 0;
      v115 = 0;
      goto LABEL_46;
    }

    v58 = psg_default_log_handle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D18000, v58, OS_LOG_TYPE_DEFAULT, "SafetyMonitor: text input has a match", buf, 2u);
    }

    if ([appsCopy containsObject:@"com.apple.SafetyMonitorApp.SafetyMonitorMessages"])
    {
      v108 = setCopy;
      v59 = appsCopy;
      v60 = MEMORY[0x277CBEB38];
      triggerAttributes6 = [triggerCopy triggerAttributes];
      v62 = [v60 dictionaryWithDictionary:triggerAttributes6];

      v63 = [@"com.apple.SafetyMonitorApp.SafetyMonitorMessages" copy];
      [v62 setObject:v63 forKeyedSubscript:@"bundleID"];

      v64 = +[PSGUtilities sharedInstance];
      v65 = [v64 localizedStringForKey:@"START_CHECK_IN_SESSION_CAPTION" withLocale:identifierCopy];
      v73 = _PASValidatedFormat(v65, v66, v67, v68, v69, v70, v71, v72, @"");

      v74 = [[PSGOperationalPredictedItem alloc] initWithItemIdentifier:@"start check-in" value:v73 bundleIdentifier:bundleIdentifierCopy operationData:v62];
      v127 = v74;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];

      v75 = psg_default_log_handle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D18000, v75, OS_LOG_TYPE_DEFAULT, "SafetyMonitor: predicted item formed", buf, 2u);
      }

      v115 = 1;
      appsCopy = v59;
      setCopy = v108;
      goto LABEL_45;
    }

    v97 = psg_default_log_handle();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v126 = @"com.apple.SafetyMonitorApp.SafetyMonitorMessages";
      _os_log_impl(&dword_260D18000, v97, OS_LOG_TYPE_DEFAULT, "SafetyMonitor: ignoring the trigger -- %@ not supported", buf, 0xCu);
    }

    goto LABEL_43;
  }

  v32 = 0;
  v115 = 0;
LABEL_45:
  v56 = bundleIdentifierCopy;
  v57 = identifierCopy;
LABEL_46:
  if ([v32 count])
  {
    v110 = setCopy;
    v113 = v22;
    v105 = v20;
    v107 = appsCopy;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v98 = v32;
    v99 = [v98 countByEnumeratingWithState:&v120 objects:v124 count:16];
    if (v99)
    {
      v100 = v99;
      v101 = *v121;
      do
      {
        for (i = 0; i != v100; ++i)
        {
          if (*v121 != v101)
          {
            objc_enumerationMutation(v98);
          }

          v103 = [[PSGStructuredInfoSuggestion alloc] initWithProactiveTrigger:triggerCopy portraitItem:0 operationalItem:*(*(&v120 + 1) + 8 * i)];
          [resultsCopy addObject:v103];
        }

        v100 = [v98 countByEnumeratingWithState:&v120 objects:v124 count:16];
      }

      while (v100);
    }

    v56 = bundleIdentifierCopy;
    appsCopy = v107;
    setCopy = v110;
    v20 = v105;
    v22 = v113;
  }

  return v115;
}

- (PSGProactiveTriggerHandler)initWithBroker:(id)broker cache:(id)cache
{
  brokerCopy = broker;
  cacheCopy = cache;
  v12.receiver = self;
  v12.super_class = PSGProactiveTriggerHandler;
  v9 = [(PSGProactiveTriggerHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_broker, broker);
    objc_storeStrong(&v10->_cache, cache);
  }

  return v10;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_383 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_383, &__block_literal_global_384);
  }

  v3 = sharedInstance__pasExprOnceResult_385;

  return v3;
}

void __44__PSGProactiveTriggerHandler_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [PSGProactiveTriggerHandler alloc];
  v2 = [MEMORY[0x277D3A468] sharedInstance];
  v3 = +[PSGStructuredInfoSuggestionCache sharedInstance];
  v4 = [(PSGProactiveTriggerHandler *)v1 initWithBroker:v2 cache:v3];
  v5 = sharedInstance__pasExprOnceResult_385;
  sharedInstance__pasExprOnceResult_385 = v4;

  objc_autoreleasePoolPop(v0);
}

@end