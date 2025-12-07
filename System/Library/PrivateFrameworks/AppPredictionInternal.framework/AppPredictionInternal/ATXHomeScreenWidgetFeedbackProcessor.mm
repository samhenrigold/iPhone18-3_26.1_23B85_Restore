@interface ATXHomeScreenWidgetFeedbackProcessor
+ (BOOL)_shouldProcessEvent:(id)event;
+ (id)_retrieveLastHistogramUpdateDate;
+ (void)_storeLastHistogramUpdateDate:(id)date;
- (ATXHomeScreenWidgetFeedbackProcessor)init;
- (ATXHomeScreenWidgetFeedbackProcessor)initWithWidgetFeedback:(id)feedback publisher:(id)publisher;
- (void)_addToHistogramForWidgetsInEvent:(id)event type:(unint64_t)type;
- (void)_updateHistogramForEvent:(id)event;
- (void)updateHistogramsForRecentHomeScreenEvents;
@end

@implementation ATXHomeScreenWidgetFeedbackProcessor

+ (BOOL)_shouldProcessEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    homeScreenEvent = [eventCopy homeScreenEvent];
    v5 = homeScreenEvent;
    if (homeScreenEvent)
    {
      eventTypeString = [homeScreenEvent eventTypeString];
      if ([eventTypeString isEqualToString:@"Unknown"])
      {
        v7 = 0;
LABEL_13:

LABEL_14:
        if (v7 <= 0xC)
        {
          v8 = 0x100Eu >> v7;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_17;
      }

      if ([eventTypeString isEqualToString:@"HomeScreenPageShown"])
      {
        v7 = 1;
        goto LABEL_13;
      }

      if ([eventTypeString isEqualToString:@"HomeScreenDisappeared"])
      {
        v7 = 2;
        goto LABEL_13;
      }

      if ([eventTypeString isEqualToString:@"StackChanged"])
      {
        v7 = 3;
        goto LABEL_13;
      }

      if ([eventTypeString isEqualToString:@"WidgetTapped"])
      {
        goto LABEL_20;
      }

      if ([eventTypeString isEqualToString:@"WidgetLongLook"])
      {
        v7 = 5;
        goto LABEL_13;
      }

      if ([eventTypeString isEqualToString:@"WidgetUserFeedback"])
      {
LABEL_20:
      }

      else
      {
        if ([eventTypeString isEqualToString:@"UserStackConfigChanged"])
        {
          v7 = 7;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"DeviceLocked"])
        {
          v7 = 8;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"DeviceUnlocked"])
        {
          v7 = 9;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"PinnedWidgetAdded"])
        {
          v7 = 10;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"PinnedWidgetDeleted"])
        {
          v7 = 11;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"SpecialPageAppeared"])
        {
          v7 = 12;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"SpecialPageDisappeared"])
        {
          v7 = 13;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"StackShown"])
        {
          v7 = 14;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"StackDisappeared"])
        {
          v7 = 15;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"StackCreated"])
        {
          v7 = 16;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"StackDeleted"])
        {
          v7 = 17;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"WidgetAddedToStack"])
        {
          v7 = 18;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"WidgetRemovedFromStack"])
        {
          v7 = 19;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"StackVisibilityChanged"])
        {
          v7 = 20;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"AppAdded"])
        {
          v7 = 21;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"AppRemoved"])
        {
          v7 = 22;
        }

        else
        {
          v7 = 0;
        }

        if ((v7 & 0xFFFFFFFD) != 4)
        {
          goto LABEL_14;
        }
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

LABEL_17:

    goto LABEL_18;
  }

  v8 = 0;
LABEL_18:

  return v8 & 1;
}

- (void)_addToHistogramForWidgetsInEvent:(id)event type:(unint64_t)type
{
  metadata = [event metadata];
  stacks = [metadata stacks];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__ATXHomeScreenWidgetFeedbackProcessor__addToHistogramForWidgetsInEvent_type___block_invoke;
  v8[3] = &unk_278598B58;
  v8[4] = self;
  v8[5] = type;
  [stacks enumerateKeysAndObjectsUsingBlock:v8];
}

void __78__ATXHomeScreenWidgetFeedbackProcessor__addToHistogramForWidgetsInEvent_type___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = __atxlog_handle_home_screen(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __78__ATXHomeScreenWidgetFeedbackProcessor__addToHistogramForWidgetsInEvent_type___block_invoke_cold_1(v4);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = [v4 extensionBundleId];
  [v6 addEventForWidgetBundleId:v7 type:*(a1 + 40)];
}

- (void)_updateHistogramForEvent:(id)event
{
  eventCopy = event;
  eventTypeString = [eventCopy eventTypeString];
  if ([eventTypeString isEqualToString:@"Unknown"])
  {
    goto LABEL_2;
  }

  if ([eventTypeString isEqualToString:@"HomeScreenPageShown"])
  {

    [(ATXHomeScreenWidgetFeedbackProcessor *)self _addToHistogramForWidgetsInEvent:eventCopy type:2];
    objc_storeStrong(&self->_lastPageAppearEvent, event);
    goto LABEL_6;
  }

  if ([eventTypeString isEqualToString:@"HomeScreenDisappeared"])
  {

    lastPageAppearEvent = self->_lastPageAppearEvent;
    v7 = eventCopy;
    if (lastPageAppearEvent)
    {
      metadata = [(ATXHomeScreenEvent *)lastPageAppearEvent metadata];
      pageIndex = [metadata pageIndex];
      metadata2 = [eventCopy metadata];
      pageIndex2 = [metadata2 pageIndex];
      v12 = [pageIndex isEqual:pageIndex2];

      v7 = eventCopy;
      if (v12)
      {
        date = [eventCopy date];
        date2 = [(ATXHomeScreenEvent *)self->_lastPageAppearEvent date];
        [date timeIntervalSinceDate:date2];
        v16 = v15;

        if (v16 > 5.0)
        {
          [(ATXHomeScreenWidgetFeedbackProcessor *)self _addToHistogramForWidgetsInEvent:eventCopy type:1];
        }

        v17 = self->_lastPageAppearEvent;
        self->_lastPageAppearEvent = 0;

        goto LABEL_6;
      }
    }

    goto LABEL_7;
  }

  if ([eventTypeString isEqualToString:@"StackChanged"])
  {

    reason = [eventCopy reason];
    v19 = NSStringForATXHomeScreenStackChangeReason();
    v20 = [reason isEqualToString:v19];

    if (v20)
    {
      v21 = 3;
    }

    else
    {
      reason2 = [eventCopy reason];
      v27 = NSStringForATXHomeScreenStackChangeReason();
      v28 = [reason2 isEqualToString:v27];

      if (v28)
      {
        v21 = 4;
      }

      else
      {
        reason3 = [eventCopy reason];
        v34 = NSStringForATXHomeScreenStackChangeReason();
        v35 = [reason3 isEqualToString:v34];

        if (v35)
        {
          v21 = 5;
        }

        else
        {
          reason4 = [eventCopy reason];
          v37 = NSStringForATXHomeScreenStackChangeReason();
          v38 = [reason4 isEqualToString:v37];

          if (!v38)
          {
LABEL_39:
            widgetFeedback = self->_widgetFeedback;
            eventTypeString = [eventCopy widgetBundleId];
            v23 = widgetFeedback;
            v24 = eventTypeString;
            v25 = 2;
            goto LABEL_40;
          }

          v21 = 6;
        }
      }
    }

    v39 = self->_widgetFeedback;
    widgetBundleId = [eventCopy widgetBundleId];
    [(ATXHomeScreenWidgetFeedback *)v39 addEventForWidgetBundleId:widgetBundleId type:v21];

    goto LABEL_39;
  }

  if ([eventTypeString isEqualToString:@"WidgetTapped"])
  {

    v22 = self->_widgetFeedback;
    eventTypeString = [eventCopy widgetBundleId];
    v23 = v22;
    v24 = eventTypeString;
    v25 = 0;
LABEL_40:
    [(ATXHomeScreenWidgetFeedback *)v23 addEventForWidgetBundleId:v24 type:v25];
    goto LABEL_3;
  }

  if ([eventTypeString isEqualToString:@"WidgetLongLook"])
  {
LABEL_2:

LABEL_3:
LABEL_6:
    v7 = eventCopy;
    goto LABEL_7;
  }

  if (([eventTypeString isEqualToString:@"WidgetUserFeedback"] & 1) == 0)
  {
    if (([eventTypeString isEqualToString:@"UserStackConfigChanged"] & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"DeviceLocked") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"DeviceUnlocked") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"PinnedWidgetAdded") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"PinnedWidgetDeleted") & 1) == 0)
    {
      if ([eventTypeString isEqualToString:@"SpecialPageAppeared"])
      {

        lastPageAppearEvent = [(ATXHomeScreenWidgetFeedbackProcessor *)self _addToHistogramForWidgetsInEvent:eventCopy type:2];
        goto LABEL_6;
      }

      if (([eventTypeString isEqualToString:@"SpecialPageDisappeared"] & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackShown") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackDisappeared") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackCreated") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackDeleted") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"WidgetAddedToStack") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"WidgetRemovedFromStack") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackVisibilityChanged") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"AppAdded") & 1) == 0)
      {
        [eventTypeString isEqualToString:@"AppRemoved"];
      }
    }

    goto LABEL_2;
  }

  reason5 = [eventCopy reason];
  v30 = NSStringForATXHomeScreenWidgetExplicitFeedback();
  v31 = [reason5 isEqualToString:v30];

  v7 = eventCopy;
  if (v31)
  {
    v32 = self->_widgetFeedback;
    eventTypeString = [eventCopy widgetBundleId];
    v23 = v32;
    v24 = eventTypeString;
    v25 = 7;
    goto LABEL_40;
  }

LABEL_7:

  MEMORY[0x2821F96F8](lastPageAppearEvent, v7);
}

+ (id)_retrieveLastHistogramUpdateDate
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = [v3 objectForKey:@"HomeScreenLastEventDateProcessedForHistograms"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v6 = __atxlog_handle_home_screen(isKindOfClass);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[(ATXHomeScreenWidgetFeedbackProcessor *)v6];
    }

    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];

    v4 = v7;
  }

  return v4;
}

+ (void)_storeLastHistogramUpdateDate:(id)date
{
  v3 = MEMORY[0x277CBEBD0];
  dateCopy = date;
  v5 = [v3 alloc];
  v6 = [v5 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v6 setObject:dateCopy forKey:@"HomeScreenLastEventDateProcessedForHistograms"];
}

- (ATXHomeScreenWidgetFeedbackProcessor)init
{
  v3 = objc_opt_new();
  v4 = +[ATXHomeScreenWidgetFeedbackProcessor _retrieveLastHistogramUpdateDate];
  [v4 timeIntervalSinceReferenceDate];
  v5 = [v3 genericEventPublisherFromStartTime:?];

  v6 = objc_opt_new();
  v7 = [(ATXHomeScreenWidgetFeedbackProcessor *)self initWithWidgetFeedback:v6 publisher:v5];

  return v7;
}

- (ATXHomeScreenWidgetFeedbackProcessor)initWithWidgetFeedback:(id)feedback publisher:(id)publisher
{
  feedbackCopy = feedback;
  publisherCopy = publisher;
  v12.receiver = self;
  v12.super_class = ATXHomeScreenWidgetFeedbackProcessor;
  v9 = [(ATXHomeScreenWidgetFeedbackProcessor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_widgetFeedback, feedback);
    objc_storeStrong(&v10->_publisher, publisher);
  }

  return v10;
}

- (void)updateHistogramsForRecentHomeScreenEvents
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__17;
  v9[4] = __Block_byref_object_dispose__17;
  v10 = 0;
  objc_initWeak(&location, self);
  v3 = [(BPSPublisher *)self->_publisher filterWithIsIncluded:&__block_literal_global_36];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke_2;
  v7[3] = &unk_278597540;
  v7[4] = v9;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke_27;
  v5[3] = &unk_278598B80;
  objc_copyWeak(&v6, &location);
  v5[4] = v9;
  v4 = [v3 sinkWithCompletion:v7 receiveInput:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(v9, 8);
}

BOOL __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [ATXHomeScreenWidgetFeedbackProcessor _shouldProcessEvent:v2];

  return v3;
}

void __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = __atxlog_handle_home_screen(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke_2_cold_1(v3);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenWidgetFeedbackProcessor: Histograms updated for recent home screen events", v7, 2u);
  }

  [ATXHomeScreenWidgetFeedbackProcessor _storeLastHistogramUpdateDate:*(*(*(a1 + 32) + 8) + 40)];
}

void __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 eventBody];
    v6 = [v5 homeScreenEvent];

    if (v6)
    {
      [WeakRetained _updateHistogramForEvent:v6];
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = [v6 date];
      v10 = v9;
      if (v8)
      {
        v11 = [v9 laterDate:*(*(*(a1 + 32) + 8) + 40)];
      }

      else
      {
        v11 = v9;
      }

      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v11);
      if (v8)
      {
      }
    }

    else
    {
      v12 = __atxlog_handle_home_screen(v7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke_27_cold_1(v12);
      }
    }
  }
}

void __78__ATXHomeScreenWidgetFeedbackProcessor__addToHistogramForWidgetsInEvent_type___block_invoke_cold_1(void *a1)
{
  v1 = [a1 dictionaryRepresentation];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "ATXHomeScreenWidgetFeedbackProcessor: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke_2_cold_1(void *a1)
{
  v1 = [a1 error];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "ATXHomeScreenWidgetFeedbackProcessor: Error while updating histograms for recent home screen events: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end