@interface RKResponseCollection
+ (id)responsesForFixedPhrase:(id)phrase withLanguage:(id)language;
+ (id)responsesForFullScreenMoments:(id)moments;
+ (id)speechActsForCategory:(unint64_t)category platform:(id)platform;
- (RKResponseCollection)initWithDynamicDataURL:(id)l displayStringsProvider:(id)provider;
- (id)cannedResponsesForCategory:(id)category withLanguage:(id)language options:(unint64_t)options;
- (id)personalizerForLanguageID:(id)d;
- (id)responsesForCategory:(unint64_t)category gender:(unint64_t)gender maximumResponses:(unint64_t)responses withLanguage:(id)language context:(id)context options:(unint64_t)options;
- (id)standardResponsesByCategoryForLanguageIdentifier:(id)identifier andUsage:(id)usage;
- (void)dealloc;
- (void)flushDynamicData;
- (void)registerResponse:(id)response forMessage:(id)message withLanguage:(id)language context:(id)context effectiveDate:(id)date;
- (void)resetRegisteredResponses;
@end

@implementation RKResponseCollection

- (RKResponseCollection)initWithDynamicDataURL:(id)l displayStringsProvider:(id)provider
{
  lCopy = l;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = RKResponseCollection;
  v9 = [(RKResponseCollection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dynamicDataURL, l);
    objc_storeStrong(&v10->_displayStringsProvider, provider);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    personalizersByLanguageID = v10->_personalizersByLanguageID;
    v10->_personalizersByLanguageID = dictionary;
  }

  return v10;
}

- (void)dealloc
{
  [(RKResponseCollection *)self flushDynamicData];
  responseCatalog = self->_responseCatalog;
  self->_responseCatalog = 0;

  personalizersByLanguageID = self->_personalizersByLanguageID;
  self->_personalizersByLanguageID = 0;

  v5.receiver = self;
  v5.super_class = RKResponseCollection;
  [(RKResponseCollection *)&v5 dealloc];
}

- (void)flushDynamicData
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  personalizersByLanguageID = [(RKResponseCollection *)self personalizersByLanguageID];
  v4 = [personalizersByLanguageID countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(personalizersByLanguageID);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        personalizersByLanguageID2 = [(RKResponseCollection *)self personalizersByLanguageID];
        v10 = [personalizersByLanguageID2 objectForKey:v8];

        [v10 flushDynamicData];
        ++v7;
      }

      while (v5 != v7);
      v5 = [personalizersByLanguageID countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)resetRegisteredResponses
{
  personalizersByLanguageID = [(RKResponseCollection *)self personalizersByLanguageID];
  v4 = [personalizersByLanguageID count];

  if (v4)
  {
    personalizersByLanguageID2 = [(RKResponseCollection *)self personalizersByLanguageID];
    allValues = [personalizersByLanguageID2 allValues];
    v7 = [allValues objectAtIndexedSubscript:0];

    dynamicDataURL = [v7 dynamicDataURL];
    [RKPersistentPersonalizer removeAllDynamicModelsInDirectory:dynamicDataURL];
  }

  personalizersByLanguageID3 = [(RKResponseCollection *)self personalizersByLanguageID];
  [personalizersByLanguageID3 removeAllObjects];
}

- (id)standardResponsesByCategoryForLanguageIdentifier:(id)identifier andUsage:(id)usage
{
  v60 = *MEMORY[0x277D85DE8];
  usageCopy = usage;
  v7 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:identifier];
  responseCatalog = [(RKResponseCollection *)self responseCatalog];
  v9 = [responseCatalog objectForKeyedSubscript:v7];
  v10 = [v9 objectForKeyedSubscript:usageCopy];

  if (!v10)
  {
    responseCatalog2 = [(RKResponseCollection *)self responseCatalog];

    if (!responseCatalog2)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(RKResponseCollection *)self setResponseCatalog:dictionary];
    }

    responseCatalog3 = [(RKResponseCollection *)self responseCatalog];
    v14 = [responseCatalog3 objectForKeyedSubscript:v7];

    if (!v14)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      responseCatalog4 = [(RKResponseCollection *)self responseCatalog];
      [responseCatalog4 setObject:dictionary2 forKeyedSubscript:v7];
    }

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    responseCatalog5 = [(RKResponseCollection *)self responseCatalog];
    [responseCatalog5 objectForKeyedSubscript:v7];
    v19 = v46 = self;
    [v19 setObject:dictionary3 forKeyedSubscript:usageCopy];

    selfCopy = self;
    responseCatalog6 = [(RKResponseCollection *)self responseCatalog];
    v22 = [responseCatalog6 objectForKeyedSubscript:v7];
    v42 = [v22 objectForKeyedSubscript:usageCopy];

    v23 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v7];
    v43 = [v23 objectForKey:*MEMORY[0x277CBE6C8]];

    v41 = usageCopy;
    v24 = usageCopy;
    displayStringsProvider = [(RKResponseCollection *)self displayStringsProvider];
    v47 = v7;
    v26 = [displayStringsProvider displayStringsForPlatform:v24 languageID:v7];

    if ([v26 count])
    {
      for (i = 0; i != 46; ++i)
      {
        v28 = RKLinguisticCategoryToPreferenceKey(i);
        if (![v28 isEqualToString:@"Unknown"] || (objc_msgSend(v43, "isEqualToString:", @"zh") & 1) == 0 && (objc_msgSend(v43, "isEqualToString:", @"ja") & 1) == 0)
        {
          array = [MEMORY[0x277CBEB18] array];
          v44 = i;
          v30 = [objc_opt_class() speechActsForCategory:i platform:v24];
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          obj = v30;
          v31 = [v30 countByEnumeratingWithState:&v55 objects:v59 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v56;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v56 != v33)
                {
                  objc_enumerationMutation(obj);
                }

                v35 = *(*(&v55 + 1) + 8 * j);
                v36 = [v26 objectForKeyedSubscript:v35];
                v48[0] = MEMORY[0x277D85DD0];
                v48[1] = 3221225472;
                v48[2] = __82__RKResponseCollection_standardResponsesByCategoryForLanguageIdentifier_andUsage___block_invoke;
                v48[3] = &unk_279B0FE58;
                v49 = v24;
                v50 = v35;
                selfCopy = v46;
                v51 = v28;
                v52 = v46;
                v53 = v47;
                v54 = array;
                [v36 enumerateObjectsUsingBlock:v48];
              }

              v32 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
            }

            while (v32);
          }

          if ([array count])
          {
            [v42 setObject:array forKey:v28];
          }

          i = v44;
        }
      }
    }

    usageCopy = v41;
    v7 = v47;
    self = selfCopy;
  }

  responseCatalog7 = [(RKResponseCollection *)self responseCatalog];
  v38 = [responseCatalog7 objectForKeyedSubscript:v7];
  v39 = [v38 objectForKeyedSubscript:usageCopy];

  return v39;
}

void __82__RKResponseCollection_standardResponsesByCategoryForLanguageIdentifier_andUsage___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v18 = a2;
  if ([*(a1 + 32) isEqualToString:@"iOS"] && (v7 = objc_msgSend(*(a1 + 40), "hasPrefix:", @"YesNo"), a3 >= 2) && v7 || objc_msgSend(*(a1 + 32), "isEqualToString:", @"iOS") && objc_msgSend(*(a1 + 40), "isEqualToString:", @"Acknowledgment") && (v8 = objc_msgSend(*(a1 + 48), "isEqualToString:", @"Unknown"), a3) && v8)
  {
    *a4 = 1;
  }

  else
  {
    v9 = [RKUtilities normalizeForPersonalization:v18];
    if (![*(a1 + 32) isEqualToString:@"iOS"])
    {
      goto LABEL_14;
    }

    v10 = [*(a1 + 56) personalizerForLanguageID:*(a1 + 64)];
    v11 = [v10 headwordsForSynonym:v18];
    v12 = [v11 allKeys];
    v13 = [v12 containsObject:v9];

    if (v13)
    {
      v14 = v9;
    }

    else
    {
      v15 = [v11 allKeys];
      v14 = [v15 objectAtIndexedSubscript:0];
    }

    if (!v14)
    {
LABEL_14:
      v14 = v18;
    }

    v16 = *(a1 + 72);
    v17 = [[_RKResponse alloc] initWithSpeechAct:*(a1 + 40) headword:v14 text:v18];
    [v16 addObject:v17];
  }
}

- (id)cannedResponsesForCategory:(id)category withLanguage:(id)language options:(unint64_t)options
{
  optionsCopy = options;
  v27 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  v9 = @"watchOS";
  if ((optionsCopy & 0x100) == 0)
  {
    v9 = @"iOS";
  }

  v10 = v9;
  v11 = [(RKResponseCollection *)self standardResponsesByCategoryForLanguageIdentifier:language andUsage:v10];
  v12 = [v11 objectForKeyedSubscript:categoryCopy];

  v13 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        if ([v19 type] != 4)
        {
          text = [v19 text];
          [v13 addObject:text];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  return v13;
}

- (id)responsesForCategory:(unint64_t)category gender:(unint64_t)gender maximumResponses:(unint64_t)responses withLanguage:(id)language context:(id)context options:(unint64_t)options
{
  optionsCopy = options;
  v73 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  contextCopy = context;
  v14 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:languageCopy];
  languageCode = [v14 languageCode];

  v15 = @"watchOS";
  if ((optionsCopy & 0x100) == 0)
  {
    v15 = @"iOS";
  }

  v16 = v15;
  array = [MEMORY[0x277CBEB18] array];
  v18 = RKLinguisticCategoryToPreferenceKey(category);
  v19 = [(RKResponseCollection *)self standardResponsesByCategoryForLanguageIdentifier:languageCopy andUsage:v16];
  v54 = v18;
  v20 = [v19 objectForKeyedSubscript:v18];
  v21 = [v20 mutableCopy];

  v56 = v16;
  if ((optionsCopy & 8) == 0 && ([(__CFString *)v16 isEqualToString:@"watchOS"]& 1) == 0)
  {
    v22 = [(RKResponseCollection *)self personalizerForLanguageID:languageCopy];
    array2 = [MEMORY[0x277CBEB18] array];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __98__RKResponseCollection_responsesForCategory_gender_maximumResponses_withLanguage_context_options___block_invoke;
    v67[3] = &unk_279B0FED0;
    v68 = v22;
    v69 = contextCopy;
    v24 = array2;
    v70 = v24;
    v71 = languageCode;
    v25 = v22;
    [v21 enumerateObjectsUsingBlock:v67];
    v26 = v24;

    v21 = v26;
  }

  responsesCopy2 = responses;
  if (responses == 0x7FFFFFFF)
  {
    if ((optionsCopy & 2) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v52 = contextCopy;
    v53 = languageCopy;
    v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v21, "count")}];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v36 = v21;
    v37 = [v36 countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = 0;
      v40 = *v64;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v64 != v40)
          {
            objc_enumerationMutation(v36);
          }

          v42 = *(*(&v63 + 1) + 8 * i);
          v43 = [v42 type] == 4;
          if ((v43 & v39) == 1)
          {
            [v35 addObject:v42];
            v39 = 1;
          }

          else
          {
            v39 |= v43;
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v63 objects:v72 count:16];
      }

      while (v38);
    }

    [v36 removeObjectsInArray:v35];
    contextCopy = v52;
    languageCopy = v53;
    responsesCopy2 = responses;
    if ((optionsCopy & 2) != 0)
    {
LABEL_8:
      if ((optionsCopy & 4) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  v44 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type == %ul", 1];
  v45 = [v21 filteredArrayUsingPredicate:v44];
  [array addObjectsFromArray:v45];

  if ((optionsCopy & 4) != 0)
  {
LABEL_9:
    if ((optionsCopy & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_29:
  v46 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type == %ul", 2];
  v47 = [v21 filteredArrayUsingPredicate:v46];
  [array addObjectsFromArray:v47];

  if ((optionsCopy & 0x10) == 0)
  {
LABEL_10:
    v28 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type == %ul", 4];
    v29 = [v21 filteredArrayUsingPredicate:v28];
    [array addObjectsFromArray:v29];
  }

LABEL_11:
  if (responsesForCategory_gender_maximumResponses_withLanguage_context_options__onceToken != -1)
  {
    [RKResponseCollection responsesForCategory:gender:maximumResponses:withLanguage:context:options:];
  }

  [array sortUsingComparator:&__block_literal_global_100];
  if ([array count] > responsesCopy2)
  {
    v30 = [array subarrayWithRange:{0, responsesCopy2}];
    v31 = [v30 mutableCopy];

    array = v31;
  }

  [array sortUsingComparator:&__block_literal_global_102];
  v32 = [array valueForKeyPath:@"@unionOfObjects.text"];
  v33 = [v32 mutableCopy];

  if (gender > 7)
  {
    v34 = 0;
  }

  else
  {
    v34 = off_279B0FFD8[gender];
  }

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __98__RKResponseCollection_responsesForCategory_gender_maximumResponses_withLanguage_context_options___block_invoke_8;
  v59[3] = &unk_279B0FF18;
  genderCopy = gender;
  v60 = v34;
  v48 = v33;
  v61 = v48;
  [v48 enumerateObjectsUsingBlock:v59];
  v49 = v61;
  v50 = v48;

  return v48;
}

void __98__RKResponseCollection_responsesForCategory_gender_maximumResponses_withLanguage_context_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 headword];

  if (v4)
  {
    v5 = MEMORY[0x277CBEB18];
    v6 = *(a1 + 32);
    v7 = [v3 speechAct];
    v8 = [v3 headword];
    v9 = [v6 topSynonymsForSpeechAct:v7 headword:v8 recipientContext:*(a1 + 40) maxCount:20];
    v10 = [v5 arrayWithArray:v9];

    if (![v10 count])
    {
      v11 = [v3 headword];
      [v10 addObject:v11];
    }

    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __98__RKResponseCollection_responsesForCategory_gender_maximumResponses_withLanguage_context_options___block_invoke_2;
    v28 = &unk_279B0FEA8;
    v29 = *(a1 + 48);
    v12 = v10;
    v30 = v12;
    [v12 enumerateObjectsWithOptions:2 usingBlock:&v25];
    if ([v12 count])
    {
      if (_block_invoke_onceToken != -1)
      {
        __98__RKResponseCollection_responsesForCategory_gender_maximumResponses_withLanguage_context_options___block_invoke_cold_1();
      }

      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [v12 objectAtIndexedSubscript:0];
      v15 = [v14 lowercaseString];

      v16 = [_block_invoke_contractedResponseMap objectForKeyedSubscript:*(a1 + 56)];
      v17 = [v16 objectForKeyedSubscript:v15];

      if (v17)
      {
        v18 = [_block_invoke_contractedResponseMap objectForKeyedSubscript:*(a1 + 56)];
        v19 = [v18 objectForKeyedSubscript:v15];

        v13 = v19;
      }

      v20 = *(a1 + 48);
      v21 = [_RKResponse alloc];
      v22 = [v3 speechAct];
      v23 = [v3 headword];
      v24 = [(_RKResponse *)v21 initWithSpeechAct:v22 headword:v23 text:v13];
      [v20 addObject:v24];
    }
  }
}

void __98__RKResponseCollection_responsesForCategory_gender_maximumResponses_withLanguage_context_options___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [RKUtilities normalizeForPersonalization:a2];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__RKResponseCollection_responsesForCategory_gender_maximumResponses_withLanguage_context_options___block_invoke_3;
  v8[3] = &unk_279B0FE80;
  v9 = v5;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a3;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __98__RKResponseCollection_responsesForCategory_gender_maximumResponses_withLanguage_context_options___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 text];
  v8 = [RKUtilities normalizeForPersonalization:v7];
  v9 = [v6 compare:v8];

  if (!v9)
  {
    [*(a1 + 40) removeObjectAtIndex:*(a1 + 48)];
    *a4 = 1;
  }
}

uint64_t __98__RKResponseCollection_responsesForCategory_gender_maximumResponses_withLanguage_context_options___block_invoke_4()
{
  _block_invoke_contractedResponseMap = +[RKAssets contractedResponses];

  return MEMORY[0x2821F96F8]();
}

void __98__RKResponseCollection_responsesForCategory_gender_maximumResponses_withLanguage_context_options___block_invoke_5()
{
  for (i = 0; i != 5; ++i)
  {
    responsesForCategory_gender_maximumResponses_withLanguage_context_options__typePriorities[kTypePriorityOrder[i]] = i;
  }
}

uint64_t __98__RKResponseCollection_responsesForCategory_gender_maximumResponses_withLanguage_context_options___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = responsesForCategory_gender_maximumResponses_withLanguage_context_options__typePriorities[[v4 type]];
  if (v6 >= responsesForCategory_gender_maximumResponses_withLanguage_context_options__typePriorities[[v5 type]])
  {
    v8 = responsesForCategory_gender_maximumResponses_withLanguage_context_options__typePriorities[[v4 type]];
    v7 = v8 > responsesForCategory_gender_maximumResponses_withLanguage_context_options__typePriorities[[v5 type]];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __98__RKResponseCollection_responsesForCategory_gender_maximumResponses_withLanguage_context_options___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 type];
  if (v6 >= [v5 type])
  {
    v8 = [v4 type];
    v7 = v8 > [v5 type];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __98__RKResponseCollection_responsesForCategory_gender_maximumResponses_withLanguage_context_options___block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 48))
  {
    v13 = v5;
    [v5 rangeOfString:@"{"];
    if (v7)
    {
      v8 = [v13 componentsSeparatedByString:@"/"];
      v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF ENDSWITH %@", *(a1 + 32)];
      v10 = [v8 filteredArrayUsingPredicate:v9];

      v11 = [v10 objectAtIndexedSubscript:0];
      v12 = [v11 stringByReplacingOccurrencesOfString:*(a1 + 32) withString:&stru_2874A9C90];

      v6 = v12;
    }

    else
    {
      v6 = v13;
    }
  }

  v14 = v6;
  [*(a1 + 40) setObject:v6 atIndexedSubscript:a3];
}

+ (id)responsesForFixedPhrase:(id)phrase withLanguage:(id)language
{
  phraseCopy = phrase;
  languageCopy = language;
  if (responsesForFixedPhrase_withLanguage__onceToken != -1)
  {
    +[RKResponseCollection responsesForFixedPhrase:withLanguage:];
  }

  v7 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:languageCopy];
  v8 = [responsesForFixedPhrase_withLanguage__sPhraseMap objectForKeyedSubscript:v7];

  if (!v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [responsesForFixedPhrase_withLanguage__sPhraseMap setObject:dictionary forKeyedSubscript:v7];

    v10 = +[RKAssets fixedPhrases];
    v11 = [v10 objectForKeyedSubscript:v7];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__RKResponseCollection_responsesForFixedPhrase_withLanguage___block_invoke_2;
    v16[3] = &unk_279B0FF40;
    v17 = v7;
    [v11 enumerateKeysAndObjectsUsingBlock:v16];
  }

  v12 = [RKUtilities normalizeForPersonalization:phraseCopy];

  v13 = [responsesForFixedPhrase_withLanguage__sPhraseMap objectForKeyedSubscript:v7];
  v14 = [v13 objectForKeyedSubscript:v12];

  return v14;
}

uint64_t __61__RKResponseCollection_responsesForFixedPhrase_withLanguage___block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = responsesForFixedPhrase_withLanguage__sPhraseMap;
  responsesForFixedPhrase_withLanguage__sPhraseMap = v0;

  responsesForFixedPhrase_withLanguage__sNonEmptyStringsPredicate = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF != ''"];

  return MEMORY[0x2821F96F8]();
}

void __61__RKResponseCollection_responsesForFixedPhrase_withLanguage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v16 = v6;
  obj = [v6 componentsSeparatedByString:@"/"];
  v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v7 length];
        if (v13)
        {
          v3 = [v7 componentsSeparatedByString:@"/"];
          v14 = v3;
        }

        else
        {
          v14 = MEMORY[0x277CBEBF8];
        }

        v15 = [responsesForFixedPhrase_withLanguage__sPhraseMap objectForKeyedSubscript:*(a1 + 32)];
        [v15 setObject:v14 forKeyedSubscript:v12];

        if (v13)
        {
        }
      }

      v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

+ (id)responsesForFullScreenMoments:(id)moments
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA900];
  v5 = v4 = moments;
  v6 = +[RKAssets momentsPhrases];
  v7 = [RKUtilities normalizeForPersonalization:v4];

  v8 = [v7 componentsSeparatedByCharactersInSet:v5];
  v9 = [v8 componentsJoinedByString:&stru_2874A9C90];

  v10 = [RKUtilities removeEmoji:v9];

  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v12 = [v10 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  v13 = [v6 objectForKeyedSubscript:v12];
  if (v13)
  {
    v23 = v12;
    v24 = v5;
    v14 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = v13;
    obj = v13;
    v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v20 setObject:@"moment" forKeyedSubscript:@"type"];
          [v20 setObject:v19 forKeyedSubscript:@"subtype"];
          [v14 addObject:v20];
        }

        v16 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    v5 = v24;
    v13 = v22;
    v12 = v23;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)registerResponse:(id)response forMessage:(id)message withLanguage:(id)language context:(id)context effectiveDate:(id)date
{
  responseCopy = response;
  messageCopy = message;
  languageCopy = language;
  contextCopy = context;
  dateCopy = date;
  if ([messageCopy length] <= 0x800)
  {
    v17 = [RKMessageClassifier messageClassification:messageCopy withLanguageIdentifier:languageCopy];
    v18 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:languageCopy];
    language = [v17 language];
    if (language)
    {
      v20 = language;
      v40 = responseCopy;
      selfCopy = self;
      language2 = [v17 language];
      v23 = [language2 isEqualToString:@"und"];

      if (v23)
      {
        self = selfCopy;
      }

      else
      {
        language3 = [v17 language];
        v25 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:language3];

        v26 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:languageCopy];
        if (([v25 isEqualToString:v26] & 1) == 0)
        {
          language4 = [v17 language];

          v18 = language4;
        }

        self = selfCopy;
      }

      responseCopy = v40;
    }

    if (v18 && [RKSentenceClassifier canClassifyLanguageIdentifier:v18])
    {
      v28 = [(RKResponseCollection *)self personalizerForLanguageID:v18];
      v29 = [v28 headwordsForSynonym:responseCopy];
      if (![v29 count])
      {
        v30 = [v28 headwordsForSynonymPrefix:responseCopy];
        v31 = v29;
        v32 = v28;
        v33 = responseCopy;
        selfCopy2 = self;
        v35 = v30;

        v36 = v35;
        self = selfCopy2;
        responseCopy = v33;
        v28 = v32;
        v29 = v36;
      }

      if ([v29 count])
      {
        displayStringsProvider = [(RKResponseCollection *)self displayStringsProvider];
        v39 = [displayStringsProvider displayStringsForPlatform:@"watchOS" languageID:v18];

        v41 = [objc_opt_class() speechActsForCategory:objc_msgSend(v17 platform:{"sentenceType"), @"watchOS"}];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __87__RKResponseCollection_registerResponse_forMessage_withLanguage_context_effectiveDate___block_invoke;
        v42[3] = &unk_279B0FFB8;
        v43 = v39;
        v44 = v29;
        v45 = v28;
        v46 = contextCopy;
        v47 = dateCopy;
        v38 = v39;
        [v41 enumerateObjectsUsingBlock:v42];
      }
    }
  }
}

void __87__RKResponseCollection_registerResponse_forMessage_withLanguage_context_effectiveDate___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__RKResponseCollection_registerResponse_forMessage_withLanguage_context_effectiveDate___block_invoke_2;
  v11[3] = &unk_279B0FF90;
  v12 = v7;
  v8 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = v6;
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = a4;
  v9 = v6;
  v10 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
}

void __87__RKResponseCollection_registerResponse_forMessage_withLanguage_context_effectiveDate___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = [RKUtilities normalizeForPersonalization:a2];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__RKResponseCollection_registerResponse_forMessage_withLanguage_context_effectiveDate___block_invoke_3;
  v12[3] = &unk_279B0FF68;
  v13 = v8;
  v9 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = v7;
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = a4;
  v20 = *(a1 + 72);
  v10 = v7;
  v11 = v8;
  [v9 enumerateObjectsUsingBlock:v12];
}

void __87__RKResponseCollection_registerResponse_forMessage_withLanguage_context_effectiveDate___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [RKUtilities normalizeForPersonalization:a2];
  if ([*(a1 + 32) isEqualToString:?])
  {
    [*(a1 + 40) trainSynonymForSpeechAct:*(a1 + 48) headword:v7 userResponse:*(a1 + 56) recipientContext:*(a1 + 64) weight:1 effectiveDate:*(a1 + 72)];
    *a4 = 1;
    v6 = *(a1 + 88);
    **(a1 + 80) = 1;
    *v6 = 1;
  }
}

- (id)personalizerForLanguageID:(id)d
{
  dCopy = d;
  v5 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:dCopy];
  personalizersByLanguageID = [(RKResponseCollection *)self personalizersByLanguageID];
  v7 = [personalizersByLanguageID objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = [RKPersistentPersonalizer alloc];
    dynamicDataURL = [(RKResponseCollection *)self dynamicDataURL];
    displayStringsProvider = [(RKResponseCollection *)self displayStringsProvider];
    v11 = [(RKPersistentPersonalizer *)v8 initWithLanguageIdentifier:dCopy andDynamicDataURL:dynamicDataURL displayStringsProvider:displayStringsProvider];
    personalizersByLanguageID2 = [(RKResponseCollection *)self personalizersByLanguageID];
    [personalizersByLanguageID2 setObject:v11 forKeyedSubscript:v5];
  }

  personalizersByLanguageID3 = [(RKResponseCollection *)self personalizersByLanguageID];
  v14 = [personalizersByLanguageID3 objectForKeyedSubscript:v5];

  return v14;
}

+ (id)speechActsForCategory:(unint64_t)category platform:(id)platform
{
  v5 = speechActsForCategory_platform__onceToken;
  platformCopy = platform;
  if (v5 != -1)
  {
    +[RKResponseCollection speechActsForCategory:platform:];
  }

  v7 = RKLinguisticCategoryToPreferenceKey(category);
  v8 = [speechActsForCategory_platform__sSpeechActsByPlatformByCategory objectForKeyedSubscript:platformCopy];

  v9 = [v8 objectForKeyedSubscript:v7];

  return v9;
}

void __55__RKResponseCollection_speechActsForCategory_platform___block_invoke()
{
  v0 = speechActsForCategory_platform__sSpeechActsByPlatformByCategory;
  speechActsForCategory_platform__sSpeechActsByPlatformByCategory = &unk_2874EA738;
}

@end