@interface SSObservable
+ (BOOL)_errorIsCanceledError:(id)error;
+ (id)observableWithObserver:(id)observer;
+ (id)observableWithObservers:(id)observers;
- (BOOL)_isComplete;
- (BOOL)cancel;
- (BOOL)isCancelled;
- (BOOL)isComplete;
- (BOOL)sendCompletion;
- (BOOL)sendFailure:(id)failure;
- (BOOL)sendResult:(id)result;
- (SSObservable)init;
- (void)subscribe:(id)subscribe;
@end

@implementation SSObservable

- (SSObservable)init
{
  v14.receiver = self;
  v14.super_class = SSObservable;
  v2 = [(SSObservable *)&v14 init];
  if (v2)
  {
    v3 = SSGenerateLogCorrelationString();
    logKey = v2->_logKey;
    v2->_logKey = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    queuedResults = v2->_queuedResults;
    v2->_queuedResults = v7;

    v9 = dispatch_queue_create("coma.apple.StoreServices.SSObservable.sendMessage", MEMORY[0x1E69E96A8]);
    sendMessageQueue = v2->_sendMessageQueue;
    v2->_sendMessageQueue = v9;

    v11 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    stateLock = v2->_stateLock;
    v2->_stateLock = v11;
  }

  return v2;
}

+ (id)observableWithObserver:(id)observer
{
  observerCopy = observer;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 subscribe:observerCopy];

  return v4;
}

+ (id)observableWithObservers:(id)observers
{
  v16 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  v4 = objc_alloc_init(objc_opt_class());
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = observersCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 subscribe:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isCancelled
{
  stateLock = [(SSObservable *)self stateLock];
  [stateLock lock];

  if ([(SSObservable *)self _isComplete])
  {
    v4 = objc_opt_class();
    failureError = [(SSObservable *)self failureError];
    v6 = [v4 _errorIsCanceledError:failureError];
  }

  else
  {
    v6 = 0;
  }

  stateLock2 = [(SSObservable *)self stateLock];
  [stateLock2 unlock];

  return v6;
}

- (BOOL)isComplete
{
  stateLock = [(SSObservable *)self stateLock];
  [stateLock lock];

  LOBYTE(stateLock) = [(SSObservable *)self _isComplete];
  stateLock2 = [(SSObservable *)self stateLock];
  [stateLock2 unlock];

  return stateLock;
}

- (BOOL)cancel
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  LOBYTE(self) = [(SSObservable *)self sendFailure:v3];

  return self;
}

- (BOOL)sendCompletion
{
  v41 = *MEMORY[0x1E69E9840];
  stateLock = [(SSObservable *)self stateLock];
  [stateLock lock];

  stateLock2 = [(SSObservable *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v17 = SSObservableLogConfig(v6);
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      LODWORD(v19) = shouldLog | 2;
    }

    else
    {
      LODWORD(v19) = shouldLog;
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v21 = objc_opt_class();
      v22 = v21;
      logKey = [(SSObservable *)self logKey];
      v37 = 138543618;
      v38 = v21;
      v39 = 2114;
      v40 = logKey;
      v24 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "%{public}@: [%{public}@] Someone is attempting to send a completion from a completed SSObservable.", &v37, 22);

      if (!v24)
      {
LABEL_22:

        stateLock3 = [(SSObservable *)self stateLock];
        [stateLock3 unlock];
        goto LABEL_23;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog(v17, @"%@", v25, v26, v27, v28, v29, v30, oSLogObject);
    }

    goto LABEL_22;
  }

  observers = [(SSObservable *)self observers];
  v8 = [observers copy];

  stateLock4 = [(SSObservable *)self stateLock];
  [stateLock4 unlockWithCondition:1];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  stateLock3 = v8;
  v11 = [stateLock3 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(stateLock3);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        sendMessageQueue = [(SSObservable *)self sendMessageQueue];
        [v15 _sendCompletionUsingQueue:sendMessageQueue];
      }

      v12 = [stateLock3 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v12);
  }

LABEL_23:
  return condition != 1;
}

- (BOOL)sendFailure:(id)failure
{
  v43 = *MEMORY[0x1E69E9840];
  failureCopy = failure;
  stateLock = [(SSObservable *)self stateLock];
  [stateLock lock];

  stateLock2 = [(SSObservable *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v19 = SSObservableLogConfig(v8);
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      LODWORD(v21) = shouldLog | 2;
    }

    else
    {
      LODWORD(v21) = shouldLog;
    }

    oSLogObject = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v21 = v21;
    }

    else
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = objc_opt_class();
      v24 = v23;
      logKey = [(SSObservable *)self logKey];
      v39 = 138543618;
      v40 = v23;
      v41 = 2114;
      v42 = logKey;
      v26 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "%{public}@: [%{public}@] Someone is attempting to send a failure from a completed SSObservable.", &v39, 22);

      if (!v26)
      {
LABEL_22:

        stateLock3 = [(SSObservable *)self stateLock];
        [stateLock3 unlock];
        goto LABEL_23;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:4];
      free(v26);
      SSFileLog(v19, @"%@", v27, v28, v29, v30, v31, v32, oSLogObject);
    }

    goto LABEL_22;
  }

  [(SSObservable *)self setFailureError:failureCopy];
  observers = [(SSObservable *)self observers];
  v10 = [observers copy];

  stateLock4 = [(SSObservable *)self stateLock];
  [stateLock4 unlockWithCondition:1];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  stateLock3 = v10;
  v13 = [stateLock3 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(stateLock3);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        sendMessageQueue = [(SSObservable *)self sendMessageQueue];
        [v17 _sendFailure:failureCopy usingQueue:sendMessageQueue];
      }

      v14 = [stateLock3 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

LABEL_23:
  return condition != 1;
}

- (BOOL)sendResult:(id)result
{
  v98 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  stateLock = [(SSObservable *)self stateLock];
  [stateLock lock];

  stateLock2 = [(SSObservable *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v9 = SSObservableLogConfig(v8);
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v13 = objc_opt_class();
      v14 = v13;
      logKey = [(SSObservable *)self logKey];
      v94 = 138543618;
      v95 = v13;
      v96 = 2114;
      v97 = logKey;
      v16 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "%{public}@: [%{public}@] Someone is attempting to send a result from a completed SSObservable.", &v94, 22);

      if (!v16)
      {
LABEL_14:

        stateLock3 = [(SSObservable *)self stateLock];
        [stateLock3 unlock];
        v24 = 0;
        goto LABEL_59;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog(v9, @"%@", v17, v18, v19, v20, v21, v22, oSLogObject);
    }

    goto LABEL_14;
  }

  queuedResults = [(SSObservable *)self queuedResults];
  [queuedResults addObject:resultCopy];

  queuedResults2 = [(SSObservable *)self queuedResults];
  stateLock3 = [queuedResults2 copy];

  observers = [(SSObservable *)self observers];
  v28 = [observers copy];

  v82 = v28;
  v29 = [v28 count];
  v30 = SSObservableLogConfig(v29);
  queuedResults3 = v30;
  if (!v29)
  {
    if (!v30)
    {
      queuedResults3 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [queuedResults3 shouldLog];
    if ([queuedResults3 shouldLogToDisk])
    {
      v49 = shouldLog2 | 2;
    }

    else
    {
      v49 = shouldLog2;
    }

    oSLogObject2 = [queuedResults3 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v51 = v49;
    }

    else
    {
      v51 = v49 & 2;
    }

    if (v51)
    {
      v52 = stateLock3;
      v53 = resultCopy;
      v54 = objc_opt_class();
      v55 = v54;
      logKey2 = [(SSObservable *)self logKey];
      v94 = 138543618;
      v95 = v54;
      v96 = 2114;
      v97 = logKey2;
      v57 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "%{public}@: [%{public}@] The are no observers. Queuing the result.", &v94, 22);

      if (v57)
      {
        v58 = [MEMORY[0x1E696AEC0] stringWithCString:v57 encoding:4];
        free(v57);
        SSFileLog(queuedResults3, @"%@", v59, v60, v61, v62, v63, v64, v58);
      }

      resultCopy = v53;
      stateLock3 = v52;
    }

    else
    {
    }

    goto LABEL_42;
  }

  if (!v30)
  {
    queuedResults3 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [queuedResults3 shouldLog];
  if ([queuedResults3 shouldLogToDisk])
  {
    v33 = shouldLog3 | 2;
  }

  else
  {
    v33 = shouldLog3;
  }

  oSLogObject3 = [queuedResults3 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
  {
    v35 = v33;
  }

  else
  {
    v35 = v33 & 2;
  }

  if (!v35)
  {
    goto LABEL_27;
  }

  v36 = stateLock3;
  v37 = objc_opt_class();
  v38 = resultCopy;
  v39 = v37;
  logKey3 = [(SSObservable *)self logKey];
  v94 = 138543618;
  v95 = v37;
  stateLock3 = v36;
  v96 = 2114;
  v97 = logKey3;
  v41 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 2, "%{public}@: [%{public}@] There's at least one observer. Sending the result along with any queued results.", &v94, 22);

  resultCopy = v38;
  if (v41)
  {
    oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v41 encoding:4];
    free(v41);
    SSFileLog(queuedResults3, @"%@", v42, v43, v44, v45, v46, v47, oSLogObject3);
LABEL_27:
  }

  queuedResults3 = [(SSObservable *)self queuedResults];
  [queuedResults3 removeAllObjects];
LABEL_42:

  stateLock4 = [(SSObservable *)self stateLock];
  [stateLock4 unlock];

  v66 = [v82 count];
  v24 = v66 != 0;
  if (v66)
  {
    v78 = stateLock3;
    v79 = resultCopy;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = stateLock3;
    v83 = [obj countByEnumeratingWithState:&v88 objects:v93 count:16];
    if (v83)
    {
      v81 = *v89;
      do
      {
        for (i = 0; i != v83; ++i)
        {
          if (*v89 != v81)
          {
            objc_enumerationMutation(obj);
          }

          v68 = *(*(&v88 + 1) + 8 * i);
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v69 = v82;
          v70 = [v69 countByEnumeratingWithState:&v84 objects:v92 count:16];
          if (v70)
          {
            v71 = v70;
            v72 = *v85;
            do
            {
              for (j = 0; j != v71; ++j)
              {
                if (*v85 != v72)
                {
                  objc_enumerationMutation(v69);
                }

                v74 = *(*(&v84 + 1) + 8 * j);
                v75 = [v68 copy];
                sendMessageQueue = [(SSObservable *)self sendMessageQueue];
                [v74 _sendResult:v75 usingQueue:sendMessageQueue];
              }

              v71 = [v69 countByEnumeratingWithState:&v84 objects:v92 count:16];
            }

            while (v71);
          }
        }

        v83 = [obj countByEnumeratingWithState:&v88 objects:v93 count:16];
      }

      while (v83);
    }

    stateLock3 = v78;
    resultCopy = v79;
    v24 = 1;
  }

LABEL_59:
  return v24;
}

- (void)subscribe:(id)subscribe
{
  v81 = *MEMORY[0x1E69E9840];
  subscribeCopy = subscribe;
  stateLock = [(SSObservable *)self stateLock];
  [stateLock lock];

  stateLock2 = [(SSObservable *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v9 = SSObservableLogConfig(v8);
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (!v11)
    {
      goto LABEL_25;
    }

    v13 = objc_opt_class();
    v14 = v13;
    logKey = [(SSObservable *)self logKey];
    v77 = 138543618;
    v78 = v13;
    v79 = 2114;
    v80 = logKey;
    v16 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "%{public}@: [%{public}@] Someone is attempting to add an observer to a completed SSObservable.", &v77, 22);
LABEL_23:
    v23 = v16;

    if (!v23)
    {
LABEL_26:

      stateLock3 = [(SSObservable *)self stateLock];
      [stateLock3 unlock];
      goto LABEL_57;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:4];
    free(v23);
    SSFileLog(v9, @"%@", v24, v25, v26, v27, v28, v29, oSLogObject);
LABEL_25:

    goto LABEL_26;
  }

  observers = [(SSObservable *)self observers];
  v18 = [observers containsObject:subscribeCopy];

  if (v18)
  {
    v9 = SSObservableLogConfig(v19);
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v21) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v21) = shouldLog2;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v21 = v21;
    }

    else
    {
      v21 &= 2u;
    }

    if (!v21)
    {
      goto LABEL_25;
    }

    v22 = objc_opt_class();
    v14 = v22;
    logKey = [(SSObservable *)self logKey];
    v77 = 138543618;
    v78 = v22;
    v79 = 2114;
    v80 = logKey;
    v16 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "%{public}@: [%{public}@] Someone is attempting to add an observer to a SSObservable it's already observing.", &v77, 22);
    goto LABEL_23;
  }

  observers2 = [(SSObservable *)self observers];
  [observers2 addObject:subscribeCopy];

  queuedResults = [(SSObservable *)self queuedResults];
  v33 = [queuedResults copy];

  queuedResults2 = [(SSObservable *)self queuedResults];
  [queuedResults2 removeAllObjects];

  v35 = [v33 count];
  v62 = subscribeCopy;
  if (!v35)
  {
    v65 = 0;
    goto LABEL_42;
  }

  v36 = SSObservableLogConfig(v35);
  if (!v36)
  {
    v36 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v36 shouldLog];
  if ([v36 shouldLogToDisk])
  {
    LODWORD(v38) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v38) = shouldLog3;
  }

  oSLogObject2 = [v36 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v38 = v38;
  }

  else
  {
    v38 &= 2u;
  }

  if (!v38)
  {
    goto LABEL_39;
  }

  v40 = objc_opt_class();
  v41 = v40;
  logKey2 = [(SSObservable *)self logKey];
  v77 = 138543618;
  v78 = v40;
  v79 = 2114;
  v80 = logKey2;
  v43 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "%{public}@: [%{public}@] There are pending results. Sending them now that we have an observer.", &v77, 22);

  if (v43)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:4];
    free(v43);
    SSFileLog(v36, @"%@", v44, v45, v46, v47, v48, v49, oSLogObject2);
LABEL_39:
  }

  observers3 = [(SSObservable *)self observers];
  v65 = [observers3 copy];

LABEL_42:
  stateLock4 = [(SSObservable *)self stateLock];
  [stateLock4 unlock];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  stateLock3 = v33;
  v66 = [stateLock3 countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (v66)
  {
    obj = stateLock3;
    v64 = *v72;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v72 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v53 = *(*(&v71 + 1) + 8 * i);
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v54 = v65;
        v55 = [v54 countByEnumeratingWithState:&v67 objects:v75 count:16];
        if (v55)
        {
          v56 = v55;
          v57 = *v68;
          do
          {
            for (j = 0; j != v56; ++j)
            {
              if (*v68 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v59 = *(*(&v67 + 1) + 8 * j);
              v60 = [v53 copy];
              sendMessageQueue = [(SSObservable *)self sendMessageQueue];
              [v59 _sendResult:v60 usingQueue:sendMessageQueue];
            }

            v56 = [v54 countByEnumeratingWithState:&v67 objects:v75 count:16];
          }

          while (v56);
        }
      }

      stateLock3 = obj;
      v66 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
    }

    while (v66);
  }

  subscribeCopy = v62;
LABEL_57:
}

+ (BOOL)_errorIsCanceledError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [errorCopy code] == 3072;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isComplete
{
  stateLock = [(SSObservable *)self stateLock];
  v3 = [stateLock condition] == 1;

  return v3;
}

@end