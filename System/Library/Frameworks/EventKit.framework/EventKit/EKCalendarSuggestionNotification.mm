@interface EKCalendarSuggestionNotification
+ (id)_queue;
- (NSString)originAppName;
- (SGEvent)suggestedEvent;
- (void)updateSuggestedEventWithEventStore:(id)store;
@end

@implementation EKCalendarSuggestionNotification

- (NSString)originAppName
{
  originAppName = self->_originAppName;
  if (!originAppName)
  {
    suggestedEvent = [(EKCalendarSuggestionNotification *)self suggestedEvent];
    origin = [suggestedEvent origin];
    bundleId = [origin bundleId];

    v7 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:bundleId allowPlaceholder:0 error:0];
    localizedName = [v7 localizedName];
    v9 = self->_originAppName;
    self->_originAppName = localizedName;

    originAppName = self->_originAppName;
  }

  return originAppName;
}

+ (id)_queue
{
  if (_queue_onceToken_0 != -1)
  {
    +[EKCalendarSuggestionNotification _queue];
  }

  v3 = _queue_queue_0;

  return v3;
}

uint64_t __42__EKCalendarSuggestionNotification__queue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.EventKit.EKCalendarSuggestionNotificationQueue", 0);
  v1 = _queue_queue_0;
  _queue_queue_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)updateSuggestedEventWithEventStore:(id)store
{
  storeCopy = store;
  _queue = [objc_opt_class() _queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__EKCalendarSuggestionNotification_updateSuggestedEventWithEventStore___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = storeCopy;
  v6 = storeCopy;
  dispatch_async(_queue, v7);
}

void __71__EKCalendarSuggestionNotification_updateSuggestedEventWithEventStore___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceChangeFromEventStore:*(a1 + 40)];
  v3 = [v2 calendarItem];
  v4 = [v3 suggestionInfo];
  v5 = [v4 uniqueKey];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [objc_msgSend(v6 "_SGSuggestionsServiceClass")];
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__8;
    v20 = __Block_byref_object_dispose__8;
    v21 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__EKCalendarSuggestionNotification_updateSuggestedEventWithEventStore___block_invoke_12;
    v12[3] = &unk_1E77FE230;
    v12[4] = *(a1 + 32);
    v13 = v2;
    v15 = &v16;
    v9 = v8;
    v14 = v9;
    [v7 eventFromUniqueId:v5 withCompletion:v12];
    v10 = dispatch_time(0, 100000000);
    if (!dispatch_group_wait(v9, v10))
    {
      objc_storeStrong((*(a1 + 32) + 216), v17[5]);
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v11 = v6[27];
    v6[27] = 0;
  }
}

void __71__EKCalendarSuggestionNotification_updateSuggestedEventWithEventStore___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = @"no error returned";
      if (v7)
      {
        v14 = v7;
      }

      v15 = 136315906;
      v16 = "[EKCalendarSuggestionNotification updateSuggestedEventWithEventStore:]_block_invoke";
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_error_impl(&dword_1A805E000, v8, OS_LOG_TYPE_ERROR, "%s: Error attempting to look up the suggested event for notification [%@] and resource change [%@] with error [%@].", &v15, 0x2Au);
    }
  }

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_group_leave(*(a1 + 48));
}

- (SGEvent)suggestedEvent
{
  suggestedEvent = self->_suggestedEvent;
  if (!suggestedEvent)
  {
    _queue = [objc_opt_class() _queue];
    dispatch_sync(_queue, &__block_literal_global_18_1);

    suggestedEvent = self->_suggestedEvent;
  }

  return suggestedEvent;
}

@end