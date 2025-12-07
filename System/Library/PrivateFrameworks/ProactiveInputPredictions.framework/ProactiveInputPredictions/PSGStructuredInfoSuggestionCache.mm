@interface PSGStructuredInfoSuggestionCache
+ (BOOL)_matchesPredictedValue:(id)value prefixValue:(id)prefixValue;
+ (PSGStructuredInfoSuggestionCache)sharedInstance;
+ (id)emptySuggestionsPlaceholder;
- (BOOL)_isCacheEmpty;
- (BOOL)_maybeClearCache;
- (PSGStructuredInfoSuggestionCache)initWithTTLSeconds:(double)seconds;
- (id)searchWithContext:(id)context localeIdentifier:(id)identifier maxSuggestions:(unint64_t)suggestions;
- (id)searchWithTrigger:(id)trigger localeIdentifier:(id)identifier maxSuggestions:(unint64_t)suggestions;
- (void)addEmptyPlaceholderForTrigger:(id)trigger localeIdentifier:(id)identifier;
- (void)addStructuredInfoSuggestions:(id)suggestions localeIdentifier:(id)identifier;
@end

@implementation PSGStructuredInfoSuggestionCache

- (BOOL)_maybeClearCache
{
  [(NSDate *)self->_startTime timeIntervalSinceNow];
  v4 = -v3;
  ttlSeconds = self->_ttlSeconds;
  if (ttlSeconds < -v3)
  {
    [(PSGStructuredInfoSuggestionCache *)self invalidate];
  }

  return ttlSeconds < v4;
}

- (BOOL)_isCacheEmpty
{
  cachedSuggestions = self->_cachedSuggestions;
  if (!cachedSuggestions)
  {
    return 1;
  }

  first = [(_PASTuple2 *)cachedSuggestions first];
  if (first)
  {
    second = [(_PASTuple2 *)self->_cachedSuggestions second];
    if (second)
    {
      second2 = [(_PASTuple2 *)self->_cachedSuggestions second];
      emptySuggestionsPlaceholder = [objc_opt_class() emptySuggestionsPlaceholder];
      if (second2 == emptySuggestionsPlaceholder)
      {
        v9 = 0;
      }

      else
      {
        second3 = [(_PASTuple2 *)self->_cachedSuggestions second];
        v9 = [second3 count] == 0;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)searchWithContext:(id)context localeIdentifier:(id)identifier maxSuggestions:(unint64_t)suggestions
{
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  if (-[PSGStructuredInfoSuggestionCache _isCacheEmpty](self, "_isCacheEmpty") || ![identifierCopy isEqualToString:self->_localeIdentifier])
  {
    v11 = 0;
  }

  else
  {
    v9 = [contextCopy componentsSeparatedByString:@" "];
    lastObject = [v9 lastObject];

    if ([lastObject length] && !-[PSGStructuredInfoSuggestionCache _maybeClearCache](self, "_maybeClearCache"))
    {
      v21 = identifierCopy;
      v22 = contextCopy;
      v11 = objc_opt_new();
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      second = [(_PASTuple2 *)self->_cachedSuggestions second];
      v13 = [second countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
LABEL_9:
        v16 = 0;
        while (1)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(second);
          }

          v17 = *(*(&v24 + 1) + 8 * v16);
          v18 = objc_opt_class();
          predictedValue = [v17 predictedValue];
          LODWORD(v18) = [v18 _matchesPredictedValue:predictedValue prefixValue:lastObject];

          if (v18)
          {
            [v11 addObject:v17];
            if ([v11 count] == suggestions)
            {
              break;
            }
          }

          if (v14 == ++v16)
          {
            v14 = [second countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v14)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      if (![v11 count])
      {
        [(PSGStructuredInfoSuggestionCache *)self invalidate];
      }

      identifierCopy = v21;
      contextCopy = v22;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)searchWithTrigger:(id)trigger localeIdentifier:(id)identifier maxSuggestions:(unint64_t)suggestions
{
  v49 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  identifierCopy = identifier;
  if (-[PSGStructuredInfoSuggestionCache _isCacheEmpty](self, "_isCacheEmpty") || ![identifierCopy isEqualToString:self->_localeIdentifier] || -[PSGStructuredInfoSuggestionCache _maybeClearCache](self, "_maybeClearCache"))
  {
    second3 = 0;
    goto LABEL_5;
  }

  first = [(_PASTuple2 *)self->_cachedSuggestions first];
  triggerAttributes = [first triggerAttributes];

  triggerAttributes2 = [triggerCopy triggerAttributes];
  v15 = [triggerAttributes isEqualToDictionary:triggerAttributes2];

  if (v15)
  {
    v16 = psg_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_260D18000, v16, OS_LOG_TYPE_DEBUG, "[StructuredInfoCache] Exact trigger match", buf, 2u);
    }

    second = [(_PASTuple2 *)self->_cachedSuggestions second];
    goto LABEL_16;
  }

  triggerCategory = [triggerCopy triggerCategory];
  if (triggerCategory != @"TaggedTextFieldContactsAutocomplete")
  {

LABEL_15:
    second = 0;
    goto LABEL_16;
  }

  first2 = [(_PASTuple2 *)self->_cachedSuggestions first];
  triggerCategory2 = [first2 triggerCategory];

  if (triggerCategory2 != @"TaggedTextFieldContactsAutocomplete")
  {
    goto LABEL_15;
  }

  triggerAttributes3 = [triggerCopy triggerAttributes];
  v23 = [PSGProactiveTrigger getSearchTerm:triggerAttributes3];

  v24 = [PSGProactiveTrigger getSearchTerm:triggerAttributes];
  if (![v23 length] || !objc_msgSend(v24, "length") || !objc_msgSend(v23, "hasPrefix:", v24))
  {
    second = 0;
LABEL_41:

LABEL_16:
    if ([second count])
    {
      if ([second count] <= suggestions)
      {
        v21 = second;
        second = v21;
      }

      else
      {
        v21 = [second subarrayWithRange:{0, suggestions}];
      }

      second3 = v21;
    }

    else
    {
      second3 = 0;
    }

    goto LABEL_22;
  }

  v25 = psg_default_log_handle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_260D18000, v25, OS_LOG_TYPE_DEBUG, "[StructuredInfoCache] Partial trigger match for Contacts Autocomplete", buf, 2u);
  }

  second2 = [(_PASTuple2 *)self->_cachedSuggestions second];
  emptySuggestionsPlaceholder = [objc_opt_class() emptySuggestionsPlaceholder];

  if (second2 != emptySuggestionsPlaceholder)
  {
    v38 = v24;
    second = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [(_PASTuple2 *)self->_cachedSuggestions second];
    v42 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v42)
    {
      v41 = *v44;
      v39 = v23;
      while (2)
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v44 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v43 + 1) + 8 * i);
          portraitItem = [v29 portraitItem];
          name = [portraitItem name];

          if ([name length])
          {
            if (_PASInsensitiveStringContainsString())
            {
              v32 = [PSGStructuredInfoSuggestion alloc];
              portraitItem2 = [v29 portraitItem];
              operationalItem = [v29 operationalItem];
              v35 = [(PSGStructuredInfoSuggestion *)v32 initWithProactiveTrigger:triggerCopy portraitItem:portraitItem2 operationalItem:operationalItem];

              [second addObject:v35];
              v36 = [second count];

              v37 = v36 == suggestions;
              v23 = v39;
              if (v37)
              {

                goto LABEL_44;
              }
            }
          }
        }

        v42 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v42)
        {
          continue;
        }

        break;
      }
    }

LABEL_44:

    v24 = v38;
    goto LABEL_41;
  }

  second3 = [(_PASTuple2 *)self->_cachedSuggestions second];

  second = 0;
LABEL_22:

LABEL_5:

  return second3;
}

- (void)addEmptyPlaceholderForTrigger:(id)trigger localeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = MEMORY[0x277D42648];
  triggerCopy = trigger;
  emptySuggestionsPlaceholder = [objc_opt_class() emptySuggestionsPlaceholder];
  v10 = [v7 tupleWithFirst:triggerCopy second:emptySuggestionsPlaceholder];

  cachedSuggestions = self->_cachedSuggestions;
  self->_cachedSuggestions = v10;

  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = identifierCopy;
  v15 = identifierCopy;

  date = [MEMORY[0x277CBEAA8] date];
  startTime = self->_startTime;
  self->_startTime = date;
}

- (void)addStructuredInfoSuggestions:(id)suggestions localeIdentifier:(id)identifier
{
  suggestionsCopy = suggestions;
  identifierCopy = identifier;
  if (![suggestionsCopy count])
  {
    v23 = psg_default_log_handle();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      goto LABEL_11;
    }

    v29 = 0;
    v24 = "Trying to add empty structured info array to cache.";
    v25 = &v29;
LABEL_13:
    _os_log_error_impl(&dword_260D18000, v23, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    goto LABEL_10;
  }

  obj = identifier;
  v27 = identifierCopy;
  if ([suggestionsCopy count] >= 2)
  {
    v8 = 1;
    while (1)
    {
      v9 = [suggestionsCopy objectAtIndexedSubscript:v8];
      proactiveTrigger = [v9 proactiveTrigger];
      triggerAttributes = [proactiveTrigger triggerAttributes];
      firstObject = [suggestionsCopy firstObject];
      proactiveTrigger2 = [firstObject proactiveTrigger];
      triggerAttributes2 = [proactiveTrigger2 triggerAttributes];
      v15 = [triggerAttributes isEqualToDictionary:triggerAttributes2];

      if ((v15 & 1) == 0)
      {
        break;
      }

      if (++v8 >= [suggestionsCopy count])
      {
        goto LABEL_6;
      }
    }

    v23 = psg_default_log_handle();
    identifierCopy = v27;
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v24 = "Trigger is inconsistent for the structured info array.";
    v25 = buf;
    goto LABEL_13;
  }

LABEL_6:
  v16 = MEMORY[0x277D42648];
  firstObject2 = [suggestionsCopy firstObject];
  proactiveTrigger3 = [firstObject2 proactiveTrigger];
  v19 = [v16 tupleWithFirst:proactiveTrigger3 second:suggestionsCopy];
  cachedSuggestions = self->_cachedSuggestions;
  self->_cachedSuggestions = v19;

  objc_storeStrong(&self->_localeIdentifier, obj);
  date = [MEMORY[0x277CBEAA8] date];
  startTime = self->_startTime;
  self->_startTime = date;

  identifierCopy = v27;
LABEL_11:
}

- (PSGStructuredInfoSuggestionCache)initWithTTLSeconds:(double)seconds
{
  v5.receiver = self;
  v5.super_class = PSGStructuredInfoSuggestionCache;
  result = [(PSGStructuredInfoSuggestionCache *)&v5 init];
  if (result)
  {
    result->_ttlSeconds = seconds;
  }

  return result;
}

+ (BOOL)_matchesPredictedValue:(id)value prefixValue:(id)prefixValue
{
  v22 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  prefixValueCopy = prefixValue;
  if (([valueCopy hasPrefix:prefixValueCopy] & 1) == 0)
  {
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v9 = [decimalDigitCharacterSet characterIsMember:{objc_msgSend(prefixValueCopy, "characterAtIndex:", 0)}];

    if (!v9 || (v19 = 0u, v20 = 0u, v17 = 0u, v18 = 0u, (v10 = [&unk_287345570 countByEnumeratingWithState:&v17 objects:v21 count:16]) == 0))
    {
      v7 = 0;
      goto LABEL_14;
    }

    v11 = v10;
    v12 = *v18;
LABEL_6:
    v13 = 0;
    while (1)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(&unk_287345570);
      }

      v14 = [MEMORY[0x277CCACA8] stringWithString:*(*(&v17 + 1) + 8 * v13)];
      v15 = [v14 stringByAppendingString:prefixValueCopy];

      LOBYTE(v14) = [valueCopy hasPrefix:v15];
      if (v14)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [&unk_287345570 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v7 = 0;
        if (v11)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }
  }

  v7 = 1;
LABEL_14:

  return v7;
}

+ (id)emptySuggestionsPlaceholder
{
  if (emptySuggestionsPlaceholder__pasOnceToken3 != -1)
  {
    dispatch_once(&emptySuggestionsPlaceholder__pasOnceToken3, &__block_literal_global_907);
  }

  v3 = emptySuggestionsPlaceholder__pasExprOnceResult;

  return v3;
}

void __63__PSGStructuredInfoSuggestionCache_emptySuggestionsPlaceholder__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = emptySuggestionsPlaceholder__pasExprOnceResult;
  emptySuggestionsPlaceholder__pasExprOnceResult = MEMORY[0x277CBEBF8];

  objc_autoreleasePoolPop(v0);
}

+ (PSGStructuredInfoSuggestionCache)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PSGStructuredInfoSuggestionCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken2_909 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_909, block);
  }

  v2 = sharedInstance__pasExprOnceResult_910;

  return v2;
}

void __50__PSGStructuredInfoSuggestionCache_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initWithTTLSeconds:180.0];
  v4 = sharedInstance__pasExprOnceResult_910;
  sharedInstance__pasExprOnceResult_910 = v3;

  objc_autoreleasePoolPop(v2);
}

@end