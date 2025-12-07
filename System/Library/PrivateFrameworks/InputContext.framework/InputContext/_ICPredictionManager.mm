@interface _ICPredictionManager
- (_ICPredictionManager)initWithPredictionSources:(id)sources;
- (id)_quickTypePredictionWithTrigger:(id)trigger searchContext:(id)context timeoutInMilliseconds:(unint64_t)milliseconds error:(id *)error;
- (id)searchForMeCardEmailAddresses;
- (id)searchForMeCardRegions;
- (id)searchWithTrigger:(id)trigger searchContext:(id)context timeoutInMilliseconds:(int)milliseconds error:(id *)error;
- (id)searchWithTriggers:(id)triggers application:(id)application recipient:(id)recipient localeIdentifier:(id)identifier isResponseDenyListed:(BOOL)listed shouldDisableAutoCaps:(BOOL)caps timeoutInMilliseconds:(int)milliseconds resultLimit:(int)self0 error:(id *)self1;
- (void)hibernate;
- (void)propogateMetrics:(id)metrics data:(id)data;
- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style;
- (void)reset;
- (void)searchForMeCardEmailAddresses;
- (void)searchForMeCardRegions;
- (void)setLastUsedSource:(id)source;
- (void)warmUp;
@end

@implementation _ICPredictionManager

- (void)reset
{
  cache = [(_ICPredictionManager *)self cache];
  [cache clear];
}

- (void)warmUp
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = _ICProactiveQuickTypeOSLogFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_ICPredictionManager warmUp];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_predictionSources;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) warmUp];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = _ICProactiveQuickTypeOSLogFacility(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_ICPredictionManager warmUp];
  }
}

- (id)searchForMeCardRegions
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = _ICProactiveQuickTypeOSLogFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_ICPredictionManager searchForMeCardRegions];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = self->_predictionSources;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v5)
  {
    v6 = *v24;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = dispatch_semaphore_create(0);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __46___ICPredictionManager_searchForMeCardRegions__block_invoke;
        v20[3] = &unk_2797ADA90;
        v22 = &v27;
        v10 = v9;
        v21 = v10;
        [v8 searchForMeCardRegionsWithTimeout:5000 handler:v20];
        v11 = dispatch_time(0, 5500000000);
        v12 = dispatch_semaphore_wait(v10, v11);
        if (v12)
        {
          v17 = _ICProactiveQuickTypeOSLogFacility(v12);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [_ICPredictionManager searchForMeCardRegions];
          }

          goto LABEL_22;
        }

        v13 = [v28[5] count] == 0;

        if (!v13)
        {
          goto LABEL_12;
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v23 objects:v34 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v14 = [v28[5] count];
  if (v14)
  {
    v15 = _ICProactiveQuickTypeOSLogFacility(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      -[_ICPredictionManager searchForMeCardRegions].cold.3(v33, [v28[5] count], v15);
    }

    v16 = v28[5];
  }

  else
  {
    v18 = _ICProactiveQuickTypeOSLogFacility(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [_ICPredictionManager _quickTypePredictionWithTrigger:searchContext:timeoutInMilliseconds:error:];
    }

LABEL_22:
    v16 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v27, 8);

  return v16;
}

- (_ICPredictionManager)initWithPredictionSources:(id)sources
{
  sourcesCopy = sources;
  v17.receiver = self;
  v17.super_class = _ICPredictionManager;
  v6 = [(_ICPredictionManager *)&v17 init];
  if (v6)
  {
    v7 = [[_ICResultCache alloc] initWithTTL:180.0];
    cache = v6->_cache;
    v6->_cache = v7;

    if (sourcesCopy)
    {
      objc_storeStrong(&v6->_predictionSources, sources);
    }

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v13 = [@"com.apple.inputcontext.predictionmanager." stringByAppendingString:uUIDString];

    v14 = dispatch_queue_create([v13 UTF8String], v10);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v14;
  }

  return v6;
}

- (id)searchWithTrigger:(id)trigger searchContext:(id)context timeoutInMilliseconds:(int)milliseconds error:(id *)error
{
  triggerCopy = trigger;
  contextCopy = context;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84___ICPredictionManager_searchWithTrigger_searchContext_timeoutInMilliseconds_error___block_invoke;
  v24[3] = &unk_2797ADA18;
  v24[4] = self;
  v12 = triggerCopy;
  v25 = v12;
  v13 = contextCopy;
  v26 = v13;
  millisecondsCopy = milliseconds;
  v14 = MEMORY[0x259C27030](v24);
  if ([v12 triggerSourceType] == 3 || (objc_msgSend(MEMORY[0x277CBEB68], "null"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "attributedString"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "objectForKeyedSubscript:", *MEMORY[0x277D22F30]), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v15, "isEqual:", v17), v17, v16, v15, !v18))
  {
    v20 = (v14)[2](v14, error);
  }

  else
  {
    v19 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84___ICPredictionManager_searchWithTrigger_searchContext_timeoutInMilliseconds_error___block_invoke_2;
    block[3] = &unk_2797ADA40;
    v23 = v14;
    dispatch_async(v19, block);

    v20 = MEMORY[0x277CBEBF8];
  }

  return v20;
}

- (id)searchWithTriggers:(id)triggers application:(id)application recipient:(id)recipient localeIdentifier:(id)identifier isResponseDenyListed:(BOOL)listed shouldDisableAutoCaps:(BOOL)caps timeoutInMilliseconds:(int)milliseconds resultLimit:(int)self0 error:(id *)self1
{
  capsCopy = caps;
  listedCopy = listed;
  v66 = *MEMORY[0x277D85DE8];
  triggersCopy = triggers;
  applicationCopy = application;
  recipientCopy = recipient;
  identifierCopy = identifier;
  if ([applicationCopy length] || objc_msgSend(recipientCopy, "length") || objc_msgSend(identifierCopy, "length"))
  {
    array = [MEMORY[0x277CBEB18] array];
    if ([recipientCopy length])
    {
      [array addObject:recipientCopy];
    }

    v52 = [[_ICSearchContext alloc] initWithLocale:identifierCopy recipients:array applicationBundleIdentifier:applicationCopy isResponseContextDenylisted:listedCopy shouldDisableAutoCaps:capsCopy];
  }

  else
  {
    v52 = 0;
  }

  v49 = recipientCopy;
  v50 = applicationCopy;
  date = [MEMORY[0x277CBEAA8] date];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v22 = triggersCopy;
  v23 = [v22 countByEnumeratingWithState:&v60 objects:v65 count:16];
  v55 = v22;
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *v61;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v61 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = [(_ICResultCache *)self->_cache searchWithTrigger:*(*(&v60 + 1) + 8 * i)];
        v29 = [v28 count];
        if (v29 >= 1)
        {
          v30 = v29;
          if (!v25)
          {
            v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:limit];
          }

          if (v30 >= limit)
          {
            limitCopy = limit;
          }

          else
          {
            limitCopy = v30;
          }

          if (limit)
          {
            v32 = 0;
            do
            {
              v33 = [v28 objectAtIndex:v32];
              [v25 addObject:v33];

              ++v32;
            }

            while (limitCopy != v32);
            v22 = v55;
          }
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v24);
  }

  else
  {
    v25 = 0;
  }

  if ([v25 count])
  {
    v34 = v52;
  }

  else
  {
    [(_ICResultCache *)self->_cache clear];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v22;
    v35 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
    v34 = v52;
    if (v35)
    {
      v36 = v35;
      v53 = *v57;
      while (2)
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v57 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v38 = [(_ICPredictionManager *)self searchWithTrigger:*(*(&v56 + 1) + 8 * j) searchContext:v34 timeoutInMilliseconds:milliseconds error:error];
          v39 = [v38 count];
          if (v39)
          {
            v40 = v39;
            if (!v25)
            {
              v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:limit];
            }

            if (limit)
            {
              v41 = 0;
              if (v40 >= limit)
              {
                limitCopy2 = limit;
              }

              else
              {
                limitCopy2 = v40;
              }

              if (limitCopy2 <= 1)
              {
                v43 = 1;
              }

              else
              {
                v43 = limitCopy2;
              }

              do
              {
                v44 = [v38 objectAtIndex:v41];
                [v25 addObject:v44];

                ++v41;
              }

              while (v43 != v41);
              v34 = v52;
              v22 = v55;
            }
          }

          if ([v25 count] == limit || (objc_msgSend(date, "timeIntervalSinceNow"), v45 * -1000.0 > milliseconds))
          {

            goto LABEL_51;
          }
        }

        v36 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
        if (v36)
        {
          continue;
        }

        break;
      }
    }

LABEL_51:
  }

  v46 = v25;

  return v25;
}

- (id)_quickTypePredictionWithTrigger:(id)trigger searchContext:(id)context timeoutInMilliseconds:(unint64_t)milliseconds error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  contextCopy = context;
  attributedString = [triggerCopy attributedString];
  LOBYTE(context) = attributedString == 0;

  v11 = _ICProactiveQuickTypeOSLogFacility(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (context)
  {
    if (v12)
    {
      [_ICPredictionManager _quickTypePredictionWithTrigger:triggerCopy searchContext:v11 timeoutInMilliseconds:? error:?];
    }
  }

  else if (v12)
  {
    [_ICPredictionManager _quickTypePredictionWithTrigger:triggerCopy searchContext:v11 timeoutInMilliseconds:? error:?];
  }

  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy_;
  v65 = __Block_byref_object_dispose_;
  v66 = 0;
  if (error)
  {
    *error = 0;
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy_;
  v59 = __Block_byref_object_dispose_;
  v60 = 0;
  v54 = 0;
  v52 = @"_ICPredictionManager_quickTypePredictionWithTrigger";
  v35 = mach_absolute_time();
  v53 = v35;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = self->_predictionSources;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v48 objects:v69 count:16];
  if (v14)
  {
    v16 = *v49;
    *&v15 = 134217984;
    v34 = v15;
LABEL_10:
    v17 = 0;
    while (1)
    {
      if (*v49 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v48 + 1) + 8 * v17);
      if ([v18 doesSupportTriggerSourceType:{objc_msgSend(triggerCopy, "triggerSourceType", v34)}])
      {
        v19 = dispatch_semaphore_create(0);
        objc_initWeak(&location, self);
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __98___ICPredictionManager__quickTypePredictionWithTrigger_searchContext_timeoutInMilliseconds_error___block_invoke;
        v42[3] = &unk_2797ADA68;
        v44 = &v55;
        v45 = &v61;
        objc_copyWeak(&v46, &location);
        v20 = v19;
        v43 = v20;
        [v18 predictedItemsWithProactiveTrigger:triggerCopy searchContext:contextCopy limit:10 timeoutInMilliseconds:milliseconds handler:v42];
        v21 = dispatch_time(0, (milliseconds / 1000.0 * 1.1 * 1000000000.0));
        v22 = dispatch_semaphore_wait(v20, v21);
        if (v22)
        {
          v23 = _ICProactiveQuickTypeOSLogFacility(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [_ICPredictionManager _quickTypePredictionWithTrigger:v41 searchContext:v23 timeoutInMilliseconds:? error:?];
          }

          v24 = 0;
          v6 = 0;
        }

        else if ([v62[5] count])
        {
          name = [v18 name];
          [(_ICPredictionManager *)self setLastUsedSource:name];

          v27 = _ICProactiveQuickTypeOSLogFacility(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v28 = [v62[5] count];
            *buf = v34;
            v68 = v28;
            _os_log_debug_impl(&dword_254BD0000, v27, OS_LOG_TYPE_DEBUG, "DEBUG:IC:Predictions: received prediction source results, count = %lu", buf, 0xCu);
          }

          v6 = v62[5];
          v24 = 0;
        }

        else
        {
          v24 = 1;
        }

        objc_destroyWeak(&v46);
        objc_destroyWeak(&location);

        if (!v24)
        {
          break;
        }
      }

      if (v14 == ++v17)
      {
        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v48 objects:v69 count:16];
        if (v14)
        {
          goto LABEL_10;
        }

        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_26:

    if (error)
    {
      v29 = v56[5];
      *error = v29;
    }

    v13 = _ICProactiveQuickTypeOSLogFacility(v29);
    if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEBUG))
    {
      [_ICPredictionManager _quickTypePredictionWithTrigger:searchContext:timeoutInMilliseconds:error:];
    }

    v6 = 0;
  }

  v30 = mach_absolute_time();
  v31 = _ICMachTimeToNanoseconds(v30 - v35);
  v32 = _ICProactiveQuickTypeOSLogFacility(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    [_ICPredictionManager _quickTypePredictionWithTrigger:searchContext:timeoutInMilliseconds:error:];
  }

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);

  return v6;
}

- (id)searchForMeCardEmailAddresses
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = _ICProactiveQuickTypeOSLogFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_ICPredictionManager searchForMeCardEmailAddresses];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = self->_predictionSources;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v5)
  {
    v6 = *v24;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = dispatch_semaphore_create(0);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __53___ICPredictionManager_searchForMeCardEmailAddresses__block_invoke;
        v20[3] = &unk_2797ADA90;
        v22 = &v27;
        v10 = v9;
        v21 = v10;
        [v8 searchForMeCardEmailAddressesWithTimeout:100 handler:v20];
        v11 = dispatch_time(0, 110000000);
        v12 = dispatch_semaphore_wait(v10, v11);
        if (v12)
        {
          v17 = _ICProactiveQuickTypeOSLogFacility(v12);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [_ICPredictionManager searchForMeCardEmailAddresses];
          }

          goto LABEL_22;
        }

        v13 = [v28[5] count] == 0;

        if (!v13)
        {
          goto LABEL_12;
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v23 objects:v34 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v14 = [v28[5] count];
  if (v14)
  {
    v15 = _ICProactiveQuickTypeOSLogFacility(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      -[_ICPredictionManager searchForMeCardEmailAddresses].cold.3(v33, [v28[5] count], v15);
    }

    v16 = v28[5];
  }

  else
  {
    v18 = _ICProactiveQuickTypeOSLogFacility(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [_ICPredictionManager searchForMeCardEmailAddresses];
    }

LABEL_22:
    v16 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v27, 8);

  return v16;
}

- (void)hibernate
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = _ICProactiveQuickTypeOSLogFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_ICPredictionManager hibernate];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_predictionSources;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) hibernate];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setLastUsedSource:(id)source
{
  sourceCopy = source;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___ICPredictionManager_setLastUsedSource___block_invoke;
  block[3] = &unk_2797ADAB8;
  objc_copyWeak(&v9, &location);
  v8 = sourceCopy;
  v6 = sourceCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style
{
  stringCopy = string;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60___ICPredictionManager_provideFeedbackForString_type_style___block_invoke;
  v11[3] = &unk_2797ADAE0;
  objc_copyWeak(&v13, &location);
  v12 = stringCopy;
  typeCopy = type;
  styleCopy = style;
  v10 = stringCopy;
  dispatch_async(serialQueue, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)propogateMetrics:(id)metrics data:(id)data
{
  metricsCopy = metrics;
  dataCopy = data;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46___ICPredictionManager_propogateMetrics_data___block_invoke;
  v11[3] = &unk_2797ADB08;
  objc_copyWeak(&v14, &location);
  v12 = metricsCopy;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = metricsCopy;
  dispatch_async(serialQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_quickTypePredictionWithTrigger:(void *)a1 searchContext:(NSObject *)a2 timeoutInMilliseconds:error:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 attributedString];
  v5 = 138412290;
  v6 = v3;
  OUTLINED_FUNCTION_2(&dword_254BD0000, a2, v4, "DEBUG:IC:Predictions: Searching for quicktype prediction with attributes: %@", &v5);
}

- (void)_quickTypePredictionWithTrigger:(void *)a1 searchContext:(NSObject *)a2 timeoutInMilliseconds:error:.cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 context];
  v5 = 134217984;
  v6 = [v3 length];
  OUTLINED_FUNCTION_2(&dword_254BD0000, a2, v4, "DEBUG:IC:Predictions: Searching for quicktype prediction with context len: %tu", &v5);
}

- (void)_quickTypePredictionWithTrigger:(os_log_t)log searchContext:timeoutInMilliseconds:error:.cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_254BD0000, log, OS_LOG_TYPE_ERROR, "_ICPredictionManager quickTypePredictionWithTrigger timeout", buf, 2u);
}

- (void)_quickTypePredictionWithTrigger:searchContext:timeoutInMilliseconds:error:.cold.5()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 138412546;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_254BD0000, v0, OS_LOG_TYPE_DEBUG, "_ICScales: %@ took %f seconds", v1, 0x16u);
}

- (void)searchForMeCardRegions
{
  *self = 134217984;
  *(self + 4) = a2;
  OUTLINED_FUNCTION_2(&dword_254BD0000, a3, a3, "DEBUG:IC:PredictionsManager:searchForMeCardRegions received prediction source results, count = %lu", self);
}

- (void)searchForMeCardEmailAddresses
{
  *self = 134217984;
  *(self + 4) = a2;
  OUTLINED_FUNCTION_2(&dword_254BD0000, a3, a3, "DEBUG:IC:searchForMeCardEmailAddresses: received prediction source results, count = %lu", self);
}

@end