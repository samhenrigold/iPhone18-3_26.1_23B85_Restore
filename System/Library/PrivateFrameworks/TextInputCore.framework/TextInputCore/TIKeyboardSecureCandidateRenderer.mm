@interface TIKeyboardSecureCandidateRenderer
+ (id)allRenderers;
- (CGImage)imageForSendCurrentLocationWithRenderTraits:(id)traits;
- (TIKeyboardSecureCandidateRenderer)init;
- (TIKeyboardSecureCandidateRenderer)initWithLocaleIdentifier:(id)identifier;
- (__CFArray)arrayOfContexts:(unint64_t)contexts withRenderTraits:(id)traits;
- (__CFArray)imagesFromContexts:(__CFArray *)contexts;
- (__CFArray)imagesFromSecureCandidates:(id)candidates withRenderTraits:(id)traits outAccessibilityLabels:(id *)labels;
- (id)_truncationSentinel;
- (id)accessibilityLabelForSlotID:(unsigned int)d;
- (id)accessibilityLabelsForSecureHeaders:(id)headers secureContents:(id)contents truncationSentinel:(id)sentinel;
- (id)cachedCandidateForSecureCandidate:(id)candidate;
- (id)cachedPayloadForSecureCandidateSlotID:(unsigned int)d;
- (id)initForLocalizedStrings;
- (id)localizedApplicationNameWithBundleIdentifier:(id)identifier;
- (id)localizedStringForKey:(id)key;
- (id)slotIDsFromSecureCandidates:(id)candidates withRenderTraits:(id)traits;
- (id)updateCachedCandidate:(id)candidate withCandidateString:(id)string;
- (id)updateCachedCandidate:(id)candidate withStickerIdentifier:(id)identifier;
- (unsigned)slotIDForSendCurrentLocationWithRenderTraits:(id)traits;
- (void)cacheAccessibilityLabel:(id)label forSlotID:(unsigned int)d;
- (void)clearSecureCandidateCache;
- (void)createContext;
- (void)dealloc;
- (void)recreateContext;
- (void)setLocaleIdentifier:(id)identifier;
@end

@implementation TIKeyboardSecureCandidateRenderer

- (id)cachedPayloadForSecureCandidateSlotID:(unsigned int)d
{
  if (d)
  {
    v3 = *&d;
    secureCandidateCache = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
    v6 = [secureCandidateCache objectForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)updateCachedCandidate:(id)candidate withStickerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  candidateCopy = candidate;
  v8 = [candidateCopy copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setStickerIdentifier:identifierCopy];
  }

  [v8 setSlotID:{objc_msgSend(candidateCopy, "slotID")}];
  secureCandidateCache = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];
  v10 = MEMORY[0x277CCABB0];
  slotID = [candidateCopy slotID];

  v12 = [v10 numberWithUnsignedInt:slotID];
  [secureCandidateCache setObject:v8 forKey:v12];

  return v8;
}

- (id)updateCachedCandidate:(id)candidate withCandidateString:(id)string
{
  stringCopy = string;
  v7 = [(TIKeyboardSecureCandidateRenderer *)self cachedCandidateForSecureCandidate:candidate];
  v8 = [v7 candidateByReplacingWithCandidate:stringCopy];

  [v8 setSlotID:{objc_msgSend(v7, "slotID")}];
  secureCandidateCache = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "slotID")}];
  [secureCandidateCache setObject:v8 forKey:v10];

  return v8;
}

- (id)cachedCandidateForSecureCandidate:(id)candidate
{
  candidateCopy = candidate;
  if ([candidateCopy slotID])
  {
    secureCandidateCache = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(candidateCopy, "slotID")}];
    v7 = [secureCandidateCache objectForKey:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      secureCandidateCache2 = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(candidateCopy, "slotID")}];
      v11 = [secureCandidateCache2 objectForKey:v10];

      [v11 setSlotID:{objc_msgSend(candidateCopy, "slotID")}];
    }

    else
    {
      v13 = MEMORY[0x277D6F3D8];
      input = [candidateCopy input];
      v11 = [v13 secureCandidateForInput:input slotID:objc_msgSend(candidateCopy customInfoType:{"slotID"), objc_msgSend(candidateCopy, "customInfoType")}];
    }

    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = candidateCopy;
    }

    v12 = v15;
  }

  else
  {
    v12 = candidateCopy;
  }

  return v12;
}

- (void)clearSecureCandidateCache
{
  v27 = *MEMORY[0x277D85DE8];
  secureCandidateCache = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];

  if (secureCandidateCache)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    secureCandidateCache2 = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];
    allKeys = [secureCandidateCache2 allKeys];

    v6 = [allKeys countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v19;
      v10 = MEMORY[0x277D86220];
      *&v7 = 136315394;
      v17 = v7;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            unsignedIntValue = [v12 unsignedIntValue];
            *buf = v17;
            v23 = "[TIKeyboardSecureCandidateRenderer clearSecureCandidateCache]";
            v24 = 1024;
            v25 = unsignedIntValue;
            _os_log_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEFAULT, "%s  Deleted slotID %X", buf, 0x12u);
          }

          context = [(TIKeyboardSecureCandidateRenderer *)self context];
          [context deleteSlot:{objc_msgSend(v12, "unsignedIntValue")}];

          ++v11;
        }

        while (v8 != v11);
        v8 = [allKeys countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v8);
    }

    [(NSMutableDictionary *)self->_accessibilityLabelCache removeAllObjects];
    secureCandidateCache3 = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];
    [secureCandidateCache3 removeAllObjects];

    v16 = +[TIKeyboardSecureTouchManager sharedInstance];
    [v16 clearRegistrations];
  }
}

- (void)recreateContext
{
  [(TIKeyboardSecureCandidateRenderer *)self clearSecureCandidateCache];

  [(TIKeyboardSecureCandidateRenderer *)self createContext];
}

- (unsigned)slotIDForSendCurrentLocationWithRenderTraits:(id)traits
{
  v17 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  context = [(TIKeyboardSecureCandidateRenderer *)self context];
  createSlot = [context createSlot];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[TIKeyboardSecureCandidateRenderer slotIDForSendCurrentLocationWithRenderTraits:]";
    v15 = 1024;
    v16 = createSlot;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Created slotID %X", buf, 0x12u);
  }

  v7 = [(TIKeyboardSecureCandidateRenderer *)self imageForSendCurrentLocationWithRenderTraits:traitsCopy];

  v8 = [(TIKeyboardSecureCandidateRenderer *)self localizedStringForKey:@"SEND_CURRENT_LOCATION_BUTTON_ACCESSIBILITY_LABEL"];
  [(TIKeyboardSecureCandidateRenderer *)self cacheAccessibilityLabel:v8 forSlotID:createSlot];
  context2 = [(TIKeyboardSecureCandidateRenderer *)self context];
  [context2 setObject:v7 forSlot:createSlot];

  CFRelease(v7);
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v10 = TIOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISecureCandidateLogging: send current location slotID = %ud", "-[TIKeyboardSecureCandidateRenderer slotIDForSendCurrentLocationWithRenderTraits:]", createSlot];
      *buf = 138412290;
      v14 = v12;
      _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  return createSlot;
}

- (CGImage)imageForSendCurrentLocationWithRenderTraits:(id)traits
{
  v24 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  v5 = [(TIKeyboardSecureCandidateRenderer *)self arrayOfContexts:1 withRenderTraits:traitsCopy];
  v6 = MEMORY[0x277CCACA8];
  v7 = [(TIKeyboardSecureCandidateRenderer *)self localizedStringForKey:@"SEND_CURRENT_LOCATION_BUTTON_CAPTION"];
  v20 = 0;
  v8 = [v6 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:&v20, @""];
  v9 = v20;
  v10 = &stru_283FDFAF8;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  if (v9)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v12 = TIOSLogFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISecureCandidateLogging: ERROR: invalid localized format for key SEND_CURRENT_LOCATION_BUTTON_CAPTION: %@", "-[TIKeyboardSecureCandidateRenderer imageForSendCurrentLocationWithRenderTraits:]", v9];
      *buf = 138412290;
      v23 = v19;
      _os_log_debug_impl(&dword_22CA55000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v21 = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v14 = [TIKeyboardSecureCandidateTextRendering drawSecureHeaders:&unk_28400B898 secureContents:v13 inContexts:v5 traits:traitsCopy truncationSentinel:0];

  v15 = [(TIKeyboardSecureCandidateRenderer *)self imagesFromContexts:v5];
  CFRelease(v5);
  ValueAtIndex = CFArrayGetValueAtIndex(v15, 0);
  v17 = CFRetain(ValueAtIndex);
  CFRelease(v15);

  return v17;
}

- (id)slotIDsFromSecureCandidates:(id)candidates withRenderTraits:(id)traits
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v5 = [(TIKeyboardSecureCandidateRenderer *)self imagesFromSecureCandidates:candidates withRenderTraits:traits outAccessibilityLabels:&v29];
  v6 = v29;
  v7 = [v6 count];
  Count = CFArrayGetCount(v5);
  if ([(NSArray *)self->_arrayOfAttributes count]< Count)
  {
    if ([(NSArray *)self->_arrayOfAttributes count])
    {
      v9 = [(NSArray *)self->_arrayOfAttributes mutableCopy];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count];
    }

    v10 = v9;
    v11 = [(NSArray *)self->_arrayOfAttributes count];
    v12 = Count - v11;
    if (Count > v11)
    {
      do
      {
        v13 = objc_alloc_init(TISecureCandidateAttributes);
        [(NSArray *)v10 addObject:v13];

        --v12;
      }

      while (v12);
    }

    arrayOfAttributes = self->_arrayOfAttributes;
    self->_arrayOfAttributes = v10;
  }

  if (Count)
  {
    v15 = 0;
    v16 = MEMORY[0x277D86220];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v15);
      context = [(TIKeyboardSecureCandidateRenderer *)self context];
      createSlot = [context createSlot];

      if (!createSlot)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v31 = "[TIKeyboardSecureCandidateRenderer slotIDsFromSecureCandidates:withRenderTraits:]";
          _os_log_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEFAULT, "%s  slotID is 0, recreating remote context", buf, 0xCu);
        }

        [(TIKeyboardSecureCandidateRenderer *)self recreateContext];
        context2 = [(TIKeyboardSecureCandidateRenderer *)self context];
        createSlot = [context2 createSlot];

        if (!createSlot)
        {
          break;
        }
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v31 = "[TIKeyboardSecureCandidateRenderer slotIDsFromSecureCandidates:withRenderTraits:]";
        v32 = 1024;
        v33 = createSlot;
        _os_log_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEFAULT, "%s  Created slotID %X", buf, 0x12u);
      }

      if (!v15)
      {
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v21 = TIOSLogFacility();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISecureCandidateLogging: proactive candidate first slotID = %ud", "-[TIKeyboardSecureCandidateRenderer slotIDsFromSecureCandidates:withRenderTraits:]", createSlot];
            *buf = 138412290;
            v31 = v28;
            _os_log_debug_impl(&dword_22CA55000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      context3 = [(TIKeyboardSecureCandidateRenderer *)self context];
      [context3 setObject:ValueAtIndex forSlot:createSlot];

      v23 = [(NSArray *)self->_arrayOfAttributes objectAtIndexedSubscript:v15];
      [v23 setSlotID:createSlot];

      if (v6 && v15 < v7)
      {
        v24 = [v6 objectAtIndex:v15];
        [(TIKeyboardSecureCandidateRenderer *)self cacheAccessibilityLabel:v24 forSlotID:createSlot];
      }

      if (Count == ++v15)
      {
        goto LABEL_30;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v31 = "[TIKeyboardSecureCandidateRenderer slotIDsFromSecureCandidates:withRenderTraits:]";
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  slotID is still 0 after recreating remote context", buf, 0xCu);
    }
  }

LABEL_30:
  CFRelease(v5);
  v25 = self->_arrayOfAttributes;
  v26 = v25;

  return v25;
}

- (id)localizedApplicationNameWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getLSApplicationProxyClass_softClass;
    v13 = getLSApplicationProxyClass_softClass;
    if (!getLSApplicationProxyClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getLSApplicationProxyClass_block_invoke;
      v9[3] = &unk_278733760;
      v9[4] = &v10;
      __getLSApplicationProxyClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [v4 applicationProxyForIdentifier:identifierCopy];
    localizedName = [v6 localizedName];
  }

  else
  {
    localizedName = 0;
  }

  return localizedName;
}

- (id)accessibilityLabelForSlotID:(unsigned int)d
{
  accessibilityLabelCache = self->_accessibilityLabelCache;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&d];
  v5 = [(NSMutableDictionary *)accessibilityLabelCache objectForKey:v4];

  return v5;
}

- (void)cacheAccessibilityLabel:(id)label forSlotID:(unsigned int)d
{
  v4 = *&d;
  labelCopy = label;
  accessibilityLabelCache = self->_accessibilityLabelCache;
  if (!accessibilityLabelCache)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    v8 = self->_accessibilityLabelCache;
    self->_accessibilityLabelCache = v7;

    accessibilityLabelCache = self->_accessibilityLabelCache;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [(NSMutableDictionary *)accessibilityLabelCache setObject:labelCopy forKey:v9];
}

- (id)accessibilityLabelsForSecureHeaders:(id)headers secureContents:(id)contents truncationSentinel:(id)sentinel
{
  v31 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  contentsCopy = contents;
  sentinelCopy = sentinel;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(headersCopy, "count")}];
  if ([headersCopy count])
  {
    v11 = 0;
    v26 = v10;
    do
    {
      v12 = [headersCopy objectAtIndex:v11];
      v13 = v12;
      if (sentinelCopy)
      {
        v14 = [v12 stringByReplacingOccurrencesOfString:sentinelCopy withString:&stru_283FDFAF8];

        v13 = v14;
      }

      v15 = [contentsCopy objectAtIndex:v11];
      if ([v13 length] && objc_msgSend(v15, "length"))
      {
        v16 = contentsCopy;
        v17 = [(TIKeyboardSecureCandidateRenderer *)self localizedStringForKey:@"PROACTIVE_CANDIDATE_ACCESSIBILITY_LABEL"];
        v28 = 0;
        v18 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v17 validFormatSpecifiers:@"%@%@" error:&v28, v13, v15];
        v19 = v28;
        v20 = &stru_283FDFAF8;
        if (v18)
        {
          v20 = v18;
        }

        v21 = v20;

        if (v19)
        {
          if (TICanLogMessageAtLevel_onceToken != -1)
          {
            dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
          }

          v22 = TIOSLogFacility();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISecureCandidateLogging: ERROR: invalid localized format for key PROACTIVE_CANDIDATE_ACCESSIBILITY_LABEL: %@", "-[TIKeyboardSecureCandidateRenderer accessibilityLabelsForSecureHeaders:secureContents:truncationSentinel:]", v19];
            *buf = 138412290;
            v30 = v25;
            _os_log_debug_impl(&dword_22CA55000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        contentsCopy = v16;
        v10 = v26;
        goto LABEL_21;
      }

      if ([v13 length])
      {
        v23 = v13;
      }

      else
      {
        if (![v15 length])
        {
          v21 = &stru_283FDFAF8;
          goto LABEL_21;
        }

        v23 = v15;
      }

      v21 = v23;
LABEL_21:
      [v10 addObject:v21];

      ++v11;
    }

    while (v11 < [headersCopy count]);
  }

  return v10;
}

- (__CFArray)imagesFromSecureCandidates:(id)candidates withRenderTraits:(id)traits outAccessibilityLabels:(id *)labels
{
  v47 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  traitsCopy = traits;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v10 = TIOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = [candidatesCopy count];
      [traitsCopy singleCellWidth];
      v33 = v32;
      [traitsCopy singleCellHeight];
      v35 = [v30 stringWithFormat:@"%s DEBUG:ProactiveQuickType:TI: Secure rendering %lu items (width: %f, height: %f)", "-[TIKeyboardSecureCandidateRenderer imagesFromSecureCandidates:withRenderTraits:outAccessibilityLabels:]", v31, v33, v34];
      *buf = 138412290;
      v46 = v35;
      _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  labelsCopy = labels;
  if ([candidatesCopy count])
  {
    v11 = [candidatesCopy objectAtIndex:0];
    truncationSentinel = [v11 truncationSentinel];
  }

  else
  {
    truncationSentinel = 0;
  }

  selfCopy = self;
  v39 = traitsCopy;
  v12 = -[TIKeyboardSecureCandidateRenderer arrayOfContexts:withRenderTraits:](self, "arrayOfContexts:withRenderTraits:", [candidatesCopy count], traitsCopy);
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(candidatesCopy, "count")}];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(candidatesCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v15 = candidatesCopy;
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v41;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v40 + 1) + 8 * i);
        secureHeader = [v20 secureHeader];
        if (secureHeader)
        {
          v22 = secureHeader;
          secureContent = [v20 secureContent];

          if (secureContent)
          {
            secureHeader2 = [v20 secureHeader];
            [v13 addObject:secureHeader2];

            secureContent2 = [v20 secureContent];
            [v14 addObject:secureContent2];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v17);
  }

  v26 = [TIKeyboardSecureCandidateTextRendering drawSecureHeaders:v13 secureContents:v14 inContexts:v12 traits:v39 truncationSentinel:truncationSentinel];
  arrayOfAttributes = selfCopy->_arrayOfAttributes;
  selfCopy->_arrayOfAttributes = v26;

  v28 = [(TIKeyboardSecureCandidateRenderer *)selfCopy imagesFromContexts:v12];
  CFRelease(v12);
  if (labelsCopy)
  {
    *labelsCopy = [(TIKeyboardSecureCandidateRenderer *)selfCopy accessibilityLabelsForSecureHeaders:v13 secureContents:v14 truncationSentinel:truncationSentinel];
  }

  return v28;
}

- (id)_truncationSentinel
{
  __buf[2] = *MEMORY[0x277D85DE8];
  __buf[0] = 0;
  __buf[1] = 0;
  arc4random_buf(__buf, 0x10uLL);
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:__buf];
  v3 = MEMORY[0x277CCACA8];
  uUIDString = [v2 UUIDString];
  v5 = [v3 stringWithFormat:@"*%@*", uUIDString];

  return v5;
}

- (__CFArray)imagesFromContexts:(__CFArray *)contexts
{
  Count = CFArrayGetCount(contexts);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  for (i = 0; i < CFArrayGetCount(contexts); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(contexts, i);
    Image = CGBitmapContextCreateImage(ValueAtIndex);
    CFArrayAppendValue(Mutable, Image);
    CGImageRelease(Image);
  }

  return Mutable;
}

- (__CFArray)arrayOfContexts:(unint64_t)contexts withRenderTraits:(id)traits
{
  traitsCopy = traits;
  if (arrayOfContexts_withRenderTraits__onceToken != -1)
  {
    dispatch_once(&arrayOfContexts_withRenderTraits__onceToken, &__block_literal_global_399);
  }

  Mutable = CFArrayCreateMutable(0, contexts, MEMORY[0x277CBF128]);
  if (contexts)
  {
    if ([traitsCopy maxCellCount] >= 1)
    {
      maxCellCount = [traitsCopy maxCellCount];
      if (maxCellCount < contexts)
      {
        contexts = maxCellCount;
      }
    }

    contextsCopy = contexts;
    if ([traitsCopy sharedCellCount])
    {
      contextsCopy = [traitsCopy sharedCellCount] + contexts;
    }

    resultCountToSingleCellWidth = [traitsCopy resultCountToSingleCellWidth];
    v10 = [resultCountToSingleCellWidth count];

    if (v10)
    {
      resultCountToSingleCellWidth2 = [traitsCopy resultCountToSingleCellWidth];
      v12 = [resultCountToSingleCellWidth2 count];

      resultCountToSingleCellWidth3 = [traitsCopy resultCountToSingleCellWidth];
      v14 = resultCountToSingleCellWidth3;
      if (v12 <= contexts)
      {
        [resultCountToSingleCellWidth3 lastObject];
      }

      else
      {
        [resultCountToSingleCellWidth3 objectAtIndexedSubscript:contexts];
      }
      v15 = ;
    }

    else
    {
      cellRenderingStyle = [traitsCopy cellRenderingStyle];
      cellWidthOptions = [traitsCopy cellWidthOptions];
      v14 = cellWidthOptions;
      if (cellRenderingStyle)
      {
        switch(contextsCopy)
        {
          case 1uLL:
            v18 = MEMORY[0x277D6F938];
            break;
          case 2uLL:
            v18 = MEMORY[0x277D6F958];
            break;
          case 3uLL:
            v18 = MEMORY[0x277D6F948];
            break;
          default:
            v18 = MEMORY[0x277D6F968];
            break;
        }
      }

      else if (contextsCopy == 1)
      {
        v18 = MEMORY[0x277D6F940];
      }

      else if (contextsCopy == 2)
      {
        v18 = MEMORY[0x277D6F960];
      }

      else
      {
        v18 = MEMORY[0x277D6F950];
      }

      v15 = [cellWidthOptions objectForKey:*v18];
    }

    v19 = v15;
    [v15 doubleValue];
    v21 = v20;

    for (; contexts; --contexts)
    {
      [traitsCopy screenScale];
      v23 = fmax(ceil(v21 * v22), 1.0);
      [traitsCopy singleCellHeight];
      v25 = v24;
      [traitsCopy screenScale];
      v27 = CGBitmapContextCreate(0, v23, fmax(ceil(v25 * v26), 1.0), 8uLL, 0, arrayOfContexts_withRenderTraits__colorSpace, 2u);
      [traitsCopy screenScale];
      v29 = v28;
      [traitsCopy screenScale];
      CGContextScaleCTM(v27, v29, v30);
      CFArrayAppendValue(Mutable, v27);
      CGContextRelease(v27);
    }
  }

  return Mutable;
}

CGColorSpaceRef __70__TIKeyboardSecureCandidateRenderer_arrayOfContexts_withRenderTraits___block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  arrayOfContexts_withRenderTraits__colorSpace = result;
  return result;
}

- (id)localizedStringForKey:(id)key
{
  v15[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
  preferredLocalizations = [v4 preferredLocalizations];
  v7 = MEMORY[0x277CCA8D8];
  v15[0] = _deviceLanguage;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v9 = [v7 preferredLocalizationsFromArray:preferredLocalizations forPreferences:v8];

  firstObject = [v9 firstObject];
  v11 = [v4 localizedStringForKey:keyCopy value:0 table:@"SecureCandidate" localization:firstObject];
  if ([v11 isEqual:keyCopy])
  {
    v12 = [v4 localizedStringForKey:keyCopy value:&stru_283FDFAF8 table:@"SecureCandidate"];
  }

  else
  {
    v12 = v11;
  }

  v13 = v12;

  return v13;
}

- (void)setLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ((objc_msgSend_isEqualToString_(identifierCopy) & 1) == 0)
  {
    objc_storeStrong(&self->_localeIdentifier, identifier);
    [(TIKeyboardSecureCandidateRenderer *)self clearSecureCandidateCache];
  }
}

- (void)createContext
{
  v11[5] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBED28];
  v4 = *MEMORY[0x277CDA100];
  v10[0] = *MEMORY[0x277CDA118];
  v10[1] = v4;
  v5 = *MEMORY[0x277CBED10];
  v11[0] = v3;
  v11[1] = v5;
  v6 = *MEMORY[0x277CDA110];
  v10[2] = *MEMORY[0x277CDA108];
  v10[3] = v6;
  v11[2] = v3;
  v11[3] = v3;
  v10[4] = *MEMORY[0x277CDA0E8];
  v11[4] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];
  v8 = [MEMORY[0x277CD9E38] remoteContextWithOptions:v7];
  context = self->_context;
  self->_context = v8;
}

- (void)dealloc
{
  v3 = __allSecureRenderers;
  objc_sync_enter(v3);
  [__allSecureRenderers removeObject:self];
  objc_sync_exit(v3);

  v4.receiver = self;
  v4.super_class = TIKeyboardSecureCandidateRenderer;
  [(TIKeyboardSecureCandidateRenderer *)&v4 dealloc];
}

- (TIKeyboardSecureCandidateRenderer)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = TIKeyboardSecureCandidateRenderer;
  v6 = [(TIKeyboardSecureCandidateRenderer *)&v14 init];
  v7 = v6;
  if (v6)
  {
    [(TIKeyboardSecureCandidateRenderer *)v6 createContext];
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    secureCandidateCache = v7->_secureCandidateCache;
    v7->_secureCandidateCache = v8;

    objc_storeStrong(&v7->_localeIdentifier, identifier);
    v10 = __allSecureRenderers;
    objc_sync_enter(v10);
    if (__allSecureRenderers)
    {
      [__allSecureRenderers addObject:v7];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v7, 0}];
      v12 = __allSecureRenderers;
      __allSecureRenderers = v11;
    }

    objc_sync_exit(v10);
  }

  return v7;
}

- (id)initForLocalizedStrings
{
  v7.receiver = self;
  v7.super_class = TIKeyboardSecureCandidateRenderer;
  v2 = [(TIKeyboardSecureCandidateRenderer *)&v7 init];
  if (v2)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    localeIdentifier = v2->_localeIdentifier;
    v2->_localeIdentifier = localeIdentifier;
  }

  return v2;
}

- (TIKeyboardSecureCandidateRenderer)init
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v5 = [(TIKeyboardSecureCandidateRenderer *)self initWithLocaleIdentifier:localeIdentifier];

  return v5;
}

+ (id)allRenderers
{
  v2 = __allSecureRenderers;
  objc_sync_enter(v2);
  v3 = [__allSecureRenderers copy];
  objc_sync_exit(v2);

  return v3;
}

@end