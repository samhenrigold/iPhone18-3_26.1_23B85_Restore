@interface DDEventComponents
+ (id)_eventComponents:(id)components matchingResult:(__DDResult *)result context:(id)context;
+ (id)_eventComponents:(id)components withSuggestedTitleFromNaturalLanguageContext:(id)context context:(id)a5;
+ (id)_eventsFromIntelligentSuggestions:(id)suggestions;
+ (id)_eventsFromNaturalLanguageText:(id)text context:(id)context;
+ (id)_messageWithNaturalLanguageContext:(id)context context:(id)a4;
+ (id)bestEventComponentsForResult:(__DDResult *)result withNaturalLanguageContext:(id)context suggestionsContext:(id)suggestionsContext context:(id)a6;
- (DDEventComponents)initWithCoder:(id)coder;
- (_NSRange)originRange;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DDEventComponents

+ (id)bestEventComponentsForResult:(__DDResult *)result withNaturalLanguageContext:(id)context suggestionsContext:(id)suggestionsContext context:(id)a6
{
  v30[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  suggestionsContextCopy = suggestionsContext;
  v12 = a6;
  bundleIdentifier = [suggestionsContextCopy bundleIdentifier];
  v14 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v15 = [v14 containsObject:bundleIdentifier];

  if (v15)
  {
    firstObject = 0;
    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[DDEventComponents bestEventComponentsForResult:withNaturalLanguageContext:suggestionsContext:context:];
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_7:
    v17 = objc_opt_new();
    goto LABEL_8;
  }

  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_5:
  v17 = [v12 mutableCopy];
LABEL_8:
  v18 = v17;
  [v17 objectForKey:{@"ReferenceDate", 0}];
  [MEMORY[0x277CBEBB0] defaultTimeZone];
  if (DDResultCopyExtractedDateFromReferenceDate() && v29)
  {
    [v18 setObject:v29 forKey:@"_ActionResultTimeZone"];
  }

  Range = DDResultGetRange();
  v21 = [MEMORY[0x277CCAE60] valueWithRange:{Range, v20}];
  [v18 setObject:v21 forKey:@"_ActionResultRange"];

  if (suggestionsContextCopy)
  {
    v22 = [self _eventsFromIntelligentSuggestions:suggestionsContextCopy];
    v23 = [self _eventComponents:v22 matchingResult:result context:v18];

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v23 = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
LABEL_13:
      if ([v23 count] == 1)
      {
        goto LABEL_14;
      }

LABEL_21:
      v24 = [self _eventsFromNaturalLanguageText:contextCopy context:v18];
      v27 = [self _eventComponents:v24 matchingResult:result context:v18];
      goto LABEL_22;
    }
  }

  [DDEventComponents bestEventComponentsForResult:v23 withNaturalLanguageContext:? suggestionsContext:? context:?];
  if ([v23 count] != 1)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (_os_feature_enabled_impl())
  {
    v24 = [v23 objectAtIndexedSubscript:0];
    eventTypeIdentifier = [v24 eventTypeIdentifier];

    if (!eventTypeIdentifier)
    {
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      +[DDEventComponents bestEventComponentsForResult:withNaturalLanguageContext:suggestionsContext:context:];
    }

    v26 = [self _eventComponents:v24 withSuggestedTitleFromNaturalLanguageContext:contextCopy context:v18];
    v30[0] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];

    v23 = v26;
LABEL_22:

    v23 = v27;
LABEL_23:
  }

  firstObject = [v23 firstObject];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[DDEventComponents bestEventComponentsForResult:withNaturalLanguageContext:suggestionsContext:context:];
  }

LABEL_27:

  return firstObject;
}

- (DDEventComponents)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = DDEventComponents;
  v5 = [(DDEventComponents *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventTypeIdentifier"];
    eventTypeIdentifier = v5->_eventTypeIdentifier;
    v5->_eventTypeIdentifier = v8;

    v5->_source = [coderCopy decodeIntegerForKey:@"source"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originRange"];
    v5->_originRange.location = [v14 rangeValue];
    v5->_originRange.length = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_eventTypeIdentifier forKey:@"eventTypeIdentifier"];
  [coderCopy encodeInteger:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  v6 = [MEMORY[0x277CCAE60] valueWithRange:{self->_originRange.location, self->_originRange.length}];
  [coderCopy encodeObject:v6 forKey:@"originRange"];
}

+ (id)_eventComponents:(id)components matchingResult:(__DDResult *)result context:(id)context
{
  componentsCopy = components;
  contextCopy = context;
  if (result)
  {
    Range = DDResultGetRange();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __61__DDEventComponents__eventComponents_matchingResult_context___block_invoke;
    v23[3] = &__block_descriptor_48_e30_B24__0__DDEventComponents_8_16l;
    v23[4] = Range;
    v23[5] = v10;
    v11 = [MEMORY[0x277CCAC30] predicateWithBlock:v23];
    result = [componentsCopy filteredArrayUsingPredicate:v11];

    v12 = objc_alloc(MEMORY[0x277CBEA80]);
    v13 = [v12 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v14 = [contextCopy objectForKey:@"_ActionResultDate"];

    if (v14)
    {
      v15 = [contextCopy objectForKey:@"_ActionResultDate"];
      v14 = [v13 components:28 fromDate:v15];
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __61__DDEventComponents__eventComponents_matchingResult_context___block_invoke_2;
    v19[3] = &unk_278291018;
    v22 = 28;
    v20 = v13;
    v21 = v14;
    v16 = v14;
    v17 = v13;
    [(__DDResult *)result enumerateObjectsUsingBlock:v19];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [DDEventComponents _eventComponents:componentsCopy matchingResult:result context:?];
    }
  }

  return result;
}

BOOL __61__DDEventComponents__eventComponents_matchingResult_context___block_invoke(NSRange *a1, void *a2)
{
  v3 = [a2 originRange];
  v5 = v4;
  v10.location = v3;
  v10.length = v4;
  v6 = NSUnionRange(a1[2], v10);
  return v3 == v6.location && v5 == v6.length || v3 == 0x7FFFFFFFFFFFFFFFLL;
}

void __61__DDEventComponents__eventComponents_matchingResult_context___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 startDate];

  v4 = v12;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = [v12 startDate];
    v8 = [v5 components:v6 fromDate:v7];

    v9 = [v8 day];
    if (v9 != [*(a1 + 40) day] || (v10 = objc_msgSend(v8, "month"), v10 != objc_msgSend(*(a1 + 40), "month")) || (v11 = objc_msgSend(v8, "year"), v11 != objc_msgSend(*(a1 + 40), "year")))
    {
      [v12 setStartDate:0];
      [v12 setEndDate:0];
    }

    v4 = v12;
  }
}

+ (id)_eventsFromNaturalLanguageText:(id)text context:(id)context
{
  v83[1] = *MEMORY[0x277D85DE8];
  textCopy = text;
  contextCopy = context;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [contextCopy objectForKeyedSubscript:@"EventTitle"];
  [textCopy result];
  v10 = DDResultGetMatchedString();
  v11 = [self _messageWithNaturalLanguageContext:textCopy context:contextCopy];
  messageUnits = [v11 messageUnits];
  firstObject = [messageUnits firstObject];

  v77 = firstObject;
  if (firstObject)
  {
    v72 = v11;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [DDEventComponents _eventsFromNaturalLanguageText:textCopy context:v10];
    }

    v73 = v10;
    v80 = 0;
    associatedResults = [textCopy associatedResults];
    v79 = 0;
    v76 = dd_beginDateOfEventResultsRespectingSpecificEndDates(associatedResults, 1, contextCopy, &v80, &v79);
    v75 = v79;

    [textCopy result];
    IsApprox = DDResultTimeIsApprox();
    v16 = objc_alloc(MEMORY[0x277CBEA80]);
    v74 = [v16 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v17 = [contextCopy objectForKey:@"_ActionResultDate"];
    v18 = [contextCopy objectForKey:@"_ActionResultTimeZone"];
    v19 = objc_alloc_init(DDEventComponents);
    [(DDEventComponents *)v19 setSource:2];
    Helper_x8__OBJC_CLASS___IPEventClassificationType = gotLoadHelper_x8__OBJC_CLASS___IPEventClassificationType(v20);
    v23 = [*(v22 + 728) eventClassificationTypeFromMessageUnit:v77 detectedStartDate:{v17, Helper_x8__OBJC_CLASS___IPEventClassificationType}];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      +[DDEventComponents _eventsFromNaturalLanguageText:context:];
      if (v23)
      {
        goto LABEL_6;
      }
    }

    else if (v23)
    {
LABEL_6:
      v24 = [v23 defaultStartingTimeHour] != -1;
      goto LABEL_10;
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      goto LABEL_60;
    }

    v24 = 0;
LABEL_10:
    [v23 defaultDuration];
    v26 = v25;
    v27 = v80 | IsApprox;
    v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v27)
    {
      if (v28)
      {
        +[DDEventComponents _eventsFromNaturalLanguageText:context:];
        v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
        if (v24)
        {
LABEL_13:
          if (v29)
          {
            +[DDEventComponents _eventsFromNaturalLanguageText:context:];
            if (v18)
            {
LABEL_15:
              [v74 setTimeZone:v18];
              if (v76)
              {
LABEL_16:
                v30 = v74;
                v31 = [v74 components:62 fromDate:?];
                goto LABEL_34;
              }

LABEL_33:
              date = [MEMORY[0x277CBEAA8] date];
              v30 = v74;
              v31 = [v74 components:62 fromDate:date];

LABEL_34:
              [v31 setHour:{objc_msgSend(v23, "defaultStartingTimeHour")}];
              defaultStartingTimeMinutes = [v23 defaultStartingTimeMinutes];
              [v31 setMinute:defaultStartingTimeMinutes & ~(defaultStartingTimeMinutes >> 31)];
              v37 = [v30 dateFromComponents:v31];
              v38 = v37;
              if (v26 <= 0.0 || v75)
              {
                if (v75)
                {
                  v39 = v75;
                }

                else
                {
                  v39 = [v37 dateByAddingTimeInterval:3600.0];
                }

                v71 = v39;
              }

              else
              {
                [v23 defaultDuration];
                v71 = [v38 dateByAddingTimeInterval:?];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
                {
                  +[DDEventComponents _eventsFromNaturalLanguageText:context:];
                }
              }

              v32 = v38;
              goto LABEL_43;
            }
          }

          else if (v18)
          {
            goto LABEL_15;
          }

          defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
          [v74 setTimeZone:defaultTimeZone];

          if (v76)
          {
            goto LABEL_16;
          }

          goto LABEL_33;
        }
      }

      else
      {
        v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
        if (v24)
        {
          goto LABEL_13;
        }
      }

      if (v29)
      {
        +[DDEventComponents _eventsFromNaturalLanguageText:context:];
      }

      v71 = 0;
      v32 = 0;
LABEL_43:
      v40 = [MEMORY[0x277CBEB18] arrayWithObject:@"com.apple.MobileSMS"];
      if (_os_feature_enabled_impl())
      {
        [v40 addObject:@"com.apple.mobilemail"];
      }

      v70 = v40;
      if (_os_feature_enabled_impl())
      {
        bundleIdentifier = [textCopy bundleIdentifier];
        v42 = [v40 containsObject:bundleIdentifier];
      }

      else
      {
        v42 = 0;
      }

      v78 = 0;
      v83[0] = v77;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];
      v44 = [v23 adjustedEventTitleForMessageUnits:v43 subject:v9 dateInSubject:0 eventStartDate:0 useTitleGenerationModel:v42 isGeneratedFromSubject:0 isGeneratedFromTitleGenerationModel:&v78];
      if (v44)
      {
        [(DDEventComponents *)v19 setTitle:v44];

        if (v78 != 1)
        {
          goto LABEL_54;
        }
      }

      else
      {
        [v23 defaultTitle];
        v69 = v23;
        v45 = contextCopy;
        v46 = textCopy;
        v47 = v32;
        v48 = v9;
        v50 = v49 = v8;
        [(DDEventComponents *)v19 setTitle:v50];

        v8 = v49;
        v9 = v48;
        v32 = v47;
        textCopy = v46;
        contextCopy = v45;
        v23 = v69;

        if (v78 != 1)
        {
LABEL_54:
          if (((v23 == 0) & v42) == 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              +[DDEventComponents _eventsFromNaturalLanguageText:context:];
            }

            v53 = gotLoadHelper_x8__OBJC_CLASS___IPEventClassificationType(v52);
            v55 = *(v54 + 728);
            v82 = v77;
            v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:{1, v53}];
            v57 = [v55 titleGenerationModelPredictionForMessageUnits:v56];
            [(DDEventComponents *)v19 setTitle:v57];

            title = [(DDEventComponents *)v19 title];

            if (title)
            {
              [(DDEventComponents *)v19 setSource:4];
            }
          }

          identifier = [v23 identifier];
          [(DDEventComponents *)v19 setEventTypeIdentifier:identifier];

          [(DDEventComponents *)v19 setStartDate:v32];
          [(DDEventComponents *)v19 setEndDate:v71];
          [v23 defaultDuration];
          [(DDEventComponents *)v19 setDuration:?];
          [(DDEventComponents *)v19 setOriginRange:0x7FFFFFFFFFFFFFFFLL, 0];

LABEL_60:
          title2 = [(DDEventComponents *)v19 title];
          if ([title2 length])
          {
            v10 = v73;
            v61 = v74;
          }

          else
          {
            v62 = [v9 length];

            v10 = v73;
            v61 = v74;
            if (!v62)
            {
LABEL_67:
              [v8 addObject:v19];
              firstObject = v8;

              v11 = v72;
              goto LABEL_68;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              +[DDEventComponents _eventsFromNaturalLanguageText:context:];
            }

            v64 = gotLoadHelper_x8__OBJC_CLASS___IPEventClassificationType(v63);
            v66 = *(v65 + 728);
            v81 = v77;
            v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:{1, v64}];
            title2 = [v66 fallbackEventTitleForMessageUnits:v67 subject:v9 checkForDateInSubject:1];

            [(DDEventComponents *)v19 setTitle:title2];
            [(DDEventComponents *)v19 setOriginRange:0x7FFFFFFFFFFFFFFFLL, 0];
          }

          goto LABEL_67;
        }
      }

      title3 = [(DDEventComponents *)v19 title];

      if (title3)
      {
        [(DDEventComponents *)v19 setSource:4];
      }

      goto LABEL_54;
    }

    if (v28)
    {
      +[DDEventComponents _eventsFromNaturalLanguageText:context:];
      v32 = v76;
      v33 = v75;
      if (v75)
      {
LABEL_19:
        v71 = v33;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          +[DDEventComponents _eventsFromNaturalLanguageText:context:];
        }

        goto LABEL_43;
      }
    }

    else
    {
      v32 = v76;
      v33 = v75;
      if (v75)
      {
        goto LABEL_19;
      }
    }

    if (v26 <= 0.0)
    {
      v71 = [v32 dateByAddingTimeInterval:3600.0];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        +[DDEventComponents _eventsFromNaturalLanguageText:context:];
      }
    }

    else
    {
      [v23 defaultDuration];
      v71 = [v32 dateByAddingTimeInterval:?];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        +[DDEventComponents _eventsFromNaturalLanguageText:context:];
      }
    }

    goto LABEL_43;
  }

LABEL_68:

  return firstObject;
}

+ (id)_eventsFromIntelligentSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [DDEventComponents _eventsFromIntelligentSuggestions:suggestionsCopy];
    coreSpotlightUniqueIdentifier = [suggestionsCopy coreSpotlightUniqueIdentifier];

    if (coreSpotlightUniqueIdentifier)
    {
      goto LABEL_3;
    }

LABEL_14:
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_15;
  }

  coreSpotlightUniqueIdentifier2 = [suggestionsCopy coreSpotlightUniqueIdentifier];

  if (!coreSpotlightUniqueIdentifier2)
  {
    goto LABEL_14;
  }

LABEL_3:
  gotLoadHelper_x8__OBJC_CLASS___CSSearchableItemAttributeSet(v5);
  v7 = objc_alloc(*(v6 + 1208));
  identifier = [*MEMORY[0x277CE1DF8] identifier];
  v9 = [v7 initWithItemContentType:identifier];

  gotLoadHelper_x8__OBJC_CLASS___CSSearchableItem(v10);
  v12 = objc_alloc(*(v11 + 1200));
  coreSpotlightUniqueIdentifier3 = [suggestionsCopy coreSpotlightUniqueIdentifier];
  v14 = [v12 initWithUniqueIdentifier:coreSpotlightUniqueIdentifier3 domainIdentifier:0 attributeSet:v9];

  Helper_x8__OBJC_CLASS___SGSuggestionsService = gotLoadHelper_x8__OBJC_CLASS___SGSuggestionsService(v15);
  serviceForMessages = [*(v17 + 280) serviceForMessages];
  v19 = MEMORY[0x277CBEBF8];
  if (serviceForMessages)
  {
    v20 = &v32;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__0;
    v36 = __Block_byref_object_dispose__0;
    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = dispatch_semaphore_create(0);
    bundleIdentifier = [suggestionsCopy bundleIdentifier];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __55__DDEventComponents__eventsFromIntelligentSuggestions___block_invoke;
    v28[3] = &unk_278291040;
    v29 = suggestionsCopy;
    v31 = &v32;
    v23 = v21;
    v30 = v23;
    [serviceForMessages harvestedSuggestionsFromMessage:v14 bundleIdentifier:bundleIdentifier options:2 completionHandler:v28];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      +[DDEventComponents _eventsFromIntelligentSuggestions:];
    }

    v24 = dispatch_time(0, 5000000000);
    v25 = dispatch_semaphore_wait(v23, v24);
    if (v25)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        +[DDEventComponents _eventsFromIntelligentSuggestions:];
      }
    }

    else
    {
      v20 = v33[5];
    }

    _Block_object_dispose(&v32, 8);
    if (!v25)
    {
      v19 = v20;
    }
  }

LABEL_15:

  return v19;
}

void __55__DDEventComponents__eventsFromIntelligentSuggestions___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (v6)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  __55__DDEventComponents__eventsFromIntelligentSuggestions___block_invoke_cold_1(v8);
  if (!v6)
  {
LABEL_6:
    v46 = v7;
    v47 = v6;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v45 = v8;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (!v9)
    {
LABEL_30:

      v7 = v46;
      v6 = v47;
      v8 = v45;
      goto LABEL_31;
    }

    v10 = v9;
    v11 = *v51;
LABEL_9:
    v12 = 0;
    while (1)
    {
      if (*v51 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v50 + 1) + 8 * v12);
      v14 = objc_alloc_init(DDEventComponents);
      [(DDEventComponents *)v14 setSource:1];
      v15 = [v13 event];
      v16 = [v15 title];
      [(DDEventComponents *)v14 setTitle:v16];

      v17 = [v15 URL];
      [(DDEventComponents *)v14 setURL:v17];

      v18 = [v15 notes];
      [(DDEventComponents *)v14 setNotes:v18];

      v19 = [v15 locations];
      v20 = [v19 firstObject];

      v21 = [v20 label];
      if (v21)
      {
        [(DDEventComponents *)v14 setLocation:v21];

        if ([v20 isGeocoded])
        {
          goto LABEL_18;
        }
      }

      else
      {
        v23 = [v20 address];
        [(DDEventComponents *)v14 setLocation:v23];

        if ([v20 isGeocoded])
        {
          goto LABEL_18;
        }
      }

      v24 = [v20 handle];

      if (v24)
      {
LABEL_18:
        Helper_x8__OBJC_CLASS___EKStructuredLocation = gotLoadHelper_x8__OBJC_CLASS___EKStructuredLocation(v22);
        v27 = *(v26 + 2768);
        v28 = [v20 label];
        if (v28)
        {
          v29 = [v27 locationWithTitle:v28];
        }

        else
        {
          v44 = [v20 address];
          v29 = [v27 locationWithTitle:v44];
        }

        v30 = [v20 address];

        if (v30)
        {
          v31 = [v20 address];
          [v29 setAddress:v31];
        }

        if ([v20 isGeocoded])
        {
          v32 = objc_alloc(MEMORY[0x277CE41F8]);
          [v20 latitude];
          v34 = v33;
          [v20 longitude];
          v36 = [v32 initWithLatitude:v34 longitude:v35];
          [v29 setGeoLocation:v36];
        }

        v37 = [v20 handle];

        if (v37)
        {
          v38 = [v20 handle];
          [v29 setMapKitHandle:v38];
        }

        [(DDEventComponents *)v14 setStructuredLocation:v29];
      }

      v39 = [v15 naturalLanguageEventTypeIdentifier];
      [(DDEventComponents *)v14 setEventTypeIdentifier:v39];

      -[DDEventComponents setEventAttributes:](v14, "setEventAttributes:", [v15 naturalLanguageEventAttributes]);
      [(DDEventComponents *)v14 setOriginRange:0x7FFFFFFFFFFFFFFFLL, 0];
      if (([v15 isAllDay] & 1) == 0)
      {
        v40 = [v13 event];
        v41 = [v40 start];
        [(DDEventComponents *)v14 setStartDate:v41];

        v42 = [v13 event];
        v43 = [v42 end];
        [(DDEventComponents *)v14 setEndDate:v43];
      }

      [*(*(*(a1 + 48) + 8) + 40) addObject:v14];

      if (v10 == ++v12)
      {
        v10 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
        if (!v10)
        {
          goto LABEL_30;
        }

        goto LABEL_9;
      }
    }
  }

LABEL_3:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __55__DDEventComponents__eventsFromIntelligentSuggestions___block_invoke_cold_2(a1, v6);
  }

LABEL_31:
  dispatch_semaphore_signal(*(a1 + 40));
}

+ (id)_eventComponents:(id)components withSuggestedTitleFromNaturalLanguageContext:(id)context context:(id)a5
{
  componentsCopy = components;
  contextCopy = context;
  v10 = a5;
  if (([componentsCopy eventAttributes] & 0x1000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      +[DDEventComponents _eventComponents:withSuggestedTitleFromNaturalLanguageContext:context:];
    }
  }

  else
  {
    v11 = [self _messageWithNaturalLanguageContext:contextCopy context:v10];
    Helper_x8__OBJC_CLASS___IPEventClassificationType = gotLoadHelper_x8__OBJC_CLASS___IPEventClassificationType(v12);
    v15 = *(v14 + 728);
    messageUnits = [v16 messageUnits];
    v18 = [v15 titleGenerationModelPredictionForMessageUnits:messageUnits];

    if (v18)
    {
      [componentsCopy setTitle:v18];
      [componentsCopy setSource:3];
    }
  }

  return componentsCopy;
}

+ (id)_messageWithNaturalLanguageContext:(id)context context:(id)a4
{
  v43[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = a4;
  [contextCopy result];
  v7 = DDResultGetMatchedString();
  v8 = [v6 objectForKeyedSubscript:@"GroupTranscript"];
  if (![v8 length])
  {
    leadingText = [contextCopy leadingText];

    if (leadingText)
    {
      v8 = [leadingText stringByAppendingString:v7];

      trailingText = [contextCopy trailingText];
      if (!trailingText)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = v7;
      trailingText = [contextCopy trailingText];
      if (!trailingText)
      {
LABEL_8:

        if ([v8 length])
        {
          goto LABEL_3;
        }

LABEL_9:
        v17 = 0;
        goto LABEL_28;
      }
    }

    trailingText2 = [contextCopy trailingText];
    v16 = [v8 stringByAppendingString:trailingText2];

    v8 = v16;
    goto LABEL_8;
  }

  if (![v8 length])
  {
    goto LABEL_9;
  }

LABEL_3:
  v9 = [v6 objectForKey:@"EventTitle"];
  v10 = [v6 objectForKey:@"ReferenceDate"];
  v11 = v10;
  if (v10)
  {
    date = v10;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v18 = date;

  if (_os_feature_enabled_impl())
  {
    v20 = [v6 objectForKey:@"CoreSpotlightUniqueIdentifier"];
    if (_os_feature_enabled_impl())
    {
      bundleIdentifier = [contextCopy bundleIdentifier];
      v23 = [bundleIdentifier isEqualToString:@"com.apple.mobilemail"];

      Helper_x8__IPMessageTypeEmail = gotLoadHelper_x8__IPMessageTypeEmail(v24);
      gotLoadHelper_x9__IPMessageTypeShortMessage(Helper_x8__IPMessageTypeEmail);
      v28 = *(v27 + 720);
      if (!v23)
      {
        v26 = v28;
      }

      v29 = *v26;
    }

    else
    {
      v29 = 0;
    }

    gotLoadHelper_x8__OBJC_CLASS___IPMessage(v21);
    v33 = objc_alloc(*(v32 + 752));
    if (v9)
    {
      v34 = v9;
    }

    else
    {
      v34 = &stru_282C1E0A8;
    }

    v17 = [v33 initWithIdentifier:v20 subject:v34 sender:0 recipients:MEMORY[0x277CBEBF8] dateSent:v18 type:v29];
  }

  else
  {
    gotLoadHelper_x8__OBJC_CLASS___IPMessage(v19);
    v17 = [objc_alloc(*(v30 + 752)) initWithDateSent:v18 subject:v9];
  }

  gotLoadHelper_x8__OBJC_CLASS___IPMessageUnit(v31);
  v36 = [objc_alloc(*(v35 + 760)) initWithText:v8 originalMessage:v17 index:0];
  v37 = [v6 objectForKey:@"_ActionResultRange"];
  v38 = v37;
  if (v37 && [v37 rangeValue] != 0x7FFFFFFFFFFFFFFFLL)
  {
    rangeValue = [v38 rangeValue];
    [v36 setInteractedDateRange:{rangeValue, v40}];
  }

  if (v36)
  {
    v43[0] = v36;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    [v17 setMessageUnits:v41];
  }

LABEL_28:

  return v17;
}

- (_NSRange)originRange
{
  length = self->_originRange.length;
  location = self->_originRange.location;
  result.length = length;
  result.location = location;
  return result;
}

+ (void)bestEventComponentsForResult:withNaturalLanguageContext:suggestionsContext:context:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

+ (void)bestEventComponentsForResult:(void *)a1 withNaturalLanguageContext:suggestionsContext:context:.cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)bestEventComponentsForResult:withNaturalLanguageContext:suggestionsContext:context:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_eventComponents:(void *)a1 matchingResult:(void *)a2 context:.cold.1(void *a1, void *a2)
{
  [a1 count];
  [a2 count];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)_eventsFromNaturalLanguageText:(void *)a1 context:(void *)a2 .cold.1(void *a1, void *a2)
{
  v4 = [a1 leadingText];
  [v4 length];
  [a2 length];
  v5 = [a1 trailingText];
  [v5 length];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

+ (void)_eventsFromNaturalLanguageText:context:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_eventsFromIntelligentSuggestions:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 coreSpotlightUniqueIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __55__DDEventComponents__eventsFromIntelligentSuggestions___block_invoke_cold_1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __55__DDEventComponents__eventsFromIntelligentSuggestions___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) coreSpotlightUniqueIdentifier];
  OUTLINED_FUNCTION_1_1();
  v5 = a2;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Retrieving events from Suggestions for identifier '%@' failed with error: %@", v4, 0x16u);
}

@end