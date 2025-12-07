@interface ATXIntentStream
+ (id)generateParameterCombitionsForKeys:(id)keys;
- (id)_getIntentEventFromBMAppIntent:(id)intent source:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles intentsToKeep:(id)keep;
- (id)_getIntentEventFromLinkActionRecord:(id)record source:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles;
- (id)_unarchiveInteractionFromBMAppIntent:(id)intent;
- (id)_uuidForBMAppIntent:(id)intent interaction:(id)interaction;
- (id)getIntentEventForSourceItemID:(id)d forSource:(int64_t)source;
- (id)getIntentEventsBetweenStartDate:(id)date endDate:(id)endDate forSource:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles limit:(unint64_t)limit INIntentFilter:(id)intentFilter linkActionFilter:(id)self0;
- (unint64_t)numberOfIntentEventsBetweenStartDate:(id)date endDate:(id)endDate;
- (void)_enumerateIntentEventsBetweenStartDate:(id)date endDate:(id)endDate forSource:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles reversed:(BOOL)reversed INIntentFilter:(id)intentFilter linkActionFilter:(id)self0 block:(id)self1;
@end

@implementation ATXIntentStream

- (id)getIntentEventsBetweenStartDate:(id)date endDate:(id)endDate forSource:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles limit:(unint64_t)limit INIntentFilter:(id)intentFilter linkActionFilter:(id)self0
{
  titlesCopy = titles;
  actionFilterCopy = actionFilter;
  intentFilterCopy = intentFilter;
  filterCopy = filter;
  endDateCopy = endDate;
  dateCopy = date;
  v22 = objc_opt_new();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __141__ATXIntentStream_getIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_limit_INIntentFilter_linkActionFilter___block_invoke;
  v27[3] = &unk_1E80C1A58;
  v28 = v22;
  limitCopy = limit;
  v23 = v22;
  [(ATXIntentStream *)self _enumerateIntentEventsBetweenStartDate:dateCopy endDate:endDateCopy forSource:source bundleIdFilter:filterCopy allowMissingTitles:titlesCopy reversed:1 INIntentFilter:intentFilterCopy linkActionFilter:actionFilterCopy block:v27];

  reverseObjectEnumerator = [v23 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

- (unint64_t)numberOfIntentEventsBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__ATXIntentStream_numberOfIntentEventsBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_1E80C1A80;
  v10[4] = &v11;
  [(ATXIntentStream *)self _enumerateIntentEventsBetweenStartDate:dateCopy endDate:endDateCopy forSource:4 bundleIdFilter:0 allowMissingTitles:0 reversed:0 INIntentFilter:0 linkActionFilter:0 block:v10];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)_enumerateIntentEventsBetweenStartDate:(id)date endDate:(id)endDate forSource:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles reversed:(BOOL)reversed INIntentFilter:(id)intentFilter linkActionFilter:(id)self0 block:(id)self1
{
  reversedCopy = reversed;
  dateCopy = date;
  endDateCopy = endDate;
  filterCopy = filter;
  intentFilterCopy = intentFilter;
  actionFilterCopy = actionFilter;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v17 = objc_alloc_init(MEMORY[0x1E69AD068]);
  if (reversedCopy)
  {
    v18 = endDateCopy;
  }

  else
  {
    v18 = dateCopy;
  }

  v50 = endDateCopy;
  v51 = dateCopy;
  if (reversedCopy)
  {
    v19 = dateCopy;
  }

  else
  {
    v19 = endDateCopy;
  }

  v61[0] = 0;
  v48 = v17;
  v20 = [v17 transcriptPublisherWithStreamName:0 fromDate:v18 toDate:v19 maxEvents:0 reversed:reversedCopy error:{v61, intentFilterCopy}];
  v21 = v61[0];
  v22 = BiomeLibrary();
  v23 = [v22 App];
  intent = [v23 Intent];
  v25 = [intent atx_publisherWithStartDate:v18 endDate:v19 maxEvents:0 lastN:0 reversed:reversedCopy];

  if (v21 || !v20)
  {
    v28 = __atxlog_handle_action_prediction(v26);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [ATXIntentStream _enumerateIntentEventsBetweenStartDate:endDate:forSource:bundleIdFilter:allowMissingTitles:reversed:INIntentFilter:linkActionFilter:block:];
    }

    v27 = v25;
  }

  else
  {
    v27 = [v25 orderedMergeWithOther:v20 comparator:&__block_literal_global_48];
  }

  v29 = v27;
  v30 = MEMORY[0x1E695DFD8];
  v31 = +[ATXIntentGlobals sharedInstance];
  approvedSiriKitIntents = [v31 approvedSiriKitIntents];
  v33 = [v30 setWithArray:approvedSiriKitIntents];

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_2;
  v58[3] = &unk_1E80C3318;
  v34 = v42;
  v59 = v34;
  v35 = actionFilterCopy;
  v60 = v35;
  v36 = [v29 filterWithIsIncluded:v58];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_25;
  v52[3] = &unk_1E80C3340;
  v52[4] = self;
  sourceCopy = source;
  v37 = filterCopy;
  titlesCopy = titles;
  v53 = v37;
  v54 = v33;
  v38 = blockCopy;
  v55 = v38;
  v39 = v33;
  v40 = [v36 sinkWithCompletion:&__block_literal_global_24_0 shouldContinue:v52];

  objc_autoreleasePoolPop(context);
}

uint64_t __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 timestamp];
  v7 = v6;
  [v5 timestamp];
  if (v7 >= v8)
  {
    [v4 timestamp];
    v11 = v10;
    [v5 timestamp];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  if (!v3)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_7:
      v5 = 1;
      goto LABEL_12;
    }

    v7 = __atxlog_handle_action_prediction(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_2_cold_1(v3);
    }

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = (*(v4 + 16))(v4, v3);
LABEL_12:

  return v5;
}

void __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_21(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_action_prediction(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_21_cold_1(v2);
    }
  }
}

uint64_t __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) _getIntentEventFromBMAppIntent:v5 source:*(a1 + 64) bundleIdFilter:*(a1 + 40) allowMissingTitles:*(a1 + 72) intentsToKeep:*(a1 + 48)];
LABEL_5:
    v8 = v6;
    if (v6)
    {
      v9 = (*(*(a1 + 56) + 16))();
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = [*(a1 + 32) _getIntentEventFromLinkActionRecord:v5 source:*(a1 + 64) bundleIdFilter:*(a1 + 40) allowMissingTitles:*(a1 + 72)];
    goto LABEL_5;
  }

  v10 = __atxlog_handle_action_prediction(isKindOfClass);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_2_cold_1(v5);
  }

  v9 = 1;
LABEL_12:

  objc_autoreleasePoolPop(v4);
  return v9;
}

- (id)getIntentEventForSourceItemID:(id)d forSource:(int64_t)source
{
  dCopy = d;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v8 = objc_opt_new();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__ATXIntentStream_getIntentEventForSourceItemID_forSource___block_invoke;
  v17[3] = &unk_1E80C3368;
  v18 = dCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__ATXIntentStream_getIntentEventForSourceItemID_forSource___block_invoke_2;
  v15[3] = &unk_1E80C3390;
  v9 = v18;
  v16 = v9;
  v10 = [(ATXIntentStream *)self getIntentEventsBetweenStartDate:distantPast endDate:v8 forSource:source bundleIdFilter:0 allowMissingTitles:0 limit:2 INIntentFilter:v17 linkActionFilter:v15];

  v11 = [v10 count];
  if (v11 >= 2)
  {
    v12 = __atxlog_handle_action_prediction(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXIntentStream getIntentEventForSourceItemID:forSource:];
    }
  }

  firstObject = [v10 firstObject];

  return firstObject;
}

uint64_t __59__ATXIntentStream_getIntentEventForSourceItemID_forSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 itemID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __59__ATXIntentStream_getIntentEventForSourceItemID_forSource___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 executionUUID];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

+ (id)generateParameterCombitionsForKeys:(id)keys
{
  keysCopy = keys;
  if ([keysCopy count])
  {
    v4 = objc_opt_new();
    v5 = [keysCopy count];
    if (v5)
    {
      v6 = 1;
      v7 = 1 << v5;
      if ((1 << v5) <= 2)
      {
        v7 = 2;
      }

      v8 = v7;
      do
      {
        v9 = objc_opt_new();
        v10 = 0;
        v11 = v6;
        do
        {
          if (v11)
          {
            v12 = [keysCopy objectAtIndexedSubscript:v10];
            [v9 addObject:v12];
          }

          ++v10;
          v13 = v11 > 1;
          v11 >>= 1;
        }

        while (v13);
        v14 = [v9 copy];
        [v4 addObject:v14];

        ++v6;
      }

      while (v6 != v8);
    }

    v15 = [MEMORY[0x1E695DFD8] set];
    [v4 addObject:v15];

    v16 = [v4 copy];
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

- (id)_getIntentEventFromLinkActionRecord:(id)record source:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles
{
  v76 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  filterCopy = filter;
  executionUUID = [recordCopy executionUUID];
  if (executionUUID)
  {
    resolvedAction = [recordCopy resolvedAction];
    if (!resolvedAction)
    {
      bundleIdentifier = __atxlog_handle_action_prediction(0);
      if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_FAULT))
      {
        [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
      }

      v26 = 0;
      goto LABEL_81;
    }

    bundleIdentifier = [recordCopy bundleIdentifier];
    if (![bundleIdentifier length])
    {
      firstObject = __atxlog_handle_action_prediction(0);
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
      {
        [ATXIntentStream _getIntentEventFromLinkActionRecord:resolvedAction source:? bundleIdFilter:? allowMissingTitles:?];
      }

      v26 = 0;
      goto LABEL_80;
    }

    predictions = [recordCopy predictions];
    firstObject = [predictions firstObject];

    if (!firstObject)
    {
      v27 = __atxlog_handle_default(v17);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [ATXIntentStream _getIntentEventFromLinkActionRecord:resolvedAction source:v27 bundleIdFilter:? allowMissingTitles:?];
      }

      v26 = 0;
      goto LABEL_79;
    }

    v62 = filterCopy;
    displayRepresentation = [firstObject displayRepresentation];
    [displayRepresentation title];
    v20 = v19 = firstObject;
    atx_efficientLocalizedString = [v20 atx_efficientLocalizedString];

    v64 = v19;
    displayRepresentation2 = [v19 displayRepresentation];
    subtitle = [displayRepresentation2 subtitle];
    atx_efficientLocalizedString2 = [subtitle atx_efficientLocalizedString];

    if (!titles && ![atx_efficientLocalizedString length])
    {
      v28 = __atxlog_handle_action_prediction(0);
      filterCopy = v62;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
      }

      v26 = 0;
      firstObject = v64;
      goto LABEL_64;
    }

    v61 = bundleIdentifier;
    source = [recordCopy source];
    v24 = source;
    filterCopy = v62;
    if (source == 3)
    {
      v25 = 1;
    }

    else
    {
      source = [recordCopy source];
      v25 = source == 7;
    }

    firstObject = v64;
    if (v62)
    {
      source = [v62 isEqualToString:v61];
      if (!source)
      {
        v28 = __atxlog_handle_action_prediction(source);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          bundleIdentifier = v61;
          [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
          v26 = 0;
LABEL_64:
          v27 = atx_efficientLocalizedString;
LABEL_78:

LABEL_79:
LABEL_80:

LABEL_81:
          goto LABEL_82;
        }

LABEL_63:
        v26 = 0;
        bundleIdentifier = v61;
        goto LABEL_64;
      }
    }

    if (source > 1)
    {
      switch(source)
      {
        case 2:
          if (!v25)
          {
            goto LABEL_61;
          }

          break;
        case 3:
          if (v25)
          {
            goto LABEL_61;
          }

          break;
        case 4:
          break;
        default:
          goto LABEL_61;
      }

LABEL_39:
      v28 = objc_opt_new();
      predictions2 = [recordCopy predictions];

      if (predictions2)
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        predictions3 = [recordCopy predictions];
        v31 = [predictions3 countByEnumeratingWithState:&v67 objects:v75 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v68;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v68 != v33)
              {
                objc_enumerationMutation(predictions3);
              }

              parameterIdentifiers = [*(*(&v67 + 1) + 8 * i) parameterIdentifiers];
              [v28 addObjectsFromArray:parameterIdentifiers];
            }

            v32 = [predictions3 countByEnumeratingWithState:&v67 objects:v75 count:16];
          }

          while (v32);
        }

        filterCopy = v62;
      }

      metadataProvider = self->_metadataProvider;
      if (!metadataProvider)
      {
        v37 = objc_alloc_init(MEMORY[0x1E69ACF60]);
        v38 = self->_metadataProvider;
        self->_metadataProvider = v37;

        metadataProvider = self->_metadataProvider;
      }

      identifier = [resolvedAction identifier];
      v66 = 0;
      bundleIdentifier = v61;
      v40 = [(LNMetadataProvider *)metadataProvider actionForBundleIdentifier:v61 andActionIdentifier:identifier error:&v66];
      v41 = v66;

      v63 = v40;
      v59 = v41;
      if (v40)
      {
        v43 = [objc_alloc(MEMORY[0x1E696E730]) initWithAppBundleIdentifier:v61 linkAction:resolvedAction linkActionMetadata:v40];
        v44 = __atxlog_handle_action_prediction(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          identifier2 = [resolvedAction identifier];
          *buf = 138412546;
          v72 = identifier2;
          v73 = 2112;
          v74 = v28;
          _os_log_impl(&dword_1BF549000, v44, OS_LOG_TYPE_INFO, "Predictable parameters for %@ from link: %@", buf, 0x16u);
        }

        firstObject = v64;
        if (v43)
        {
          [v43 _className];
          v58 = v57 = v43;
          if (v58)
          {
            v47 = objc_alloc(MEMORY[0x1E696AB80]);
            executionDate = [recordCopy executionDate];
            executionDate2 = [recordCopy executionDate];
            v56 = [v47 initWithStartDate:executionDate endDate:executionDate2];

            LOBYTE(v55) = 0;
            v50 = [[ATXAction alloc] initWithIntent:v43 actionUUID:executionUUID bundleId:v61 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v55 title:atx_efficientLocalizedString subtitle:atx_efficientLocalizedString2];
            if ([v28 count])
            {
              predictions4 = [recordCopy predictions];
              v52 = [predictions4 _pas_mappedArrayWithTransform:&__block_literal_global_36];
              [(ATXAction *)v50 setPredictableParameterCombinations:v52];
            }

            else
            {
              [(ATXAction *)v50 setPredictableParameterCombinations:MEMORY[0x1E695E0F0]];
            }

            firstObject = v64;
            v53 = v56;
            v26 = [[ATXIntentEvent alloc] initWithBundleId:v61 intentType:v58 dateInterval:v56 action:v50];
          }

          else
          {
            v53 = __atxlog_handle_action_prediction(0);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              [ATXIntentStream _getIntentEventFromLinkActionRecord:v61 source:resolvedAction bundleIdFilter:? allowMissingTitles:?];
            }

            v26 = 0;
          }

          v27 = atx_efficientLocalizedString;

          v43 = v57;
        }

        else
        {
          v58 = __atxlog_handle_action_prediction(v46);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            [ATXIntentStream _getIntentEventFromLinkActionRecord:v61 source:resolvedAction bundleIdFilter:? allowMissingTitles:?];
          }

          v26 = 0;
          v27 = atx_efficientLocalizedString;
        }
      }

      else
      {
        v43 = __atxlog_handle_action_prediction(v42);
        firstObject = v64;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
        }

        v26 = 0;
        v27 = atx_efficientLocalizedString;
      }

      goto LABEL_78;
    }

    if (source)
    {
      if (source == 1 && v24 != 3)
      {
        goto LABEL_39;
      }
    }

    else if (v24 == 3)
    {
      goto LABEL_39;
    }

LABEL_61:
    v28 = __atxlog_handle_action_prediction(source);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
    }

    goto LABEL_63;
  }

  resolvedAction = __atxlog_handle_action_prediction(0);
  if (os_log_type_enabled(resolvedAction, OS_LOG_TYPE_FAULT))
  {
    [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
  }

  v26 = 0;
LABEL_82:

  return v26;
}

ATXActionPredictableParameters *__96__ATXIntentStream__getIntentEventFromLinkActionRecord_source_bundleIdFilter_allowMissingTitles___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 parameterIdentifiers];

  if (v3)
  {
    v4 = [ATXActionPredictableParameters alloc];
    v5 = objc_alloc(MEMORY[0x1E695DFD8]);
    v6 = [v2 parameterIdentifiers];
    v7 = [v5 initWithArray:v6];
    v3 = [(ATXActionPredictableParameters *)v4 initWithParameterKeys:v7];
  }

  return v3;
}

- (id)_unarchiveInteractionFromBMAppIntent:(id)intent
{
  intentCopy = intent;
  v4 = objc_autoreleasePoolPush();
  interaction = [intentCopy interaction];
  if (interaction)
  {
    v12 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:interaction error:&v12];
    v7 = v12;
    v8 = v7;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v10 = __atxlog_handle_action_prediction(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ATXIntentStream _unarchiveInteractionFromBMAppIntent:];
      }
    }
  }

  else
  {
    v8 = __atxlog_handle_action_prediction(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXIntentStream _unarchiveInteractionFromBMAppIntent:];
    }

    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v6;
}

- (id)_uuidForBMAppIntent:(id)intent interaction:(id)interaction
{
  intentCopy = intent;
  interactionCopy = interaction;
  itemID = [intentCopy itemID];

  if (!itemID || (v9 = objc_alloc(MEMORY[0x1E696AFB0]), [intentCopy itemID], v10 = objc_claimAutoreleasedReturnValue(), identifier2 = objc_msgSend(v9, "initWithUUIDString:", v10), v10, !identifier2))
  {
    if (!interactionCopy)
    {
      interactionCopy = [(ATXIntentStream *)self _unarchiveInteractionFromBMAppIntent:intentCopy];
    }

    identifier = [interactionCopy identifier];

    if (!identifier || (v13 = objc_alloc(MEMORY[0x1E696AFB0]), [interactionCopy identifier], v14 = objc_claimAutoreleasedReturnValue(), identifier2 = objc_msgSend(v13, "initWithUUIDString:", v14), v14, !identifier2))
    {
      intent = [interactionCopy intent];
      identifier2 = [intent identifier];

      if (identifier2)
      {
        v16 = objc_alloc(MEMORY[0x1E696AFB0]);
        intent2 = [interactionCopy intent];
        identifier3 = [intent2 identifier];
        identifier2 = [v16 initWithUUIDString:identifier3];
      }
    }
  }

  return identifier2;
}

- (id)_getIntentEventFromBMAppIntent:(id)intent source:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles intentsToKeep:(id)keep
{
  v67 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  filterCopy = filter;
  keepCopy = keep;
  intentType = [intentCopy intentType];
  if (!intentType)
  {
    v17 = __atxlog_handle_action_prediction(intentType);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
    }

    goto LABEL_7;
  }

  handlingStatus = [intentCopy handlingStatus];
  if (handlingStatus == 5)
  {
    v17 = __atxlog_handle_action_prediction(handlingStatus);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
    }

LABEL_7:
    v18 = 0;
    goto LABEL_74;
  }

  v17 = [(ATXIntentStream *)self _unarchiveInteractionFromBMAppIntent:intentCopy];
  if (!v17)
  {
    v19 = __atxlog_handle_action_prediction(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
    }

    v18 = 0;
    goto LABEL_73;
  }

  v19 = [(ATXIntentStream *)self _uuidForBMAppIntent:intentCopy interaction:v17];
  if (!v19)
  {
    intentClass = __atxlog_handle_action_prediction(0);
    if (os_log_type_enabled(intentClass, OS_LOG_TYPE_FAULT))
    {
      [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
    }

    goto LABEL_18;
  }

  if ([v17 direction]!= 2)
  {
    if (!titles)
    {
      intent = [v17 intent];
      atx_titleLengthWithoutLocalizing = [intent atx_titleLengthWithoutLocalizing];

      if (!atx_titleLengthWithoutLocalizing)
      {
        intentClass = __atxlog_handle_action_prediction(v23);
        if (os_log_type_enabled(intentClass, OS_LOG_TYPE_ERROR))
        {
          [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
        }

        goto LABEL_18;
      }
    }

    intentClass = [intentCopy intentClass];
    if (keepCopy)
    {
      intent2 = [v17 intent];
      if ([intent2 _type] == 2)
      {
      }

      else
      {
        v25 = objc_msgSend_containsObject_(keepCopy);

        if ((v25 & 1) == 0)
        {
          _className = __atxlog_handle_action_prediction(v26);
          if (os_log_type_enabled(_className, OS_LOG_TYPE_DEBUG))
          {
            [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
          }

          v18 = 0;
          goto LABEL_71;
        }
      }
    }

    intent3 = [v17 intent];
    _className = [intent3 _className];

    v29 = [_className isEqualToString:@"INIntent"];
    if (v29)
    {
      bundleID = __atxlog_handle_action_prediction(v29);
      if (os_log_type_enabled(bundleID, OS_LOG_TYPE_DEBUG))
      {
        [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
      }

      v18 = 0;
      goto LABEL_70;
    }

    bundleID = [intentCopy bundleID];
    if ([bundleID length])
    {
      if ([MEMORY[0x1E69C5CF8] isInternalBuild] && -[NSObject hasPrefix:](bundleID, "hasPrefix:", @"appshack."))
      {
        v31 = -[NSObject substringFromIndex:](bundleID, "substringFromIndex:", [@"appshack." length]);

        bundleID = v31;
      }

      if (!filterCopy || (v32 = [filterCopy isEqualToString:bundleID], (v32 & 1) != 0))
      {
        log = bundleID;
        _donatedBySiri = [v17 _donatedBySiri];
        donatedBySiri = [intentCopy donatedBySiri];
        if (_donatedBySiri != donatedBySiri)
        {
          v35 = __atxlog_handle_action_prediction(donatedBySiri);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
          }
        }

        if (source <= 1)
        {
          if (source)
          {
            if (source != 1)
            {
              goto LABEL_66;
            }

            goto LABEL_56;
          }
        }

        else if (source != 2)
        {
          if (source != 3)
          {
            if (source != 4)
            {
              goto LABEL_66;
            }

LABEL_57:
            v57 = _className;
            intent4 = [v17 intent];
            _intents_bundleIdForDisplay = [intent4 _intents_bundleIdForDisplay];
            v40 = _intents_bundleIdForDisplay;
            if (_intents_bundleIdForDisplay)
            {
              v41 = _intents_bundleIdForDisplay;
            }

            else
            {
              v41 = log;
            }

            bundleID = v41;

            v42 = [ATXAction alloc];
            intent5 = [v17 intent];
            LOBYTE(v55) = 0;
            v44 = [(ATXAction *)v42 initWithIntent:intent5 actionUUID:v19 bundleId:bundleID heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v55 title:0 subtitle:0];

            dateInterval = [v17 dateInterval];
            loga = v44;
            if (!dateInterval)
            {
              v46 = __atxlog_handle_default(0);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
              {
                [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
              }

              v47 = objc_alloc(MEMORY[0x1E696AB80]);
              absoluteTimestamp = [intentCopy absoluteTimestamp];
              absoluteTimestamp2 = [intentCopy absoluteTimestamp];
              dateInterval = [v47 initWithStartDate:absoluteTimestamp endDate:absoluteTimestamp2];

              v44 = loga;
            }

            v50 = [ATXIntentEvent alloc];
            intent6 = [v17 intent];
            _className2 = [intent6 _className];
            v52 = v44;
            v53 = _className2;
            v18 = [(ATXIntentEvent *)v50 initWithBundleId:bundleID intentType:_className2 dateInterval:dateInterval action:v52];

            _className = v57;
            v36 = loga;
            goto LABEL_69;
          }

LABEL_56:
          if ((_donatedBySiri & 1) == 0)
          {
            goto LABEL_57;
          }

LABEL_66:
          v36 = __atxlog_handle_default(donatedBySiri);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
          }

          v18 = 0;
          bundleID = log;
          goto LABEL_69;
        }

        if (_donatedBySiri)
        {
          goto LABEL_57;
        }

        goto LABEL_66;
      }

      v36 = __atxlog_handle_action_prediction(v32);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
      }
    }

    else
    {
      v36 = __atxlog_handle_action_prediction(0);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [v17 intent];
        v37 = logb = v36;
        *buf = 138412802;
        v62 = v37;
        v63 = 2112;
        v64 = _className;
        v65 = 2048;
        sourceCopy = source;
        _os_log_error_impl(&dword_1BF549000, logb, OS_LOG_TYPE_ERROR, "Donation Processing (INIntent) - Rejected: filtered out because there was no bundleId for intent: %@, intentType: %@, intentSource: %lld", buf, 0x20u);

        v36 = logb;
      }
    }

    v18 = 0;
LABEL_69:

LABEL_70:
LABEL_71:

    goto LABEL_72;
  }

  intentClass = __atxlog_handle_action_prediction(2);
  if (os_log_type_enabled(intentClass, OS_LOG_TYPE_DEBUG))
  {
    [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
  }

LABEL_18:
  v18 = 0;
LABEL_72:

LABEL_73:
LABEL_74:

  return v18;
}

- (void)_enumerateIntentEventsBetweenStartDate:endDate:forSource:bundleIdFilter:allowMissingTitles:reversed:INIntentFilter:linkActionFilter:block:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0(&dword_1BF549000, v3, v4, "ATXIntentStream: Unexpected intent event body: %@", v5, v6, v7, v8);
}

void __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_21_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)getIntentEventForSourceItemID:forSource:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_getIntentEventFromLinkActionRecord:(uint64_t)a1 source:(void *)a2 bundleIdFilter:allowMissingTitles:.cold.3(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_getIntentEventFromLinkActionRecord:(uint64_t)a1 source:(void *)a2 bundleIdFilter:allowMissingTitles:.cold.4(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_getIntentEventFromLinkActionRecord:(void *)a1 source:(NSObject *)a2 bundleIdFilter:allowMissingTitles:.cold.7(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "Donation Processing (Link) - Action not predictable: %@", v4, 0xCu);
}

- (void)_getIntentEventFromLinkActionRecord:(void *)a1 source:bundleIdFilter:allowMissingTitles:.cold.8(void *a1)
{
  v1 = [a1 mangledTypeName];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_unarchiveInteractionFromBMAppIntent:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_unarchiveInteractionFromBMAppIntent:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEBUG, "Donation Processing (INIntent) - Rejected: not in the intents to keep, %@", v1, 0xCu);
}

- (void)_getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:.cold.10()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:.cold.11()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:.cold.12()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end