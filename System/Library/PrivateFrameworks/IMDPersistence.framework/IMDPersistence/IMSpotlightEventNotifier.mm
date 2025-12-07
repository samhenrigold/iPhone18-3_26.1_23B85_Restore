@interface IMSpotlightEventNotifier
+ (id)sharedNotifier;
- (id)_displayStringForReason:(int64_t)reason;
- (id)_formatDate:(id)date;
- (void)_presentNotificationWithMessage:(id)message newState:(id)state verbose:(BOOL)verbose;
- (void)deferredReindexScheduled;
- (void)reindexCompletedWithState:(id)state reason:(int64_t)reason;
- (void)reindexInitiatedWithTotalMessages:(int64_t)messages reason:(int64_t)reason;
- (void)reindexPausedWithState:(id)state reason:(int64_t)reason;
- (void)reindexResumedWithState:(id)state reason:(int64_t)reason;
- (void)reindexSuspendedUntilDate:(id)date withError:(id)error;
@end

@implementation IMSpotlightEventNotifier

+ (id)sharedNotifier
{
  if (qword_1EDBE5C28 != -1)
  {
    sub_1B7CFB5A8();
  }

  if (qword_1EDBE5C30 && objc_msgSend_notifyForSpotlightEvents(MEMORY[0x1E69A7FF8], a2, v2, v3))
  {
    v4 = qword_1EDBE5C30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_displayStringForReason:(int64_t)reason
{
  v3 = NSStringFromIMCoreSpotlightIndexReason();
  if (objc_msgSend_hasPrefix_(v3, v4, @"IMCoreSpotlightIndexReason", v5))
  {
    v9 = objc_msgSend_length(@"IMCoreSpotlightIndexReason", v6, v7, v8);
    v12 = objc_msgSend_substringFromIndex_(v3, v10, v9, v11);

    v3 = v12;
  }

  return v3;
}

- (void)_presentNotificationWithMessage:(id)message newState:(id)state verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  messageCopy = message;
  stateCopy = state;
  if (!verboseCopy || objc_msgSend_notifyForVerboseSpotlightEvents(MEMORY[0x1E69A7FF8], v7, v8, v9))
  {
    v11 = objc_alloc(MEMORY[0x1E69A8028]);
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"Messages Indexing %@", v13, stateCopy);
    v16 = objc_msgSend_initWithTitle_body_(v11, v15, v14, messageCopy);

    v20 = objc_msgSend_spotlightEventsAreTimeSensitive(MEMORY[0x1E69A7FF8], v17, v18, v19);
    objc_msgSend_setTimeSensitive_(v16, v21, v20, v22);
    v23 = objc_alloc_init(MEMORY[0x1E69A8030]);
    objc_msgSend_postNotification_(v23, v24, v16, v25);
  }
}

- (void)deferredReindexScheduled
{
  v5 = MEMORY[0x1E696AEC0];
  v10 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, v2, v3);
  v8 = objc_msgSend_stringWithFormat_(v5, v6, @"Full reindex requested by Spotlight at %@, scheduled to run later.", v7, v10);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v9, v8, @"Scheduled", 0);
}

- (id)_formatDate:(id)date
{
  if (date)
  {
    v3 = MEMORY[0x1E696AB78];
    dateCopy = date;
    v5 = objc_alloc_init(v3);
    objc_msgSend_setDateStyle_(v5, v6, 1, v7);
    objc_msgSend_setTimeStyle_(v5, v8, 2, v9);
    v12 = objc_msgSend_stringFromDate_(v5, v10, dateCopy, v11);
  }

  else
  {
    v12 = @"(nil)";
  }

  return v12;
}

- (void)reindexCompletedWithState:(id)state reason:(int64_t)reason
{
  v6 = MEMORY[0x1E696AEC0];
  stateCopy = state;
  v29 = objc_msgSend_indexBeginDate(stateCopy, v8, v9, v10);
  v13 = objc_msgSend__formatDate_(self, v11, v29, v12);
  v16 = objc_msgSend__displayStringForReason_(self, v14, reason, v15);
  v20 = objc_msgSend_initialIndexedMessages(stateCopy, v17, v18, v19);
  v24 = objc_msgSend_initialTotalMessages(stateCopy, v21, v22, v23);

  v27 = objc_msgSend_stringWithFormat_(v6, v25, @"Indexing initially began %@ due to %@. Indexed %lld/%lld messages.", v26, v13, v16, v20, v24);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v28, v27, @"Finished", 0);
}

- (void)reindexInitiatedWithTotalMessages:(int64_t)messages reason:(int64_t)reason
{
  v6 = MEMORY[0x1E696AEC0];
  v11 = objc_msgSend__displayStringForReason_(self, a2, reason, reason);
  v9 = objc_msgSend_stringWithFormat_(v6, v7, @"Initiating reindex of %lld messages due to %@.", v8, messages, v11);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v10, v9, @"Initiated", 0);
}

- (void)reindexResumedWithState:(id)state reason:(int64_t)reason
{
  v6 = MEMORY[0x1E696AEC0];
  stateCopy = state;
  v29 = objc_msgSend_indexBeginDate(stateCopy, v8, v9, v10);
  v13 = objc_msgSend__formatDate_(self, v11, v29, v12);
  v16 = objc_msgSend__displayStringForReason_(self, v14, reason, v15);
  v20 = objc_msgSend_initialIndexedMessages(stateCopy, v17, v18, v19);
  v24 = objc_msgSend_initialTotalMessages(stateCopy, v21, v22, v23);

  v27 = objc_msgSend_stringWithFormat_(v6, v25, @"Resuming indexing, which initially began %@ due to %@. Indexed %lld/%lld messages.", v26, v13, v16, v20, v24);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v28, v27, @"Resumed", 1);
}

- (void)reindexPausedWithState:(id)state reason:(int64_t)reason
{
  v6 = MEMORY[0x1E696AEC0];
  stateCopy = state;
  v29 = objc_msgSend_indexBeginDate(stateCopy, v8, v9, v10);
  v13 = objc_msgSend__formatDate_(self, v11, v29, v12);
  v16 = objc_msgSend__displayStringForReason_(self, v14, reason, v15);
  v20 = objc_msgSend_initialIndexedMessages(stateCopy, v17, v18, v19);
  v24 = objc_msgSend_initialTotalMessages(stateCopy, v21, v22, v23);

  v27 = objc_msgSend_stringWithFormat_(v6, v25, @"Reindexing paused, which initially began %@ due to %@. Indexed %lld/%lld messages.", v26, v13, v16, v20, v24);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v28, v27, @"Paused", 1);
}

- (void)reindexSuspendedUntilDate:(id)date withError:(id)error
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Reindexing suspended until %@ due to an error.\n\n%@", error, date, error);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v5, v6, @"Suspended", 1);
}

@end