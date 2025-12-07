@interface ATXUserActivityStream
- (id)_getActivityEventFromBMAppActivity:(id)activity bundleIdFilter:(id)filter;
- (id)getActivityIntentEventsBetweenStartDate:(id)date endDate:(id)endDate bundleIdFilter:(id)filter limit:(unint64_t)limit;
- (unint64_t)numberOfActivityEventsBetweenStartDate:(id)date endDate:(id)endDate;
- (void)_enumerateActivityIntentEventsBetweenStartDate:(id)date endDate:(id)endDate bundleIdFilter:(id)filter reversed:(BOOL)reversed block:(id)block;
@end

@implementation ATXUserActivityStream

- (id)getActivityIntentEventsBetweenStartDate:(id)date endDate:(id)endDate bundleIdFilter:(id)filter limit:(unint64_t)limit
{
  filterCopy = filter;
  endDateCopy = endDate;
  dateCopy = date;
  v13 = objc_opt_new();
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __94__ATXUserActivityStream_getActivityIntentEventsBetweenStartDate_endDate_bundleIdFilter_limit___block_invoke;
  v21 = &unk_1E80C1A58;
  v22 = v13;
  limitCopy = limit;
  v14 = v13;
  [(ATXUserActivityStream *)self _enumerateActivityIntentEventsBetweenStartDate:dateCopy endDate:endDateCopy bundleIdFilter:filterCopy reversed:1 block:&v18];

  reverseObjectEnumerator = [v14 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

- (unint64_t)numberOfActivityEventsBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__ATXUserActivityStream_numberOfActivityEventsBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_1E80C1A80;
  v10[4] = &v11;
  [(ATXUserActivityStream *)self _enumerateActivityIntentEventsBetweenStartDate:dateCopy endDate:endDateCopy bundleIdFilter:0 reversed:0 block:v10];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)_enumerateActivityIntentEventsBetweenStartDate:(id)date endDate:(id)endDate bundleIdFilter:(id)filter reversed:(BOOL)reversed block:(id)block
{
  reversedCopy = reversed;
  dateCopy = date;
  endDateCopy = endDate;
  filterCopy = filter;
  blockCopy = block;
  v16 = objc_autoreleasePoolPush();
  v17 = BiomeLibrary();
  v18 = [v17 App];
  activity = [v18 Activity];
  v20 = activity;
  if (reversedCopy)
  {
    v21 = endDateCopy;
  }

  else
  {
    v21 = dateCopy;
  }

  if (reversedCopy)
  {
    v22 = dateCopy;
  }

  else
  {
    v22 = endDateCopy;
  }

  v23 = [activity atx_publisherWithStartDate:v21 endDate:v22 maxEvents:0 lastN:0 reversed:reversedCopy];

  v24 = +[ATXIntentGlobals sharedInstance];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __110__ATXUserActivityStream__enumerateActivityIntentEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke_13;
  v29[3] = &unk_1E80C5BF8;
  v30 = v24;
  selfCopy = self;
  v25 = filterCopy;
  v32 = v25;
  v26 = blockCopy;
  v33 = v26;
  v27 = v24;
  v28 = [v23 sinkWithCompletion:&__block_literal_global_92 shouldContinue:v29];

  objc_autoreleasePoolPop(v16);
}

void __110__ATXUserActivityStream__enumerateActivityIntentEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_default(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __110__ATXUserActivityStream__enumerateActivityIntentEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke_cold_1(v2);
    }
  }
}

uint64_t __110__ATXUserActivityStream__enumerateActivityIntentEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((![*(a1 + 32) onlyUseEligibleForPrediction] || (objc_msgSend(v3, "eventBody"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEligibleForPrediction"), v4, v5)) && (objc_msgSend(*(a1 + 40), "_getActivityEventFromBMAppActivity:bundleIdFilter:", v3, *(a1 + 48)), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)_getActivityEventFromBMAppActivity:(id)activity bundleIdFilter:(id)filter
{
  v49 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  filterCopy = filter;
  eventBody = [activityCopy eventBody];
  v8 = objc_alloc(MEMORY[0x1E696AFB0]);
  userActivityUUID = [eventBody userActivityUUID];
  v10 = [v8 initWithUUIDString:userActivityUUID];

  if (v10)
  {
    bundleID = [eventBody bundleID];
    if ([bundleID length])
    {
      if (filterCopy && (v13 = [filterCopy isEqualToString:bundleID], (v13 & 1) == 0))
      {
        v21 = __atxlog_handle_default(v13);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [ATXUserActivityStream _getActivityEventFromBMAppActivity:bundleIdFilter:];
        }
      }

      else
      {
        v14 = +[ATXIntentGlobals sharedInstance];
        onlyAcceptBecomeCurrentNSUAs = [v14 onlyAcceptBecomeCurrentNSUAs];

        if (!onlyAcceptBecomeCurrentNSUAs || ([eventBody beginningOfActivity] & 1) != 0 || (v16 = -[NSObject isEqualToString:](bundleID, "isEqualToString:", @"com.apple.mobilesafari"), (v16 & 1) != 0))
        {
          userActivityRequiredString = [eventBody userActivityRequiredString];

          if (userActivityRequiredString)
          {
            v19 = objc_alloc(MEMORY[0x1E69636A8]);
            userActivityRequiredString2 = [eventBody userActivityRequiredString];
            v21 = [v19 _initWithUserActivityStrings:userActivityRequiredString2 secondaryString:0 optionalData:0];

            activityType = [v21 activityType];
            if (!activityType)
            {
              v39 = __atxlog_handle_default(0);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                [ATXUserActivityStream _getActivityEventFromBMAppActivity:bundleIdFilter:];
              }

              v38 = 0;
              goto LABEL_40;
            }

            v23 = MEMORY[0x1E695DF00];
            [activityCopy timestamp];
            v45 = [v23 dateWithTimeIntervalSinceReferenceDate:?];
            v46 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v45 endDate:v45];
            itemIdentifier = [eventBody itemIdentifier];

            if (!itemIdentifier)
            {
              v28 = __atxlog_handle_default(v25);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                [ATXUserActivityStream _getActivityEventFromBMAppActivity:bundleIdFilter:];
              }

              v38 = 0;
              goto LABEL_39;
            }

            itemRelatedContentURL = [eventBody itemRelatedContentURL];
            v44 = activityType;
            if (itemRelatedContentURL || ([eventBody itemRelatedUniqueIdentifier], (itemRelatedContentURL = objc_claimAutoreleasedReturnValue()) != 0))
            {
            }

            else
            {
              contentDescription = [eventBody contentDescription];

              if (!contentDescription)
              {
                v28 = 0;
                goto LABEL_15;
              }
            }

            v27 = objc_alloc(MEMORY[0x1E6964E90]);
            v28 = [v27 initWithContentType:*MEMORY[0x1E6982D50]];
            itemRelatedUniqueIdentifier = [eventBody itemRelatedUniqueIdentifier];
            [v28 setRelatedUniqueIdentifier:itemRelatedUniqueIdentifier];

            itemRelatedContentURL2 = [eventBody itemRelatedContentURL];
            [v28 setContentURL:itemRelatedContentURL2];

            contentDescription2 = [eventBody contentDescription];
            [v28 setContentDescription:contentDescription2];

LABEL_15:
            v32 = [ATXAction alloc];
            userActivityRequiredString3 = [eventBody userActivityRequiredString];
            itemIdentifier2 = [eventBody itemIdentifier];
            LOBYTE(v43) = 0;
            v35 = [(ATXAction *)v32 initWithNSUserActivityString:userActivityRequiredString3 actionUUID:v10 bundleId:bundleID itemIdentifier:itemIdentifier2 contentAttributeSet:v28 heuristic:0 heuristicMetadata:0 isFutureMedia:v43 title:0 subtitle:0];

            hasActionTitle = [(ATXAction *)v35 hasActionTitle];
            if (hasActionTitle)
            {
              v37 = [ATXAction getNSUATypefromActivityType:v44];
              v38 = [[ATXIntentEvent alloc] initWithBundleId:bundleID intentType:v37 dateInterval:v46 action:v35];

              activityType = v44;
            }

            else
            {
              v40 = __atxlog_handle_default(hasActionTitle);
              activityType = v44;
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                [ATXUserActivityStream _getActivityEventFromBMAppActivity:bundleIdFilter:];
              }

              v38 = 0;
            }

LABEL_39:
            v39 = v45;

LABEL_40:
            goto LABEL_41;
          }

          v21 = __atxlog_handle_default(v18);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [ATXUserActivityStream _getActivityEventFromBMAppActivity:bundleIdFilter:];
          }
        }

        else
        {
          v21 = __atxlog_handle_default(v16);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v48 = bundleID;
            _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_INFO, "Donation Processing (NSUA) - skipping non-beginning activity for bundleId: %@", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      v21 = __atxlog_handle_default(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ATXUserActivityStream _getActivityEventFromBMAppActivity:eventBody bundleIdFilter:?];
      }
    }

    v38 = 0;
LABEL_41:

    goto LABEL_42;
  }

  bundleID = __atxlog_handle_default(v11);
  if (os_log_type_enabled(bundleID, OS_LOG_TYPE_ERROR))
  {
    [ATXUserActivityStream _getActivityEventFromBMAppActivity:bundleID bundleIdFilter:?];
  }

  v38 = 0;
LABEL_42:

  return v38;
}

void __110__ATXUserActivityStream__enumerateActivityIntentEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1BF549000, v2, v3, "ATXUserActivityStream: Can't read App.Activity stream with error: %@", v4, v5, v6, v7);
}

- (void)_getActivityEventFromBMAppActivity:bundleIdFilter:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1BF549000, v1, OS_LOG_TYPE_DEBUG, "Donation Processing (NSUA) - Rejected: filtered out bundle id %@ that doesn't match %@", v2, 0x16u);
}

- (void)_getActivityEventFromBMAppActivity:(void *)a1 bundleIdFilter:.cold.6(void *a1)
{
  v1 = [a1 userActivityUUID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1BF549000, v2, v3, "Donation Processing (NSUA) - No bundleId found for eventUUID: %@", v4, v5, v6, v7);
}

@end