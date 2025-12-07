@interface IMDIndexThrottlingController
+ (id)sharedController;
- (BOOL)_cleanup;
- (BOOL)_isThrottled;
- (BOOL)isThrottled;
- (BOOL)shouldDeferIndexingActionWithContext:(id)context;
- (IMDIndexThrottlingController)init;
- (id)_nextExpiringThrottle;
- (id)_stringForThrottleState:(int64_t)state;
- (int64_t)_calculateThrottleState;
- (void)_beginThrottlingForIdentifier:(id)identifier untilDate:(id)date;
- (void)_cleanupAndSaveOnlyIfCleanedUp:(BOOL)up;
- (void)_finishThrottlingForIdentifier:(id)identifier;
- (void)_reload;
- (void)_rescheduleTimer;
- (void)_updateThrottleState;
- (void)beginThrottlingForIdentifier:(id)identifier untilDate:(id)date;
- (void)finishThrottlingForIdentifier:(id)identifier;
- (void)isThrottledWithCompletionBlock:(id)block;
- (void)reload;
- (void)timerFired;
@end

@implementation IMDIndexThrottlingController

+ (id)sharedController
{
  if (qword_1EBA53AE8 != -1)
  {
    sub_1B7CFB6E0();
  }

  v3 = qword_1EBA53AB8;

  return v3;
}

- (IMDIndexThrottlingController)init
{
  v9.receiver = self;
  v9.super_class = IMDIndexThrottlingController;
  v2 = [(IMDIndexThrottlingController *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.IMDPersistence.IMDIndexThrottlingController", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    objc_msgSend_reload(v2, v5, v6, v7);
  }

  return v2;
}

- (void)reload
{
  v5 = objc_msgSend_queue(self, a2, v2, v3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BCA710;
  block[3] = &unk_1E7CB6AE0;
  block[4] = self;
  dispatch_barrier_sync(v5, block);
}

- (BOOL)isThrottled
{
  v10 = 0;
  v11[0] = &v10;
  v11[1] = 0x2020000000;
  v12 = 0;
  v5 = objc_msgSend_queue(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BCA828;
  v9[3] = &unk_1E7CBB6F0;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_barrier_sync(v5, v9);

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1B7CFB6F4(v11, v6);
  }

  v7 = *(v11[0] + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (void)isThrottledWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = dispatch_group_create();
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  dispatch_group_enter(v5);
  v9 = objc_msgSend_queue(self, v6, v7, v8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BCA9E8;
  block[3] = &unk_1E7CBC338;
  v17 = v5;
  v18 = v19;
  block[4] = self;
  v10 = v5;
  dispatch_barrier_async(v9, block);

  v11 = dispatch_get_global_queue(2, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BCAA30;
  v13[3] = &unk_1E7CBC388;
  v14 = blockCopy;
  v15 = v19;
  v12 = blockCopy;
  dispatch_group_notify(v10, v11, v13);

  _Block_object_dispose(v19, 8);
}

- (void)beginThrottlingForIdentifier:(id)identifier untilDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v11 = objc_msgSend_queue(self, v8, v9, v10);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BCAB74;
  block[3] = &unk_1E7CB6798;
  block[4] = self;
  v15 = identifierCopy;
  v16 = dateCopy;
  v12 = dateCopy;
  v13 = identifierCopy;
  dispatch_async(v11, block);
}

- (void)finishThrottlingForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = objc_msgSend_queue(self, v5, v6, v7);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BCAC38;
  v10[3] = &unk_1E7CB6770;
  v10[4] = self;
  v11 = identifierCopy;
  v9 = identifierCopy;
  dispatch_async(v8, v10);
}

- (BOOL)shouldDeferIndexingActionWithContext:(id)context
{
  contextCopy = context;
  v8 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6, v7);
  isBGSTMessageProcessingEnabled = objc_msgSend_isBGSTMessageProcessingEnabled(v8, v9, v10, v11);

  if (!isBGSTMessageProcessingEnabled)
  {
    goto LABEL_9;
  }

  if ((objc_msgSend_forceDeferral(contextCopy, v13, v14, v15) & 1) == 0)
  {
    objc_msgSend_reason(contextCopy, v16, v17, v18);
    if ((!IMCoreSpotlightIndexReasonIsCritical() || (objc_msgSend_allowCriticalThrottleBypass(MEMORY[0x1E69A7FF8], v20, v21, v22) & 1) == 0) && (objc_msgSend_ignoreThrottling(MEMORY[0x1E69A7FF8], v20, v21, v22) & 1) == 0 && (objc_msgSend_ignoreThrottle(contextCopy, v23, v24, v25) & 1) == 0 && (objc_msgSend_runningViaBGST(contextCopy, v26, v27, v28) & 1) == 0)
    {
      if (objc_msgSend_reason(contextCopy, v29, v30, v31) != 7 && objc_msgSend_reason(contextCopy, v33, v34, v35) != 1016 && objc_msgSend_reason(contextCopy, v36, v37, v38) != 1005)
      {
        isThrottled = objc_msgSend_isThrottled(self, v39, v40, v41);
        goto LABEL_10;
      }

      goto LABEL_3;
    }

LABEL_9:
    isThrottled = 0;
    goto LABEL_10;
  }

LABEL_3:
  isThrottled = 1;
LABEL_10:

  return isThrottled;
}

- (void)timerFired
{
  v5 = objc_msgSend_queue(self, a2, v2, v3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BCADC4;
  block[3] = &unk_1E7CB6AE0;
  block[4] = self;
  dispatch_async(v5, block);
}

- (BOOL)_isThrottled
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_throttles(self, a2, v2, v3);
  v9 = objc_msgSend_count(v5, v6, v7, v8);

  if (v9)
  {
    if (objc_msgSend_ignoreThrottling(MEMORY[0x1E69A7FF8], v10, v11, v12))
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v16 = objc_msgSend_date(MEMORY[0x1E695DF00], v13, v14, v15);
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v20 = objc_msgSend_throttles(self, v17, v18, v19, 0);
      v24 = objc_msgSend_allValues(v20, v21, v22, v23);

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v32, v36, 16);
      if (v9)
      {
        v28 = *v33;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v33 != v28)
            {
              objc_enumerationMutation(v24);
            }

            objc_msgSend_timeIntervalSinceDate_(*(*(&v32 + 1) + 8 * i), v26, v16, v27);
            if (v30 > 0.0)
            {
              LOBYTE(v9) = 1;
              goto LABEL_14;
            }
          }

          v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v32, v36, 16);
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  return v9;
}

- (int64_t)_calculateThrottleState
{
  if (objc_msgSend__isThrottled(self, a2, v2, v3))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)_stringForThrottleState:(int64_t)state
{
  v3 = @"unknown";
  if (state == 1)
  {
    v3 = @"throttled";
  }

  if (state == 2)
  {
    return @"not throttled";
  }

  else
  {
    return v3;
  }
}

- (void)_updateThrottleState
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_throttleState(self, a2, v2, v3);
  v9 = objc_msgSend__calculateThrottleState(self, v6, v7, v8);
  objc_msgSend_setThrottleState_(self, v10, v9, v11);
  if (v5 != v9)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = objc_msgSend__stringForThrottleState_(self, v15, v9, v16);
        v18 = 138412290;
        v19 = v17;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Throttle state changed to %@", &v18, 0xCu);
      }
    }

    objc_msgSend_setLastThrottleState_(IMIndexThrottleMonitor, v12, v9, v13);
  }
}

- (BOOL)_cleanup
{
  v5 = objc_msgSend_throttles(self, a2, v2, v3);
  v9 = objc_msgSend_count(v5, v6, v7, v8);

  if (!v9)
  {
    return 0;
  }

  v13 = objc_msgSend_date(MEMORY[0x1E695DF00], v10, v11, v12);
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = objc_msgSend_throttles(self, v15, v16, v17);
  v35 = MEMORY[0x1E69E9820];
  v36 = 3221225472;
  v37 = sub_1B7BCB274;
  v38 = &unk_1E7CBC3B0;
  v39 = v13;
  v19 = v14;
  v40 = v19;
  v20 = v13;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v18, v21, &v35, v22);

  v26 = objc_msgSend_count(v19, v23, v24, v25, v35, v36, v37, v38);
  v30 = v26 != 0;
  if (v26)
  {
    v31 = objc_msgSend_throttles(self, v27, v28, v29);
    objc_msgSend_removeObjectsForKeys_(v31, v32, v19, v33);
  }

  return v30;
}

- (void)_reload
{
  v13 = objc_msgSend_throttles(IMIndexThrottleMonitor, a2, v2, v3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v13;
  }

  else
  {

    v8 = MEMORY[0x1E695E0F8];
  }

  v14 = v8;
  v9 = objc_msgSend_mutableCopy(v8, v5, v6, v7);
  throttles = self->_throttles;
  self->_throttles = v9;

  objc_msgSend__cleanupAndSaveOnlyIfCleanedUp_(self, v11, 1, v12);
}

- (void)_cleanupAndSaveOnlyIfCleanedUp:(BOOL)up
{
  upCopy = up;
  v6 = objc_msgSend__cleanup(self, a2, up, v3);
  if (!upCopy || v6)
  {
    v10 = objc_msgSend_throttles(self, v7, v8, v9);
    objc_msgSend_setThrottles_(IMIndexThrottleMonitor, v11, v10, v12);
  }

  objc_msgSend__updateThrottleState(self, v7, v8, v9);

  MEMORY[0x1EEE66B58](self, sel__rescheduleTimer, v13, v14);
}

- (id)_nextExpiringThrottle
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, v2, v3);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = objc_msgSend_throttles(self, v6, v7, v8, 0);
  v13 = objc_msgSend_allValues(v9, v10, v11, v12);
  v16 = objc_msgSend_sortedArrayUsingSelector_(v13, v14, sel_compare_, v15);

  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v26, v30, 16);
  if (v20)
  {
    v21 = *v27;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v26 + 1) + 8 * i);
        objc_msgSend_timeIntervalSinceDate_(v23, v18, v5, v19);
        if (v24 > 0.0)
        {
          v20 = v23;
          goto LABEL_11;
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v26, v30, 16);
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v20;
}

- (void)_rescheduleTimer
{
  v5 = objc_msgSend_timer(self, a2, v2, v3);
  objc_msgSend_invalidate(v5, v6, v7, v8);

  objc_msgSend_setTimer_(self, v9, 0, v10);
  v14 = objc_msgSend__nextExpiringThrottle(self, v11, v12, v13);
  v18 = v14;
  if (v14)
  {
    objc_msgSend_timeIntervalSinceNow(v14, v15, v16, v17);
    v20 = v19;
    v21 = IMLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_1B7CFB7F8(v21, v20);
    }

    v23 = objc_msgSend_timerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x1E695DFF0], v22, self, sel_timerFired, 0, 0, v20);
    objc_msgSend_setTimer_(self, v24, v23, v25);

    v29 = objc_msgSend_mainRunLoop(MEMORY[0x1E695DFD0], v26, v27, v28);
    v33 = objc_msgSend_timer(self, v30, v31, v32);
    objc_msgSend_addTimer_forMode_(v29, v34, v33, *MEMORY[0x1E695DA28]);
  }
}

- (void)_beginThrottlingForIdentifier:(id)identifier untilDate:(id)date
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dateCopy = date;
  if (!dateCopy)
  {
    dateCopy = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v7, v8, v9, 900.0);
  }

  v11 = objc_msgSend_throttles(self, v7, v8, v9);
  v14 = objc_msgSend_objectForKeyedSubscript_(v11, v12, identifierCopy, v13);

  if (v14 && objc_msgSend_compare_(dateCopy, v15, v14, v16) != 1)
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = 138412546;
        v28 = identifierCopy;
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "Ignoring request to begin throttling for %@ because we are already throttling for a longer duration %@", &v27, 0x16u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v27 = 138412546;
        v28 = identifierCopy;
        v29 = 2112;
        v30 = dateCopy;
        _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Beginning throttling for %@ until %@", &v27, 0x16u);
      }
    }

    v21 = objc_msgSend_throttles(self, v17, v18, v19);
    objc_msgSend_setObject_forKeyedSubscript_(v21, v22, dateCopy, identifierCopy);

    objc_msgSend__save(self, v23, v24, v25);
  }
}

- (void)_finishThrottlingForIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = identifierCopy;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Finished throttling for %@", &v15, 0xCu);
    }
  }

  v9 = objc_msgSend_throttles(self, v5, v6, v7);
  objc_msgSend_removeObjectForKey_(v9, v10, identifierCopy, v11);

  objc_msgSend__save(self, v12, v13, v14);
}

@end