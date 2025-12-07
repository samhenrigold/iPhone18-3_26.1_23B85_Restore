@interface EKUIAppReviewUtils
+ (BOOL)_shouldDisplayReviewPromptWithCalendarModel:(id)model;
+ (BOOL)_upcomingEventCountMeetsThresholdInCalendarModel:(id)model;
+ (id)_queue;
+ (id)_sharedStoreReview;
+ (void)applicationDidForeground;
+ (void)displayReviewPromptIfNeededInScene:(id)scene calendarModel:(id)model;
@end

@implementation EKUIAppReviewUtils

+ (id)_queue
{
  if (_queue_onceToken != -1)
  {
    +[EKUIAppReviewUtils _queue];
  }

  v3 = _queue_queue;

  return v3;
}

+ (void)applicationDidForeground
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    _queue = [self _queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__EKUIAppReviewUtils_applicationDidForeground__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_async(_queue, block);
  }
}

void __28__EKUIAppReviewUtils__queue__block_invoke()
{
  v0 = dispatch_queue_create("EKUIAppReviewUtils", 0);
  v1 = _queue_queue;
  _queue_queue = v0;
}

void __46__EKUIAppReviewUtils_applicationDidForeground__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _sharedStoreReview];
  [v1 applicationDidForeground];
}

void __40__EKUIAppReviewUtils__sharedStoreReview__block_invoke()
{
  v4 = [MEMORY[0x1E698CB20] bagSubProfile];
  v0 = [MEMORY[0x1E698CB20] bagSubProfileVersion];
  v1 = [MEMORY[0x1E698C7D8] bagForProfile:v4 profileVersion:v0];
  v2 = [objc_alloc(MEMORY[0x1E698CB20]) initWithBag:v1];
  v3 = _sharedStoreReview_sharedStoreReview;
  _sharedStoreReview_sharedStoreReview = v2;
}

+ (id)_sharedStoreReview
{
  if (_sharedStoreReview_onceToken != -1)
  {
    +[EKUIAppReviewUtils _sharedStoreReview];
  }

  v3 = _sharedStoreReview_sharedStoreReview;

  return v3;
}

+ (void)displayReviewPromptIfNeededInScene:(id)scene calendarModel:(id)model
{
  sceneCopy = scene;
  modelCopy = model;
  if (_os_feature_enabled_impl())
  {
    if (!modelCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = _os_feature_enabled_impl();
  if (modelCopy && (v8 & 1) != 0)
  {
LABEL_6:
    _queue = [self _queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke;
    block[3] = &unk_1E8441000;
    selfCopy = self;
    v11 = modelCopy;
    v12 = sceneCopy;
    dispatch_async(_queue, block);
  }

LABEL_7:
}

void __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke(id *a1)
{
  v2 = [MEMORY[0x1E695DF00] now];
  v3 = v2;
  if (NavdRecentLocationsEntitlment_block_invoke_previousAttempt && ([v2 timeIntervalSinceReferenceDate], v5 = v4, v6 = objc_msgSend(NavdRecentLocationsEntitlment_block_invoke_previousAttempt, "timeIntervalSinceReferenceDate"), v5 - v7 < 600.0))
  {
    v8 = logHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_INFO, "Skipping app store review prompt because it is too soon", buf, 2u);
    }
  }

  else
  {
    objc_storeStrong(&NavdRecentLocationsEntitlment_block_invoke_previousAttempt, v3);
    v10 = logHandle(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_INFO, "Asking whether we should attempt an app store review prompt", buf, 2u);
    }

    v11 = [a1[6] _sharedStoreReview];
    v12 = [v11 shouldAttemptReview];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_16;
    v13[3] = &unk_1E8440FD8;
    v16 = a1[6];
    v14 = a1[4];
    v15 = a1[5];
    [v12 addFinishBlock:v13];

    v8 = v14;
  }
}

void __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_16(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[6] _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_2;
  block[3] = &unk_1E843EED8;
  v11 = v6;
  v12 = v5;
  v15 = a1[6];
  v13 = a1[4];
  v14 = a1[5];
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (!*(a1 + 32))
  {
    v4 = [*(a1 + 40) BOOLValue];
    if (v4)
    {
      v5 = [*(a1 + 64) _shouldDisplayReviewPromptWithCalendarModel:*(a1 + 48)];
      if (v5)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_17;
        v9[3] = &unk_1E843F690;
        v6 = *(a1 + 56);
        v7 = *(a1 + 64);
        v10 = v6;
        v11 = v7;
        dispatch_async(MEMORY[0x1E69E96A0], v9);
        v2 = v10;
        goto LABEL_4;
      }

      v2 = logHandle(v5);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        goto LABEL_4;
      }

      *buf = 0;
      v8 = "Not attempting to ask for app store review because our filtering says this is not a good candidate";
    }

    else
    {
      v2 = logHandle(v4);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        goto LABEL_4;
      }

      *buf = 0;
      v8 = "Not attempting to ask for app store review because [AMSSharedStoreReview shouldAttemptReview] said NO";
    }

    _os_log_impl(&dword_1D3400000, v2, OS_LOG_TYPE_INFO, v8, buf, 2u);
    goto LABEL_4;
  }

  v2 = logHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_2_cold_1(v1, v2);
  }

LABEL_4:
}

void __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_17(uint64_t a1)
{
  v2 = logHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D3400000, v2, OS_LOG_TYPE_DEFAULT, "Attempting to prompt for an app store review", v4, 2u);
  }

  [MEMORY[0x1E697BAA8] requestReviewInScene:*(a1 + 32)];
  v3 = [*(a1 + 40) _sharedStoreReview];
  [v3 didAttemptPromptReview];
}

+ (BOOL)_shouldDisplayReviewPromptWithCalendarModel:(id)model
{
  v40 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v5 = [self _upcomingEventCountMeetsThresholdInCalendarModel:modelCopy];
  if ((v5 & 1) == 0)
  {
    v16 = logHandle(v5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      +[EKUIAppReviewUtils _shouldDisplayReviewPromptWithCalendarModel:];
    }

LABEL_19:
    v20 = 0;
    goto LABEL_20;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  eventStore = [modelCopy eventStore];
  sources = [eventStore sources];

  v8 = [sources countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (!v8)
  {
LABEL_10:

LABEL_17:
    v16 = logHandle(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      +[EKUIAppReviewUtils _shouldDisplayReviewPromptWithCalendarModel:];
    }

    goto LABEL_19;
  }

  v9 = v8;
  v10 = *v35;
LABEL_4:
  v11 = 0;
  while (1)
  {
    if (*v35 != v10)
    {
      objc_enumerationMutation(sources);
    }

    v12 = *(*(&v34 + 1) + 8 * v11);
    v13 = MEMORY[0x1E6992EF8];
    externalID = [v12 externalID];
    LOBYTE(v13) = [v13 isiCloudAccount:externalID];

    if (v13)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [sources countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v9)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v16 = v12;

  if (!v16)
  {
    goto LABEL_17;
  }

  allCalendars = [v16 allCalendars];
  v18 = [allCalendars count];
  if (v18 < 5)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = allCalendars;
    v22 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = *v31;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v19);
          }

          sharingStatus = [*(*(&v30 + 1) + 8 * i) sharingStatus];
          if (sharingStatus == 1)
          {
            ++v24;
          }

          if (v24 >= 2)
          {
            v29 = logHandle(sharingStatus);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              +[EKUIAppReviewUtils _shouldDisplayReviewPromptWithCalendarModel:];
            }

            goto LABEL_37;
          }
        }

        v23 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v19 = logHandle(v28);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[EKUIAppReviewUtils _shouldDisplayReviewPromptWithCalendarModel:];
    }

    v20 = 0;
  }

  else
  {
    v19 = logHandle(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[EKUIAppReviewUtils _shouldDisplayReviewPromptWithCalendarModel:];
    }

LABEL_37:
    v20 = 1;
  }

LABEL_20:
  return v20;
}

+ (BOOL)_upcomingEventCountMeetsThresholdInCalendarModel:(id)model
{
  modelCopy = model;
  v4 = CUIKTodayDate();
  v5 = CalCopyCalendar();
  v6 = [v5 dateByAddingUnit:16 value:7 toDate:v4 options:0];

  v7 = [v6 dateByAddingTimeInterval:-1.0];

  v8 = [modelCopy sectionForCachedOccurrencesOnDate:v4];
  v9 = [modelCopy sectionForCachedOccurrencesOnDate:v7];
  v10 = [modelCopy dateForCachedOccurrencesInSection:v8];
  v11 = [modelCopy dateForCachedOccurrencesInSection:v9];
  v12 = v8 + [v10 CalIsBeforeDate:v4];
  v13 = v9 - [v11 CalIsAfterDate:v7];
  if (v12 <= v13)
  {
    v15 = 0;
    do
    {
      v15 += [modelCopy numberOfCachedOccurrencesInSection:v12];
      v14 = v15 > 0xD;
      ++v12;
    }

    while (v15 <= 0xD && v12 <= v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1D3400000, a2, OS_LOG_TYPE_ERROR, "Error returned from [AMSSharedStoreReview shouldAttemptReview]: %@", &v3, 0xCu);
}

@end