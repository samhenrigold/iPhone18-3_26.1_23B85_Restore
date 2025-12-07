@interface TPSContentStatusEventsProvider
- (BOOL)_isStatusType:(int64_t)type observedInStatus:(id)status;
- (BOOL)_isStatusType:(int64_t)type observedInStatuses:(id)statuses;
- (TPSContentStatusEventsProvider)init;
- (void)queryEvents:(id)events;
@end

@implementation TPSContentStatusEventsProvider

- (TPSContentStatusEventsProvider)init
{
  v7.receiver = self;
  v7.super_class = TPSContentStatusEventsProvider;
  v2 = [(TPSContentStatusEventsProvider *)&v7 init];
  if (v2)
  {
    v3 = +[TPSCommonDefines sharedInstance];
    tipStatusController = [v3 tipStatusController];
    tipStatusController = v2->_tipStatusController;
    v2->_tipStatusController = tipStatusController;
  }

  return v2;
}

- (void)queryEvents:(id)events
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = events;
  v4 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v32;
    *&v5 = 138412290;
    v28 = v5;
    v8 = 0x1E8100000uLL;
    v9 = 0x1E695D000;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        minObservationCount = [v11 minObservationCount];
        if (minObservationCount <= [v11 currentObservationCount])
        {
          LOBYTE(statusType) = 0;
        }

        else
        {
          v13 = v6;
          v14 = v7;
          v15 = v8;
          v16 = v11;
          statusType = [v16 statusType];
          contentID = [v16 contentID];
          v18 = [(TPSTipStatusController *)self->_tipStatusController statusesForCorrelationIdentifier:contentID];

          LODWORD(statusType) = [(TPSContentStatusEventsProvider *)self _isStatusType:statusType observedInStatuses:v18];
          if (statusType)
          {
            statusType = +[TPSLogger default];
            v8 = v15;
            if (os_log_type_enabled(statusType, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [v16 description];
              *buf = v28;
              v39 = v20;
              _os_log_impl(&dword_1C00A7000, statusType, OS_LOG_TYPE_DEFAULT, "Status observed for event: %@", buf, 0xCu);
            }

            LOBYTE(statusType) = 1;
          }

          else
          {
            v8 = v15;
          }

          v7 = v14;
          v6 = v13;
          v9 = 0x1E695D000uLL;
        }

        v21 = objc_alloc_init(*(v8 + 2456));
        identifier = [v11 identifier];
        [v21 setIdentifier:identifier];
        date = [*(v9 + 3840) date];
        [v21 setResultDate:date];

        if (statusType)
        {
          v36 = identifier;
          resultDate = [v21 resultDate];
          v37 = resultDate;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          [v21 setObservationMap:v25];
        }

        else
        {
          [v21 setObservationMap:0];
        }

        delegate = [(TPSEventsProvider *)self delegate];
        v35 = v21;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
        [delegate dataProvider:self didFinishQueryWithResults:v27];

        objc_autoreleasePoolPop(context);
        ++v10;
      }

      while (v6 != v10);
      v6 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v6);
  }
}

- (BOOL)_isStatusType:(int64_t)type observedInStatuses:(id)statuses
{
  statusesCopy = statuses;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__TPSContentStatusEventsProvider__isStatusType_observedInStatuses___block_invoke;
  v8[3] = &unk_1E8101220;
  v8[5] = &v9;
  v8[6] = type;
  v8[4] = self;
  [statusesCopy enumerateObjectsUsingBlock:v8];
  LOBYTE(type) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return type;
}

void *__67__TPSContentStatusEventsProvider__isStatusType_observedInStatuses___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) _isStatusType:*(a1 + 48) observedInStatus:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)_isStatusType:(int64_t)type observedInStatus:(id)status
{
  statusCopy = status;
  v6 = statusCopy;
  LOBYTE(v7) = 0;
  if (type > 4)
  {
    if (type > 6)
    {
      if (type == 7)
      {
        isContentViewed = [statusCopy isContentViewed];
        goto LABEL_23;
      }

      if (type == 8)
      {
        isContentViewed = [statusCopy isDesiredOutcomePerformed];
        goto LABEL_23;
      }
    }

    else
    {
      if (type != 5)
      {
        isContentViewed = [statusCopy isHintDismissed];
        goto LABEL_23;
      }

      if ([statusCopy isHintDisplayedOnAnyDevice])
      {
        v7 = [v6 isHintDisplayed] ^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    goto LABEL_24;
  }

  if (type > 2)
  {
    if (type == 3)
    {
      isContentViewed = [statusCopy isHintDisplayedOnAnyDevice];
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (type == 1)
  {
    if ([statusCopy isDesiredOutcomePerformed])
    {
LABEL_17:
      LOBYTE(v7) = 1;
      goto LABEL_24;
    }

LABEL_18:
    isContentViewed = [v6 isHintDisplayed];
    goto LABEL_23;
  }

  if (type == 2)
  {
    if (([statusCopy isDesiredOutcomePerformed] & 1) == 0 && (objc_msgSend(v6, "isHintDisplayedOnAnyDevice") & 1) == 0)
    {
      isContentViewed = [v6 isHintIneligible];
LABEL_23:
      LOBYTE(v7) = isContentViewed;
      goto LABEL_24;
    }

    goto LABEL_17;
  }

LABEL_24:

  return v7;
}

@end