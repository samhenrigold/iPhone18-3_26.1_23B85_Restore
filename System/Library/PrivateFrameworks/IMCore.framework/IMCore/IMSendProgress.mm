@interface IMSendProgress
- (IMSendProgress)initWithDelegate:(id)delegate context:(id)context;
- (IMSendProgressDelegate)delegate;
- (double)_getEstimatedSendTimeOverStewieInSeconds;
- (id)context;
- (unint64_t)_sGetEstimatedNumberOfRetries:(unint64_t)retries;
- (unint64_t)_sGetNumberOfDataGrams:(unint64_t)grams;
- (void)_resetSendProgress;
- (void)_scheduleSendProgressTimerIfNeeded;
- (void)_sendProgressTimerFired:(id)fired;
- (void)_updateSendProgress;
- (void)dealloc;
- (void)invalidate;
- (void)updateForItems:(id)items forced:(BOOL)forced;
- (void)updateForPendingComposition;
@end

@implementation IMSendProgress

- (unint64_t)_sGetNumberOfDataGrams:(unint64_t)grams
{
  if (!grams)
  {
    return 0;
  }

  if (grams >= 0xD)
  {
    return (ceil((grams - 11) / 17.0) + 1.0);
  }

  return 1;
}

- (unint64_t)_sGetEstimatedNumberOfRetries:(unint64_t)retries
{
  if (!retries)
  {
    return 0;
  }

  v3 = (retries + -1.0) / 0.7 + 2.04081633 - retries;
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  return vcvtpd_u64_f64(v3);
}

- (double)_getEstimatedSendTimeOverStewieInSeconds
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  sendingItems = [(IMSendProgress *)self sendingItems];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8362CF0;
  v7[3] = &unk_1E78136B0;
  v7[4] = &v8;
  [sendingItems enumerateKeysAndObjectsUsingBlock:v7];

  v4 = [(IMSendProgress *)self _sGetNumberOfDataGrams:*(v9 + 6)];
  v5 = ceil(((2 * [(IMSendProgress *)self _sGetEstimatedNumberOfRetries:v4]) + v4 * 2.0) * 2.56) + 2.56;
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)dealloc
{
  [(NSTimer *)self->_sendProgressTimer invalidate];
  v3.receiver = self;
  v3.super_class = IMSendProgress;
  [(IMSendProgress *)&v3 dealloc];
}

- (IMSendProgress)initWithDelegate:(id)delegate context:(id)context
{
  delegateCopy = delegate;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = IMSendProgress;
  v8 = [(IMSendProgress *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeWeak(&v9->_context, contextCopy);
    v10 = objc_alloc_init([objc_opt_class() _timeDataSourceClass]);
    timeDataSource = v9->_timeDataSource;
    v9->_timeDataSource = v10;
  }

  return v9;
}

- (void)updateForItems:(id)items forced:(BOOL)forced
{
  forcedCopy = forced;
  v72 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  selfCopy = self;
  v38 = self->_sendingItems;
  v6 = itemsCopy;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v50 objects:buf count:16];
  if (v7)
  {
    v8 = *v51;
    do
    {
      v9 = 0;
      do
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v50 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 isTypingOrCancelTypingMessage] ^ 1;
        }

        else
        {
          v11 = 0;
        }

        v12 = +[IMChorosMonitor sharedInstance];
        isSatelliteConnectionActive = [v12 isSatelliteConnectionActive];

        if (!(isSatelliteConnectionActive & 1 | ((v11 & 1) == 0)))
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            goto LABEL_28;
          }

LABEL_13:
          guid = [v10 guid];
          _senderHandle = [v10 _senderHandle];
          service = [_senderHandle service];

          v18 = v10;
          v19 = [(NSDictionary *)v38 objectForKey:guid];

          if ([v18 isFromMe] && !objc_msgSend(v18, "errorCode"))
          {
            v20 = [v18 isSent] ^ 1;
          }

          else
          {
            LOBYTE(v20) = 0;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v19)
            {
              v22 = 1;
            }

            else
            {
              v22 = v20;
            }

            if ((v22 & 1) == 0)
            {
              [v18 isLocatingMessage];
            }

            goto LABEL_27;
          }

          isDiscontinued = [service isDiscontinued];
          if (v20 & 1 | (v19 != 0))
          {
            if (isDiscontinued)
            {
              goto LABEL_27;
            }

LABEL_26:
            [dictionary setObject:v18 forKey:guid];
          }

          else if (!(isDiscontinued & 1 | (([v18 isLocatingMessage] & 1) == 0)))
          {
            goto LABEL_26;
          }

LABEL_27:

          goto LABEL_28;
        }

        if ((isSatelliteConnectionActive & v11) != 0)
        {
          goto LABEL_13;
        }

LABEL_28:
        ++v9;
      }

      while (v7 != v9);
      v23 = [obj countByEnumeratingWithState:&v50 objects:buf count:16];
      v7 = v23;
    }

    while (v23);
  }

  *&v50 = 0;
  *(&v50 + 1) = &v50;
  *&v51 = 0x2020000000;
  BYTE8(v51) = 0;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = sub_1A83C8FFC;
  v47[3] = &unk_1E7814638;
  v24 = dictionary;
  v48 = v24;
  v49 = &v50;
  [(NSDictionary *)v38 enumerateKeysAndObjectsUsingBlock:v47];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_1A83C9058;
  v40[3] = &unk_1E7814638;
  v25 = v38;
  v41 = v25;
  v42 = &v43;
  [v24 enumerateKeysAndObjectsUsingBlock:v40];
  selfCopy2 = self;
  if (*(v44 + 24) == 1 && ![(IMSendProgress *)self waitingForComposition])
  {
    goto LABEL_37;
  }

  if (*(*(&v50 + 1) + 24) != 1)
  {
    goto LABEL_38;
  }

  if (self->_cachedSendProgress <= 0.0 || [v24 count])
  {
LABEL_37:
    self->_cachedSendProgress = 0.0;
  }

  else
  {
    self->_cachedSendProgress = 1.0;
  }

LABEL_38:
  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v29 = objc_loadWeakRetained(&self->_context);
      allKeys = [(NSDictionary *)self->_sendingItems allKeys];
      allKeys2 = [v24 allKeys];
      v32 = *(*(&v50 + 1) + 24);
      v33 = *(v44 + 24);
      _hasSendingMessages = [(IMSendProgress *)selfCopy _hasSendingMessages];
      *buf = 134220034;
      v55 = selfCopy;
      v56 = 2048;
      v57 = WeakRetained;
      v58 = 2048;
      v59 = v29;
      v60 = 2112;
      v61 = allKeys;
      v62 = 2112;
      v63 = allKeys2;
      v64 = 1024;
      v65 = v32;
      v66 = 1024;
      v67 = v33;
      v68 = 1024;
      v69 = forcedCopy;
      v70 = 1024;
      v71 = _hasSendingMessages;
      _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "IMSendProgress: %p (delegate: %p, context: %p) is updating sending items from %@ to %@. (removed? %d, inserted? %d, forced? %d, hasSendingMessages? %d)", buf, 0x4Cu);
    }

    selfCopy2 = selfCopy;
  }

  [(IMSendProgress *)selfCopy2 setSendingItems:v24];
  [(IMSendProgress *)selfCopy2 _scheduleSendProgressTimerIfNeeded];
  if ((*(*(&v50 + 1) + 24) & 1) != 0 || (v44[3] & 1) != 0 || [(IMSendProgress *)selfCopy2 _hasSendingMessages]|| forcedCopy)
  {
    [(IMSendProgress *)selfCopy2 _updateSendProgress];
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v50, 8);
}

- (void)updateForPendingComposition
{
  [(IMSendProgress *)self setWaitingForComposition:1];
  timeDataSource = [(IMSendProgress *)self timeDataSource];
  [timeDataSource timeIntervalSinceReferenceDate];
  [(IMSendProgress *)self setTranslationStartTime:?];

  [(IMSendProgress *)self _scheduleSendProgressTimerIfNeeded];

  [(IMSendProgress *)self _updateSendProgress];
}

- (void)invalidate
{
  [(NSTimer *)self->_sendProgressTimer invalidate];
  sendProgressTimer = self->_sendProgressTimer;
  self->_sendProgressTimer = 0;
}

- (void)_resetSendProgress
{
  self->_cachedSendProgress = 0.0;
  self->_wasShowing = 0;
  [(IMSendProgress *)self setSendingItems:0];
}

- (void)_updateSendProgress
{
  v68 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = 0;
  timeDataSource = [(IMSendProgress *)self timeDataSource];
  [timeDataSource timeIntervalSinceReferenceDate];
  v5 = v4;

  v34 = v5;
  v6 = +[IMChorosMonitor sharedInstance];
  v7 = v5;
  isSatelliteConnectionActive = [v6 isSatelliteConnectionActive];

  startSendProgressImmediately = [(IMSendProgress *)self startSendProgressImmediately];
  if ([(NSDictionary *)self->_sendingItems count])
  {
    [(IMSendProgress *)self setWaitingForComposition:0];
    if (isSatelliteConnectionActive)
    {
      [(IMSendProgress *)self _getEstimatedSendTimeOverStewieInSeconds];
      v11 = IMSendProgressProgressForSatellite(self->_sendingItems, &v36, &v35, &v34, v10);
      v7 = v34;
    }

    else
    {
      sendingItems = self->_sendingItems;
      timeDataSource2 = [(IMSendProgress *)self timeDataSource];
      v18 = sendingItems;
      v19 = timeDataSource2;
      v57 = 0;
      v58 = &v57;
      v59 = 0x2020000000;
      v60 = 0;
      v53 = 0;
      v54 = &v53;
      v55 = 0x2020000000;
      v56 = 0;
      v49 = 0;
      v50 = &v49;
      v51 = 0x2020000000;
      v52 = 0;
      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v48 = 0;
      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v40 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1A83C9988;
      v62 = &unk_1E7814660;
      *&v63[8] = &v37;
      *&v63[16] = &v57;
      v64 = &v53;
      v65 = &v49;
      v20 = v19;
      *v63 = v20;
      v66 = &v41;
      v67 = &v45;
      [(NSDictionary *)v18 enumerateKeysAndObjectsUsingBlock:buf];
      v21 = v54[3] + v58[3];
      v22 = v46[3] + v50[3];
      v23 = v22 + v21;
      if (v22)
      {
        v11 = ((v42[6] / v22) + v21) / v23;
      }

      else
      {
        if (v23)
        {
          v11 = 1.0;
        }

        else
        {
          v11 = 0.0;
        }

        v23 = 0;
      }

      if (v23 >= v21 + 1)
      {
        v24 = v21 + 1;
      }

      else
      {
        v24 = v23;
      }

      v35 = v23;
      v36 = v24;
      v25 = v38[3];
      if (v25 > 0.0)
      {
        v34 = v38[3];
        v7 = v25;
      }

      _Block_object_dispose(&v37, 8);
      _Block_object_dispose(&v41, 8);
      _Block_object_dispose(&v45, 8);
      _Block_object_dispose(&v49, 8);
      _Block_object_dispose(&v53, 8);
      _Block_object_dispose(&v57, 8);
    }
  }

  else
  {
    v11 = 1.0;
    if ([(IMSendProgress *)self waitingForComposition])
    {
      translationStartTime = self->_translationStartTime;
      v13 = fmin(v5 - translationStartTime, 5.0) / 5.0 * 0.5;
      v14 = translationStartTime == 0.0;
      v15 = 0.0;
      if (!v14)
      {
        v15 = v13;
      }

      v11 = v15;
    }
  }

  v26 = v5 - v7 > 5.0 || startSendProgressImmediately;
  cachedSendProgress = self->_cachedSendProgress;
  if (v11 > cachedSendProgress)
  {
    cachedSendProgress = v11;
  }

  self->_cachedSendProgress = cachedSendProgress;
  if ((v26 & 1) == 0)
  {
    if (cachedSendProgress != 1.0)
    {
      return;
    }

    if (!self->_wasShowing)
    {
      goto LABEL_36;
    }
  }

  v28 = cachedSendProgress == 1.0;
  self->_wasShowing = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  *&v30 = self->_cachedSendProgress;
  [WeakRetained sendProgress:self progressDidChange:self->_sendingItems sendingMessages:v36 sendCount:v35 totalCount:v28 finished:v30];

  if (v28)
  {
LABEL_36:
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = objc_loadWeakRetained(&self->_delegate);
        v33 = objc_loadWeakRetained(&self->_context);
        *buf = 134219008;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v32;
        *&buf[22] = 2048;
        v62 = v33;
        *v63 = 2048;
        *&v63[2] = v36;
        *&v63[10] = 2048;
        *&v63[12] = v35;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "IMSendProgress: %p (delegate: %p, context: %p) finished! (sendCount = %tu, totalCount = %tu)", buf, 0x34u);
      }
    }

    [(IMSendProgress *)self _resetSendProgress];
  }
}

- (void)_scheduleSendProgressTimerIfNeeded
{
  if (!self->_sendProgressTimer)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      if ([(IMSendProgress *)self _hasSendingMessages])
      {
      }

      else
      {
        waitingForComposition = [(IMSendProgress *)self waitingForComposition];

        if (!waitingForComposition)
        {
          return;
        }
      }

      v6 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__sendProgressTimerFired_ selector:0 userInfo:1 repeats:0.0166666667];
      sendProgressTimer = self->_sendProgressTimer;
      self->_sendProgressTimer = v6;

      [(NSTimer *)self->_sendProgressTimer setTolerance:0.0333333333];
      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      [currentRunLoop addTimer:self->_sendProgressTimer forMode:*MEMORY[0x1E695DA28]];
    }
  }
}

- (void)_sendProgressTimerFired:(id)fired
{
  if ([(IMSendProgress *)self _hasSendingMessages]|| [(IMSendProgress *)self waitingForComposition])
  {

    [(IMSendProgress *)self _updateSendProgress];
  }

  else
  {
    [(NSTimer *)self->_sendProgressTimer invalidate];
    sendProgressTimer = self->_sendProgressTimer;
    self->_sendProgressTimer = 0;
  }
}

- (IMSendProgressDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end