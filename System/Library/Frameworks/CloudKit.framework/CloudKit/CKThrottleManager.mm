@interface CKThrottleManager
+ (id)sharedManager;
- (BOOL)addThrottle:(id)throttle;
- (id)CKStatusReportArray;
- (id)allThrottles;
- (id)enforcedThrottleForCriteria:(id)criteria willSendRequest:(BOOL)request outThrottleError:(id *)error;
- (id)initInternal;
- (void)resetThrottles;
- (void)setThrottleObserver:(id)observer;
@end

@implementation CKThrottleManager

- (id)initInternal
{
  v5.receiver = self;
  v5.super_class = CKThrottleManager;
  v2 = [(CKThrottleManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_throttleLock, 0);
  }

  return v3;
}

- (id)allThrottles
{
  pthread_mutex_lock(&self->_throttleLock);
  v3 = self->_throttleList;
  pthread_mutex_unlock(&self->_throttleLock);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1885A0128;
  block[3] = &unk_1E70BC418;
  block[4] = self;
  if (qword_1ED4B6210 != -1)
  {
    dispatch_once(&qword_1ED4B6210, block);
  }

  v2 = qword_1ED4B6208;

  return v2;
}

- (void)setThrottleObserver:(id)observer
{
  observerCopy = observer;
  pthread_mutex_lock(&self->_throttleLock);
  objc_storeWeak(&self->_observer, observerCopy);

  pthread_mutex_unlock(&self->_throttleLock);
}

- (void)resetThrottles
{
  v21 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_throttleLock);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_throttleList;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v16, v20, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_throttleWillBeRemoved_(self, v6, *(*(&v16 + 1) + 8 * v9++), v16);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v16, v20, 16);
    }

    while (v7);
  }

  throttleList = self->_throttleList;
  self->_throttleList = 0;

  objc_msgSend_throttleListBecameEmpty(self, v11, v12);
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  pthread_mutex_unlock(&self->_throttleLock);
  objc_msgSend_throttlesWereReset(WeakRetained, v14, v15);
}

- (BOOL)addThrottle:(id)throttle
{
  v62 = *MEMORY[0x1E69E9840];
  throttleCopy = throttle;
  isExpired = objc_msgSend_isExpired(throttleCopy, v5, v6);
  pthread_mutex_lock(&self->_throttleLock);
  v10 = objc_msgSend_label(throttleCopy, v8, v9);
  v14 = objc_msgSend_throttleID(throttleCopy, v11, v12);
  if (!(v10 | v14))
  {
    v19 = 0;
    v29 = 0;
    if (isExpired)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = self->_throttleList;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v47, v61, 16);
  if (v19)
  {
    v45 = isExpired;
    v46 = throttleCopy;
    v20 = *v48;
LABEL_4:
    v21 = 0;
    while (1)
    {
      if (*v48 != v20)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v47 + 1) + 8 * v21);
      if (v10)
      {
        v23 = objc_msgSend_label(*(*(&v47 + 1) + 8 * v21), v17, v18);
        isEqualToString = objc_msgSend_isEqualToString_(v23, v24, v10);

        if (isEqualToString)
        {
          break;
        }
      }

      v26 = objc_msgSend_throttleID(v22, v17, v18);
      isEqual = objc_msgSend_isEqual_(v26, v27, v14);

      if (isEqual)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v47, v61, 16);
        if (v19)
        {
          goto LABEL_4;
        }

        v29 = 0;
        goto LABEL_17;
      }
    }

    v19 = v22;

    if (v19)
    {
      v60 = v19;
      v29 = 1;
      v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, &v60, 1);
      sub_1885A067C(&self->super.isa, v15);
LABEL_17:
      throttleCopy = v46;
      isExpired = v45;
      goto LABEL_19;
    }

    v29 = 0;
    throttleCopy = v46;
    if ((v45 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v29 = 0;
LABEL_19:

    if ((isExpired & 1) == 0)
    {
LABEL_22:
      throttleList = self->_throttleList;
      if (throttleList)
      {
        objc_msgSend_arrayByAddingObject_(throttleList, v13, throttleCopy);
      }

      else
      {
        v59 = throttleCopy;
        objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, &v59, 1);
      }
      v31 = ;
      v32 = self->_throttleList;
      self->_throttleList = v31;
    }
  }

LABEL_26:
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  objc_msgSend_throttleWasAdded_(self, v34, throttleCopy);
  v37 = objc_msgSend_throttleID(throttleCopy, v35, v36);

  pthread_mutex_unlock(&self->_throttleLock);
  objc_msgSend_throttleWasAdded(WeakRetained, v38, v39);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v40 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v41 = @"<throttleID unset>";
    if (v37)
    {
      v41 = v37;
    }

    v42 = @"\nreplaces: ";
    *buf = 138544130;
    v52 = v41;
    v43 = &stru_1EFA32970;
    v53 = 2114;
    v54 = throttleCopy;
    if (!v19)
    {
      v42 = &stru_1EFA32970;
    }

    v55 = 2114;
    if (v19)
    {
      v43 = v19;
    }

    v56 = v42;
    v57 = 2114;
    v58 = v43;
    _os_log_impl(&dword_1883EA000, v40, OS_LOG_TYPE_INFO, "new throttle: %{public}@ = %{public}@%{public}@%{public}@", buf, 0x2Au);
  }

  return v29;
}

- (id)CKStatusReportArray
{
  pthread_mutex_lock(&self->_throttleLock);
  v4 = objc_msgSend_CKMap_(self->_throttleList, v3, &unk_1EFA2F0C8);
  pthread_mutex_unlock(&self->_throttleLock);

  return v4;
}

- (id)enforcedThrottleForCriteria:(id)criteria willSendRequest:(BOOL)request outThrottleError:(id *)error
{
  requestCopy = request;
  v95 = *MEMORY[0x1E69E9840];
  criteriaCopy = criteria;
  pthread_mutex_lock(&self->_throttleLock);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v9 = self->_throttleList;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v81, v94, 16);
  if (!v13)
  {

    v15 = 0;
    v14 = 0;
    if (!requestCopy)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  v75 = requestCopy;
  errorCopy = error;
  v76 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *v82;
  v17 = 0.0;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v82 != v16)
      {
        objc_enumerationMutation(v9);
      }

      v19 = *(*(&v81 + 1) + 8 * i);
      if (objc_msgSend_isExpired(v19, v11, v12))
      {
        if (!v15)
        {
          v21 = objc_alloc(MEMORY[0x1E695DF70]);
          v24 = objc_msgSend_count(self->_throttleList, v22, v23);
          v15 = objc_msgSend_initWithCapacity_(v21, v25, v24);
        }

        objc_msgSend_addObject_(v15, v20, v19);
      }

      else if (objc_msgSend_appliesToCriteria_(v19, v20, criteriaCopy))
      {
        if (!v14)
        {
          v26 = objc_msgSend_count(self->_throttleList, v11, v12);
          v27 = objc_alloc(MEMORY[0x1E695DF70]);
          v14 = objc_msgSend_initWithCapacity_(v27, v28, v26);
        }

        objc_msgSend_addObject_(v14, v11, v19);
        objc_msgSend_delayUntilNextOperationAllowed(v19, v29, v30);
        if (v31 > v17)
        {
          v32 = v31;
          v33 = v19;

          v76 = v33;
          v17 = v32;
        }
      }
    }

    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v81, v94, 16);
  }

  while (v13);

  if (v17 <= 0.0)
  {
    v13 = v76;
    if (!v75)
    {
      goto LABEL_45;
    }

LABEL_36:
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v47 = v14;
    v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v63, &v77, v85, 16);
    if (v64)
    {
      v67 = v64;
      v68 = *v78;
      do
      {
        for (j = 0; j != v67; ++j)
        {
          if (*v78 != v68)
          {
            objc_enumerationMutation(v47);
          }

          v70 = *(*(&v77 + 1) + 8 * j);
          objc_msgSend_incrementSentRequestCount(v70, v65, v66);
          objc_msgSend_noteDataChangeForThrottle_(self, v71, v70);
        }

        v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v65, &v77, v85, 16);
      }

      while (v67);
    }

    v14 = v47;
    goto LABEL_44;
  }

  v13 = v76;
  if (v75)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v36 = ck_log_facility_op;
    if (os_log_type_enabled(ck_log_facility_op, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
      v40 = objc_msgSend_throttleID(v76, v38, v39);
      *buf = 138543874;
      v89 = v40;
      v90 = 2048;
      v91 = v17;
      v92 = 2112;
      v93 = criteriaCopy;
      _os_log_impl(&dword_1883EA000, v37, OS_LOG_TYPE_DEFAULT, "Throttle %{public}@ triggered, allowed in %lds: %@", buf, 0x20u);
    }
  }

  if (errorCopy)
  {
    if (!v14)
    {
      __assert_rtn("[CKThrottleManager enforcedThrottleForCriteria:willSendRequest:outThrottleError:]", "CKThrottleManager.m", 265, "applicableThrottles");
    }

    v41 = objc_msgSend_errorCode(v76, v34, v35);
    v44 = objc_msgSend_integerValue(v41, v42, v43);

    v46 = @"Operation throttled by server. Retry after %.1f seconds. (Other operations may be allowed.)";
    if (v44 == 2061)
    {
      v46 = @"Operation throttled by previous server http 503 reply. Retry after %.1f seconds. (Other operations may be allowed.)";
    }

    if (v44 == 2062)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v45, @"Operation throttled by previous server http 429 reply. Retry after %.1f seconds. (Other operations may be allowed.)", *&v17);
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v45, v46, *&v17);
    }
    v47 = ;
    v50 = objc_msgSend_label(v76, v48, v49);
    v51 = v50;
    v52 = @"<nil label>";
    if (v50)
    {
      v52 = v50;
    }

    v53 = v52;

    v87[0] = v53;
    v86[0] = @"ThrottleLabel";
    v86[1] = @"CKRetryAfter";
    v56 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v54, v55, v17);
    v87[1] = v56;
    v87[2] = v47;
    v57 = *MEMORY[0x1E696A578];
    v86[2] = @"CKErrorDescription";
    v86[3] = v57;
    v87[3] = v47;
    v59 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v58, v87, v86, 4);

    v61 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v60, @"CKInternalErrorDomain", v44, v59);

    v13 = v76;
    v62 = v61;
    *errorCopy = v61;

LABEL_44:
  }

LABEL_45:
  pthread_mutex_unlock(&self->_throttleLock);
  if (self && v15)
  {
    v72 = v15;
    pthread_mutex_lock(&self->_throttleLock);
    sub_1885A067C(&self->super.isa, v72);

    pthread_mutex_unlock(&self->_throttleLock);
  }

  return v13;
}

@end