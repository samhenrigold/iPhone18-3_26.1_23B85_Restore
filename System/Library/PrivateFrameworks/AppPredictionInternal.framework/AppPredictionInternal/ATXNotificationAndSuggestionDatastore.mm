@interface ATXNotificationAndSuggestionDatastore
- (ATXNotificationAndSuggestionDatastore)initWithNotificationAndSuggestionDatabase:(id)database createBookmark:(id)bookmark updateBookmark:(id)updateBookmark notificationEventPublisher:(id)publisher suggestionPublisher:(id)suggestionPublisher suggestionInteractionEventPublisher:(id)eventPublisher notificationGroupEventPublisher:(id)groupEventPublisher notificationDeliveryEventPublisher:(id)self0;
- (id)_fetchBookmarkFromDbWithName:(id)name version:(unint64_t)version;
- (id)_notificationDeliveryEventPublisher;
- (id)_notificationEventPublisher;
- (id)_notificationGroupEventPublisher;
- (id)_serializeBookmark:(id)bookmark withVersion:(unint64_t)version;
- (id)_suggestionInteractionEventPublisher;
- (id)_suggestionPublisher;
- (id)allNotificationsBetweenStartTimestamp:(id)timestamp endTimestamp:(id)endTimestamp limit:(unint64_t)limit;
- (id)deleteAllData;
- (id)mergedInputEventStreamForInsert;
- (id)mergedInputEventStreamForUpdates;
- (id)notificationsReceivedPerBundleIdSinceDate:(id)date;
- (void)notificationAndSuggestionDatastorePerfMetricsLogging;
- (void)numberOfActiveNotificationsWithCompletionHandler:(id)handler;
- (void)pruneDatabaseWithXPCActivity:(id)activity;
- (void)updateDatabase;
- (void)updateDatabaseForEvent:(id)event;
- (void)updateDatabaseForNotificationEvent:(id)event;
@end

@implementation ATXNotificationAndSuggestionDatastore

- (id)mergedInputEventStreamForInsert
{
  v8[1] = *MEMORY[0x277D85DE8];
  _notificationEventPublisher = [(ATXNotificationAndSuggestionDatastore *)self _notificationEventPublisher];
  _suggestionPublisher = [(ATXNotificationAndSuggestionDatastore *)self _suggestionPublisher];
  v8[0] = _suggestionPublisher;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = [(ATXNotificationAndSuggestionDatastore *)self _timeBasedMergePublisher:_notificationEventPublisher withOtherPublishers:v5];

  return v6;
}

- (id)mergedInputEventStreamForUpdates
{
  v9[2] = *MEMORY[0x277D85DE8];
  _suggestionInteractionEventPublisher = [(ATXNotificationAndSuggestionDatastore *)self _suggestionInteractionEventPublisher];
  _notificationGroupEventPublisher = [(ATXNotificationAndSuggestionDatastore *)self _notificationGroupEventPublisher];
  _notificationDeliveryEventPublisher = [(ATXNotificationAndSuggestionDatastore *)self _notificationDeliveryEventPublisher];
  v9[0] = _suggestionInteractionEventPublisher;
  v9[1] = _notificationGroupEventPublisher;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v7 = [(ATXNotificationAndSuggestionDatastore *)self _timeBasedMergePublisher:_notificationDeliveryEventPublisher withOtherPublishers:v6];

  return v7;
}

uint64_t __86__ATXNotificationAndSuggestionDatastore__timeBasedMergePublisher_withOtherPublishers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)_notificationEventPublisher
{
  notificationEventPublisher = self->_notificationEventPublisher;
  if (!notificationEventPublisher)
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 publisherFromStartTime:?];
    v7 = self->_notificationEventPublisher;
    self->_notificationEventPublisher = v6;

    notificationEventPublisher = self->_notificationEventPublisher;
  }

  return notificationEventPublisher;
}

- (id)_suggestionPublisher
{
  suggestionPublisher = self->_suggestionPublisher;
  if (!suggestionPublisher)
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 publisherFromStartTime:?];
    v7 = self->_suggestionPublisher;
    self->_suggestionPublisher = v6;

    suggestionPublisher = self->_suggestionPublisher;
  }

  return suggestionPublisher;
}

- (id)_suggestionInteractionEventPublisher
{
  suggestionInteractionEventPublisher = self->_suggestionInteractionEventPublisher;
  if (!suggestionInteractionEventPublisher)
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 publisherFromStartTime:?];
    v7 = self->_suggestionInteractionEventPublisher;
    self->_suggestionInteractionEventPublisher = v6;

    suggestionInteractionEventPublisher = self->_suggestionInteractionEventPublisher;
  }

  return suggestionInteractionEventPublisher;
}

- (id)_notificationGroupEventPublisher
{
  notificationGroupEventPublisher = self->_notificationGroupEventPublisher;
  if (!notificationGroupEventPublisher)
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 publisherFromStartTime:?];
    v7 = self->_notificationGroupEventPublisher;
    self->_notificationGroupEventPublisher = v6;

    notificationGroupEventPublisher = self->_notificationGroupEventPublisher;
  }

  return notificationGroupEventPublisher;
}

- (id)_notificationDeliveryEventPublisher
{
  notificationDeliveryEventPublisher = self->_notificationDeliveryEventPublisher;
  if (!notificationDeliveryEventPublisher)
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 publisherFromStartTime:?];
    v7 = self->_notificationDeliveryEventPublisher;
    self->_notificationDeliveryEventPublisher = v6;

    notificationDeliveryEventPublisher = self->_notificationDeliveryEventPublisher;
  }

  return notificationDeliveryEventPublisher;
}

- (void)updateDatabaseForEvent:(id)event
{
  eventCopy = event;
  eventBody = [eventCopy eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  eventBody2 = [eventCopy eventBody];
  if (isKindOfClass)
  {
    [(ATXNotificationAndSuggestionDatastore *)self updateDatabaseForNotificationEvent:eventBody2];
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    eventBody2 = [eventCopy eventBody];
    if (v8)
    {
      [(ATXNotificationAndSuggestionDatabase *)self->_db insertSuggestion:eventBody2];
    }

    else
    {
      objc_opt_class();
      v9 = objc_opt_isKindOfClass();

      eventBody2 = [eventCopy eventBody];
      if (v9)
      {
        [(ATXNotificationAndSuggestionDatabase *)self->_db updateSuggestionFromEvent:eventBody2];
      }

      else
      {
        objc_opt_class();
        v10 = objc_opt_isKindOfClass();

        eventBody3 = [eventCopy eventBody];
        eventBody2 = eventBody3;
        if (v10)
        {
          if ([eventBody3 eventType]== 3)
          {
            [(ATXNotificationAndSuggestionDatabase *)self->_db setAllNotificationsToClearedExceptProminent];
          }

          else if ([eventBody2 eventType]== 15)
          {
            [(ATXNotificationAndSuggestionDatabase *)self->_db setAllNotificationsToModified];
          }
        }

        else
        {
          objc_opt_class();
          v12 = objc_opt_isKindOfClass();

          if (v12)
          {
            eventBody2 = [eventCopy eventBody];
            db = self->_db;
            suggestionUUIDs = [eventBody2 suggestionUUIDs];
            [(ATXNotificationAndSuggestionDatabase *)db updateNotificationUIForNotifications:suggestionUUIDs nextUI:[eventBody2 deliveryUI]];
          }

          else
          {
            eventBody2 = __atxlog_handle_default(v13);
            if (os_log_type_enabled(eventBody2, OS_LOG_TYPE_FAULT))
            {
              [ATXNotificationAndSuggestionDatastore updateDatabaseForEvent:];
            }
          }
        }
      }
    }
  }
}

- (void)updateDatabaseForNotificationEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isReceiveEvent])
  {
    eventType = [eventCopy eventType];
    v6 = 1;
    if (eventType && eventType != 16)
    {
      if (eventType == 17)
      {
        v6 = 0;
      }

      else
      {
        v7 = __atxlog_handle_default(eventType);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationAndSuggestionDatastore updateDatabaseForNotificationEvent:];
        }

        v6 = 2;
      }
    }

    db = self->_db;
    modeUUID = [eventCopy modeUUID];
    uUIDString = [modeUUID UUIDString];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "deliveryReason")}];
    [(ATXNotificationAndSuggestionDatabase *)db insertNotificationFromEvent:eventCopy deliveryMethod:v6 modeIdentifier:uUIDString deliveryReason:v11];
  }

  else
  {
    [(ATXNotificationAndSuggestionDatabase *)self->_db updateNotificationFromEvent:eventCopy];
  }
}

- (ATXNotificationAndSuggestionDatastore)initWithNotificationAndSuggestionDatabase:(id)database createBookmark:(id)bookmark updateBookmark:(id)updateBookmark notificationEventPublisher:(id)publisher suggestionPublisher:(id)suggestionPublisher suggestionInteractionEventPublisher:(id)eventPublisher notificationGroupEventPublisher:(id)groupEventPublisher notificationDeliveryEventPublisher:(id)self0
{
  databaseCopy = database;
  bookmarkCopy = bookmark;
  updateBookmarkCopy = updateBookmark;
  publisherCopy = publisher;
  suggestionPublisherCopy = suggestionPublisher;
  eventPublisherCopy = eventPublisher;
  groupEventPublisherCopy = groupEventPublisher;
  deliveryEventPublisherCopy = deliveryEventPublisher;
  v32.receiver = self;
  v32.super_class = ATXNotificationAndSuggestionDatastore;
  v20 = [(ATXNotificationAndSuggestionDatastore *)&v32 init];
  if (v20)
  {
    if (databaseCopy)
    {
      v21 = databaseCopy;
    }

    else
    {
      v21 = objc_opt_new();
    }

    db = v20->_db;
    v20->_db = v21;

    if (bookmarkCopy)
    {
      publisherCopy = bookmarkCopy;
    }

    else
    {
      publisherCopy = [(ATXNotificationAndSuggestionDatastore *)v20 _fetchBookmarkFromDbWithName:@"ATXNotificationAndSuggestionDatastore_bookmark" version:2, groupEventPublisherCopy, eventPublisherCopy, suggestionPublisherCopy, publisherCopy];
    }

    insertionBookmark = v20->_insertionBookmark;
    v20->_insertionBookmark = publisherCopy;

    if (updateBookmarkCopy)
    {
      v25 = updateBookmarkCopy;
    }

    else
    {
      v25 = [(ATXNotificationAndSuggestionDatastore *)v20 _fetchBookmarkFromDbWithName:@"ATXNotificationAndSuggestionDatastoreUpdate_bookmark" version:1];
    }

    updateBookmark = v20->_updateBookmark;
    v20->_updateBookmark = v25;

    objc_storeStrong(&v20->_notificationEventPublisher, publisher);
    objc_storeStrong(&v20->_suggestionPublisher, suggestionPublisher);
    objc_storeStrong(&v20->_suggestionInteractionEventPublisher, eventPublisher);
    objc_storeStrong(&v20->_notificationGroupEventPublisher, groupEventPublisher);
    objc_storeStrong(&v20->_notificationDeliveryEventPublisher, deliveryEventPublisher);
  }

  return v20;
}

- (id)_fetchBookmarkFromDbWithName:(id)name version:(unint64_t)version
{
  nameCopy = name;
  v7 = [(ATXNotificationAndSuggestionDatabase *)self->_db getBookmarkDataFromName:nameCopy];
  if (v7)
  {
    v8 = MEMORY[0x277CEBBF8];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
    v10 = [v8 bookmarkFromData:v7 bookmarkLocation:nameCopy versionNumber:v9];

    bookmark = [v10 bookmark];
  }

  else
  {
    bookmark = 0;
  }

  return bookmark;
}

- (id)_serializeBookmark:(id)bookmark withVersion:(unint64_t)version
{
  v5 = MEMORY[0x277CEBBF8];
  bookmarkCopy = bookmark;
  v7 = [v5 alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
  v9 = [v7 initWithURLPath:0 versionNumber:v8 bookmark:bookmarkCopy metadata:0];

  v16 = 0;
  v10 = [v9 serializeBookmark:&v16];
  v11 = v16;
  v12 = v11;
  if (v11)
  {
    v13 = __atxlog_handle_default(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationAndSuggestionDatastore _serializeBookmark:withVersion:];
    }

    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  return v14;
}

- (void)updateDatabase
{
  mergedInputEventStreamForInsert = [(ATXNotificationAndSuggestionDatastore *)self mergedInputEventStreamForInsert];
  insertionBookmark = self->_insertionBookmark;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke;
  v12[3] = &unk_278596E58;
  v12[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_2;
  v11[3] = &unk_27859FE58;
  v11[4] = self;
  v5 = [mergedInputEventStreamForInsert sinkWithBookmark:insertionBookmark completion:v12 receiveInput:v11];

  mergedInputEventStreamForUpdates = [(ATXNotificationAndSuggestionDatastore *)self mergedInputEventStreamForUpdates];
  updateBookmark = self->_updateBookmark;
  v9[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_46;
  v10[3] = &unk_278596E58;
  v10[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_2_47;
  v9[3] = &unk_27859FE58;
  v8 = [mergedInputEventStreamForUpdates sinkWithBookmark:updateBookmark completion:v10 receiveInput:v9];
}

void __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = [*(a1 + 32) _serializeBookmark:v4 withVersion:2];
  [*(*(a1 + 32) + 8) setBookmarkData:v7 forName:@"ATXNotificationAndSuggestionDatastore_bookmark"];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
}

void __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [*(a1 + 32) updateDatabaseForEvent:v3];
  }

  else
  {
    v5 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_2_cold_1();
    }
  }
}

void __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_46(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = [*(a1 + 32) _serializeBookmark:v4 withVersion:1];
  [*(*(a1 + 32) + 8) setBookmarkData:v7 forName:@"ATXNotificationAndSuggestionDatastoreUpdate_bookmark"];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;
}

void __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_2_47(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [*(a1 + 32) updateDatabaseForEvent:v3];
  }

  else
  {
    v5 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_2_cold_1();
    }
  }
}

- (void)numberOfActiveNotificationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(ATXNotificationAndSuggestionDatastore *)self updateDatabase];
  [(ATXNotificationAndSuggestionDatabase *)self->_db numberOfActiveNotificationsWithCompletionHandler:handlerCopy];
}

- (id)allNotificationsBetweenStartTimestamp:(id)timestamp endTimestamp:(id)endTimestamp limit:(unint64_t)limit
{
  timestampCopy = timestamp;
  endTimestampCopy = endTimestamp;
  if (timestampCopy)
  {
    distantPast = timestampCopy;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v11 = distantPast;
  if (endTimestampCopy)
  {
    distantFuture = endTimestampCopy;
  }

  else
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v13 = distantFuture;
  v14 = [(ATXNotificationAndSuggestionDatabase *)self->_db allNotificationsBetweenStartTimestamp:v11 endTimestamp:distantFuture limit:limit];

  return v14;
}

- (id)notificationsReceivedPerBundleIdSinceDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (dateCopy)
  {
    distantPast = dateCopy;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v7 = distantPast;
  v8 = [(ATXNotificationAndSuggestionDatabase *)self->_db notificationsReceivedPerBundleIdSinceDate:distantPast];

  return v8;
}

- (id)deleteAllData
{
  insertionBookmark = self->_insertionBookmark;
  self->_insertionBookmark = 0;

  updateBookmark = self->_updateBookmark;
  self->_updateBookmark = 0;

  db = self->_db;

  return [(ATXNotificationAndSuggestionDatabase *)db deleteAllData];
}

- (void)pruneDatabaseWithXPCActivity:(id)activity
{
  v66 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  timeIntervalSinceReferenceDate = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = __atxlog_handle_notification_management(timeIntervalSinceReferenceDate);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138412546;
    v63 = v10;
    v64 = 2048;
    v65 = v7;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "[%@] Pruning database given current time %f", buf, 0x16u);
  }

  [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"_ATXNotificationStore.db"];
  v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v60 = 0;
  v13 = [defaultManager removeItemAtPath:*&v11 error:&v60];
  v14 = v60;
  v15 = v14;
  if ((v13 & 1) != 0 || !v14)
  {
    v22 = __atxlog_handle_notification_management(v14);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v63 = "[ATXNotificationAndSuggestionDatastore pruneDatabaseWithXPCActivity:]";
      v64 = 2112;
      v65 = v11;
      _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "%s: Migration step 10: Deleted old database at %@", buf, 0x16u);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    appPredictionDirectory = [MEMORY[0x277CEBCB0] appPredictionDirectory];
    v21 = [defaultManager contentsOfDirectoryAtPath:appPredictionDirectory error:0];

    v24 = [v21 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v24)
    {
      v25 = v24;
      v54 = v15;
      v55 = activityCopy;
      v26 = v11;
      v27 = *v57;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v57 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v56 + 1) + 8 * i);
          if ([v29 hasPrefix:{@"_ATXNotificationStore.db", v54, v55}])
          {
            v30 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:v29];
            [defaultManager removeItemAtPath:v30 error:0];
          }
        }

        v25 = [v21 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v25);
      v11 = v26;
      v15 = v54;
      activityCopy = v55;
    }

    v20 = &off_226871000;
  }

  else
  {
    userInfo = [v14 userInfo];
    v17 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
    code = [v17 code];

    v20 = &off_226871000;
    if (code == 2)
    {
      goto LABEL_22;
    }

    v21 = __atxlog_handle_notification_management(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationAndSuggestionDatastore *)*&v11 pruneDatabaseWithXPCActivity:v15, v21];
    }
  }

LABEL_22:
  v31 = __atxlog_handle_notification_management(v19);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    *buf = *(v20 + 414);
    v63 = v33;
    v64 = 2048;
    v65 = v7 + -5184000.0;
    _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_INFO, "[%@] Pruning notifications with cutoff time %f", buf, 0x16u);
  }

  v34 = [(ATXNotificationAndSuggestionDatastore *)self pruneNotificationsBeforeTimestamp:v7 + -5184000.0];
  didDefer = [activityCopy didDefer];
  if (didDefer)
  {
    v36 = __atxlog_handle_notification_management(didDefer);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *buf = 138412290;
      v63 = v38;
      _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_INFO, "[%@] XPC Activity deferred, skipping remaining work.", buf, 0xCu);
    }
  }

  v39 = v7 + -31536000.0;
  v40 = __atxlog_handle_notification_management(didDefer);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    *buf = *(v20 + 414);
    v63 = v42;
    v64 = 2048;
    v65 = v39;
    _os_log_impl(&dword_2263AA000, v40, OS_LOG_TYPE_INFO, "[%@] Pruning suggestions with cutoff time %f", buf, 0x16u);
  }

  v43 = [(ATXNotificationAndSuggestionDatastore *)self pruneSuggestionsBeforeTimestamp:v39];
  didDefer2 = [activityCopy didDefer];
  if (didDefer2)
  {
    v45 = __atxlog_handle_notification_management(didDefer2);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      *buf = 138412290;
      v63 = v47;
      _os_log_impl(&dword_2263AA000, v45, OS_LOG_TYPE_INFO, "[%@] XPC Activity deferred, skipping remaining work.", buf, 0xCu);
    }
  }

  v48 = __atxlog_handle_notification_management(didDefer2);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    *buf = 138412290;
    v63 = v50;
    _os_log_impl(&dword_2263AA000, v48, OS_LOG_TYPE_INFO, "[%@] Vacuuming database", buf, 0xCu);
  }

  v51 = __atxlog_handle_notification_management([(ATXNotificationAndSuggestionDatastore *)self vacuumDatabase]);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    *buf = 138412290;
    v63 = v53;
    _os_log_impl(&dword_2263AA000, v51, OS_LOG_TYPE_INFO, "[%@] Finished pruning and vacuuming database", buf, 0xCu);
  }
}

- (void)notificationAndSuggestionDatastorePerfMetricsLogging
{
  v9[2] = *MEMORY[0x277D85DE8];
  notificationAndSuggestionDatastorePerfMetrics = [(ATXNotificationAndSuggestionDatabase *)self->_db notificationAndSuggestionDatastorePerfMetrics];
  v4 = v3;
  v8[0] = @"notificationsCount";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:notificationAndSuggestionDatastorePerfMetrics];
  v8[1] = @"suggestionsCount";
  v9[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  v9[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  AnalyticsSendEvent();
}

- (void)updateDatabaseForEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_8_1() eventBody];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_13(&dword_2263AA000, v5, v6, "[%@] - Encountered unknown event type: %@", v7, v8, v9, v10);
}

- (void)updateDatabaseForNotificationEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_8_1() eventType];
  v2 = ATXNEventTypeToString();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_13(&dword_2263AA000, v3, v4, "[%@] Received unexpected notification receive event type %@", v5, v6, v7, v8);
}

- (void)_serializeBookmark:withVersion:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = v1;
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "%@ – failed to serialize bookmark.  Error: %@", &v4, 0x16u);
}

void __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_1();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_13(&dword_2263AA000, v4, v5, "[%@] Expected a BMStoreEvent, but received a %@", v6, v7, v8, v9);
}

- (void)pruneDatabaseWithXPCActivity:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[ATXNotificationAndSuggestionDatastore pruneDatabaseWithXPCActivity:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Failed to delete: %@ with error: %@", &v3, 0x20u);
}

@end