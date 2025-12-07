@interface IDSIDQueryController
+ (id)sharedInstance;
- (BOOL)_flushQueryCacheForService:(id)service;
- (BOOL)_hasCacheForService:(id)service;
- (BOOL)_warmupQueryCacheForService:(id)service;
- (BOOL)currentIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d respectExpiry:(BOOL)expiry listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)currentIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d respectExpiry:(BOOL)expiry listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)currentRemoteDevicesForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)currentRemoteDevicesForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlockWithError:(id)error;
- (BOOL)forceRefreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)idInfoForDestinations:(id)destinations service:(id)service preferredFromID:(id)d infoTypes:(unint64_t)types options:(id)options listenerID:(id)iD queue:(id)queue completionBlock:(id)self0;
- (BOOL)participantsForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)refreshIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)refreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)refreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue errorCompletionBlock:(id)block;
- (BOOL)removeListenerID:(id)d forService:(id)service;
- (BOOL)requestIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)requestIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)requiredIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)requiredIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (IDSIDQueryController)init;
- (id)_currentCachedRemoteDevicesForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD;
- (id)_currentIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d respectExpiry:(BOOL)expiry listenerID:(id)iD;
- (id)_refreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD;
- (int64_t)_currentCachedIDStatusForDestination:(id)destination service:(id)service listenerID:(id)d;
- (int64_t)_currentIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d respectExpiry:(BOOL)expiry listenerID:(id)iD;
- (int64_t)_refreshIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d listenerID:(id)iD;
- (void)_setCurrentIDStatus:(int64_t)status forDestination:(id)destination service:(id)service;
- (void)addDelegate:(id)delegate forService:(id)service listenerID:(id)d queue:(id)queue;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addListenerID:(id)d forService:(id)service;
- (void)dealloc;
- (void)flushQueryCache;
- (void)ktPeerVerificationResultsUpdated:(id)updated forService:(id)service;
- (void)removeDelegate:(id)delegate;
- (void)removeDelegate:(id)delegate forService:(id)service listenerID:(id)d;
- (void)setFromID:(id)d;
@end

@implementation IDSIDQueryController

+ (id)sharedInstance
{
  if (qword_1ED5DE0C8 != -1)
  {
    sub_195A01DE4();
  }

  v3 = qword_1ED5DE088;

  return v3;
}

- (IDSIDQueryController)init
{
  if (_IDSRunningInDaemon())
  {
    v3 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v3);
    }

    selfCopy = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = IDSIDQueryController;
    v5 = [(IDSIDQueryController *)&v13 init];
    if (v5)
    {
      if (qword_1ED5DDF90 != -1)
      {
        sub_195A01FE8();
      }

      objc_storeStrong(&v5->_queueController, qword_1ED5DDF88);
      queueController = v5->_queueController;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_195A02060;
      v11[3] = &unk_1E743E878;
      v7 = v5;
      v12 = v7;
      [(IDSInternalQueueController *)queueController performBlock:v11 waitUntilDone:1];
      v8 = +[IDSDaemonController sharedInstance];
      listener = [v8 listener];
      [listener addHandler:v7];
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)setFromID:(id)d
{
  dCopy = d;
  queueController = self->_queueController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195B0FE84;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  [(IDSInternalQueueController *)queueController performBlock:v7 waitUntilDone:1];
}

- (void)dealloc
{
  [(IDSInternalQueueController *)self->_queueController performBlock:&unk_1F09E7420 waitUntilDone:1];
  queueController = self->_queueController;
  self->_queueController = 0;

  v4 = +[IDSDaemonController sharedInstance];
  listener = [v4 listener];
  [listener removeHandler:self];

  v6.receiver = self;
  v6.super_class = IDSIDQueryController;
  [(IDSIDQueryController *)&v6 dealloc];
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queueController = self->_queueController;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B0FFF8;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  [(IDSInternalQueueController *)queueController performBlock:v11 waitUntilDone:1];
}

- (void)removeDelegate:(id)delegate
{
  queueController = self->_queueController;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195B10098;
  v5[3] = &unk_1E743F468;
  v5[4] = self;
  v5[5] = delegate;
  delegateCopy = delegate;
  [(IDSInternalQueueController *)queueController performBlock:v5 waitUntilDone:1];
}

- (void)addDelegate:(id)delegate forService:(id)service listenerID:(id)d queue:(id)queue
{
  delegateCopy = delegate;
  serviceCopy = service;
  dCopy = d;
  queueCopy = queue;
  queueController = self->_queueController;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195B101B8;
  v19[3] = &unk_1E743EF38;
  v19[4] = self;
  v20 = delegateCopy;
  v21 = serviceCopy;
  v22 = dCopy;
  v23 = queueCopy;
  v15 = queueCopy;
  v16 = dCopy;
  v17 = serviceCopy;
  v18 = delegateCopy;
  [(IDSInternalQueueController *)queueController performBlock:v19 waitUntilDone:1];
}

- (void)removeDelegate:(id)delegate forService:(id)service listenerID:(id)d
{
  serviceCopy = service;
  dCopy = d;
  queueController = self->_queueController;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195B102A8;
  v14[3] = &unk_1E74431E8;
  v14[4] = self;
  v15 = serviceCopy;
  v16 = dCopy;
  delegateCopy = delegate;
  v11 = dCopy;
  v12 = serviceCopy;
  delegateCopy2 = delegate;
  [(IDSInternalQueueController *)queueController performBlock:v14 waitUntilDone:1];
}

- (void)addListenerID:(id)d forService:(id)service
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  serviceCopy = service;
  v8 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = dCopy;
    v17 = 2112;
    v18 = serviceCopy;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Adding listener ID: %@   for service: %@", buf, 0x16u);
  }

  queueController = self->_queueController;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195B10418;
  v12[3] = &unk_1E743E620;
  v12[4] = self;
  v13 = dCopy;
  v14 = serviceCopy;
  v10 = serviceCopy;
  v11 = dCopy;
  [(IDSInternalQueueController *)queueController performBlock:v12 waitUntilDone:1];
}

- (BOOL)removeListenerID:(id)d forService:(id)service
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  serviceCopy = service;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = dCopy;
    v24 = 2112;
    v25 = serviceCopy;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Removing listener ID: %@   for service: %@", buf, 0x16u);
  }

  queueController = self->_queueController;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195B105E8;
  v14[3] = &unk_1E743F648;
  v17 = &v18;
  v14[4] = self;
  v10 = dCopy;
  v15 = v10;
  v11 = serviceCopy;
  v16 = v11;
  [(IDSInternalQueueController *)queueController performBlock:v14 waitUntilDone:1];
  v12 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v12 & 1;
}

- (BOOL)refreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  v20 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = IDSLoggableDescriptionForHandlesOnService();
    *buf = 138412802;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v36 = iDCopy;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Client ID status to refresh ID status for destinations %@  on service: %@   from listenerID: %@", buf, 0x20u);
  }

  if ([destinationsCopy count] && objc_msgSend(serviceCopy, "length") && objc_msgSend(iDCopy, "length"))
  {
    if ([destinationsCopy count] >= 0x1E)
    {
      v22 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [destinationsCopy count];
        *buf = 138412546;
        *&buf[4] = iDCopy;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Client %@ is attempting to send more than a reasonable amount of URI's in a query {count: %lu}", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v36) = 0;
    queueController = self->_queueController;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_195B10940;
    v27[3] = &unk_1E7443210;
    v34 = buf;
    v27[4] = self;
    v28 = destinationsCopy;
    v29 = serviceCopy;
    v30 = dCopy;
    v31 = iDCopy;
    v32 = queueCopy;
    v33 = blockCopy;
    [(IDSInternalQueueController *)queueController performBlock:v27 waitUntilDone:1];
    v25 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

- (BOOL)forceRefreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  v20 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = IDSLoggableDescriptionForHandlesOnService();
    *buf = 138412802;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v36 = iDCopy;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Client ID status to force refresh ID status for destinations %@  on service: %@   from listenerID: %@", buf, 0x20u);
  }

  if ([destinationsCopy count] && objc_msgSend(serviceCopy, "length") && objc_msgSend(iDCopy, "length"))
  {
    if ([destinationsCopy count] >= 0x1E)
    {
      v22 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [destinationsCopy count];
        *buf = 138412546;
        *&buf[4] = iDCopy;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Client %@ is attempting to send more than a reasonable amount of URI's in a query {count: %lu}", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v36) = 0;
    queueController = self->_queueController;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_195B10DD0;
    v27[3] = &unk_1E7443210;
    v34 = buf;
    v27[4] = self;
    v28 = destinationsCopy;
    v29 = serviceCopy;
    v30 = dCopy;
    v31 = iDCopy;
    v32 = queueCopy;
    v33 = blockCopy;
    [(IDSInternalQueueController *)queueController performBlock:v27 waitUntilDone:1];
    v25 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

- (BOOL)refreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue errorCompletionBlock:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  v20 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = IDSLoggableDescriptionForHandlesOnService();
    *buf = 138412802;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v36 = iDCopy;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Client ID status to refresh ID status for destinations %@  on service: %@   from listenerID: %@", buf, 0x20u);
  }

  if ([destinationsCopy count] && objc_msgSend(serviceCopy, "length") && objc_msgSend(iDCopy, "length"))
  {
    if ([destinationsCopy count] >= 0x1E)
    {
      v22 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [destinationsCopy count];
        *buf = 138412546;
        *&buf[4] = iDCopy;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Client %@ is attempting to send more than a reasonable amount of URI's in a query {count: %lu}", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v36) = 0;
    queueController = self->_queueController;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_195B11260;
    v27[3] = &unk_1E7443210;
    v34 = buf;
    v27[4] = self;
    v28 = destinationsCopy;
    v29 = serviceCopy;
    v30 = dCopy;
    v31 = iDCopy;
    v32 = queueCopy;
    v33 = blockCopy;
    [(IDSInternalQueueController *)queueController performBlock:v27 waitUntilDone:1];
    v25 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

- (BOOL)refreshIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v35 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  v20 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = IDSLoggableDescriptionForHandleOnService();
    *buf = 138412802;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v34 = iDCopy;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Client ID status to refresh ID status for destination %@  on service: %@   from listenerID: %@", buf, 0x20u);
  }

  if ([destinationCopy length] && objc_msgSend(serviceCopy, "length") && objc_msgSend(iDCopy, "length"))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v34) = 0;
    queueController = self->_queueController;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_195B11558;
    v25[3] = &unk_1E7443210;
    v32 = buf;
    v25[4] = self;
    v26 = destinationCopy;
    v27 = serviceCopy;
    v28 = dCopy;
    v29 = iDCopy;
    v30 = queueCopy;
    v31 = blockCopy;
    [(IDSInternalQueueController *)queueController performBlock:v25 waitUntilDone:1];
    v23 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

- (BOOL)requiredIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  v20 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = IDSLoggableDescriptionForHandlesOnService();
    *buf = 138412802;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v36 = iDCopy;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Client ID status for required ID status for destinations %@  on service: %@   from listenerID: %@", buf, 0x20u);
  }

  if ([destinationsCopy count] && objc_msgSend(serviceCopy, "length") && objc_msgSend(iDCopy, "length"))
  {
    if ([destinationsCopy count] >= 0x1E)
    {
      v22 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [destinationsCopy count];
        *buf = 138412546;
        *&buf[4] = iDCopy;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Client %@ is attempting to send more than a reasonable amount of URI's in a query {count: %lu}", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v36) = 0;
    queueController = self->_queueController;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_195B118B8;
    v27[3] = &unk_1E7443210;
    v34 = buf;
    v27[4] = self;
    v28 = destinationsCopy;
    v29 = serviceCopy;
    v30 = dCopy;
    v31 = iDCopy;
    v32 = queueCopy;
    v33 = blockCopy;
    [(IDSInternalQueueController *)queueController performBlock:v27 waitUntilDone:1];
    v25 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

- (BOOL)requiredIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v35 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  v20 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = IDSLoggableDescriptionForHandleOnService();
    *buf = 138412802;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v34 = iDCopy;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Client ID status for required ID status for destination %@  on service: %@   from listenerID: %@", buf, 0x20u);
  }

  if ([destinationCopy length] && objc_msgSend(serviceCopy, "length") && objc_msgSend(iDCopy, "length"))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v34) = 0;
    queueController = self->_queueController;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_195B11CCC;
    v25[3] = &unk_1E7443210;
    v32 = buf;
    v25[4] = self;
    v26 = destinationCopy;
    v27 = serviceCopy;
    v28 = dCopy;
    v29 = iDCopy;
    v30 = queueCopy;
    v31 = blockCopy;
    [(IDSInternalQueueController *)queueController performBlock:v25 waitUntilDone:1];
    v23 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

- (BOOL)currentIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d respectExpiry:(BOOL)expiry listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  destinationsCopy = destinations;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  if ([destinationsCopy count] && objc_msgSend(serviceCopy, "length") && objc_msgSend(iDCopy, "length"))
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    queueController = self->_queueController;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_195B11F28;
    v24[3] = &unk_1E7443238;
    v31 = &v33;
    v24[4] = self;
    v25 = destinationsCopy;
    v26 = serviceCopy;
    v27 = dCopy;
    expiryCopy = expiry;
    v28 = iDCopy;
    v29 = queueCopy;
    v30 = blockCopy;
    [(IDSInternalQueueController *)queueController performBlock:v24 waitUntilDone:1];
    v22 = *(v34 + 24);

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (BOOL)currentIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d respectExpiry:(BOOL)expiry listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  destinationCopy = destination;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  if ([destinationCopy length] && objc_msgSend(serviceCopy, "length") && objc_msgSend(iDCopy, "length"))
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    queueController = self->_queueController;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_195B12194;
    v24[3] = &unk_1E7443238;
    v31 = &v33;
    v24[4] = self;
    v25 = destinationCopy;
    v26 = serviceCopy;
    v27 = dCopy;
    expiryCopy = expiry;
    v28 = iDCopy;
    v29 = queueCopy;
    v30 = blockCopy;
    [(IDSInternalQueueController *)queueController performBlock:v24 waitUntilDone:1];
    v22 = *(v34 + 24);

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (BOOL)idInfoForDestinations:(id)destinations service:(id)service preferredFromID:(id)d infoTypes:(unint64_t)types options:(id)options listenerID:(id)iD queue:(id)queue completionBlock:(id)self0
{
  v42 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  serviceCopy = service;
  dCopy = d;
  optionsCopy = options;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  v22 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = IDSLoggableDescriptionForHandlesOnService();
    *buf = 138413058;
    *&buf[4] = v23;
    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v39 = iDCopy;
    v40 = 2048;
    typesCopy = types;
    _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Client ID Info Request for destinations %@ on service: %@ from listenerID: %@ with infoTypes: %llu", buf, 0x2Au);
  }

  if ([destinationsCopy count] && objc_msgSend(serviceCopy, "length") && objc_msgSend(iDCopy, "length"))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v39) = 0;
    queueController = self->_queueController;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_195B1257C;
    v28[3] = &unk_1E7443260;
    v36 = buf;
    v28[4] = self;
    v29 = destinationsCopy;
    v30 = serviceCopy;
    v31 = dCopy;
    typesCopy2 = types;
    v32 = optionsCopy;
    v33 = iDCopy;
    v34 = queueCopy;
    v35 = blockCopy;
    [(IDSInternalQueueController *)queueController performBlock:v28 waitUntilDone:1];
    v25 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

- (BOOL)_hasCacheForService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy length])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    queueController = self->_queueController;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_195B126D4;
    v8[3] = &unk_1E743EA08;
    v10 = &v11;
    v8[4] = self;
    v9 = serviceCopy;
    [(IDSInternalQueueController *)queueController performBlock:v8 waitUntilDone:1];
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (int64_t)_currentCachedIDStatusForDestination:(id)destination service:(id)service listenerID:(id)d
{
  destinationCopy = destination;
  serviceCopy = service;
  dCopy = d;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  queueController = self->_queueController;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195B12854;
  v17[3] = &unk_1E7441B40;
  v21 = &v22;
  v17[4] = self;
  v12 = destinationCopy;
  v18 = v12;
  v13 = serviceCopy;
  v19 = v13;
  v14 = dCopy;
  v20 = v14;
  [(IDSInternalQueueController *)queueController performBlock:v17 waitUntilDone:1];
  v15 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v15;
}

- (BOOL)_warmupQueryCacheForService:(id)service
{
  v15 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v5 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = serviceCopy;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Client requesting to warmup the query cache for service: %@", &buf, 0xCu);
  }

  if ([serviceCopy length])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x2020000000;
    v14 = 0;
    queueController = self->_queueController;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195B12A24;
    v9[3] = &unk_1E743EA08;
    p_buf = &buf;
    v9[4] = self;
    v10 = serviceCopy;
    [(IDSInternalQueueController *)queueController performBlock:v9 waitUntilDone:1];
    v7 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_flushQueryCacheForService:(id)service
{
  v15 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v5 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = serviceCopy;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Client requesting to flush the query cache for service: %@", &buf, 0xCu);
  }

  if ([serviceCopy length])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x2020000000;
    v14 = 0;
    queueController = self->_queueController;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195B12BF0;
    v9[3] = &unk_1E743EA08;
    p_buf = &buf;
    v9[4] = self;
    v10 = serviceCopy;
    [(IDSInternalQueueController *)queueController performBlock:v9 waitUntilDone:1];
    v7 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)_setCurrentIDStatus:(int64_t)status forDestination:(id)destination service:(id)service
{
  destinationCopy = destination;
  serviceCopy = service;
  queueController = self->_queueController;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195B12CF4;
  v13[3] = &unk_1E743E698;
  v13[4] = self;
  v14 = destinationCopy;
  v15 = serviceCopy;
  statusCopy = status;
  v11 = serviceCopy;
  v12 = destinationCopy;
  [(IDSInternalQueueController *)queueController performBlock:v13 waitUntilDone:1];
}

- (void)flushQueryCache
{
  queueController = self->_queueController;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195B12D80;
  v3[3] = &unk_1E743E878;
  v3[4] = self;
  [(IDSInternalQueueController *)queueController performBlock:v3 waitUntilDone:1];
}

- (int64_t)_refreshIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d listenerID:(id)iD
{
  v40 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  v14 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = IDSLoggableDescriptionForHandleOnService();
    *buf = 138412802;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v39 = iDCopy;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "** BLOCKING Client ID status to refresh ID status for destination %@  on service: %@   from listenerID: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v39 = 0;
  v16 = objc_alloc_init(MEMORY[0x1E695DF00]);
  queueController = self->_queueController;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = sub_195B13044;
  v29 = &unk_1E74432B0;
  selfCopy = self;
  v18 = destinationCopy;
  v31 = v18;
  v19 = serviceCopy;
  v32 = v19;
  v20 = dCopy;
  v33 = v20;
  v21 = iDCopy;
  v34 = v21;
  v35 = buf;
  [(IDSInternalQueueController *)queueController performBlock:&v26 waitUntilDone:1];
  v22 = [IDSLogging IDQuery:v26];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    [v16 timeIntervalSinceNow];
    *v36 = 134217984;
    v37 = fabs(v23);
    _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "  => Done: %f", v36, 0xCu);
  }

  v24 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  return v24;
}

- (id)_refreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD
{
  v42 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  v14 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = IDSLoggableDescriptionForHandlesOnService();
    *buf = 138412802;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v39 = iDCopy;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "** BLOCKING Client ID status to refresh ID status for destinations %@  on service: %@   from listenerID: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = sub_195A00824;
  v40 = sub_195A03DB8;
  v41 = 0;
  v16 = objc_alloc_init(MEMORY[0x1E695DF00]);
  queueController = self->_queueController;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = sub_195B134B0;
  v29 = &unk_1E74432B0;
  selfCopy = self;
  v18 = destinationsCopy;
  v31 = v18;
  v19 = serviceCopy;
  v32 = v19;
  v20 = dCopy;
  v33 = v20;
  v21 = iDCopy;
  v34 = v21;
  v35 = buf;
  [(IDSInternalQueueController *)queueController performBlock:&v26 waitUntilDone:1];
  v22 = [IDSLogging IDQuery:v26];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    [v16 timeIntervalSinceNow];
    *v36 = 134217984;
    v37 = fabs(v23);
    _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "  => Done: %f", v36, 0xCu);
  }

  v24 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v24;
}

- (int64_t)_currentIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d respectExpiry:(BOOL)expiry listenerID:(id)iD
{
  expiryCopy = expiry;
  v42 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  v16 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = IDSLoggableDescriptionForHandleOnService();
    v18 = @"NO";
    *buf = 138413058;
    *&buf[4] = v17;
    if (expiryCopy)
    {
      v18 = @"YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v39 = v18;
    v40 = 2112;
    v41 = iDCopy;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "** BLOCKING Client ID status cache request for destination %@  on service: %@ respectExpiry: %@   from listenerID: %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v39 = 0;
  v19 = objc_alloc_init(MEMORY[0x1E695DF00]);
  queueController = self->_queueController;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_195B138B8;
  v29[3] = &unk_1E7443328;
  v29[4] = self;
  v21 = destinationCopy;
  v30 = v21;
  v22 = serviceCopy;
  v31 = v22;
  v23 = dCopy;
  v32 = v23;
  v35 = expiryCopy;
  v24 = iDCopy;
  v33 = v24;
  v34 = buf;
  [(IDSInternalQueueController *)queueController performBlock:v29 waitUntilDone:1];
  v25 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    [v19 timeIntervalSinceNow];
    *v36 = 134217984;
    v37 = fabs(v26);
    _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "  => Done: %f", v36, 0xCu);
  }

  v27 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  return v27;
}

- (id)_currentIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d respectExpiry:(BOOL)expiry listenerID:(id)iD
{
  expiryCopy = expiry;
  v41 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  v16 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = IDSLoggableDescriptionForHandlesOnService();
    v18 = @"NO";
    *buf = 138413058;
    *&buf[4] = v17;
    if (expiryCopy)
    {
      v18 = @"YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v39 = v18;
    LOWORD(v40) = 2112;
    *(&v40 + 2) = iDCopy;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "** BLOCKING Client ID status cache request for destinations %@  on service: %@ respectExpiry: %@   from listenerID: %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = sub_195A00824;
  *&v40 = sub_195A03DB8;
  *(&v40 + 1) = 0;
  v19 = objc_alloc_init(MEMORY[0x1E695DF00]);
  queueController = self->_queueController;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_195B13D44;
  v29[3] = &unk_1E7443328;
  v29[4] = self;
  v21 = destinationsCopy;
  v30 = v21;
  v22 = serviceCopy;
  v31 = v22;
  v23 = dCopy;
  v32 = v23;
  v35 = expiryCopy;
  v24 = iDCopy;
  v33 = v24;
  v34 = buf;
  [(IDSInternalQueueController *)queueController performBlock:v29 waitUntilDone:1];
  v25 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    [v19 timeIntervalSinceNow];
    *v36 = 134217984;
    v37 = fabs(v26);
    _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "  => Done: %f", v36, 0xCu);
  }

  v27 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v27;
}

- (BOOL)currentRemoteDevicesForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v35 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  v20 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = IDSLoggableDescriptionForHandlesOnService();
    *buf = 138412802;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v34 = iDCopy;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Client Remote Device Request for destinations %@  on service: %@   from listenerID: %@", buf, 0x20u);
  }

  if ([destinationsCopy count] && objc_msgSend(serviceCopy, "length") && objc_msgSend(iDCopy, "length"))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v34) = 0;
    queueController = self->_queueController;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_195B1407C;
    v25[3] = &unk_1E7443210;
    v32 = buf;
    v25[4] = self;
    v26 = destinationsCopy;
    v27 = serviceCopy;
    v28 = dCopy;
    v29 = iDCopy;
    v30 = queueCopy;
    v31 = blockCopy;
    [(IDSInternalQueueController *)queueController performBlock:v25 waitUntilDone:1];
    v23 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

- (BOOL)currentRemoteDevicesForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlockWithError:(id)error
{
  v35 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  errorCopy = error;
  v20 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = IDSLoggableDescriptionForHandlesOnService();
    *buf = 138412802;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v34 = iDCopy;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Client Remote Device Request for destinations %@  on service: %@   from listenerID: %@", buf, 0x20u);
  }

  if ([destinationsCopy count] && objc_msgSend(serviceCopy, "length") && objc_msgSend(iDCopy, "length"))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v34) = 0;
    queueController = self->_queueController;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_195B14364;
    v25[3] = &unk_1E7443210;
    v32 = buf;
    v25[4] = self;
    v26 = destinationsCopy;
    v27 = serviceCopy;
    v28 = dCopy;
    v29 = iDCopy;
    v30 = queueCopy;
    v31 = errorCopy;
    [(IDSInternalQueueController *)queueController performBlock:v25 waitUntilDone:1];
    v23 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

- (id)_currentCachedRemoteDevicesForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD
{
  v29 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  v14 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = IDSLoggableDescriptionForHandlesOnService();
    *buf = 138412802;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v26 = iDCopy;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "** BLOCKING  Client Remote Device Request for destinations %@  on service: %@   from listenerID: %@", buf, 0x20u);
  }

  if ([destinationsCopy count] && objc_msgSend(serviceCopy, "length") && objc_msgSend(iDCopy, "length"))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v26 = sub_195A00824;
    v27 = sub_195A03DB8;
    v28 = 0;
    queueController = self->_queueController;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_195B1463C;
    v19[3] = &unk_1E74432B0;
    v19[4] = self;
    v20 = destinationsCopy;
    v21 = serviceCopy;
    v22 = dCopy;
    v23 = iDCopy;
    v24 = buf;
    [(IDSInternalQueueController *)queueController performBlock:v19 waitUntilDone:1];
    v17 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)participantsForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195B147BC;
  v17[3] = &unk_1E743EBF0;
  v18 = blockCopy;
  v15 = blockCopy;
  LOBYTE(queue) = [(IDSIDQueryController *)self currentRemoteDevicesForDestinations:destinations service:service preferredFromID:d listenerID:iD queue:queue completionBlock:v17];

  return queue;
}

- (BOOL)requestIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  serviceCopy = service;
  iDCopy = iD;
  blockCopy = block;
  queueCopy = queue;
  dCopy = d;
  v20 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = IDSLoggableDescriptionForHandlesOnService();
    v24 = 138412802;
    v25 = v21;
    v26 = 2112;
    v27 = serviceCopy;
    v28 = 2112;
    v29 = iDCopy;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Client ID status request for destinations %@  on service: %@   from listenerID: %@", &v24, 0x20u);
  }

  v22 = [(IDSIDQueryController *)self refreshIDStatusForDestinations:destinationsCopy service:serviceCopy preferredFromID:dCopy listenerID:iDCopy queue:queueCopy completionBlock:blockCopy];
  return v22;
}

- (BOOL)requestIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  serviceCopy = service;
  iDCopy = iD;
  blockCopy = block;
  queueCopy = queue;
  dCopy = d;
  v20 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = IDSLoggableDescriptionForHandleOnService();
    v24 = 138412802;
    v25 = v21;
    v26 = 2112;
    v27 = serviceCopy;
    v28 = 2112;
    v29 = iDCopy;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Client ID status request for destination %@  on service: %@   from listenerID: %@", &v24, 0x20u);
  }

  v22 = [(IDSIDQueryController *)self refreshIDStatusForDestination:destinationCopy service:serviceCopy preferredFromID:dCopy listenerID:iDCopy queue:queueCopy completionBlock:blockCopy];
  return v22;
}

- (void)ktPeerVerificationResultsUpdated:(id)updated forService:(id)service
{
  v32 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  serviceCopy = service;
  v8 = MEMORY[0x1E696ACD0];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v12 = qword_1ED5DDEF8;
  v27 = qword_1ED5DDEF8;
  if (!qword_1ED5DDEF8)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v29 = sub_195B14E88;
    v30 = &unk_1E743E648;
    v31 = &v24;
    sub_195B14E88(&buf);
    v12 = v25[3];
  }

  v13 = v12;
  _Block_object_dispose(&v24, 8);
  v14 = [v9 setWithObjects:{v10, v11, v12, 0}];
  v23 = 0;
  v15 = [v8 unarchivedObjectOfClasses:v14 fromData:updatedCopy error:&v23];
  v16 = v23;

  v17 = +[IDSLogging IDQuery];
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "Error unarchiving resultData -- dropping { unarchiveError: %@ }", &buf, 0xCu);
    }
  }

  else
  {
    if (v18)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "Successfully unarchived results: %@", &buf, 0xCu);
    }

    queueController = self->_queueController;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195B14E30;
    v20[3] = &unk_1E743E620;
    v20[4] = self;
    v21 = serviceCopy;
    v22 = v15;
    [(IDSInternalQueueController *)queueController performBlock:v20 waitUntilDone:0];
  }
}

@end