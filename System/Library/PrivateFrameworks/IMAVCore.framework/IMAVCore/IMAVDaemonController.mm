@interface IMAVDaemonController
+ (id)sharedInstance;
- (BOOL)__isLocalObjectValidOnQueue:(id)queue;
- (BOOL)__isRemoteObjectValidOnQueue:(id)queue;
- (BOOL)_makeConnectionWithCompletionBlock:(id)block;
- (BOOL)addListenerID:(id)d;
- (BOOL)hasListenerForID:(id)d;
- (BOOL)isConnected;
- (BOOL)isConnecting;
- (BOOL)localObjectExists;
- (BOOL)remoteObjectExists;
- (BOOL)removeListenerID:(id)d;
- (IMAVDaemonController)init;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_cleanUpConnection;
- (void)_connectToDaemon;
- (void)_disconnectFromDaemon;
- (void)_listenerSetUpdated;
- (void)_localObjectCleanup;
- (void)_localObjectDiedNotification:(id)notification;
- (void)_noteSetupComplete;
- (void)_remoteObjectCleanup;
- (void)_remoteObjectDiedNotification:(id)notification;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)localObjectDiedNotification:(id)notification;
- (void)remoteObjectDiedNotification:(id)notification;
@end

@implementation IMAVDaemonController

+ (id)sharedInstance
{
  if (qword_28134A428 != -1)
  {
    sub_25477F9A4();
  }

  v3 = qword_28134A3F8;

  return v3;
}

- (IMAVDaemonController)init
{
  v31 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = IMAVDaemonController;
  v2 = [(IMAVDaemonController *)&v29 init];
  if (v2)
  {
    Main = CFRunLoopGetMain();
    memset(&context, 0, 72);
    context.perform = nullsub_1;
    v2->_runLoopSource = CFRunLoopSourceCreate(0, 0, &context);
    objc_opt_class();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = *MEMORY[0x277D191A0];
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v24, v30, 16);
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        v9 = 0;
        do
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v4);
          }

          CFRunLoopAddSource(Main, v2->_runLoopSource, *(*(&v24 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v10, &v24, v30, 16);
      }

      while (v7);
    }

    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    connectionLock = v2->_connectionLock;
    v2->_connectionLock = v11;

    v13 = dispatch_queue_create("com.apple.IMAVDaemonControllerQueue", 0);
    remoteMessageQueue = v2->_remoteMessageQueue;
    v2->_remoteMessageQueue = v13;

    v15 = dispatch_queue_create("com.apple.IMAVDaemonControllerListenerLockQueue", 0);
    listenerLockQueue = v2->_listenerLockQueue;
    v2->_listenerLockQueue = v15;

    v17 = dispatch_queue_create("com.apple.IMAVDaemonControllerAgentLockQueue", 0);
    remoteDaemonLockQueue = v2->_remoteDaemonLockQueue;
    v2->_remoteDaemonLockQueue = v17;

    v19 = dispatch_queue_create("com.apple.IMAVDaemonControllerLocalLockQueue", 0);
    localObjectLockQueue = v2->_localObjectLockQueue;
    v2->_localObjectLockQueue = v19;

    v21 = objc_alloc_init(IMAVDaemonListener);
    daemonListener = v2->_daemonListener;
    v2->_daemonListener = v21;
  }

  return v2;
}

- (void)dealloc
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend_removeObserver_name_object_(v6, v7, self, 0, 0);

  connectionLock = self->_connectionLock;
  self->_connectionLock = 0;

  v9.receiver = self;
  v9.super_class = IMAVDaemonController;
  [(IMAVDaemonController *)&v9 dealloc];
}

- (BOOL)__isLocalObjectValidOnQueue:(id)queue
{
  queueCopy = queue;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_25477AC98;
  v9[3] = &unk_279783A10;
  v9[4] = self;
  v9[5] = &v10;
  v5 = MEMORY[0x259C18E10](v9);
  v6 = v5;
  if (queueCopy)
  {
    dispatch_sync(queueCopy, v5);
  }

  else
  {
    v5[2](v5);
  }

  v7 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)__isRemoteObjectValidOnQueue:(id)queue
{
  queueCopy = queue;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_25477ADD0;
  v9[3] = &unk_279783A10;
  v9[4] = self;
  v9[5] = &v10;
  v5 = MEMORY[0x259C18E10](v9);
  v6 = v5;
  if (queueCopy)
  {
    dispatch_sync(queueCopy, v5);
  }

  else
  {
    v5[2](v5);
  }

  v7 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)isConnecting
{
  if (self->_acquiringDaemonConnection)
  {
    LOBYTE(isLocalObjectValidOnQueue) = 1;
  }

  else
  {
    isLocalObjectValidOnQueue = objc_msgSend___isLocalObjectValidOnQueue_(self, a2, self->_localObjectLockQueue, v2, v3);
    if (isLocalObjectValidOnQueue)
    {
      v10 = objc_msgSend_listener(self, v6, v7, v8, v9);
      isSetupComplete = objc_msgSend_isSetupComplete(v10, v11, v12, v13, v14);

      if (isSetupComplete)
      {
        LOBYTE(isLocalObjectValidOnQueue) = 0;
      }

      else
      {
        remoteDaemonLockQueue = self->_remoteDaemonLockQueue;

        LOBYTE(isLocalObjectValidOnQueue) = objc_msgSend___isRemoteObjectValidOnQueue_(self, v16, remoteDaemonLockQueue, v17, v18);
      }
    }
  }

  return isLocalObjectValidOnQueue;
}

- (BOOL)isConnected
{
  if (!objc_msgSend___isLocalObjectValidOnQueue_(self, a2, self->_localObjectLockQueue, v2, v3))
  {
    return 0;
  }

  v9 = objc_msgSend_listener(self, v5, v6, v7, v8);
  isSetupComplete = objc_msgSend_isSetupComplete(v9, v10, v11, v12, v13);

  if (!isSetupComplete)
  {
    return 0;
  }

  remoteDaemonLockQueue = self->_remoteDaemonLockQueue;

  return objc_msgSend___isRemoteObjectValidOnQueue_(self, v15, remoteDaemonLockQueue, v16, v17);
}

- (void)_noteSetupComplete
{
  CFRunLoopSourceSignal(self->_runLoopSource);
  Main = CFRunLoopGetMain();

  CFRunLoopWakeUp(Main);
}

- (BOOL)remoteObjectExists
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  remoteDaemonLockQueue = self->_remoteDaemonLockQueue;
  if (remoteDaemonLockQueue)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_25477B000;
    v5[3] = &unk_279783A10;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(remoteDaemonLockQueue, v5);
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

- (BOOL)localObjectExists
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  localObjectLockQueue = self->_localObjectLockQueue;
  if (localObjectLockQueue)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_25477B0D4;
    v5[3] = &unk_279783A10;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(localObjectLockQueue, v5);
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

- (void)_localObjectCleanup
{
  localObjectLockQueue = self->_localObjectLockQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_25477B164;
  block[3] = &unk_279783738;
  block[4] = self;
  dispatch_sync(localObjectLockQueue, block);
}

- (void)_remoteObjectCleanup
{
  remoteDaemonLockQueue = self->_remoteDaemonLockQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_25477B270;
  block[3] = &unk_279783738;
  block[4] = self;
  dispatch_sync(remoteDaemonLockQueue, block);
}

- (void)_listenerSetUpdated
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  listenerLockQueue = self->_listenerLockQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_25477B464;
  block[3] = &unk_279783A10;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(listenerLockQueue, block);
  if (*(v18 + 24) == 1)
  {
    v5 = sub_254761764(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "We have some listeners, make sure we're connected to daemon", v15, 2u);
    }

    objc_msgSend__connectToDaemon(self, v6, v7, v8, v9);
  }

  else
  {
    v10 = sub_254761764(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "No more listeners disconnecting from daemon", v15, 2u);
    }

    objc_msgSend__disconnectFromDaemon(self, v11, v12, v13, v14);
  }

  _Block_object_dispose(&v17, 8);
}

- (BOOL)addListenerID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = sub_254761764(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = dCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Request to add listener with ID: %@", buf, 0xCu);
  }

  v13 = objc_msgSend_length(dCopy, v6, v7, v8, v9);
  if (v13 && (objc_msgSend_hasListenerForID_(self, v10, dCopy, v11, v12) & 1) == 0)
  {
    listenerLockQueue = self->_listenerLockQueue;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = sub_25477B5F8;
    v23 = &unk_2797832F0;
    selfCopy = self;
    v25 = dCopy;
    dispatch_sync(listenerLockQueue, &v20);
    objc_msgSend__listenerSetUpdated(self, v15, v16, v17, v18, v20, v21, v22, v23, selfCopy);
  }

  return v13 != 0;
}

- (BOOL)hasListenerForID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  listenerLockQueue = self->_listenerLockQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_25477B7A0;
  block[3] = &unk_279783A38;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(listenerLockQueue, block);
  LOBYTE(listenerLockQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return listenerLockQueue;
}

- (BOOL)removeListenerID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = sub_254761764(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Request to remove listener with ID: %@", &buf, 0xCu);
  }

  if (objc_msgSend_length(dCopy, v6, v7, v8, v9))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x2020000000;
    v22 = 0;
    listenerLockQueue = self->_listenerLockQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_25477B964;
    block[3] = &unk_279783A60;
    block[4] = self;
    v18 = dCopy;
    p_buf = &buf;
    dispatch_sync(listenerLockQueue, block);
    objc_msgSend__listenerSetUpdated(self, v11, v12, v13, v14);
    v15 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (BOOL)_makeConnectionWithCompletionBlock:(id)block
{
  v63 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v5, v6, v7, v8);
  IsShuttingDown = objc_msgSend_systemIsShuttingDown(v9, v10, v11, v12, v13);

  if (IsShuttingDown)
  {
    goto LABEL_8;
  }

  v16 = sub_254761764(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_hasCheckedForDaemon)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    *buf = 138412290;
    v62 = v17;
    _os_log_impl(&dword_254743000, v16, OS_LOG_TYPE_DEFAULT, "  Ensuring connection to daemon (has checked: %@)", buf, 0xCu);
  }

  if (self->_hasCheckedForDaemon)
  {
LABEL_8:
    v22 = 0;
  }

  else
  {
    self->_hasCheckedForDaemon = 1;
    if (!self->_listenerID)
    {
      v23 = IMGetMainBundleIdentifier();
      if (!objc_msgSend_length(v23, v24, v25, v26, v27))
      {
        v32 = objc_msgSend_stringGUID(MEMORY[0x277CCACA8], v28, v29, v30, v31);

        v23 = v32;
      }

      v33 = objc_msgSend_copy(v23, v28, v29, v30, v31);
      listenerID = self->_listenerID;
      self->_listenerID = v33;
    }

    v35 = objc_msgSend_remoteObjectExists(self, v18, v19, v20, v21);
    v36 = v35;
    v37 = sub_254761764(v35);
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
    if (v36)
    {
      if (v38)
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v37, OS_LOG_TYPE_DEFAULT, "Remote Object exists, not creating new remote object", buf, 2u);
      }
    }

    else
    {
      if (v38)
      {
        v39 = self->_listenerID;
        *buf = 138412290;
        v62 = v39;
        _os_log_impl(&dword_254743000, v37, OS_LOG_TYPE_DEFAULT, "  Grabbing remote daemon port (listener ID: %@)", buf, 0xCu);
      }

      v44 = objc_msgSend_listener(self, v40, v41, v42, v43);
      objc_msgSend__noteDisconnected(v44, v45, v46, v47, v48);

      v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v37 = v49;
      v50 = self->_listenerID;
      if (v50)
      {
        CFDictionarySetValue(v49, @"listenerID", v50);
      }

      if (_IMWillLog())
      {
        v55 = objc_msgSend_date(MEMORY[0x277CBEAA8], v51, v52, v53, v54);
        if (v55)
        {
          CFDictionarySetValue(v37, @"agentRequested", v55);
        }
      }

      if (objc_msgSend_remoteObjectExists(self, v51, v52, v53, v54))
      {
        if (blockCopy)
        {
          blockCopy[2](blockCopy);
        }
      }

      else
      {
        localObjectLockQueue = self->_localObjectLockQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_25477BDD4;
        block[3] = &unk_279783AB0;
        block[4] = self;
        v37 = v37;
        v59 = v37;
        v60 = blockCopy;
        dispatch_sync(localObjectLockQueue, block);

        if (qword_27F610700 != -1)
        {
          sub_25477F9B8();
        }
      }
    }

    v22 = 1;
  }

  return v22;
}

- (void)_connectToDaemon
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], a2, v2, v3, v4);
  IsShuttingDown = objc_msgSend_systemIsShuttingDown(v6, v7, v8, v9, v10);

  if (IsShuttingDown)
  {
    v17 = sub_254761764(v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v18, v19, v20, v21);
      v27 = objc_msgSend_systemIsShuttingDown(v22, v23, v24, v25, v26);
      v28 = @"NO";
      if (v27)
      {
        v28 = @"YES";
      }

      *buf = 138412290;
      v64 = v28;
      _os_log_impl(&dword_254743000, v17, OS_LOG_TYPE_DEFAULT, "  Connecting to avdaemon (system is shutting down: %@", buf, 0xCu);
    }
  }

  else
  {
    isConnected = objc_msgSend_isConnected(self, v13, v14, v15, v16);
    if ((isConnected & 1) != 0 || (isConnected = objc_msgSend_isConnecting(self, v30, v31, v32, v33), isConnected))
    {
      v34 = sub_254761764(isConnected);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        if (objc_msgSend_isConnected(self, v35, v36, v37, v38))
        {
          v43 = @"YES";
        }

        else
        {
          v43 = @"NO";
        }

        if (objc_msgSend_isConnecting(self, v39, v40, v41, v42))
        {
          v44 = @"YES";
        }

        else
        {
          v44 = @"NO";
        }

        *buf = 138412546;
        v64 = v43;
        v65 = 2112;
        v66 = v44;
        _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, "  Daemon is connected %@ is connecting %@", buf, 0x16u);
      }
    }

    else
    {
      v45 = sub_254761764(isConnected);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v45, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, buf, 2u);
      }

      objc_msgSend_lock(self->_connectionLock, v46, v47, v48, v49);
      if ((!objc_msgSend_remoteObjectExists(self, v50, v51, v52, v53) || (objc_msgSend___isLocalObjectValidOnQueue_(self, v54, self->_localObjectLockQueue, v56, v57) & 1) == 0) && !self->_acquiringDaemonConnection)
      {
        objc_msgSend__cleanUpConnection(self, v54, v55, v56, v57);
        self->_acquiringDaemonConnection = 1;
        dispatch_suspend(self->_remoteMessageQueue);
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = sub_25477C75C;
        v62[3] = &unk_279783738;
        v62[4] = self;
        v58 = MEMORY[0x259C18E10](v62);
        if ((objc_msgSend__makeConnectionWithCompletionBlock_(self, v59, v58, v60, v61) & 1) == 0)
        {
          self->_acquiringDaemonConnection = 0;
        }
      }

      objc_msgSend_unlock(self->_connectionLock, v54, v55, v56, v57);
    }
  }
}

- (void)_cleanUpConnection
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, v33, 2u);
  }

  *&self->_hasCheckedForDaemon = 0;
  if ((objc_msgSend_localObjectExists(self, v4, v5, v6, v7) & 1) != 0 || objc_msgSend_remoteObjectExists(self, v8, v9, v10, v11))
  {
    v12 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v8, v9, v10, v11);
    objc_msgSend_removeObserver_name_object_(v12, v13, self, *MEMORY[0x277D19190], 0);

    v18 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v14, v15, v16, v17);
    objc_msgSend_removeObserver_name_object_(v18, v19, self, *MEMORY[0x277D19148], 0);

    objc_msgSend__remoteObjectCleanup(self, v20, v21, v22, v23);
    objc_msgSend__localObjectCleanup(self, v24, v25, v26, v27);
  }

  v28 = objc_msgSend_listener(self, v8, v9, v10, v11);
  objc_msgSend__noteDisconnected(v28, v29, v30, v31, v32);
}

- (void)_disconnectFromDaemon
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, v8, 2u);
  }

  objc_msgSend__cleanUpConnection(self, v4, v5, v6, v7);
}

- (void)_localObjectDiedNotification:(id)notification
{
  v4 = sub_254761764(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, " ... disconnection from agent (local) being handled by main thread", v13, 2u);
  }

  objc_msgSend__disconnectFromDaemon(self, v5, v6, v7, v8);
  objc_msgSend__listenerSetUpdated(self, v9, v10, v11, v12);
  byte_27F610708 = 0;
}

- (void)_remoteObjectDiedNotification:(id)notification
{
  v4 = sub_254761764(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, " ... disconnection from agent (remote) being handled by main thread", buf, 2u);
  }

  objc_msgSend__disconnectFromDaemon(self, v5, v6, v7, v8);
  v13 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v9, v10, v11, v12);
  IsShuttingDown = objc_msgSend_systemIsShuttingDown(v13, v14, v15, v16, v17);

  if ((IsShuttingDown & 1) == 0)
  {
    v20 = sub_254761764(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "Will auto reconnect...", buf, 2u);
    }

    im_dispatch_after();
  }
}

- (void)localObjectDiedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_254761764(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Disconnected from agent (local)...", v16, 2u);
  }

  v10 = objc_msgSend_listener(self, v6, v7, v8, v9);
  objc_msgSend__noteDisconnected(v10, v11, v12, v13, v14);

  byte_27F610708 = 1;
  objc_msgSend_performSelectorOnMainThread_withObject_waitUntilDone_(self, v15, sel__localObjectDiedNotification_, notificationCopy, 0);
}

- (void)remoteObjectDiedNotification:(id)notification
{
  notificationCopy = notification;
  v9 = objc_msgSend_listener(self, v5, v6, v7, v8);
  objc_msgSend__noteDisconnected(v9, v10, v11, v12, v13);

  if ((byte_27F610708 & 1) == 0)
  {
    v15 = sub_254761764(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "Disconnected from agent (remote)...", v17, 2u);
    }

    objc_msgSend_performSelectorOnMainThread_withObject_waitUntilDone_(self, v16, sel__remoteObjectDiedNotification_, notificationCopy, 0);
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  types = protocol_getMethodDescription(&unk_28669DFF8, selector, 1, 1).types;
  v6 = MEMORY[0x277CBEB08];

  return MEMORY[0x2821F9670](v6, sel_signatureWithObjCTypes_, types, v4, v5);
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (objc_msgSend_isConnected(self, v5, v6, v7, v8))
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = sub_25477CF78;
    v20 = &unk_2797832F0;
    selfCopy = self;
    v9 = invocationCopy;
    v22 = v9;
    v10 = MEMORY[0x259C18E10](&v17);
    objc_msgSend_retainArguments(v9, v11, v12, v13, v14, v17, v18, v19, v20, selfCopy);
    dispatch_async(self->_remoteMessageQueue, v10);

    v15 = v22;
LABEL_5:

    goto LABEL_6;
  }

  remoteDaemonLockQueue = self->_remoteDaemonLockQueue;
  if (remoteDaemonLockQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_25477CE94;
    block[3] = &unk_2797832F0;
    v24 = invocationCopy;
    selfCopy2 = self;
    dispatch_sync(remoteDaemonLockQueue, block);
    v15 = v24;
    goto LABEL_5;
  }

LABEL_6:
}

@end