@interface CKUploadRequestManagerResponseActionThrottler
- (CKUploadRequestManagerResponseActionThrottler)init;
- (double)throttleTimeForCount:(int64_t)count isRetry:(BOOL)retry;
- (unint64_t)totalThrottleCountForAction:(int64_t)action;
- (void)gateResponseAction:(int64_t)action isRetry:(BOOL)retry;
- (void)gateResponseAction:(int64_t)action isRetry:(BOOL)retry currentTime:(double)time;
@end

@implementation CKUploadRequestManagerResponseActionThrottler

- (CKUploadRequestManagerResponseActionThrottler)init
{
  v8.receiver = self;
  v8.super_class = CKUploadRequestManagerResponseActionThrottler;
  v4 = [(CKUploadRequestManagerResponseActionThrottler *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3);
    v6 = *(v4 + 7);
    *(v4 + 7) = v5;

    *(v4 + 1) = 0x4014000000000000;
    *(v4 + 2) = 15;
    *(v4 + 24) = xmmword_1886FE820;
    *(v4 + 5) = 0x4014000000000000;
  }

  return v4;
}

- (void)gateResponseAction:(int64_t)action isRetry:(BOOL)retry
{
  v6 = objc_opt_class();
  objc_msgSend_currentTime(v6, v7, v8);

  MEMORY[0x1EEE66B58](self, sel_gateResponseAction_isRetry_currentTime_, action);
}

- (void)gateResponseAction:(int64_t)action isRetry:(BOOL)retry currentTime:(double)time
{
  retryCopy = retry;
  v69 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = objc_msgSend_responseActionToMetadata(selfCopy, v9, v10);
  v13 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v12, action);
  v15 = objc_msgSend_objectForKeyedSubscript_(v11, v14, v13);

  objc_sync_exit(selfCopy);
  if (!v15 || (objc_msgSend_lastRunTime(v15, v16, v17), v18 == -1.0))
  {
    v21 = 0;
  }

  else
  {
    v19 = time - v18;
    objc_msgSend_throttlePeriod(selfCopy, v16, v17);
    v21 = v19 < v20;
  }

  v22 = objc_msgSend_actionsToThrottle(selfCopy, v16, v17);
  v24 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v23, action);
  v26 = objc_msgSend_containsObject_(v22, v25, v24) & v21;

  v27 = v26 | retryCopy;
  if (v15)
  {
    v28 = v15;
  }

  else
  {
    v28 = objc_opt_new();
  }

  v31 = v28;
  if (v27)
  {
    v32 = objc_msgSend_repeatCount(v15, v29, v30);
    objc_msgSend_throttleTimeForCount_isRetry_(selfCopy, v33, v32, retryCopy);
    if (v34 > 0.0)
    {
      v35 = v34;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v36 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
      {
        v62 = v36;
        v64 = objc_msgSend_nameFromResponseAction_(CKUploadRequestManagerStateMachine, v63, action);
        v65 = 138543618;
        v66 = v64;
        v67 = 2048;
        v68 = v35;
        _os_log_error_impl(&dword_1883EA000, v62, OS_LOG_TYPE_ERROR, "Action %{public}@ is repeating too much, throttling for %.1f seconds", &v65, 0x16u);
      }

      v39 = objc_msgSend_totalThrottleCount(v31, v37, v38);
      objc_msgSend_setTotalThrottleCount_(v31, v40, v39 + 1);
      v41 = objc_opt_class();
      objc_msgSend_sleep_(v41, v42, v43, v35);
    }
  }

  v44 = objc_opt_class();
  objc_msgSend_currentTime(v44, v45, v46);
  v50 = v49;
  if (v27)
  {
    v51 = objc_msgSend_repeatCount(v31, v47, v48) + 1;
    objc_msgSend_setRepeatCount_(v31, v52, v51);
  }

  else
  {
    objc_msgSend_setRepeatCount_(v31, v47, 0);
  }

  objc_msgSend_setLastRunTime_(v31, v53, v54, v50);
  v55 = selfCopy;
  objc_sync_enter(v55);
  v58 = objc_msgSend_responseActionToMetadata(v55, v56, v57);
  v60 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v59, action);
  objc_msgSend_setObject_forKeyedSubscript_(v58, v61, v31, v60);

  objc_sync_exit(v55);
}

- (double)throttleTimeForCount:(int64_t)count isRetry:(BOOL)retry
{
  retryCopy = retry;
  v8 = count - objc_msgSend_minimumThrottleCount(self, a2, count);
  if (v8 < 0)
  {
    v17 = 0.0;
  }

  else
  {
    objc_msgSend_minimumThrottleTime(self, v6, v7);
    v10 = v9;
    objc_msgSend_maximumThrottleTime(self, v11, v12);
    v14 = v13;
    v15 = vcvtpd_s64_f64(log2(v13 / v10));
    if (v8 < v15)
    {
      v15 = v8;
    }

    v16 = v10 * exp2(v15);
    if (v16 >= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }
  }

  result = v17;
  if (retryCopy)
  {
    objc_msgSend_minimumRetryTime(self, v6, v7, v17);
  }

  if (v17 >= result)
  {
    return v17;
  }

  return result;
}

- (unint64_t)totalThrottleCountForAction:(int64_t)action
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_responseActionToMetadata(selfCopy, v5, v6);
  v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, action);
  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v10, v9);
  v14 = objc_msgSend_totalThrottleCount(v11, v12, v13);

  objc_sync_exit(selfCopy);
  return v14;
}

@end