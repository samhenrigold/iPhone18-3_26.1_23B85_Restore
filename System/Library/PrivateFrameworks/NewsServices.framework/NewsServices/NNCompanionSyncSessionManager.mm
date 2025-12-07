@interface NNCompanionSyncSessionManager
- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error;
- (NNCompanionSyncSessionManagerDelegate)delegate;
- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
- (void)syncSession:(id)session didEndWithError:(id)error;
@end

@implementation NNCompanionSyncSessionManager

- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error
{
  sessionCopy = session;
  changesCopy = changes;
  v9 = NNSetupCompanionSyncLog(changesCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Asked to enqueue some changes!", buf, 2u);
  }

  delegate = [(NNCompanionSyncSessionManager *)self delegate];
  v11 = [delegate companionSyncSessionManagerWantsHeadlineData:self];

  v31 = 0;
  v12 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:&v31];
  v13 = v31;
  v14 = v13;
  if (!v12)
  {
    v24 = NNSetupCompanionSyncLog(v13);
    if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_ERROR))
    {
      sub_1000091AC(v11, v14, &v24->super);
    }

    goto LABEL_21;
  }

  syncingData = [(NNCompanionSyncSessionManager *)self syncingData];

  if (syncingData)
  {
    v17 = NNSetupCompanionSyncLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100009134(sessionCopy, v17);
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v19 = [(__CFString *)v12 conformsToProtocol:&OBJC_PROTOCOL___NNSyncableResult];
  v20 = v19;
  v21 = NNSetupCompanionSyncLog(v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = @"BAD DICT";
    if (isKindOfClass)
    {
      v22 = @"Dict";
    }

    v23 = @"BAD SYNC";
    *buf = 138412802;
    v33 = v22;
    v34 = 2112;
    if (v20)
    {
      v23 = @"syncable";
    }

    v35 = v23;
    v36 = 2112;
    v37 = v12;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Enqueueing results (%@, %@) %@ for syncing…", buf, 0x20u);
  }

  if (isKindOfClass & v20)
  {
    v24 = [[NNHeadlineResultChange alloc] initWithHeadlineResult:v12];
    v25 = changesCopy[2](changesCopy, v24);
    v26 = v25;
    v27 = NNSetupCompanionSyncLog(v25);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
    if (!v26)
    {
      if (v28)
      {
        *buf = 138412290;
        v33 = v12;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Couldn't enqueue results %@", buf, 0xCu);
      }

      v29 = 1;
      goto LABEL_26;
    }

    if (v28)
    {
      *buf = 138412546;
      v33 = v24;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Enqueued result change with results %@ %@…", buf, 0x16u);
    }

    [(NNCompanionSyncSessionManager *)self setSyncingData:v11];
LABEL_21:
    v29 = 2;
LABEL_26:

    goto LABEL_27;
  }

  v29 = 2;
LABEL_27:

  return v29;
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  changesCopy = changes;
  completionCopy = completion;
  v8 = NNSetupCompanionSyncLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v24 = [changesCopy count];
    v25 = 2112;
    v26 = changesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Asked to apply %ld changes! %@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = changesCopy;
  isKindOfClass = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (isKindOfClass)
  {
    v11 = isKindOfClass;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = NNSetupCompanionSyncLog(isKindOfClass);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Change to apply: %@", buf, 0xCu);
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            delegate = [(NNCompanionSyncSessionManager *)self delegate];
            [delegate companionSyncSessionManagerWantsHeadlineUpdate:self];
          }
        }

        ++v13;
      }

      while (v11 != v13);
      isKindOfClass = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v11 = isKindOfClass;
    }

    while (isKindOfClass);
  }

  completionCopy[2](completionCopy, 1, 0);
}

- (void)syncSession:(id)session didEndWithError:(id)error
{
  errorCopy = error;
  v6 = NNSetupCompanionSyncLog(errorCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (errorCopy)
  {
    if (v7)
    {
      v12 = 138412290;
      v13 = errorCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Sync Session ended with error: %@", &v12, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Sync Session has finished", &v12, 2u);
    }

    syncingData = [(NNCompanionSyncSessionManager *)self syncingData];

    if (syncingData)
    {
      delegate = [(NNCompanionSyncSessionManager *)self delegate];
      syncingData2 = [(NNCompanionSyncSessionManager *)self syncingData];
      [delegate companionSyncSessionManager:self didSyncHeadlineData:syncingData2];
    }

    else
    {
      delegate = NNSetupCompanionSyncLog(v9);
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_INFO, "Sync Session finished without tracking any data. Repeat sync?", &v12, 2u);
      }
    }

    [(NNCompanionSyncSessionManager *)self setSyncingData:0];
  }
}

- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error
{
  v4 = NNSetupCompanionSyncLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sync session - Resetting data store.", v6, 2u);
  }

  return 1;
}

- (NNCompanionSyncSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end