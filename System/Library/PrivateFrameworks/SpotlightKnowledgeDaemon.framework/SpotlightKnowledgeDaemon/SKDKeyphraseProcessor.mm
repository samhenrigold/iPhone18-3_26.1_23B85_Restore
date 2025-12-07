@interface SKDKeyphraseProcessor
- (BOOL)willProcessRecord:(id)record bundleID:(id)d;
- (SKDKeyphraseProcessor)init;
- (SKDKeyphraseProcessor)initWithListener:(id)listener;
- (id)processRecord:(id)record bundleID:(id)d;
- (id)processedAttributes;
- (id)requiredAttributes;
- (unint64_t)maxEntityCount;
- (void)load;
@end

@implementation SKDKeyphraseProcessor

- (SKDKeyphraseProcessor)init
{
  mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
  v4 = [(SKDKeyphraseProcessor *)self initWithListener:mEMORY[0x277D657A8]];

  return v4;
}

- (SKDKeyphraseProcessor)initWithListener:(id)listener
{
  listenerCopy = listener;
  v9.receiver = self;
  v9.super_class = SKDKeyphraseProcessor;
  v6 = [(SKDRecordProcessor *)&v9 initWithName:@"keyphrase"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, listener);
  }

  return v7;
}

- (unint64_t)maxEntityCount
{
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  maxKeyphraseCount = [mEMORY[0x277D657A0] maxKeyphraseCount];

  return maxKeyphraseCount;
}

- (id)requiredAttributes
{
  if (requiredAttributes_onceKeyReqToken != -1)
  {
    [SKDKeyphraseProcessor requiredAttributes];
  }

  v3 = requiredAttributes_sKeyphraseReqAttributes;

  return v3;
}

void __43__SKDKeyphraseProcessor_requiredAttributes__block_invoke()
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = *MEMORY[0x277CC31A0];
  v2[1] = @"kMDItemTextContentLanguage";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:2];
  v1 = requiredAttributes_sKeyphraseReqAttributes;
  requiredAttributes_sKeyphraseReqAttributes = v0;
}

- (id)processedAttributes
{
  if (processedAttributes_onceKeyToken != -1)
  {
    [SKDKeyphraseProcessor processedAttributes];
  }

  v3 = processedAttributes_sKeyphraseAttributes;

  return v3;
}

void __44__SKDKeyphraseProcessor_processedAttributes__block_invoke()
{
  v0 = processedAttributes_sKeyphraseAttributes;
  processedAttributes_sKeyphraseAttributes = &unk_2846E8148;
}

- (BOOL)willProcessRecord:(id)record bundleID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  v35.receiver = self;
  v35.super_class = SKDKeyphraseProcessor;
  if ([(SKDRecordProcessor *)&v35 willProcessRecord:recordCopy bundleID:dCopy])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    processedAttributes = [(SKDKeyphraseProcessor *)self processedAttributes];
    v9 = [processedAttributes countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(processedAttributes);
          }

          v13 = [recordCopy objectForKeyedSubscript:*(*(&v31 + 1) + 8 * i)];

          if (v13)
          {
            logger = [(SKDRecordProcessor *)self logger];
            v18 = +[SKDPipelineEvent alreadyProcessedEvent];
            [logger logEvent:v18 level:6];

            goto LABEL_14;
          }
        }

        v10 = [processedAttributes countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
    keyphraseIncludeBundles = [mEMORY[0x277D657A0] keyphraseIncludeBundles];
    if ([keyphraseIncludeBundles containsObject:dCopy])
    {
    }

    else
    {
      v19 = [dCopy hasPrefix:@"com.apple."];

      if (v19)
      {
        processedAttributes = [(SKDRecordProcessor *)self logger];
        logger = +[SKDPipelineEvent validateIneligibleEvent];
        [processedAttributes logEvent:logger level:6];
LABEL_14:
        v16 = 0;
        goto LABEL_27;
      }
    }

    processedAttributes = [recordCopy objectForKeyedSubscript:@"kMDItemTextContentLanguage"];
    if (processedAttributes)
    {
      logger = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:processedAttributes];
    }

    else
    {
      logger = 0;
    }

    v20 = [recordCopy objectForKeyedSubscript:*MEMORY[0x277CC31A0]];
    v21 = v20;
    if (logger && v20 && [v20 length] && (LanguageID = SILanguagesGetLanguageID(), Language = SILanguagesGetLanguage(), (LanguageID - 59) > 0xFFFFFFC6))
    {
      v28 = Language;
      listener = [(SKDKeyphraseProcessor *)self listener];
      currentPreferredLanguages = [listener currentPreferredLanguages];
      LOBYTE(v28) = [currentPreferredLanguages containsObject:v28];

      if (v28)
      {
        v16 = 1;
        goto LABEL_26;
      }

      logger2 = [(SKDRecordProcessor *)self logger];
      v25 = +[SKDPipelineEvent stateUnavailableEvent];
    }

    else
    {
      logger2 = [(SKDRecordProcessor *)self logger];
      v25 = +[SKDPipelineEvent validateIneligibleEvent];
    }

    v26 = v25;
    [logger2 logEvent:v25 level:6];

    v16 = 0;
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  v16 = 0;
LABEL_28:

  return v16;
}

- (id)processRecord:(id)record bundleID:(id)d
{
  v111 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  v6 = [SKDRecordUpdate alloc];
  selfCopy = self;
  v7 = [objc_opt_class() description];
  v75 = [(SKDRecordUpdate *)v6 initWithStatus:0 identifier:v7 bundleID:dCopy];

  name = [(SKDRecordProcessor *)selfCopy name];
  [(SKDItemUpdate *)v75 setPipeline:name];

  v66 = [recordCopy objectForKeyedSubscript:*MEMORY[0x277CC31A0]];
  -[SKDItemUpdate setTextContentLength:](v75, "setTextContentLength:", [v66 length]);
  v64 = [recordCopy objectForKeyedSubscript:SKDItemAttributeTextContentEntityRanges];
  v67 = [recordCopy objectForKeyedSubscript:@"kMDItemTextContentLanguage"];
  if (v67)
  {
    v9 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:?];
    v10 = v67;
  }

  else
  {
    v9 = 0;
    v10 = @"und";
  }

  v63 = v9;
  LanguageID = SILanguagesGetLanguageID();
  [(SKDItemUpdate *)v75 setTextContentLanguage:v10];
  v12 = objc_alloc_init(SKGEntityRanker);
  v13 = (&sLMLock + 4 * LanguageID);
  os_unfair_lock_lock(v13);
  v14 = SILanguageModelRetain();
  os_unfair_lock_unlock(v13);
  v76 = v14;
  v62 = v12;
  if (!v14)
  {
    logger = [(SKDRecordProcessor *)selfCopy logger];
    v22 = +[SKDPipelineEvent stateUnavailableEvent];
    [logger logEvent:v22];

    logger2 = [(SKDRecordProcessor *)selfCopy logger];
    [logger2 logEvent:v75 level:6];

    goto LABEL_51;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__SKDKeyphraseProcessor_processRecord_bundleID___block_invoke;
  aBlock[3] = &unk_27893E338;
  v58 = v12;
  v87 = v58;
  v88 = selfCopy;
  v15 = _Block_copy(aBlock);
  logger3 = [(SKDRecordProcessor *)selfCopy logger];
  v61 = [logger3 trackingEventBeginWithName:@"keyphrases" event:v75];

  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v83 = __48__SKDKeyphraseProcessor_processRecord_bundleID___block_invoke_2;
  v84 = &unk_27893E360;
  v85 = selfCopy;
  v70 = v63;
  v17 = v66;
  v18 = v64;
  v77 = v15;
  v71 = v82;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 1;
  obj = v17;
  v19 = [v17 length];
  if ([v18 count])
  {
    v20 = [v18 mutableCopy];
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v24 = v20;
  v60 = v18;
  firstObject = [v20 firstObject];
  v26 = 0;
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x3010000000;
  v102[3] = &unk_231C4157F;
  v103 = xmmword_231C220E0;
  while (firstObject)
  {
    rangeValue = [firstObject rangeValue];
    v29 = v28;
    if (rangeValue != v26)
    {
      goto LABEL_15;
    }

    [v24 removeObjectAtIndex:0];
    if ([v24 count])
    {
      v30 = [v24 objectAtIndexedSubscript:0];
    }

    else
    {
      v30 = 0;
    }

    v26 += v29;
    firstObject = v30;
LABEL_26:
    if (v26 >= v19)
    {
      goto LABEL_31;
    }
  }

  v29 = 0;
  rangeValue = v19;
  if (v19 != v26)
  {
LABEL_15:
    v31 = [obj substringWithRange:{v26, rangeValue - v26}];
    v89 = MEMORY[0x277D85DD0];
    v90 = 3221225472;
    v91 = __enumerateKeyphraseInfo_block_invoke;
    v92 = &unk_27893E3B0;
    v98 = v102;
    v94 = 0;
    v95 = 0;
    v96 = v77;
    v99 = &v104;
    v100 = v76;
    v93 = v70;
    v101 = 0;
    v32 = v71;
    v97 = v32;
    v33 = SITextTokenizerEnumerateTokensInString();
    v34 = v105;
    *(v105 + 24) = v33;
    if (v33)
    {
      if (!v83(v32))
      {
        if (firstObject)
        {
          [v24 removeObjectAtIndex:0];
          v26 = v29 + rangeValue;
          if ([v24 count])
          {
            v36 = [v24 objectAtIndexedSubscript:0];

            v35 = 1;
            firstObject = v36;
          }

          else
          {

            firstObject = 0;
            v35 = 1;
          }
        }

        else
        {
          v35 = 1;
          v26 = rangeValue;
        }

LABEL_19:

        if ((v35 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      v34 = v105;
    }

    v35 = 0;
    *(v34 + 24) = 0;
    goto LABEL_19;
  }

  firstObject = 0;
LABEL_31:
  v37 = *(v105 + 24);
  _Block_object_dispose(v102, 8);

  _Block_object_dispose(&v104, 8);
  logger4 = [(SKDRecordProcessor *)selfCopy logger];
  [logger4 trackingEventEnd:v61];

  suspended = [(SKDRecordProcessor *)selfCopy suspended];
  if (v37)
  {
    v40 = suspended;
  }

  else
  {
    v40 = 1;
  }

  if (v40 == 1)
  {
    if ([(SKDRecordProcessor *)selfCopy suspended])
    {
      v41 = 3;
    }

    else
    {
      v41 = 1;
    }

    [(SKDEvent *)v75 updateStatus:v41];
  }

  else
  {
    marker = [(SKDRecordProcessor *)selfCopy marker];
    [(SKDItemUpdate *)v75 addAttribute:marker value:MEMORY[0x277CBEC38]];

    [(SKDEvent *)v75 updateStatus:2];
    keyphrases = [v59 keyphrases];
    if ([keyphrases count])
    {
      -[SKDItemUpdate setKeyphrasesCount:](v75, "setKeyphrasesCount:", [keyphrases count]);
      maxEntityCount = [(SKDKeyphraseProcessor *)selfCopy maxEntityCount];
      v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      obja = keyphrases;
      v47 = [obja countByEnumeratingWithState:&v78 objects:v110 count:16];
      if (v47)
      {
        v48 = *v79;
LABEL_42:
        v49 = 0;
        while (1)
        {
          if (*v79 != v48)
          {
            objc_enumerationMutation(obja);
          }

          v50 = *(*(&v78 + 1) + 8 * v49);
          keyphrase = [v50 keyphrase];
          [v44 addObject:keyphrase];

          v52 = MEMORY[0x277CCABB0];
          [v50 score];
          v53 = [v52 numberWithDouble:?];
          [v45 addObject:v53];

          v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v50, "count")}];
          [v46 addObject:v54];

          if ([v44 count] >= maxEntityCount)
          {
            break;
          }

          if (v47 == ++v49)
          {
            v47 = [obja countByEnumeratingWithState:&v78 objects:v110 count:16];
            if (v47)
            {
              goto LABEL_42;
            }

            break;
          }
        }
      }

      v108[0] = @"kMDItemKeyphraseLabels";
      v108[1] = @"kMDItemKeyphraseConfidences";
      v109[0] = v44;
      v109[1] = v45;
      v108[2] = @"kMDItemKeyphraseCounts";
      v109[2] = v46;
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:3];
      [(SKDItemUpdate *)v75 addAttributesFromDictionary:v55];
    }
  }

  SILanguageModelRelease();
  logger5 = [(SKDRecordProcessor *)selfCopy logger];
  [logger5 logEvent:v75 level:6];

LABEL_51:

  return v75;
}

void __48__SKDKeyphraseProcessor_processRecord_bundleID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addEntity:v5];
  }

  if ([*(a1 + 40) suspended])
  {
    *a3 = 1;
  }
}

- (void)load
{
  v37 = *MEMORY[0x277D85DE8];
  logger = [(SKDRecordProcessor *)self logger];
  v4 = +[SKDPipelineEvent loadStartedEvent];
  v26 = [logger trackingEventBeginWithName:@"language-models" event:v4];

  selfCopy = self;
  listener = [(SKDKeyphraseProcessor *)self listener];
  currentPreferredLocaleIdentifiers = [listener currentPreferredLocaleIdentifiers];
  memset(v36, 0, 60);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [currentPreferredLocaleIdentifiers countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v9 = 0x277CBE000uLL;
    do
    {
      v10 = 0;
      v28 = v7;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(currentPreferredLocaleIdentifiers);
        }

        v11 = [*(v9 + 2808) localeWithLocaleIdentifier:*(*(&v29 + 1) + 8 * v10)];
        [v11 regionCode];
        RegionID = SILanguagesGetRegionID();
        LanguageID = SILanguagesGetLanguageID();
        if (LanguageID - 59 >= 0xFFFFFFC7)
        {
          v14 = LanguageID;
          v15 = v8;
          v16 = v9;
          v17 = (&sLMLock + 4 * LanguageID);
          os_unfair_lock_lock(v17);
          if ((*(v36 + v14) & 1) == 0 && (!sLanguageModels[v14] || sRegions[v14] != RegionID))
          {
            v18 = currentPreferredLocaleIdentifiers;
            v19 = *MEMORY[0x277D657C0];
            v33[0] = *MEMORY[0x277D657B8];
            v33[1] = v19;
            v34[0] = MEMORY[0x277CBEC38];
            v34[1] = v11;
            v20 = *MEMORY[0x277D657B0];
            v33[2] = *MEMORY[0x277D657D0];
            v33[3] = v20;
            v34[2] = MEMORY[0x277CBEC28];
            v34[3] = MEMORY[0x277CBEC28];
            v33[4] = *MEMORY[0x277D657C8];
            v34[4] = MEMORY[0x277CBEC38];
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:5];
            if (sLanguageModels[v14])
            {
              SILanguageModelRelease();
              sLanguageModels[v14] = 0;
            }

            sLanguageModels[v14] = SILanguageModelCreateWithOptions();
            sRegions[v14] = RegionID;

            currentPreferredLocaleIdentifiers = v18;
          }

          os_unfair_lock_unlock(v17);
          *(v36 + v14) = 1;
          v9 = v16;
          v8 = v15;
          v7 = v28;
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [currentPreferredLocaleIdentifiers countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v22 = 0;
  v23 = &sLMLock;
  do
  {
    if ((*(v36 + v22) & 1) == 0)
    {
      os_unfair_lock_lock(v23);
      if (sLanguageModels[v22])
      {
        SILanguageModelRelease();
        sLanguageModels[v22] = 0;
      }

      sRegions[v22] = -1;
      os_unfair_lock_unlock(v23);
    }

    ++v22;
    ++v23;
  }

  while (v22 != 59);

  logger2 = [(SKDRecordProcessor *)selfCopy logger];
  [logger2 trackingEventEnd:v26];
}

@end