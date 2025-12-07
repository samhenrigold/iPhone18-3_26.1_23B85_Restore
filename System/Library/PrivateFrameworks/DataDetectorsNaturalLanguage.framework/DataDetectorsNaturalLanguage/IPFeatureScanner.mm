@interface IPFeatureScanner
+ (id)dataDetectorsFeatureExtractor;
+ (id)descriptionForScanResultType:(int64_t)type;
+ (id)eventStore;
+ (id)keywordFeatureExtractor;
+ (id)sentenceFeatureExtractor;
+ (void)resetSharedCachesAndModels;
- (BOOL)dataFeatures:(id)features containDateOlderThan:(id)than preciseTimeOnly:(BOOL)only;
- (BOOL)isDateAroundNoon:(id)noon;
- (BOOL)isDateRoundedTo5Minutes:(id)minutes;
- (BOOL)isEventProposalOrConfirmationFromFeatures:(id)features fromFeatureAtIndex:(unint64_t)index messageUnit:(id)unit eventIsTenseDependent:(BOOL)dependent extractedFromSubject:(BOOL)subject extractedPolarity:(unint64_t *)polarity polarityInfluencedByIpsosPlistRef:(BOOL *)ref;
- (BOOL)shouldReplaceSendDateWithCurrentDate;
- (id)_featureDataInFeatures:(id)features atIndex:(unint64_t)index;
- (id)_featureSentenceInFeatures:(id)features atIndex:(unint64_t)index;
- (id)_featureWithClass:(Class)class inFeatures:(id)features atIndex:(unint64_t)index;
- (id)_nearbyFeatureDatas:(id)datas fromFeatureAtIndex:(unint64_t)index messageUnit:(id)unit;
- (id)_nearbyFeatureSentences:(id)sentences fromFeatureAtIndex:(unint64_t)index messageUnit:(id)unit;
- (id)_regroupEventsWithSpreadTimeAsAllDayEvents:(id)events;
- (id)_sortedFeaturesByDistance:(id)distance aroundRange:(_NSRange)range;
- (id)_sortedFeaturesByRange:(id)range;
- (id)_stitchedEventsFromEvents:(id)events;
- (id)analyzeFeatures:(id)features messageUnit:(id)unit checkPolarity:(BOOL)polarity polarity:(unint64_t)a6;
- (id)bestEventsFromEvents:(id)events;
- (id)cleanedStringForFeatureData:(id)data;
- (id)dataFeaturesInTheFutureFromDataFeatures:(id)features messageUnitSentDate:(id)date;
- (id)decoratedTitle:(id)title withSubtitles:(id)subtitles;
- (id)decoratedTitleFromEventType:(id)type title:(id)title sender:(id)sender recipients:(id)recipients isSent:(BOOL)sent isTitleSenderDecorated:(BOOL *)decorated;
- (id)featuresForTextString:(id)string inMessageUnit:(id)unit extractors:(id)extractors context:(id)context;
- (id)filteredEventsForDetectedEvents:(id)events referenceDate:(id)date;
- (id)messageSenderName;
- (id)normalizedAllDayDateFromDate:(id)date;
- (id)shortNameForPerson:(id)person;
- (id)stitchedEventsFromEvents:(id)events;
- (id)stringsFromDataFeatures:(id)features matchingTypes:(id)types;
- (unint64_t)_distanceBetweenFeature:(id)feature andFeature:(id)andFeature;
- (unint64_t)countOfFeaturesContainDateInTheFuture:(id)future messageUnitSentDate:(id)date;
- (unint64_t)eventStatusFromPolarity:(unint64_t)polarity;
- (unint64_t)featureSentencePolarityForFeatureAtIndex:(unint64_t)index inFeatures:(id)features;
- (void)adjustTimeForEvent:(id)event;
- (void)adjustTimeForEvents:(id)events;
- (void)augmentDetectedDatesWithEndDates:(id)dates;
- (void)confidenceForEvents:(id)events;
- (void)enrichEvents:(id)events messageUnits:(id)units dateInSubject:(id)subject dataFeatures:(id)features;
- (void)normalizedEvents:(id)events;
- (void)resetScanState;
- (void)scanEventsInMessageUnits:(id)units synchronously:(BOOL)synchronously completionHandler:(id)handler;
@end

@implementation IPFeatureScanner

+ (void)resetSharedCachesAndModels
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"IPScannerResetSharedCachesAndModelsNotification" object:0];
}

+ (id)eventStore
{
  if (_sharedEventStore)
  {
    result = _sharedEventStore;
  }

  else
  {
    if (eventStore__pasOnceToken2 != -1)
    {
      +[IPFeatureScanner eventStore];
    }

    result = [eventStore__pasExprOnceResult result];
  }

  return result;
}

void __30__IPFeatureScanner_eventStore__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_16 idleTimeout:5.0];
  v2 = eventStore__pasExprOnceResult;
  eventStore__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __30__IPFeatureScanner_eventStore__block_invoke_2()
{
  v0 = objc_opt_new();

  return v0;
}

- (void)scanEventsInMessageUnits:(id)units synchronously:(BOOL)synchronously completionHandler:(id)handler
{
  synchronouslyCopy = synchronously;
  handlerCopy = handler;
  unitsCopy = units;
  v9 = objc_opt_new();
  [v9 scanEventsInMessageUnits:unitsCopy synchronously:synchronouslyCopy completionHandler:handlerCopy];
}

- (void)resetScanState
{
  [(IPFeatureScanner *)self setBodyMessageUnits:0];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  [(IPFeatureScanner *)self setDetectedEvents:v3];

  v4 = MEMORY[0x277CBEBF8];
  [(IPFeatureScanner *)self setStitchedEvents:MEMORY[0x277CBEBF8]];
  [(IPFeatureScanner *)self setFilteredDetectedEvents:v4];
  [(IPFeatureScanner *)self setResultType:0];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  [(IPFeatureScanner *)self setBodyAllFeatures:v5];

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  [(IPFeatureScanner *)self setBodyDataDetectorsFeatures:v6];

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  [(IPFeatureScanner *)self setBodyKeywordFeatures:v7];

  v8 = [MEMORY[0x277CBEB58] setWithCapacity:5];
  [(IPFeatureScanner *)self setExtractedNotesStrings:v8];

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  [(IPFeatureScanner *)self setBodySentenceFeatures:v9];
}

+ (id)dataDetectorsFeatureExtractor
{
  if (dataDetectorsFeatureExtractor_onceToken != -1)
  {
    +[IPFeatureScanner dataDetectorsFeatureExtractor];
  }

  v3 = dataDetectorsFeatureExtractor_sExtractor;

  return v3;
}

uint64_t __49__IPFeatureScanner_dataDetectorsFeatureExtractor__block_invoke()
{
  dataDetectorsFeatureExtractor_sExtractor = +[(IPFeatureExtractor *)IPDataDetectorsFeatureExtractor];

  return MEMORY[0x2821F96F8]();
}

+ (id)keywordFeatureExtractor
{
  if (keywordFeatureExtractor_onceToken != -1)
  {
    +[IPFeatureScanner keywordFeatureExtractor];
  }

  v3 = keywordFeatureExtractor_kFeatureExtractor;

  return v3;
}

uint64_t __43__IPFeatureScanner_keywordFeatureExtractor__block_invoke()
{
  keywordFeatureExtractor_kFeatureExtractor = +[(IPFeatureExtractor *)IPKeywordFeatureExtractor];

  return MEMORY[0x2821F96F8]();
}

+ (id)sentenceFeatureExtractor
{
  if (sentenceFeatureExtractor_onceToken != -1)
  {
    +[IPFeatureScanner sentenceFeatureExtractor];
  }

  v3 = sentenceFeatureExtractor_sFeatureExtractor;

  return v3;
}

uint64_t __44__IPFeatureScanner_sentenceFeatureExtractor__block_invoke()
{
  sentenceFeatureExtractor_sFeatureExtractor = +[(IPFeatureExtractor *)IPSentenceFeatureExtractor];

  return MEMORY[0x2821F96F8]();
}

- (id)_sortedFeaturesByRange:(id)range
{
  v3 = [range mutableCopy];
  [v3 sortUsingComparator:&__block_literal_global_36];

  return v3;
}

uint64_t __43__IPFeatureScanner__sortedFeaturesByRange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 matchRange];
  v6 = [v4 matchRange];

  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (unint64_t)_distanceBetweenFeature:(id)feature andFeature:(id)andFeature
{
  andFeatureCopy = andFeature;
  matchRange = [feature matchRange];
  v8 = v7;
  matchRange2 = [andFeatureCopy matchRange];
  v11 = v10;

  v12 = matchRange - (v11 + matchRange2);
  if (v12 >= matchRange2 - (matchRange + v8))
  {
    v12 = matchRange2 - (matchRange + v8);
  }

  if (v12 >= 0)
  {
    return v12;
  }

  else
  {
    return -v12;
  }
}

- (id)_sortedFeaturesByDistance:(id)distance aroundRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [distance mutableCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__IPFeatureScanner__sortedFeaturesByDistance_aroundRange___block_invoke;
  v8[3] = &__block_descriptor_48_e33_q24__0__IPFeature_8__IPFeature_16l;
  v8[4] = location;
  v8[5] = location + length;
  [v6 sortUsingComparator:v8];

  return v6;
}

uint64_t __58__IPFeatureScanner__sortedFeaturesByDistance_aroundRange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 matchRange];
  v8 = v7;
  v9 = [v5 matchRange];
  v11 = v10;

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = v12 - (v6 + v8);
  if (v14 >= v6 - v13)
  {
    v14 = v6 - v13;
  }

  v15 = v12 - (v9 + v11);
  v16 = v9 - v13;
  if (v15 >= v16)
  {
    v15 = v16;
  }

  v17 = v14 == v15;
  v18 = v14 < v15;
  v19 = -1;
  if (!v18)
  {
    v19 = 1;
  }

  if (v17)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

- (id)_featureWithClass:(Class)class inFeatures:(id)features atIndex:(unint64_t)index
{
  featuresCopy = features;
  if ([featuresCopy count] > index)
  {
    v7 = [featuresCopy objectAtIndexedSubscript:index];
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id)featuresForTextString:(id)string inMessageUnit:(id)unit extractors:(id)extractors context:(id)context
{
  v59 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  unitCopy = unit;
  extractorsCopy = extractors;
  contextCopy = context;
  v28 = stringCopy;
  v29 = extractorsCopy;
  if (stringCopy)
  {
    v11 = stringCopy;
    if ([v11 length] >= 0x2711)
    {
      v12 = v11;
      v11 = [v11 substringToIndex:10000];
    }

    v31 = v11;
    if ([extractorsCopy count] == 1)
    {
      firstObject = [extractorsCopy firstObject];
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy_;
      v56 = __Block_byref_object_dispose_;
      v57 = 0;
      queue = [firstObject queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke;
      block[3] = &unk_278F22D08;
      v51 = &v52;
      v47 = firstObject;
      v48 = v31;
      v49 = unitCopy;
      v50 = contextCopy;
      v15 = firstObject;
      dispatch_sync(queue, block);

      v16 = v53[5];
      _Block_object_dispose(&v52, 8);
    }

    else
    {
      v17 = dispatch_group_create();
      array = [MEMORY[0x277CBEB18] array];
      if (featuresForTextString_inMessageUnit_extractors_context__onceToken != -1)
      {
        [IPFeatureScanner featuresForTextString:inMessageUnit:extractors:context:];
      }

      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      v42 = 0u;
      obj = extractorsCopy;
      v19 = [obj countByEnumeratingWithState:&v42 objects:v58 count:16];
      if (v19)
      {
        v20 = *v43;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v43 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v42 + 1) + 8 * i);
            queue2 = [v22 queue];
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke_3;
            v37[3] = &unk_278F22D58;
            v37[4] = v22;
            v38 = v31;
            v39 = unitCopy;
            v40 = contextCopy;
            v41 = array;
            dispatch_group_async(v17, queue2, v37);
          }

          v19 = [obj countByEnumeratingWithState:&v42 objects:v58 count:16];
        }

        while (v19);
      }

      v24 = dispatch_time(0, 60000000000);
      dispatch_group_wait(v17, v24);
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy_;
      v56 = __Block_byref_object_dispose_;
      v57 = 0;
      v25 = featuresForTextString_inMessageUnit_extractors_context__sResponseQueue;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke_5;
      v34[3] = &unk_278F22D80;
      v35 = array;
      v36 = &v52;
      v26 = array;
      dispatch_sync(v25, v34);
      v16 = v53[5];

      _Block_object_dispose(&v52, 8);
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

uint64_t __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 64) + 8) + 40) = [*(a1 + 32) featuresForTextString:*(a1 + 40) inMessageUnit:*(a1 + 48) context:*(a1 + 56)];

  return MEMORY[0x2821F96F8]();
}

void __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke_2()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Ipsos.IPFeatureManager.response", v2);
  v1 = featuresForTextString_inMessageUnit_extractors_context__sResponseQueue;
  featuresForTextString_inMessageUnit_extractors_context__sResponseQueue = v0;
}

void __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) featuresForTextString:*(a1 + 40) inMessageUnit:*(a1 + 48) context:*(a1 + 56)];
  if ([v2 count])
  {
    v3 = featuresForTextString_inMessageUnit_extractors_context__sResponseQueue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke_4;
    v4[3] = &unk_278F22D30;
    v5 = v2;
    v6 = *(a1 + 64);
    dispatch_sync(v3, v4);
  }
}

id *__75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke_4(id *result)
{
  if (result[4])
  {
    return [result[5] addObjectsFromArray:?];
  }

  return result;
}

uint64_t __75__IPFeatureScanner_featuresForTextString_inMessageUnit_extractors_context___block_invoke_5(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) copy];

  return MEMORY[0x2821F96F8]();
}

- (id)_featureDataInFeatures:(id)features atIndex:(unint64_t)index
{
  featuresCopy = features;
  v7 = [(IPFeatureScanner *)self _featureWithClass:objc_opt_class() inFeatures:featuresCopy atIndex:index];

  return v7;
}

- (id)_featureSentenceInFeatures:(id)features atIndex:(unint64_t)index
{
  featuresCopy = features;
  v7 = [(IPFeatureScanner *)self _featureWithClass:objc_opt_class() inFeatures:featuresCopy atIndex:index];

  return v7;
}

- (id)_nearbyFeatureDatas:(id)datas fromFeatureAtIndex:(unint64_t)index messageUnit:(id)unit
{
  v42 = *MEMORY[0x277D85DE8];
  datasCopy = datas;
  originalMessage = [unit originalMessage];
  dateSent = [originalMessage dateSent];

  v36 = [(IPFeatureScanner *)self _featureWithClass:objc_opt_class() inFeatures:datasCopy atIndex:index];
  matchRange = [v36 matchRange];
  v12 = v11;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v31 = datasCopy;
  [(IPFeatureScanner *)self _sortedFeaturesByDistance:datasCopy aroundRange:matchRange, v12];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = v40 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v38;
    v19 = 0x278F22000uLL;
    v20 = 0x278F22000uLL;
    do
    {
      v21 = 0;
      v33 = v16;
      do
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v37 + 1) + 8 * v21);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (++v17 > 6 || [(IPFeatureScanner *)self _distanceBetweenFeature:v36 andFeature:v22]> 0x7D0)
          {
            goto LABEL_21;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && v36 != v22)
          {
            v23 = v22;
            lastObject = [v13 lastObject];
            if ([lastObject type] && objc_msgSend(lastObject, "type") != 1)
            {
              goto LABEL_17;
            }

            v25 = v20;
            v26 = v19;
            v27 = v14;
            v28 = v13;
            value = [lastObject value];
            if ([value compare:dateSent] != -1)
            {

              v13 = v28;
              v14 = v27;
              v19 = v26;
              v20 = v25;
              v16 = v33;
              goto LABEL_17;
            }

            type = [v23 type];

            v13 = v28;
            v14 = v27;
            v19 = v26;
            v20 = v25;
            v16 = v33;
            if (type == 5)
            {
              [v13 removeLastObject];
            }

            else
            {
LABEL_17:
              [v13 addObject:v23];
            }
          }
        }

        ++v21;
      }

      while (v16 != v21);
      v16 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v16);
  }

LABEL_21:

  return v13;
}

- (id)_nearbyFeatureSentences:(id)sentences fromFeatureAtIndex:(unint64_t)index messageUnit:(id)unit
{
  v27 = *MEMORY[0x277D85DE8];
  sentencesCopy = sentences;
  v8 = [(IPFeatureScanner *)self _featureWithClass:objc_opt_class() inFeatures:sentencesCopy atIndex:index];
  matchRange = [v8 matchRange];
  v11 = v10;
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v21 = sentencesCopy;
  [(IPFeatureScanner *)self _sortedFeaturesByDistance:sentencesCopy aroundRange:matchRange, v11];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v25 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v23;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v23 != v17)
      {
        objc_enumerationMutation(v13);
      }

      if (v16 > 5)
      {
        break;
      }

      v19 = *(*(&v22 + 1) + 8 * v18);
      if ([(IPFeatureScanner *)self _distanceBetweenFeature:v8 andFeature:v19]> 0x3E8)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && v8 != v19)
      {
        [v12 addObject:v19];
        ++v16;
      }

      if (v15 == ++v18)
      {
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v12;
}

- (BOOL)shouldReplaceSendDateWithCurrentDate
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"IPFeatureManagersReplaceSendDateWithCurrentDate"];

  return v3;
}

- (void)augmentDetectedDatesWithEndDates:(id)dates
{
  v31 = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [datesCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v27;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(datesCopy);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        type = [v9 type];
        if (type < 2)
        {
          contextDictionary = [v9 contextDictionary];
          v12 = [contextDictionary objectForKeyedSubscript:@"endDate"];

          if (v12)
          {
            v13 = v6;
            v6 = 0;
          }

          else
          {
            v25 = v9;
            v13 = v6;
            v6 = v25;
          }

LABEL_18:

          continue;
        }

        if (type == 2)
        {
          matchRange = [v9 matchRange];
          matchRange2 = [v6 matchRange];
          v17 = matchRange - (v16 + matchRange2);
          if (v17 < 0)
          {
            v17 = v16 + matchRange2 - matchRange;
          }

          if (v17 <= 0x31)
          {
            contextDictionary2 = [v9 contextDictionary];
            v13 = [contextDictionary2 objectForKeyedSubscript:@"endDate"];

            value = [v6 value];
            [v13 timeIntervalSinceReferenceDate];
            v21 = v20;
            [value timeIntervalSinceReferenceDate];
            v23 = v21 - v22;
            if (v23 >= 1800.0 && v23 < 43200.0)
            {
              contextDictionary3 = [v6 contextDictionary];
              [contextDictionary3 setObject:v13 forKeyedSubscript:@"endDate"];
            }

            goto LABEL_18;
          }
        }
      }

      v5 = [datesCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v5)
      {
        goto LABEL_23;
      }
    }
  }

  v6 = 0;
LABEL_23:
}

- (unint64_t)featureSentencePolarityForFeatureAtIndex:(unint64_t)index inFeatures:(id)features
{
  featuresCopy = features;
  v7 = [featuresCopy objectAtIndexedSubscript:index];
  matchRange = [v7 matchRange];
  v9 = 0;
  while (1)
  {
    v10 = [(IPFeatureScanner *)self _featureSentenceInFeatures:featuresCopy atIndex:index];
    if (v10)
    {
      matchRange2 = [v7 matchRange];
      if (matchRange >= matchRange2 && matchRange - matchRange2 < v12)
      {
        break;
      }
    }

    if (++v9 >= 5)
    {
      polarity = 0;
      goto LABEL_8;
    }
  }

  polarity = [v10 polarity];

LABEL_8:
  return polarity;
}

- (BOOL)isDateAroundNoon:(id)noon
{
  noonCopy = noon;
  if (IPGregorianCalendar_once != -1)
  {
    [IPFeatureScanner isDateAroundNoon:];
  }

  v4 = [IPGregorianCalendar_calendar components:32 fromDate:noonCopy];
  v5 = [v4 hour] >= 11 && objc_msgSend(v4, "hour") < 14;

  return v5;
}

- (BOOL)isDateRoundedTo5Minutes:(id)minutes
{
  minutesCopy = minutes;
  if (IPGregorianCalendar_once != -1)
  {
    [IPFeatureScanner isDateAroundNoon:];
  }

  v4 = [IPGregorianCalendar_calendar components:192 fromDate:minutesCopy];
  if ([v4 second])
  {
    v5 = 0;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * [v4 minute] + 0x1999999999999999 < 0x3333333333333333;
  }

  return v5;
}

- (id)dataFeaturesInTheFutureFromDataFeatures:(id)features messageUnitSentDate:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  dateCopy = date;
  v7 = objc_opt_new();
  v8 = [dateCopy dateByAddingTimeInterval:600.0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = featuresCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (![v14 type] || objc_msgSend(v14, "type") == 1)
        {
          value = [v14 value];
          if ([value compare:v8] != -1)
          {
            [v7 addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v7;
}

- (unint64_t)countOfFeaturesContainDateInTheFuture:(id)future messageUnitSentDate:(id)date
{
  v4 = [(IPFeatureScanner *)self dataFeaturesInTheFutureFromDataFeatures:future messageUnitSentDate:date];
  v5 = [v4 count];

  return v5;
}

- (BOOL)dataFeatures:(id)features containDateOlderThan:(id)than preciseTimeOnly:(BOOL)only
{
  onlyCopy = only;
  v35 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  thanCopy = than;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = featuresCopy;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        if (![v13 type] || objc_msgSend(v13, "type") == 1)
        {
          value = [v13 value];
          if ([value compare:thanCopy] == -1)
          {
            if (!onlyCopy || ([v13 contextDictionary], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectForKeyedSubscript:", @"timeIsApproximate"), v16 = v8, v17 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v17, "BOOLValue"), v17, v15, objc_msgSend(v13, "contextDictionary"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectForKeyedSubscript:", @"allDay"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "BOOLValue"), v19, v18, objc_msgSend(v13, "contextDictionary"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "objectForKeyedSubscript:", @"dateTimeIsTenseDependent"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "BOOLValue"), v22, v8 = v16, v21, v24 = -[IPFeatureScanner isDateRoundedTo5Minutes:](self, "isDateRoundedTo5Minutes:", value), (v20 & 1) == 0) && (v23 & 1) == 0 && (v29 & v24) == 0)
            {

              v25 = 1;
              goto LABEL_18;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0;
LABEL_18:

  return v25;
}

- (BOOL)isEventProposalOrConfirmationFromFeatures:(id)features fromFeatureAtIndex:(unint64_t)index messageUnit:(id)unit eventIsTenseDependent:(BOOL)dependent extractedFromSubject:(BOOL)subject extractedPolarity:(unint64_t *)polarity polarityInfluencedByIpsosPlistRef:(BOOL *)ref
{
  subjectCopy = subject;
  dependentCopy = dependent;
  v149 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  unitCopy = unit;
  v17 = unitCopy;
  *polarity = 1;
  if (subjectCopy)
  {
    originalMessage = [unitCopy originalMessage];
    type = [originalMessage type];
    v20 = IPMessageTypeShortMessage;

    if (type == v20)
    {
      v39 = 0;
      goto LABEL_165;
    }
  }

  v21 = [featuresCopy objectAtIndexedSubscript:index];
  matchRange = [v21 matchRange];
  v24 = v23;
  v25 = [(IPFeatureScanner *)self _nearbyFeatureSentences:featuresCopy fromFeatureAtIndex:index messageUnit:v17];
  if (![v25 count])
  {
    v39 = 0;
    v28 = v25;
    goto LABEL_164;
  }

  v132 = v24;
  v26 = [v25 count];
  if (v26 >= 3)
  {
    v27 = 3;
  }

  else
  {
    v27 = v26;
  }

  v28 = [v25 subarrayWithRange:{0, v27}];

  firstObject = [v28 firstObject];
  v31 = firstObject;
  if (IPDebuggingModeEnabled_once != -1)
  {
    [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
  }

  v133 = v31;
  if (IPDebuggingModeEnabled_sEnabled == 1)
  {
    v32 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging(firstObject, v30);
      v32 = _IPLogHandle;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = v32;
      [v21 matchString];
      v35 = v34 = v21;
      *buf = 138412546;
      v146 = v35;
      v147 = 2112;
      v148 = v133;
      _os_log_impl(&dword_2485E4000, v33, OS_LOG_TYPE_INFO, "Evaluating main feature sentence containing date [%@]: %@ #FeatureManager", buf, 0x16u);

      v21 = v34;
      v31 = v133;
    }
  }

  isQuoteAttributionLine = [v31 isQuoteAttributionLine];
  if (isQuoteAttributionLine)
  {
    v38 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging(isQuoteAttributionLine, v37);
      v38 = _IPLogHandle;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v38, OS_LOG_TYPE_INFO, "Skip main feature because it is a QUOTE ATTRIBUTION LINE #FeatureManager", buf, 2u);
    }

    v39 = 0;
    v31 = v133;
    goto LABEL_163;
  }

  eventVocabularyIgnoreDateKeyword = [v31 eventVocabularyIgnoreDateKeyword];

  if (eventVocabularyIgnoreDateKeyword)
  {
    v43 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging(v41, v42);
      v43 = _IPLogHandle;
    }

    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_INFO);
    if (v44)
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v43, OS_LOG_TYPE_INFO, "Skip main feature because it contains IGNORE vocabulary #FeatureManager", buf, 2u);
    }

    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v46 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(v44, v45);
        v46 = _IPLogHandle;
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = v46;
        eventVocabularyIgnoreDateKeyword2 = [v31 eventVocabularyIgnoreDateKeyword];
        *buf = 138412290;
        v146 = eventVocabularyIgnoreDateKeyword2;
        _os_log_impl(&dword_2485E4000, v47, OS_LOG_TYPE_INFO, "Keyword: [%@] #FeatureManager", buf, 0xCu);
      }
    }

    v39 = 0;
    *ref = 1;
    goto LABEL_163;
  }

  v130 = v21;
  if (dependentCopy && ([v31 matchString], v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "languageID"), v50 = objc_claimAutoreleasedReturnValue(), v51 = +[IPTenseDetector tenseOfString:languageID:](IPTenseDetector, "tenseOfString:languageID:", v49, v50), v50, v49, !v51))
  {
    v83 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging(v52, v53);
      v83 = _IPLogHandle;
    }

    v54 = 1;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v83, OS_LOG_TYPE_INFO, "Event SEEMS to be in the PAST. Let's check the fragment polarity. #FeatureManager", buf, 2u);
    }
  }

  else
  {
    v54 = 0;
  }

  obj = v54;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v128 = v28;
  v55 = v28;
  v56 = [v55 countByEnumeratingWithState:&v139 objects:v144 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v140;
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v140 != v58)
        {
          objc_enumerationMutation(v55);
        }

        eventVocabularyRejectionKeyword = [*(*(&v139 + 1) + 8 * i) eventVocabularyRejectionKeyword];
        if (eventVocabularyRejectionKeyword)
        {
          v72 = eventVocabularyRejectionKeyword;
          v73 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(eventVocabularyRejectionKeyword, v61);
            v73 = _IPLogHandle;
          }

          v74 = os_log_type_enabled(v73, OS_LOG_TYPE_INFO);
          v28 = v128;
          v31 = v133;
          if (v74)
          {
            *buf = 0;
            _os_log_impl(&dword_2485E4000, v73, OS_LOG_TYPE_INFO, "Skip because a REJECTION keyword was found nearby #FeatureManager", buf, 2u);
          }

          if (IPDebuggingModeEnabled_once != -1)
          {
            [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
          }

          if (IPDebuggingModeEnabled_sEnabled == 1)
          {
            v76 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging(v74, v75);
              v76 = _IPLogHandle;
            }

            if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v146 = v72;
              _os_log_impl(&dword_2485E4000, v76, OS_LOG_TYPE_INFO, "Keyword: %@ #FeatureManager", buf, 0xCu);
            }
          }

          *ref = 1;

          v39 = 0;
          v21 = v130;
          goto LABEL_163;
        }
      }

      v57 = [v55 countByEnumeratingWithState:&v139 objects:v144 count:16];
    }

    while (v57);
  }

  v31 = v133;
  v138 = 0.0;
  v62 = [v133 polarityForRange:matchRange - objc_msgSend(v133 confidence:{"matchRange"), v132, &v138}];
  v63 = [MEMORY[0x277CCABB0] numberWithDouble:v138];
  contextDictionary = [v130 contextDictionary];
  [contextDictionary setObject:v63 forKeyedSubscript:@"polarityProbability"];

  if (v62 == 4)
  {
    v67 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging(v65, v66);
      v67 = _IPLogHandle;
    }

    v68 = os_log_type_enabled(v67, OS_LOG_TYPE_INFO);
    v21 = v130;
    if (v68)
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v67, OS_LOG_TYPE_INFO, "Skip because focused fragment polarity is REJECTION #FeatureManager", buf, 2u);
    }

    v28 = v128;
    v31 = v133;
    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v70 = IPSOSLogHandle(v68, v69);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        matchString = [v130 matchString];
        *buf = 138412290;
        v146 = matchString;
        _os_log_impl(&dword_2485E4000, v70, OS_LOG_TYPE_INFO, "Focused fragment: [%@] #FeatureManager", buf, 0xCu);
      }

      goto LABEL_161;
    }

    goto LABEL_162;
  }

  if (!subjectCopy && v62 == 2)
  {
    v77 = IPSOSLogHandle(v65, v66);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v77, OS_LOG_TYPE_INFO, "Found EVENT because focused fragment polarity is PROPOSAL #FeatureManager", buf, 2u);
    }

    v28 = v128;
    v21 = v130;
    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v80 = IPSOSLogHandle(v78, v79);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        matchString2 = [v130 matchString];
        *buf = 138412290;
        v146 = matchString2;
        _os_log_impl(&dword_2485E4000, v80, OS_LOG_TYPE_INFO, "Focused fragment: [%@] #FeatureManager", buf, 0xCu);
      }
    }

    v82 = 2;
LABEL_94:
    *polarity = v82;
LABEL_95:
    v39 = 1;
    goto LABEL_163;
  }

  v84 = IPSOSLogHandle(v65, v66);
  v85 = os_log_type_enabled(v84, OS_LOG_TYPE_INFO);
  if (!subjectCopy && v62 == 3)
  {
    if (v85)
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v84, OS_LOG_TYPE_INFO, "Found EVENT because focused fragment polarity is CONFIRMATION #FeatureManager", buf, 2u);
    }

    v28 = v128;
    v21 = v130;
    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v88 = IPSOSLogHandle(v86, v87);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
      {
        matchString3 = [v130 matchString];
        *buf = 138412290;
        v146 = matchString3;
        _os_log_impl(&dword_2485E4000, v88, OS_LOG_TYPE_INFO, "Focused fragment: [%@] #FeatureManager", buf, 0xCu);
      }
    }

    v82 = 3;
    goto LABEL_94;
  }

  if (subjectCopy)
  {
    v28 = v128;
    v21 = v130;
    if (v85)
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v84, OS_LOG_TYPE_INFO, "Extracted from SUBJECT #FeatureManager", buf, 2u);
    }
  }

  else
  {
    v21 = v130;
    if (v85)
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v84, OS_LOG_TYPE_INFO, "No CLEAR POLARITY for focused fragment #FeatureManager", buf, 2u);
    }

    v28 = v128;
    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled != 1)
    {
      goto LABEL_107;
    }

    v84 = IPSOSLogHandle(v90, v91);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      matchString4 = [v130 matchString];
      *buf = 138412290;
      v146 = matchString4;
      _os_log_impl(&dword_2485E4000, v84, OS_LOG_TYPE_INFO, "Focused fragment: [%@] #FeatureManager", buf, 0xCu);
    }
  }

LABEL_107:
  polarity = [v133 polarity];
  if (polarity == 4)
  {
    v70 = IPSOSLogHandle(4, v94);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v95 = "Skip because main feature polarity is a rejection #FeatureManager";
      goto LABEL_160;
    }

    goto LABEL_161;
  }

  if (obj)
  {
    v70 = IPSOSLogHandle(polarity, v94);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v95 = "Skip main feature because TENSE is in the PAST and event is tense dependent. #FeatureManager";
      goto LABEL_160;
    }

    goto LABEL_161;
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v96 = v55;
  v131 = [v96 countByEnumeratingWithState:&v134 objects:v143 count:16];
  if (!v131)
  {

    goto LABEL_155;
  }

  obja = v96;
  v97 = 0;
  v129 = *v135;
  while (2)
  {
    v98 = 0;
    do
    {
      if (*v135 != v129)
      {
        objc_enumerationMutation(obja);
      }

      v99 = *(*(&v134 + 1) + 8 * v98);
      polarity2 = [v99 polarity];
      if (polarity2 == 2)
      {
        if (IPDebuggingModeEnabled_once != -1)
        {
          [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
        }

        if (IPDebuggingModeEnabled_sEnabled == 1)
        {
          v102 = IPSOSLogHandle(polarity2, v101);
          if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v146 = v99;
            _os_log_impl(&dword_2485E4000, v102, OS_LOG_TYPE_INFO, "Nearby feature: %@ #FeatureManager", buf, 0xCu);
          }
        }

        v103 = IPSOSLogHandle(polarity2, v101);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2485E4000, v103, OS_LOG_TYPE_INFO, "Found PROPOSAL in nearby feature #FeatureManager", buf, 2u);
        }

        v104 = 2;
      }

      else
      {
        polarity3 = [v99 polarity];
        if (polarity3 != 3)
        {
          goto LABEL_139;
        }

        if (IPDebuggingModeEnabled_once != -1)
        {
          [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
        }

        if (IPDebuggingModeEnabled_sEnabled == 1)
        {
          v107 = IPSOSLogHandle(polarity3, v106);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v146 = v99;
            _os_log_impl(&dword_2485E4000, v107, OS_LOG_TYPE_INFO, "Nearby feature: %@ #FeatureManager", buf, 0xCu);
          }
        }

        v103 = IPSOSLogHandle(polarity3, v106);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2485E4000, v103, OS_LOG_TYPE_INFO, "Found CONFIRMATION in nearby feature #FeatureManager", buf, 2u);
        }

        v104 = 3;
      }

      *polarity = v104;
      v97 = 1;
      v21 = v130;
      v31 = v133;
LABEL_139:
      polarity4 = [v99 polarity];
      if (polarity4 == 4)
      {
        if (IPDebuggingModeEnabled_once != -1)
        {
          [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
        }

        if (IPDebuggingModeEnabled_sEnabled == 1)
        {
          v112 = IPSOSLogHandle(polarity4, v109);
          if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v146 = v99;
            _os_log_impl(&dword_2485E4000, v112, OS_LOG_TYPE_INFO, "Nearby feature: %@ #FeatureManager", buf, 0xCu);
          }
        }

        v113 = IPSOSLogHandle(polarity4, v109);
        if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2485E4000, v113, OS_LOG_TYPE_INFO, "Found REJECTION in nearby feature #FeatureManager", buf, 2u);
        }

        v70 = IPSOSLogHandle(v114, v115);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v95 = "Skip feature because rejection found nearby #FeatureManager";
          goto LABEL_160;
        }

        goto LABEL_161;
      }

      ++v98;
    }

    while (v131 != v98);
    v131 = [obja countByEnumeratingWithState:&v134 objects:v143 count:16];
    if (v131)
    {
      continue;
    }

    break;
  }

  if (v97)
  {
    goto LABEL_95;
  }

LABEL_155:
  if (!subjectCopy)
  {
    [v31 matchRange];
    v117 = v116 - v132;
    matchString5 = [v133 matchString];
    v119 = [matchString5 localizedCaseInsensitiveContainsString:@": "];

    v120 = v117 < 10;
    v31 = v133;
    if (v120 || v119)
    {
      contextDictionary2 = [v21 contextDictionary];
      [contextDictionary2 setObject:&unk_285B08898 forKeyedSubscript:@"polarityProbability"];

      v125 = IPSOSLogHandle(v123, v124);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2485E4000, v125, OS_LOG_TYPE_INFO, "Sentence containing DATE is very short. Detecting as a proposal. #FeatureManager", buf, 2u);
      }

      goto LABEL_95;
    }
  }

  v70 = IPSOSLogHandle(v110, v111);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v95 = "Skip feature because no acceptation or proposal found nearby #FeatureManager";
LABEL_160:
    _os_log_impl(&dword_2485E4000, v70, OS_LOG_TYPE_INFO, v95, buf, 2u);
  }

LABEL_161:

LABEL_162:
  v39 = 0;
LABEL_163:

LABEL_164:
LABEL_165:

  return v39;
}

- (id)stitchedEventsFromEvents:(id)events
{
  eventsCopy = events;
  if ([eventsCopy count] > 1)
  {
    v6 = [(IPFeatureScanner *)self _stitchedEventsFromEvents:eventsCopy];

    v5 = [(IPFeatureScanner *)self _regroupEventsWithSpreadTimeAsAllDayEvents:v6];
    eventsCopy = v6;
  }

  else
  {
    v5 = [eventsCopy copy];
  }

  return v5;
}

- (id)_stitchedEventsFromEvents:(id)events
{
  v82 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v64 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = eventsCopy;
  v65 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
  if (v65)
  {
    v63 = *v77;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v77 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v76 + 1) + 8 * i);
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v6 = v64;
        v7 = [v6 countByEnumeratingWithState:&v72 objects:v80 count:16];
        v70 = v5;
        if (v7)
        {
          v8 = v7;
          v9 = *v73;
          v66 = i;
          v67 = *v73;
          v68 = v6;
          while (2)
          {
            v10 = 0;
            v69 = v8;
            do
            {
              if (*v73 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v72 + 1) + 8 * v10);
              if ([v11 isAllDay] && objc_msgSend(v5, "isAllDay"))
              {
                startDate = [v11 startDate];
                startDate2 = [v5 startDate];
                [startDate timeIntervalSinceDate:startDate2];
                v15 = v14 == 0.0;
              }

              else
              {
                v15 = 0;
              }

              if (([v11 isAllDay] & 1) == 0 && (objc_msgSend(v5, "isAllDay") & 1) == 0)
              {
                startDate3 = [v11 startDate];
                endDate = [v5 endDate];
                [startDate3 timeIntervalSinceDate:endDate];
                if (fabs(v18) <= 3600.0)
                {
                  goto LABEL_33;
                }

                endDate2 = [v11 endDate];
                startDate4 = [v5 startDate];
                [endDate2 timeIntervalSinceDate:startDate4];
                if (fabs(v21) <= 3600.0)
                {
                  goto LABEL_32;
                }

                v71 = startDate3;
                startDate5 = [v11 startDate];
                startDate6 = [v5 startDate];
                [startDate5 timeIntervalSinceDate:startDate6];
                if (fabs(v24) <= 3600.0)
                {

                  startDate3 = v71;
LABEL_32:

                  v6 = v68;
LABEL_33:

LABEL_34:
                  v35 = v11;

                  i = v66;
                  if (!v35)
                  {
                    goto LABEL_41;
                  }

                  if ([v35 isAllDay])
                  {
LABEL_36:
                    location = [v35 location];
                    if (location)
                    {
                      v37 = location;
                      location2 = [v70 location];

                      if (!location2)
                      {
                        location3 = [v35 location];
                        [v70 setLocation:location3];
                      }
                    }

                    if ([v70 ipsos_isDateTimeTenseDependent])
                    {
                      ipsos_isDateTimeTenseDependent = [v35 ipsos_isDateTimeTenseDependent];
                    }

                    else
                    {
                      ipsos_isDateTimeTenseDependent = 0;
                    }

                    [v70 setIpsos_isDateTimeTenseDependent:ipsos_isDateTimeTenseDependent];
                    [v6 removeObject:v35];
                    ipsos_dataFeatures = [v70 ipsos_dataFeatures];
                    ipsos_dataFeatures2 = [v35 ipsos_dataFeatures];
                    v57 = [ipsos_dataFeatures arrayByAddingObjectsFromArray:ipsos_dataFeatures2];
                    [v70 setIpsos_dataFeatures:v57];

                    [v6 addObject:v70];
                    goto LABEL_65;
                  }

                  if ([v35 isAllDay] & 1) == 0 && (objc_msgSend(v70, "isAllDay") & 1) != 0 || (objc_msgSend(v35, "ipsos_isTimeApproximate") & 1) == 0 && (objc_msgSend(v70, "ipsos_isTimeApproximate"))
                  {
                    goto LABEL_65;
                  }

                  if ([v35 ipsos_isTimeApproximate] && (objc_msgSend(v70, "ipsos_isTimeApproximate") & 1) == 0)
                  {
                    goto LABEL_36;
                  }

                  startDate7 = [v35 startDate];
                  startDate8 = [v70 startDate];
                  [startDate7 timeIntervalSinceDate:startDate8];
                  v44 = v43;

                  if (v44 > 0.0)
                  {
                    startDate9 = [v70 startDate];
                    [v35 setStartDate:startDate9];
                  }

                  ipsos_isEndTimeApproximate = [v70 ipsos_isEndTimeApproximate];
                  if (ipsos_isEndTimeApproximate == [v35 ipsos_isEndTimeApproximate] && (objc_msgSend(v35, "endDate"), v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v70, "endDate"), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "timeIntervalSinceDate:", v48), v50 = v49, v48, v47, v50 < 0.0) || !objc_msgSend(v70, "ipsos_isEndTimeApproximate") || objc_msgSend(v35, "ipsos_isEndTimeApproximate"))
                  {
                    endDate3 = [v70 endDate];
                    [v35 setEndDate:endDate3];

                    [v35 setIpsos_isEndTimeApproximate:{objc_msgSend(v70, "ipsos_isEndTimeApproximate")}];
                  }

                  location4 = [v35 location];
                  if (location4)
                  {
LABEL_58:
                  }

                  else
                  {
                    location5 = [v70 location];

                    if (location5)
                    {
                      location4 = [v70 location];
                      [v35 setLocation:location4];
                      goto LABEL_58;
                    }
                  }

                  if ([v70 ipsos_isDateTimeTenseDependent])
                  {
                    ipsos_isDateTimeTenseDependent2 = [v35 ipsos_isDateTimeTenseDependent];
                  }

                  else
                  {
                    ipsos_isDateTimeTenseDependent2 = 0;
                  }

                  [v35 setIpsos_isDateTimeTenseDependent:ipsos_isDateTimeTenseDependent2];
                  ipsos_dataFeatures3 = [v35 ipsos_dataFeatures];
                  ipsos_dataFeatures4 = [v70 ipsos_dataFeatures];
                  v60 = [ipsos_dataFeatures3 arrayByAddingObjectsFromArray:ipsos_dataFeatures4];
                  [v35 setIpsos_dataFeatures:v60];

                  goto LABEL_65;
                }

                ipsos_isTimeApproximate = [v11 ipsos_isTimeApproximate];
                if (ipsos_isTimeApproximate == [v5 ipsos_isTimeApproximate])
                {

                  v9 = v67;
                  v6 = v68;
                  v8 = v69;
                }

                else
                {
                  startDate10 = [v11 startDate];
                  startDate11 = [v5 startDate];
                  [startDate10 timeIntervalSinceDate:startDate11];
                  v29 = fabs(v28);

                  v5 = v70;
                  v9 = v67;
                  v6 = v68;
                  v8 = v69;
                  if (v29 <= 18000.0)
                  {
                    goto LABEL_34;
                  }
                }
              }

              isAllDay = [v11 isAllDay];
              if (isAllDay == [v5 isAllDay])
              {
                v34 = 0;
              }

              else
              {
                startDate12 = [v11 startDate];
                startDate13 = [v5 startDate];
                [startDate12 timeIntervalSinceDate:startDate13];
                v34 = fabs(v33) < 86399.0;
              }

              if (v15 || v34)
              {
                goto LABEL_34;
              }

              ++v10;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v72 objects:v80 count:16];
            i = v66;
            if (v8)
            {
              continue;
            }

            break;
          }
        }

LABEL_41:
        [v6 addObject:v70];
        v35 = 0;
LABEL_65:
      }

      v65 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
    }

    while (v65);
  }

  return v64;
}

- (id)_regroupEventsWithSpreadTimeAsAllDayEvents:(id)events
{
  v35 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if ([eventsCopy count] <= 1)
  {
    v4 = eventsCopy;
    goto LABEL_30;
  }

  if (_regroupEventsWithSpreadTimeAsAllDayEvents__onceToken != -1)
  {
    [IPFeatureScanner _regroupEventsWithSpreadTimeAsAllDayEvents:];
  }

  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v24 = eventsCopy;
  v6 = eventsCopy;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = _regroupEventsWithSpreadTimeAsAllDayEvents__sDateFormatter;
        startDate = [v11 startDate];
        v14 = [v12 stringFromDate:startDate];

        v15 = [v5 objectForKeyedSubscript:v14];
        if (!v15)
        {
          v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
          [v5 setObject:v15 forKeyedSubscript:v14];
        }

        if ([v11 isAllDay])
        {
          [v15 insertObject:v11 atIndex:0];
        }

        else
        {
          [v15 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [v16 objectForKeyedSubscript:*(*(&v25 + 1) + 8 * j)];
        if ([v21 count] == 1)
        {
          firstObject = [v21 firstObject];
        }

        else
        {
          if ([v21 count] < 2)
          {
            goto LABEL_27;
          }

          firstObject = [v21 firstObject];
          [firstObject setAllDay:1];
          [firstObject setIpsos_disableTimeAdjustment:1];
        }

        [v4 addObject:firstObject];

LABEL_27:
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  eventsCopy = v24;
LABEL_30:

  return v4;
}

uint64_t __63__IPFeatureScanner__regroupEventsWithSpreadTimeAsAllDayEvents___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _regroupEventsWithSpreadTimeAsAllDayEvents__sDateFormatter;
  _regroupEventsWithSpreadTimeAsAllDayEvents__sDateFormatter = v0;

  [_regroupEventsWithSpreadTimeAsAllDayEvents__sDateFormatter setTimeStyle:0];
  v2 = _regroupEventsWithSpreadTimeAsAllDayEvents__sDateFormatter;

  return [v2 setDateStyle:1];
}

- (void)adjustTimeForEvents:(id)events
{
  v14 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [eventsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        [(IPFeatureScanner *)self adjustTimeForEvent:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [eventsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)adjustTimeForEvent:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([eventCopy ipsos_timeNeedsMeridianGuess])
  {
    startDate = [eventCopy startDate];
    ipsos_eventClassificationType = [eventCopy ipsos_eventClassificationType];
    preferedMeridian = [ipsos_eventClassificationType preferedMeridian];
    if (!preferedMeridian)
    {
LABEL_29:

      goto LABEL_30;
    }

    v7 = preferedMeridian;
    if (IPGregorianCalendar_once != -1)
    {
      [IPFeatureScanner isDateAroundNoon:];
    }

    v8 = IPGregorianCalendar_calendar;
    v9 = [v8 components:32 fromDate:startDate];
    hour = [v9 hour];
    v12 = 12 - hour;
    if (12 - hour < 0)
    {
      v12 = hour - 12;
    }

    if (v12 < 2)
    {
LABEL_28:

      goto LABEL_29;
    }

    if (v7 == 2 && hour <= 11)
    {
      if (IPDebuggingModeEnabled_once != -1)
      {
        [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
      }

      if (IPDebuggingModeEnabled_sEnabled == 1)
      {
        v13 = _IPLogHandle;
        if (!_IPLogHandle)
        {
          IPInitLogging(hour, v11);
          v13 = _IPLogHandle;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = v13;
          v15 = [eventCopy valueForKey:@"ipsos_betterDescription"];
          v21 = 138412290;
          v22 = v15;
          _os_log_impl(&dword_2485E4000, v14, OS_LOG_TYPE_INFO, "Adjusting time as PM for event: %@ #FeatureManager", &v21, 0xCu);
        }
      }

      startDate2 = [eventCopy startDate];
      v17 = [startDate2 dateByAddingTimeInterval:43200.0];
      [eventCopy setStartDate:v17];

      endDate = [eventCopy endDate];

      if (!endDate)
      {
        goto LABEL_28;
      }

      endDate2 = [eventCopy endDate];
      v20 = [endDate2 dateByAddingTimeInterval:43200.0];
      [eventCopy setEndDate:v20];
    }

    else
    {
      if (v7 != 1 || hour < 12)
      {
        goto LABEL_28;
      }

      if (IPDebuggingModeEnabled_once != -1)
      {
        [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
      }

      if (IPDebuggingModeEnabled_sEnabled != 1)
      {
        goto LABEL_28;
      }

      endDate2 = IPSOSLogHandle(hour, v11);
      if (!os_log_type_enabled(endDate2, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v20 = [eventCopy valueForKey:@"ipsos_betterDescription"];
      v21 = 138412290;
      v22 = v20;
      _os_log_impl(&dword_2485E4000, endDate2, OS_LOG_TYPE_INFO, "Adjusting time as AM for event: %@ #FeatureManager", &v21, 0xCu);
    }

LABEL_20:
    goto LABEL_28;
  }

LABEL_30:
}

- (id)filteredEventsForDetectedEvents:(id)events referenceDate:(id)date
{
  v174 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dateCopy = date;
  if (![eventsCopy count])
  {
    v142 = MEMORY[0x277CBEBF8];
    goto LABEL_200;
  }

  v150 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v149 = eventsCopy;
  v7 = eventsCopy;
  v8 = [v7 countByEnumeratingWithState:&v163 objects:v173 count:16];
  if (!v8)
  {
    goto LABEL_174;
  }

  v9 = v8;
  v154 = *v164;
  v151 = v7;
  do
  {
    v10 = 0;
    v153 = v9;
    do
    {
      if (*v164 != v154)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v163 + 1) + 8 * v10);
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v13 = [standardUserDefaults BOOLForKey:@"IPFeatureManagersSkipConfidenceFiltering"];

      if ((v13 & 1) == 0)
      {
        ipsos_confidence = [v11 ipsos_confidence];
        if (v16 < 0.45)
        {
          v17 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(ipsos_confidence, v15);
            v17 = _IPLogHandle;
          }

          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
          if (v18)
          {
            v20 = v17;
            [v11 ipsos_confidence];
            *buf = 134217984;
            v170 = v21;
            _os_log_impl(&dword_2485E4000, v20, OS_LOG_TYPE_INFO, "Skipped event because it's confidence score is too low (confidence: %0.4f) #FeatureManager", buf, 0xCu);
          }

          if (IPDebuggingModeEnabled_once != -1)
          {
            [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
          }

          if (IPDebuggingModeEnabled_sEnabled == 1)
          {
            v22 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging(v18, v19);
              v22 = _IPLogHandle;
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = v22;
              startDate = [v11 startDate];
              *buf = 138412290;
              v170 = startDate;
              _os_log_impl(&dword_2485E4000, v23, OS_LOG_TYPE_INFO, "Filtered event (Start date: %@) #FeatureManager", buf, 0xCu);
            }
          }

          selfCopy7 = self;
          v26 = -80;
          goto LABEL_171;
        }
      }

      ipsos_eventClassificationType = [v11 ipsos_eventClassificationType];

      if (!ipsos_eventClassificationType)
      {
        v50 = _IPLogHandle;
        if (!_IPLogHandle)
        {
          IPInitLogging(v28, v29);
          v50 = _IPLogHandle;
        }

        v51 = os_log_type_enabled(v50, OS_LOG_TYPE_INFO);
        if (v51)
        {
          *buf = 0;
          _os_log_impl(&dword_2485E4000, v50, OS_LOG_TYPE_INFO, "Skipped event because it doesn't has any clear classification type #FeatureManager", buf, 2u);
        }

        if (IPDebuggingModeEnabled_once != -1)
        {
          [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
        }

        if (IPDebuggingModeEnabled_sEnabled == 1)
        {
          v53 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(v51, v52);
            v53 = _IPLogHandle;
          }

          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
LABEL_60:
            v62 = v53;
            startDate2 = [v11 startDate];
            *buf = 138412290;
            v170 = startDate2;
            _os_log_impl(&dword_2485E4000, v62, OS_LOG_TYPE_INFO, "Filtered event (Start date: %@) #FeatureManager", buf, 0xCu);
          }
        }

LABEL_61:
        selfCopy7 = self;
        v26 = -65;
        goto LABEL_171;
      }

      if ([v11 isAllDay])
      {
        ipsos_eventClassificationType2 = [v11 ipsos_eventClassificationType];

        if (!ipsos_eventClassificationType2)
        {
          v59 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(v31, v32);
            v59 = _IPLogHandle;
          }

          v60 = os_log_type_enabled(v59, OS_LOG_TYPE_INFO);
          if (v60)
          {
            *buf = 0;
            _os_log_impl(&dword_2485E4000, v59, OS_LOG_TYPE_INFO, "Skipped event because it doesn't has any clear classification type and is all day #FeatureManager", buf, 2u);
          }

          if (IPDebuggingModeEnabled_once != -1)
          {
            [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
          }

          if (IPDebuggingModeEnabled_sEnabled == 1)
          {
            v53 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging(v60, v61);
              v53 = _IPLogHandle;
            }

            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              goto LABEL_60;
            }
          }

          goto LABEL_61;
        }
      }

      if ([v11 isAllDay])
      {
        if (([v11 ipsos_allDayPreferred] & 1) == 0)
        {
          ipsos_eventClassificationType3 = [v11 ipsos_eventClassificationType];
          isAllDayAllowed = [ipsos_eventClassificationType3 isAllDayAllowed];

          if ((isAllDayAllowed & 1) == 0)
          {
            v71 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging(v35, v36);
              v71 = _IPLogHandle;
            }

            v72 = os_log_type_enabled(v71, OS_LOG_TYPE_INFO);
            if (v72)
            {
              *buf = 0;
              _os_log_impl(&dword_2485E4000, v71, OS_LOG_TYPE_INFO, "Skipped event because it is all day #FeatureManager", buf, 2u);
            }

            if (IPDebuggingModeEnabled_once != -1)
            {
              [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
            }

            if (IPDebuggingModeEnabled_sEnabled == 1)
            {
              v74 = _IPLogHandle;
              if (!_IPLogHandle)
              {
                IPInitLogging(v72, v73);
                v74 = _IPLogHandle;
              }

              if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
              {
                v75 = v74;
                startDate3 = [v11 startDate];
                *buf = 138412290;
                v170 = startDate3;
                _os_log_impl(&dword_2485E4000, v75, OS_LOG_TYPE_INFO, "Filtered event (Start date: %@) #FeatureManager", buf, 0xCu);
              }
            }

            goto LABEL_169;
          }
        }
      }

      if (([v11 isAllDay] & 1) == 0)
      {
        startDate4 = [v11 startDate];
        if (![(IPFeatureScanner *)self isDateRoundedTo5Minutes:startDate4])
        {

LABEL_63:
          v64 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(v57, v58);
            v64 = _IPLogHandle;
          }

          v65 = os_log_type_enabled(v64, OS_LOG_TYPE_INFO);
          if (v65)
          {
            *buf = 0;
            _os_log_impl(&dword_2485E4000, v64, OS_LOG_TYPE_INFO, "Skipped event because time is not rounded #FeatureManager", buf, 2u);
          }

          if (IPDebuggingModeEnabled_once != -1)
          {
            [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
          }

          if (IPDebuggingModeEnabled_sEnabled == 1)
          {
            v67 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging(v65, v66);
              v67 = _IPLogHandle;
            }

            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              v68 = v67;
              startDate5 = [v11 startDate];
              endDate = [v11 endDate];
              *buf = 138412546;
              v170 = startDate5;
              v171 = 2112;
              v172 = endDate;
              _os_log_impl(&dword_2485E4000, v68, OS_LOG_TYPE_INFO, "Filtered event (Start date: %@, End date: %@) #FeatureManager", buf, 0x16u);
            }
          }

          selfCopy7 = self;
          v26 = -67;
          goto LABEL_171;
        }

        endDate2 = [v11 endDate];
        v56 = [(IPFeatureScanner *)self isDateRoundedTo5Minutes:endDate2];

        if (!v56)
        {
          goto LABEL_63;
        }
      }

      if ([v11 isAllDay])
      {
        title = [v11 title];
        v38 = [title length];

        if (!v38)
        {
          v85 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(v39, v40);
            v85 = _IPLogHandle;
          }

          v86 = os_log_type_enabled(v85, OS_LOG_TYPE_INFO);
          if (v86)
          {
            *buf = 0;
            _os_log_impl(&dword_2485E4000, v85, OS_LOG_TYPE_INFO, "Skipped event because all-day event has no title #FeatureManager", buf, 2u);
          }

          if (IPDebuggingModeEnabled_once != -1)
          {
            [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
          }

          if (IPDebuggingModeEnabled_sEnabled == 1)
          {
            v88 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging(v86, v87);
              v88 = _IPLogHandle;
            }

            if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
            {
              v89 = v88;
              startDate6 = [v11 startDate];
              endDate3 = [v11 endDate];
              *buf = 138412546;
              v170 = startDate6;
              v171 = 2112;
              v172 = endDate3;
              _os_log_impl(&dword_2485E4000, v89, OS_LOG_TYPE_INFO, "Filtered event (Start date: %@, End date: %@) #FeatureManager", buf, 0x16u);
            }
          }

          selfCopy7 = self;
          v26 = -70;
          goto LABEL_171;
        }
      }

      if (([v11 isAllDay] & 1) == 0)
      {
        ipsos_eventClassificationType4 = [v11 ipsos_eventClassificationType];
        startDate7 = [v11 startDate];
        v43 = [ipsos_eventClassificationType4 isDateWithinRange:startDate7];

        if ((v43 & 1) == 0)
        {
          v77 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(v44, v45);
            v77 = _IPLogHandle;
          }

          v78 = os_log_type_enabled(v77, OS_LOG_TYPE_INFO);
          if (v78)
          {
            *buf = 0;
            _os_log_impl(&dword_2485E4000, v77, OS_LOG_TYPE_INFO, "Skipped event because it's not within an acceptable time range #FeatureManager", buf, 2u);
          }

          if (IPDebuggingModeEnabled_once != -1)
          {
            [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
          }

          if (IPDebuggingModeEnabled_sEnabled == 1)
          {
            v80 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging(v78, v79);
              v80 = _IPLogHandle;
            }

            if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
            {
              v81 = v80;
              ipsos_eventClassificationType5 = [v11 ipsos_eventClassificationType];
              identifier = [ipsos_eventClassificationType5 identifier];
              startDate8 = [v11 startDate];
              *buf = 138412546;
              v170 = identifier;
              v171 = 2112;
              v172 = startDate8;
              _os_log_impl(&dword_2485E4000, v81, OS_LOG_TYPE_INFO, "Filtered event (Type: %@, Start date: %@) #FeatureManager", buf, 0x16u);

              v9 = v153;
            }
          }

          selfCopy7 = self;
          v26 = -69;
          goto LABEL_171;
        }
      }

      ipsos_eventClassificationType6 = [v11 ipsos_eventClassificationType];
      if (![ipsos_eventClassificationType6 isFairlyGeneric])
      {
        goto LABEL_111;
      }

      ipsos_eventClassificationType7 = [v11 ipsos_eventClassificationType];
      if (([ipsos_eventClassificationType7 isAppointment] & 1) == 0)
      {

LABEL_111:
        goto LABEL_112;
      }

      if ([v11 isAllDay])
      {

LABEL_157:
        v125 = _IPLogHandle;
        if (!_IPLogHandle)
        {
          IPInitLogging(v48, v49);
          v125 = _IPLogHandle;
        }

        v126 = os_log_type_enabled(v125, OS_LOG_TYPE_INFO);
        if (v126)
        {
          *buf = 0;
          _os_log_impl(&dword_2485E4000, v125, OS_LOG_TYPE_INFO, "Skipped event because it's an appointment with a vague / all day date #FeatureManager", buf, 2u);
        }

        if (IPDebuggingModeEnabled_once != -1)
        {
          [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
        }

        if (IPDebuggingModeEnabled_sEnabled == 1)
        {
          v128 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(v126, v127);
            v128 = _IPLogHandle;
          }

          if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
          {
            v129 = v128;
            ipsos_eventClassificationType8 = [v11 ipsos_eventClassificationType];
            identifier2 = [ipsos_eventClassificationType8 identifier];
            startDate9 = [v11 startDate];
            *buf = 138412546;
            v170 = identifier2;
            v171 = 2112;
            v172 = startDate9;
            _os_log_impl(&dword_2485E4000, v129, OS_LOG_TYPE_INFO, "Filtered event (Type: %@, Start date: %@) #FeatureManager", buf, 0x16u);

            v9 = v153;
          }
        }

        if ([v11 isAllDay])
        {
LABEL_169:
          selfCopy7 = self;
          v26 = -66;
        }

        else
        {
LABEL_170:
          selfCopy7 = self;
          v26 = -60;
        }

LABEL_171:
        [(IPFeatureScanner *)selfCopy7 setResultType:v26];
        goto LABEL_172;
      }

      ipsos_isTimeApproximate = [v11 ipsos_isTimeApproximate];

      if (ipsos_isTimeApproximate)
      {
        goto LABEL_157;
      }

LABEL_112:
      ipsos_eventClassificationType9 = [v11 ipsos_eventClassificationType];
      if ([ipsos_eventClassificationType9 isFairlyGeneric])
      {
        isAllDay = [v11 isAllDay];

        if (isAllDay)
        {
          v96 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(v94, v95);
            v96 = _IPLogHandle;
          }

          v97 = os_log_type_enabled(v96, OS_LOG_TYPE_INFO);
          if (v97)
          {
            *buf = 0;
            _os_log_impl(&dword_2485E4000, v96, OS_LOG_TYPE_INFO, "Skipped all-day event with a fairy generic event type #FeatureManager", buf, 2u);
          }

          if (IPDebuggingModeEnabled_once != -1)
          {
            [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
          }

          if (IPDebuggingModeEnabled_sEnabled == 1)
          {
            v99 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging(v97, v98);
              v99 = _IPLogHandle;
            }

            if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
            {
              v100 = v99;
              ipsos_eventClassificationType10 = [v11 ipsos_eventClassificationType];
              identifier3 = [ipsos_eventClassificationType10 identifier];
              startDate10 = [v11 startDate];
              *buf = 138412546;
              v170 = identifier3;
              v171 = 2112;
              v172 = startDate10;
              _os_log_impl(&dword_2485E4000, v100, OS_LOG_TYPE_INFO, "Filtered event (Type: %@, Start date: %@) #FeatureManager", buf, 0x16u);

              v9 = v153;
            }
          }

          goto LABEL_169;
        }
      }

      else
      {
      }

      startDate11 = [v11 startDate];
      [startDate11 timeIntervalSinceDate:dateCopy];
      v106 = v105;

      ipsos_isTimeOffset = [v11 ipsos_isTimeOffset];
      ipsos_isEventTimeOnlyAndReferrengingToSentDate = [v11 ipsos_isEventTimeOnlyAndReferrengingToSentDate];
      v109 = 0;
      if ([v11 isAllDay] && v106 < 86400.0)
      {
        v109 = [v11 ipsos_allDayPreferred] ^ 1;
      }

      ipsos_isTimeApproximate2 = 0;
      if (([v11 isAllDay] & 1) == 0 && v106 < 21600.0)
      {
        ipsos_isTimeApproximate2 = [v11 ipsos_isTimeApproximate];
      }

      v111 = 1;
      if (([v11 isAllDay] & 1) == 0 && v106 < 43200.0)
      {
        v111 = [v11 ipsos_isTimeApproximate] ^ 1;
      }

      [v11 ipsos_duration];
      v113 = v112;
      ipsos_eventClassificationType11 = [v11 ipsos_eventClassificationType];
      isMealRelated = [ipsos_eventClassificationType11 isMealRelated];

      if (((ipsos_isEventTimeOnlyAndReferrengingToSentDate & ~ipsos_isTimeOffset | v109 | ipsos_isTimeApproximate2) & 1) != 0 || ((v111 | isMealRelated) & 1) == 0 || v106 > 31536000.0 || v113 > 172800.0)
      {
        if (IPDebuggingModeEnabled_once != -1)
        {
          [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
        }

        v7 = v151;
        v9 = v153;
        if (IPDebuggingModeEnabled_sEnabled == 1)
        {
          v119 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(v116, v117);
            v119 = _IPLogHandle;
          }

          if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
          {
            v120 = v119;
            ipsos_eventClassificationType12 = [v11 ipsos_eventClassificationType];
            identifier4 = [ipsos_eventClassificationType12 identifier];
            startDate12 = [v11 startDate];
            *buf = 138412546;
            v170 = identifier4;
            v171 = 2112;
            v172 = startDate12;
            _os_log_impl(&dword_2485E4000, v120, OS_LOG_TYPE_INFO, "Filtered event (Type: %@, Start date: %@) #FeatureManager", buf, 0x16u);
          }
        }

        goto LABEL_170;
      }

      if (v106 < 86400.0)
      {
        [v11 setIpsos_eventAttributes:{objc_msgSend(v11, "ipsos_eventAttributes") | 0x10}];
      }

      v7 = v151;
      v9 = v153;
      if ([v11 ipsos_eventStatus] == 2)
      {
        [v11 setIpsos_eventAttributes:{objc_msgSend(v11, "ipsos_eventAttributes") | 0x20}];
      }

      if (([v11 ipsos_usesDefaultClassificationTypeStartTime] & 1) != 0 || objc_msgSend(v11, "ipsos_isTimeApproximate"))
      {
        [v11 setIpsos_eventAttributes:{objc_msgSend(v11, "ipsos_eventAttributes") | 0x80}];
      }

      [v11 ipsos_confidence];
      if (v118 > 0.95)
      {
        [v11 setIpsos_eventAttributes:{objc_msgSend(v11, "ipsos_eventAttributes") | 0x200}];
      }

      [v150 addObject:v11];
LABEL_172:
      ++v10;
    }

    while (v9 != v10);
    v9 = [v7 countByEnumeratingWithState:&v163 objects:v173 count:16];
  }

  while (v9);
LABEL_174:

  v133 = v150;
  if ([v150 count] < 2)
  {
    v142 = v150;
  }

  else
  {
    v134 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v150, "count")}];
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v135 = v150;
    v136 = [v135 countByEnumeratingWithState:&v159 objects:v168 count:16];
    if (v136)
    {
      v137 = v136;
      v138 = *v160;
      do
      {
        for (i = 0; i != v137; ++i)
        {
          if (*v160 != v138)
          {
            objc_enumerationMutation(v135);
          }

          v140 = *(*(&v159 + 1) + 8 * i);
          if (([v140 isAllDay] & 1) == 0)
          {
            [v134 addObject:v140];
          }
        }

        v137 = [v135 countByEnumeratingWithState:&v159 objects:v168 count:16];
      }

      while (v137);
    }

    if ([v134 count])
    {
      v141 = v134;
    }

    else
    {
      v141 = v135;
    }

    v142 = v141;

    v133 = v150;
  }

  if ([v142 count] >= 2)
  {
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v143 = v142;
    v144 = [v143 countByEnumeratingWithState:&v155 objects:v167 count:16];
    if (v144)
    {
      v145 = v144;
      v146 = *v156;
      do
      {
        for (j = 0; j != v145; ++j)
        {
          if (*v156 != v146)
          {
            objc_enumerationMutation(v143);
          }

          [*(*(&v155 + 1) + 8 * j) setIpsos_eventAttributes:{objc_msgSend(*(*(&v155 + 1) + 8 * j), "ipsos_eventAttributes") | 0x40}];
        }

        v145 = [v143 countByEnumeratingWithState:&v155 objects:v167 count:16];
      }

      while (v145);
    }

    v133 = v150;
  }

  eventsCopy = v149;
LABEL_200:

  return v142;
}

- (id)normalizedAllDayDateFromDate:(id)date
{
  v3 = IPGregorianCalendar_once;
  dateCopy = date;
  if (v3 != -1)
  {
    [IPFeatureScanner isDateAroundNoon:];
  }

  v5 = IPGregorianCalendar_calendar;
  v6 = [v5 components:254 fromDate:dateCopy];

  v7 = [v6 copy];
  [v7 setHour:0];
  [v7 setMinute:0];
  [v7 setSecond:0];
  [v7 setTimeZone:0];
  v8 = [v5 dateFromComponents:v7];

  return v8;
}

- (void)normalizedEvents:(id)events
{
  v19 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [eventsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isAllDay])
        {
          startDate = [v9 startDate];
          v11 = [(IPFeatureScanner *)self normalizedAllDayDateFromDate:startDate];
          [v9 setStartDate:v11];

          endDate = [v9 endDate];
          v13 = [(IPFeatureScanner *)self normalizedAllDayDateFromDate:endDate];
          [v9 setEndDate:v13];

          [v9 setTimeZone:0];
        }
      }

      v6 = [eventsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)bestEventsFromEvents:(id)events
{
  v18 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if ([eventsCopy count] > 1)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = eventsCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          [v10 ipsos_confidence];
          if (v11 > 0.7)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = eventsCopy;
  }

  return v4;
}

- (id)stringsFromDataFeatures:(id)features matchingTypes:(id)types
{
  v23 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  typesCopy = types;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(featuresCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = featuresCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "type", v18)}];
        v15 = [typesCopy containsObject:v14];

        if (v15)
        {
          matchString = [v13 matchString];
          if (matchString)
          {
            [v7 addObject:matchString];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)cleanedStringForFeatureData:(id)data
{
  v3 = IPLocalizedString_once;
  dataCopy = data;
  if (v3 != -1)
  {
    [IPFeatureScanner cleanedStringForFeatureData:];
  }

  v5 = [IPLocalizedString_bundle localizedStringForKey:@" value:" table:{&stru_285AD0E88, @"DataDetectorsNaturalLanguage"}];
  matchString = [dataCopy matchString];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v5];
  v8 = [matchString stringByReplacingOccurrencesOfString:v7 withString:@"\n"];

  v9 = [v8 stringByReplacingOccurrencesOfString:@" withString:{\n", @"\n"}];

  v10 = [v9 stringByReplacingOccurrencesOfString:@" withString:{\n", @"\n"}];

  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n\n" withString:@"\n"];

  v12 = [v11 stringByReplacingOccurrencesOfString:@"\n" withString:v5];

  return v12;
}

+ (id)descriptionForScanResultType:(int64_t)type
{
  v3 = @"IPFeatureScanResultTypeEventNotFound";
  if (type <= -51)
  {
    v4 = @"IPFeatureScanResultTypeEventFilteredOutAllDayEvent";
    v8 = @"IPFeatureScanResultTypeEventNoClassificationType";
    v9 = @"IPFeatureScanResultTypeEventFilteredOut";
    if (type != -60)
    {
      v9 = @"IPFeatureScanResultTypeEventNotFound";
    }

    if (type != -65)
    {
      v8 = v9;
    }

    if (type != -66)
    {
      v4 = v8;
    }

    v10 = @"IPFeatureScanResultTypeEventFilteredOutSeveralDetectedEvents";
    v11 = @"IPFeatureScanResultTypeEventFilteredOutNotRoundedTime";
    if (type != -67)
    {
      v11 = @"IPFeatureScanResultTypeEventNotFound";
    }

    if (type != -68)
    {
      v10 = v11;
    }

    if (type <= -67)
    {
      v4 = v10;
    }

    v12 = @"IPFeatureScanResultTypeEventFilteredOutLowConfidenceScore";
    v13 = @"IPFeatureScanResultTypeEventFilteredOutAllDayWithNoTitle";
    v14 = @"IPFeatureScanResultTypeEventFilteredOutNotAcceptableTimeRangeForEventType";
    if (type != -69)
    {
      v14 = @"IPFeatureScanResultTypeEventNotFound";
    }

    if (type != -70)
    {
      v13 = v14;
    }

    if (type != -80)
    {
      v12 = v13;
    }

    if (type == -90)
    {
      v3 = @"IPFeatureScanResultTypeGroupMessageConversation";
    }

    if (type == -110)
    {
      v3 = @"IPFeatureScanResultTypeContainsDateInThePastWithPreciseTime";
    }

    if (type > -81)
    {
      v3 = v12;
    }

    v7 = type <= -69;
  }

  else if (type <= -13)
  {
    v4 = @"IPFeatureScanResultTypeIgnoreOrRejectionKeywordFound";
    v15 = @"IPFeatureScanResultTypeNoPolarityProposalOrAcceptation";
    v16 = @"IPFeatureScanResultTypeNoSentencePolarityExtractedOrAssetMissing";
    if (type != -13)
    {
      v16 = @"IPFeatureScanResultTypeEventNotFound";
    }

    if (type != -20)
    {
      v15 = v16;
    }

    if (type != -21)
    {
      v4 = v15;
    }

    if (type == -40)
    {
      v3 = @"IPFeatureScanResultTypeBlacklistedSender";
    }

    if (type == -50)
    {
      v3 = @"IPFeatureScanResultTypeSubjectContainsRejection";
    }

    v7 = type <= -22;
  }

  else
  {
    v4 = @"IPFeatureScanResultTypeDisabled";
    v5 = @"IPFeatureScanResultTypeMultipleEventsFound";
    v6 = @"IPFeatureScanResultTypeEventFound";
    if (type != 1)
    {
      v6 = @"IPFeatureScanResultTypeEventNotFound";
    }

    if (type != 2)
    {
      v5 = v6;
    }

    if (type != -1)
    {
      v4 = v5;
    }

    if (type == -10)
    {
      v3 = @"IPFeatureScanResultTypeNoDateInTheFuture";
    }

    if (type == -11)
    {
      v3 = @"IPFeatureScanResultTypeContainsDateInTheFarPast";
    }

    if (type == -12)
    {
      v3 = @"IPFeatureScanResultTypeContainsTooManyDatesInTheFuture";
    }

    v7 = type <= -2;
  }

  if (v7)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

- (void)enrichEvents:(id)events messageUnits:(id)units dateInSubject:(id)subject dataFeatures:(id)features
{
  v96 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  unitsCopy = units;
  subjectCopy = subject;
  featuresCopy = features;
  if ([eventsCopy count])
  {
    v81 = [(IPFeatureScanner *)self movieTitlesFromDataFeatures:featuresCopy];
    v77 = [(IPFeatureScanner *)self sportTeamNamesFromDataFeatures:featuresCopy];
    v75 = [(IPFeatureScanner *)self artisNamesFromDataFeatures:featuresCopy];
    v74 = [(IPFeatureScanner *)self restaurantAndBarPOINamesFromDataFeatures:featuresCopy];
    v71 = featuresCopy;
    [(IPFeatureScanner *)self entertainmentPOINamesFromDataFeatures:featuresCopy];
    v73 = v72 = eventsCopy;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = eventsCopy;
    v80 = [obj countByEnumeratingWithState:&v91 objects:v95 count:16];
    if (!v80)
    {
      goto LABEL_77;
    }

    v79 = *v92;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v92 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v91 + 1) + 8 * v12);
        ipsos_eventClassificationType = [v13 ipsos_eventClassificationType];

        if (!ipsos_eventClassificationType)
        {
          ipsos_messageUnit = [v13 ipsos_messageUnit];
          ipsos_messageUnit2 = [v13 ipsos_messageUnit];
          keywordFeatures = [ipsos_messageUnit2 keywordFeatures];
          ipsos_dataFeatures = [v13 ipsos_dataFeatures];
          v19 = [IPEventClassificationType eventClassificationTypeFromMessageUnit:ipsos_messageUnit keywordFeatures:keywordFeatures datafeatures:ipsos_dataFeatures];
          [v13 setIpsos_eventClassificationType:v19];
        }

        ipsos_eventClassificationType2 = [v13 ipsos_eventClassificationType];
        v21 = ipsos_eventClassificationType2;
        if (ipsos_eventClassificationType2 && ![ipsos_eventClassificationType2 isFairlyGeneric])
        {
          goto LABEL_23;
        }

        firstObject = [unitsCopy firstObject];
        bestLanguageID = [firstObject bestLanguageID];

        if ([v81 count])
        {
          v24 = [IPEventClassificationType eventTypeForMoviesAndLanguageID:bestLanguageID];
        }

        else if ([v77 count])
        {
          v24 = [IPEventClassificationType eventTypeForSportAndLanguageID:bestLanguageID];
        }

        else if ([v75 count])
        {
          v24 = [IPEventClassificationType eventTypeForCultureAndLanguageID:bestLanguageID];
        }

        else if ([v74 count])
        {
          v24 = [IPEventClassificationType eventTypeForMealsAndLanguageID:bestLanguageID];
        }

        else
        {
          if (![v73 count])
          {
            goto LABEL_22;
          }

          v24 = [IPEventClassificationType eventTypeForEntertainmentAndLanguageID:bestLanguageID];
        }

        v25 = v24;

        v21 = v25;
LABEL_22:
        [v13 setIpsos_eventClassificationType:v21];

        if (!v21)
        {
          goto LABEL_73;
        }

LABEL_23:
        isAllDay = [v13 isAllDay];
        ipsos_allDayPreferred = [v13 ipsos_allDayPreferred];
        ipsos_isTimeApproximate = [v13 ipsos_isTimeApproximate];
        ipsos_isEndTimeApproximate = [v13 ipsos_isEndTimeApproximate];
        startDate = [v13 startDate];
        endDate = [v13 endDate];
        v31 = endDate;
        v85 = v12;
        if (isAllDay)
        {
          [endDate timeIntervalSinceDate:startDate];
          v33 = fabs(v32) > 86400.0;
        }

        else
        {
          v34 = [v21 adjustedEventClassificationTypeWithStartDate:startDate];

          [v13 setIpsos_eventClassificationType:v34];
          v33 = 0;
          v21 = v34;
        }

        if (([v21 defaultStartingTimeHour] & 0x80000000) != 0)
        {
          v40 = 0;
        }

        else
        {
          v83 = ipsos_allDayPreferred;
          v86 = ipsos_isEndTimeApproximate;
          v35 = v31;
          v36 = MEMORY[0x277CBEAA8];
          v37 = 3600 * [v21 defaultStartingTimeHour];
          v38 = (v37 + 60 * [v21 defaultStartingTimeMinutes]);
          v39 = [(IPFeatureScanner *)self normalizedAllDayDateFromDate:startDate];
          v40 = [v36 dateWithTimeInterval:v39 sinceDate:v38];

          if (v40 == 0) | isAllDay & 1 || ((ipsos_isTimeApproximate ^ 1))
          {
            v31 = v35;
            if (!v40)
            {
              goto LABEL_36;
            }

            v42 = 0;
          }

          else
          {
            [v40 timeIntervalSinceDate:startDate];
            v42 = fabs(v41) <= 5400.0;
            v31 = v35;
          }

          if (!(v83 & 1 | ((isAllDay & 1) == 0) | v33) || v42)
          {
            v43 = v40;

            ipsos_isTimeApproximate = 1;
            [v13 setIpsos_usesDefaultClassificationTypeStartTime:1];
            v40 = v43;

            isAllDay = 0;
            v31 = v40;
            startDate = v40;
            ipsos_isEndTimeApproximate = v86;
          }
        }

LABEL_36:
        v84 = v40;
        if (isAllDay & 1) != 0 || ((ipsos_isEndTimeApproximate ^ 1))
        {
          v87 = v31;
        }

        else
        {
          [v21 defaultDuration];
          if (v44 <= 0.0)
          {
            if ([(IPFeatureScanner *)self isDateAroundNoon:startDate])
            {
              v47 = startDate;
              v48 = 3600.0;
            }

            else
            {
              v47 = startDate;
              v48 = 7200.0;
            }

            v46 = [v47 dateByAddingTimeInterval:v48];
          }

          else
          {
            v45 = MEMORY[0x277CBEAA8];
            [v21 defaultDuration];
            v46 = [v45 dateWithTimeInterval:startDate sinceDate:?];
          }

          v49 = v46;

          v87 = v49;
        }

        v90 = 0;
        bodyMessageUnits = [(IPFeatureScanner *)self bodyMessageUnits];
        v51 = [unitsCopy objectAtIndexedSubscript:0];
        [v51 originalMessage];
        v53 = v52 = self;
        subject = [v53 subject];
        v55 = [v21 adjustedEventTitleForMessageUnits:bodyMessageUnits subject:subject dateInSubject:subjectCopy eventStartDate:startDate isGeneratedFromSubject:&v90];

        v89 = 0;
        if ([v21 isSportRelated])
        {
          v56 = [(IPFeatureScanner *)v52 decoratedTitle:v55 withSubtitles:v77];
          self = v52;
          v12 = v85;
        }

        else
        {
          self = v52;
          v57 = v87;
          if ([v21 isMovieRelated] && v81)
          {
            v56 = [(IPFeatureScanner *)v52 decoratedTitle:v55 withSubtitles:v81];
            v12 = v85;
            goto LABEL_66;
          }

          v12 = v85;
          if ([v21 isCultureRelated] && objc_msgSend(v75, "count"))
          {
            selfCopy3 = self;
            v59 = v55;
            v60 = v75;
LABEL_65:
            v56 = [(IPFeatureScanner *)selfCopy3 decoratedTitle:v59 withSubtitles:v60];
            goto LABEL_66;
          }

          if ([v21 isMealRelated] && objc_msgSend(v74, "count"))
          {
            selfCopy3 = self;
            v59 = v55;
            v60 = v74;
            goto LABEL_65;
          }

          if (![v55 length] && objc_msgSend(v73, "count"))
          {
            selfCopy3 = self;
            v59 = v55;
            v60 = v73;
            goto LABEL_65;
          }

          if (![v21 prefersTitleSenderDecoration])
          {
            goto LABEL_67;
          }

          defaultTitle = [v21 defaultTitle];
          v62 = [defaultTitle isEqualToString:v55];

          if (!v62)
          {
            v57 = v87;
            goto LABEL_67;
          }

          firstObject2 = [unitsCopy firstObject];
          originalMessage = [firstObject2 originalMessage];

          sender = [originalMessage sender];
          recipients = [originalMessage recipients];
          v56 = -[IPFeatureScanner decoratedTitleFromEventType:title:sender:recipients:isSent:isTitleSenderDecorated:](self, "decoratedTitleFromEventType:title:sender:recipients:isSent:isTitleSenderDecorated:", v21, v55, sender, recipients, [originalMessage isSent], &v89);

          v12 = v85;
          v55 = originalMessage;
        }

        v57 = v87;
LABEL_66:

        v55 = v56;
LABEL_67:
        [v13 setAllDay:isAllDay];
        [v13 setStartDate:startDate];
        [v13 setEndDate:v57];
        [v13 setIpsos_isTimeApproximate:ipsos_isTimeApproximate];
        [v13 setTitle:v55];
        if ([v55 length])
        {
          v67 = v90;
          ipsos_eventAttributes = [v13 ipsos_eventAttributes];
          v69 = 2048;
          if (v67)
          {
            v69 = 1024;
          }

          [v13 setIpsos_eventAttributes:ipsos_eventAttributes | v69];
          if (v89 == 1)
          {
            [v13 setIpsos_eventAttributes:{objc_msgSend(v13, "ipsos_eventAttributes") | 0x1000}];
          }
        }

LABEL_73:
        ++v12;
      }

      while (v80 != v12);
      v70 = [obj countByEnumeratingWithState:&v91 objects:v95 count:16];
      v80 = v70;
      if (!v70)
      {
LABEL_77:

        featuresCopy = v71;
        eventsCopy = v72;
        break;
      }
    }
  }
}

- (id)messageSenderName
{
  bodyMessageUnits = [(IPFeatureScanner *)self bodyMessageUnits];
  firstObject = [bodyMessageUnits firstObject];
  originalMessage = [firstObject originalMessage];

  sender = [originalMessage sender];
  displayableName = [sender displayableName];

  return displayableName;
}

- (id)shortNameForPerson:(id)person
{
  displayableName = [person displayableName];
  if ([displayableName containsString:@"@"])
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = [v5 personNameComponentsFromString:displayableName];

    if (v6)
    {
      v7 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v6 style:1 options:0];
    }

    else
    {
      v7 = displayableName;
    }

    v4 = v7;
  }

  return v4;
}

- (id)decoratedTitle:(id)title withSubtitles:(id)subtitles
{
  titleCopy = title;
  subtitlesCopy = subtitles;
  if (IPLocalizedString_once != -1)
  {
    [IPFeatureScanner cleanedStringForFeatureData:];
  }

  v7 = [IPLocalizedString_bundle localizedStringForKey:@"%@: %@" value:&stru_285AD0E88 table:@"DataDetectorsNaturalLanguage"];
  if (IPLocalizedString_once != -1)
  {
    [IPFeatureScanner cleanedStringForFeatureData:];
  }

  v8 = [IPLocalizedString_bundle localizedStringForKey:@" / " value:&stru_285AD0E88 table:@"DataDetectorsNaturalLanguage"];
  if ([subtitlesCopy count] && objc_msgSend(subtitlesCopy, "count") <= 3)
  {
    v9 = [MEMORY[0x277CBEB70] orderedSetWithArray:subtitlesCopy];
    array = [v9 array];

    v11 = [array _pas_componentsJoinedByString:v8];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v13 = [v11 lowercaseStringWithLocale:currentLocale];
    if ([v13 isEqualToString:v11])
    {
    }

    else
    {
      v14 = [v11 uppercaseStringWithLocale:currentLocale];
      v15 = [v14 isEqualToString:v11];

      if (!v15)
      {
LABEL_11:
        if ([titleCopy length])
        {
          v25 = _PASValidatedFormat(v7, v18, v19, v20, v21, v22, v23, v24, titleCopy);
        }

        else
        {
          v25 = v11;
        }

        v26 = v25;

        subtitlesCopy = array;
        titleCopy = v26;
        goto LABEL_15;
      }
    }

    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    v17 = [v11 capitalizedStringWithLocale:currentLocale2];

    v11 = v17;
    goto LABEL_11;
  }

LABEL_15:

  return titleCopy;
}

- (void)confidenceForEvents:(id)events
{
  v17 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [eventsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [(IPFeatureScanner *)self confidenceForEvent:v9 baseConfidence:1.0];
        v11 = fmin(v10, 1.0);
        if (v11 < 0.0)
        {
          v11 = 0.0;
        }

        [v9 setIpsos_confidence:v11];
      }

      v6 = [eventsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (id)analyzeFeatures:(id)features messageUnit:(id)unit checkPolarity:(BOOL)polarity polarity:(unint64_t)a6
{
  featuresCopy = features;
  unitCopy = unit;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = objc_opt_new();
  originalMessage = [unitCopy originalMessage];
  dateSent = [originalMessage dateSent];

  bodyMessageUnits = [(IPFeatureScanner *)self bodyMessageUnits];
  firstObject = [bodyMessageUnits firstObject];
  v16 = firstObject == unitCopy;

  v17 = [objc_alloc(MEMORY[0x277D425F0]) initWithBlock:&__block_literal_global_203];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __71__IPFeatureScanner_analyzeFeatures_messageUnit_checkPolarity_polarity___block_invoke_2;
  v24[3] = &unk_278F22DA8;
  v30 = v35;
  v18 = dateSent;
  polarityCopy = polarity;
  v34 = v16;
  v25 = v18;
  selfCopy = self;
  v19 = featuresCopy;
  v27 = v19;
  v20 = unitCopy;
  v28 = v20;
  v32 = a6;
  v21 = v17;
  v29 = v21;
  v31 = &v37;
  [v19 enumerateObjectsUsingBlock:v24];
  v22 = v38[5];

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(&v37, 8);

  return v22;
}

void __71__IPFeatureScanner_analyzeFeatures_messageUnit_checkPolarity_polarity___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v96 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    if ([v9 type] && objc_msgSend(v9, "type") != 1 || (objc_msgSend(v9, "isMatchStringInsideQuotationMarks") & 1) != 0)
    {
      goto LABEL_56;
    }

    v82 = a4;
    v84 = [v9 value];
    v10 = [v9 contextDictionary];
    v11 = [v10 objectForKeyedSubscript:@"endDate"];

    v12 = [v9 contextDictionary];
    v13 = [v12 objectForKeyedSubscript:@"endDateTimeZone"];

    if (!v13)
    {
      v13 = [MEMORY[0x277CBEBB0] systemTimeZone];
    }

    v83 = v13;
    v14 = [v9 contextDictionary];
    v15 = [v14 objectForKeyedSubscript:@"allDay"];
    obj = [v15 BOOLValue];

    v16 = [v9 contextDictionary];
    v17 = [v16 objectForKeyedSubscript:@"prefersAllDay"];
    v74 = [v17 BOOLValue];

    v18 = [v9 contextDictionary];
    v19 = [v18 objectForKeyedSubscript:@"timeIsApproximate"];
    v77 = [v19 BOOLValue];

    v20 = [v9 contextDictionary];
    v21 = [v20 objectForKeyedSubscript:@"timeNeedsMeridianGuess"];
    v73 = [v21 BOOLValue];

    v22 = [v9 contextDictionary];
    v23 = [v22 objectForKeyedSubscript:@"dateTimeIsTenseDependent"];
    v75 = [v23 BOOLValue];

    v24 = [v9 contextDictionary];
    v25 = [v24 objectForKeyedSubscript:@"dateIsTimeOnlyAndReferrengingToSentDate"];
    v72 = [v25 BOOLValue];

    v26 = [v9 contextDictionary];
    v27 = [v26 objectForKeyedSubscript:@"isTimeOffset"];
    v71 = [v27 BOOLValue];

    v28 = [v9 contextDictionary];
    v29 = [v28 objectForKeyedSubscript:@"dateOnlyContainsTimeInformation"];
    LOBYTE(v27) = [v29 BOOLValue];

    v30 = [v9 contextDictionary];
    v31 = [v30 objectForKeyedSubscript:@"isDateRange"];
    v81 = [v31 BOOLValue];

    v32 = [v9 contextDictionary];
    v33 = [v32 objectForKeyedSubscript:@"extractedInSubject"];
    v34 = [v33 BOOLValue];

    v85 = v11;
    v35 = v11 == 0;
    v36 = *(*(*(a1 + 72) + 8) + 24) & v27;
    v37 = [v84 compare:*(a1 + 32)];
    v39 = v84;
    if ((v36 & 1) != 0 || v37 == -1)
    {
      if (IPDebuggingModeEnabled_once != -1)
      {
        [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
      }

      a4 = v82;
      v40 = v85;
      if (IPDebuggingModeEnabled_sEnabled == 1)
      {
        v43 = _IPLogHandle;
        if (!_IPLogHandle)
        {
          IPInitLogging(v37, v38);
          v43 = _IPLogHandle;
        }

        v40 = v85;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = v43;
          v45 = [v9 matchString];
          *buf = 138412290;
          *&buf[4] = v45;
          _os_log_impl(&dword_2485E4000, v44, OS_LOG_TYPE_INFO, "Skip date:%@ #FeatureManager", buf, 0xCu);
        }
      }

      goto LABEL_55;
    }

    v91 = 0;
    *buf = 1;
    if (*(a1 + 96) == 1)
    {
      v40 = v85;
      if ((*(a1 + 97) & 1) == 0 && v34 == 1)
      {
        goto LABEL_30;
      }

      if (([*(a1 + 40) isEventProposalOrConfirmationFromFeatures:*(a1 + 48) fromFeatureAtIndex:a3 messageUnit:*(a1 + 56) eventIsTenseDependent:v75 extractedFromSubject:v34 extractedPolarity:buf polarityInfluencedByIpsosPlistRef:&v91] & 1) == 0)
      {
        if (v91)
        {
          v41 = *(a1 + 40);
          v42 = -21;
LABEL_31:
          [v41 setResultType:v42];
LABEL_54:
          a4 = v82;
LABEL_55:
          *(*(*(a1 + 72) + 8) + 24) = v81;

LABEL_56:
          goto LABEL_57;
        }

LABEL_30:
        v41 = *(a1 + 40);
        v42 = -20;
        goto LABEL_31;
      }
    }

    else
    {
      *buf = *(a1 + 88);
      v40 = v85;
      if ((*buf & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        goto LABEL_30;
      }
    }

    v46 = MEMORY[0x277CC5A28];
    v47 = [*(a1 + 64) result];
    v48 = [v46 eventWithEventStore:v47];

    [v48 setIpsos_eventAttributes:0];
    v49 = [*(a1 + 56) originalMessage];
    LODWORD(v47) = [v49 isGroupConversation];

    if (v47)
    {
      [v48 setIpsos_eventAttributes:{objc_msgSend(v48, "ipsos_eventAttributes") | 8}];
    }

    v50 = [*(a1 + 56) originalMessage];
    v51 = [v50 isSenderSignificant];

    if (v51)
    {
      [v48 setIpsos_eventAttributes:{objc_msgSend(v48, "ipsos_eventAttributes") | 0x100}];
    }

    v52 = v35 | v77 | obj;
    v94 = v9;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
    [v48 setIpsos_dataFeatures:v53];

    [v48 setIpsos_messageUnit:*(a1 + 56)];
    [v48 setIpsos_eventStatus:{objc_msgSend(*(a1 + 40), "eventStatusFromPolarity:", *buf)}];
    v40 = v85;
    if (v85)
    {
      if ((obj & 1) == 0)
      {
LABEL_39:
        v55 = v83;
        goto LABEL_40;
      }
    }

    else
    {
      if ((obj & 1) == 0)
      {
        if ([*(a1 + 40) isDateAroundNoon:v84])
        {
          v56 = 3600.0;
        }

        else
        {
          v56 = 7200.0;
        }

        v40 = [v84 dateByAddingTimeInterval:v56];
        goto LABEL_39;
      }

      v40 = [v84 dateByAddingTimeInterval:1.0];
    }

    v54 = [v40 dateByAddingTimeInterval:-1.0];

    v55 = 0;
    v40 = v54;
LABEL_40:
    [v48 setStartTimeZone:v55];
    v83 = v55;
    [v48 setEndTimeZone:v55];
    [v48 setAllDay:obj & 1];
    [v48 setStartDate:v84];
    [v48 setEndDate:v40];
    [v48 setIpsos_isTimeApproximate:v77 & 1];
    [v48 setIpsos_isEndTimeApproximate:v52 & 1];
    [v48 setIpsos_timeNeedsMeridianGuess:v73];
    [v48 setIpsos_isDateTimeTenseDependent:v75];
    [v48 setIpsos_isEventTimeOnlyAndReferrengingToSentDate:v72];
    [v48 setIpsos_isTimeOffset:v71];
    [v48 setIpsos_eventClassificationType:0];
    [v48 setIpsos_allDayPreferred:v74];
    v93 = v9;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
    [v48 setIpsos_dataFeatures:v57];

    [v48 setIpsos_messageUnit:*(a1 + 56)];
    v58 = MEMORY[0x277CC59B0];
    v59 = [*(a1 + 64) result];
    v60 = [v58 calendarForEntityType:0 eventStore:v59];
    [v48 setCalendar:v60];

    [*(*(*(a1 + 80) + 8) + 40) addObject:v48];
    v61 = [*(a1 + 40) _nearbyFeatureDatas:*(a1 + 48) fromFeatureAtIndex:a3 messageUnit:*(a1 + 56)];
    v62 = [*(a1 + 40) extractedNotesStrings];
    v63 = [*(a1 + 40) notesStringsFromDataFeatures:v61];
    [v62 addObjectsFromArray:v63];

    v64 = [MEMORY[0x277CBEB18] array];
    v78 = v61;
    [v64 addObjectsFromArray:v61];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obja = [v64 reverseObjectEnumerator];
    v65 = [obja countByEnumeratingWithState:&v87 objects:v92 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v88;
      v86 = v40;
      v76 = v64;
      while (2)
      {
        for (i = 0; i != v66; ++i)
        {
          if (*v88 != v67)
          {
            objc_enumerationMutation(obja);
          }

          v69 = *(*(&v87 + 1) + 8 * i);
          if ([v69 type] == 3 || objc_msgSend(v69, "type") == 7 || objc_msgSend(v69, "type") == 12 || objc_msgSend(v69, "type") == 13)
          {
            v70 = [*(a1 + 40) cleanedStringForFeatureData:v69];
            [v48 setLocation:v70];

            v40 = v86;
            v64 = v76;
            goto LABEL_53;
          }
        }

        v66 = [obja countByEnumeratingWithState:&v87 objects:v92 count:16];
        v40 = v86;
        v64 = v76;
        if (v66)
        {
          continue;
        }

        break;
      }
    }

LABEL_53:

    v39 = v84;
    goto LABEL_54;
  }

LABEL_57:
  objc_autoreleasePoolPop(v8);
  if (a3 == 100)
  {
    *a4 = 1;
  }
}

- (unint64_t)eventStatusFromPolarity:(unint64_t)polarity
{
  if (polarity - 2 >= 3)
  {
    return 0;
  }

  else
  {
    return polarity - 1;
  }
}

- (id)decoratedTitleFromEventType:(id)type title:(id)title sender:(id)sender recipients:(id)recipients isSent:(BOOL)sent isTitleSenderDecorated:(BOOL *)decorated
{
  sentCopy = sent;
  typeCopy = type;
  titleCopy = title;
  senderCopy = sender;
  recipientsCopy = recipients;
  if ([recipientsCopy count] < 2)
  {
    if (sentCopy)
    {
      firstObject = [recipientsCopy firstObject];
    }

    else
    {
      firstObject = senderCopy;
    }

    v20 = firstObject;
    if (firstObject)
    {
      v21 = [(IPFeatureScanner *)self shortNameForPerson:firstObject];
      if (([v21 containsString:@"+"] & 1) == 0 && objc_msgSend(v21, "integerValue") <= 0)
      {
        v22 = [typeCopy decoratedTitleFromTitle:titleCopy participantName:v21 isTitleSenderDecorated:decorated];

        titleCopy = v22;
      }
    }

    v18 = titleCopy;
  }

  else
  {
    v18 = titleCopy;
  }

  return v18;
}

@end