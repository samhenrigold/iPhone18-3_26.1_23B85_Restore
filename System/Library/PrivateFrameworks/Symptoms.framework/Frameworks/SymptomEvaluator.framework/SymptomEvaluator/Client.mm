@interface Client
- (BOOL)_shouldSendMessages;
- (Client)initWithConn:(id)conn;
- (id)description;
- (void)_decrementMessageCounter:(int64_t)counter;
- (void)_incrementMessageCounter:(int64_t)counter;
- (void)_sendBarrierIfNecessaryWithBlock:(id)block;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation Client

- (Client)initWithConn:(id)conn
{
  connCopy = conn;
  v11.receiver = self;
  v11.super_class = Client;
  v6 = [(Client *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, conn);
    v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
    subscribedNOIs = v7->_subscribedNOIs;
    v7->_subscribedNOIs = v8;

    *&v7->_shouldSendMessages = 1;
    v7->_barrierMessageCount = 0;
    v7->_droppedMessageCount = 0;
    v7->_activeMessageCount = 0;
  }

  return v7;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NOIClient with XPC connection to pid %d (%ld observed NOIs: %@)", -[NSXPCConnection processIdentifier](self->_connection, "processIdentifier"), -[NSMutableSet count](self->_subscribedNOIs, "count"), self->_subscribedNOIs];

  return v2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v41 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([(Client *)self _shouldSendMessages])
  {
    if (context)
    {
      v13 = objectCopy;
      identityAttrsOnly = [v13 identityAttrsOnly];
      if (context == 7)
      {
        v15 = noiLogHandle;
        if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          connection = [(Client *)self connection];
          processIdentifier = [connection processIdentifier];
          connection2 = [(Client *)self connection];
          *buf = 134219266;
          selfCopy2 = self;
          v31 = 1024;
          v32 = processIdentifier;
          v33 = 2112;
          v34 = pathCopy;
          v35 = 2112;
          v36 = v13;
          v37 = 1024;
          processIdentifier2 = [connection2 processIdentifier];
          v39 = 2112;
          v40 = changeCopy;
          _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "NOICLIENT <%p:%d> observed %@ of object %@, partial update to pid: %d, change: %@", buf, 0x36u);
        }
      }

      connection3 = [(Client *)self connection];
      remoteObjectProxy = [connection3 remoteObjectProxy];
      [remoteObjectProxy updateNOI:identityAttrsOnly keyPath:pathCopy change:changeCopy];
    }

    else
    {
      v22 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        connection4 = [(Client *)self connection];
        processIdentifier3 = [connection4 processIdentifier];
        connection5 = [(Client *)self connection];
        *buf = 134219010;
        selfCopy2 = self;
        v31 = 1024;
        v32 = processIdentifier3;
        v33 = 2112;
        v34 = pathCopy;
        v35 = 2112;
        v36 = objectCopy;
        v37 = 1024;
        processIdentifier2 = [connection5 processIdentifier];
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "NOICLIENT <%p:%d> observed %@ of object %@, full update to pid: %d", buf, 0x2Cu);
      }

      v13 = [objectCopy copy];
      identityAttrsOnly = [(Client *)self connection];
      connection3 = [identityAttrsOnly remoteObjectProxy];
      remoteObjectProxy = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v13, 0}];
      [connection3 haveNOIs:remoteObjectProxy tornDown:0];
    }

    [(Client *)self _incrementMessageCounter:1];
    objc_initWeak(buf, self);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __57__Client_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v27[3] = &unk_27898BA88;
    objc_copyWeak(&v28, buf);
    v27[4] = self;
    [(Client *)self _sendBarrierIfNecessaryWithBlock:v27];
    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }
}

void __57__Client_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 connection];
    v21 = 134218240;
    v22 = WeakRetained;
    v23 = 1024;
    v24 = [v6 processIdentifier];
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "NOICLIENT <%p:%d> Consuming barrier block", &v21, 0x12u);
  }

  if (WeakRetained)
  {
    [WeakRetained _decrementMessageCounter:4];
    v7 = WeakRetained;
    objc_sync_enter(v7);
    v8 = *(a1 + 32);
    if (*(v8 + 33) == 1 && *(v8 + 8) <= 8)
    {
      *(v8 + 33) = 0;
      v9 = [v7 subscribedNOIs];
      v10 = [v9 count] == 0;

      v11 = noiLogHandle;
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v19 = [v7 connection];
          v20 = [v19 processIdentifier];
          v21 = 134218240;
          v22 = v7;
          v23 = 1024;
          v24 = v20;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "NOICLIENT <%p:%d> Client has no subscribed NOIs. Skipping subscribed NOI refresh", &v21, 0x12u);
        }
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v7 connection];
          v14 = [v13 processIdentifier];
          v21 = 134218240;
          v22 = v7;
          v23 = 1024;
          v24 = v14;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "NOICLIENT <%p:%d> Client resumed. Sending refresh updates for subscribed NOIs", &v21, 0x12u);
        }

        v15 = objc_alloc(MEMORY[0x277CBEB98]);
        v16 = [v7 subscribedNOIs];
        v12 = [v15 initWithSet:v16 copyItems:1];

        v17 = [v7 connection];
        v18 = [v17 remoteObjectProxy];
        [v18 haveNOIs:v12 tornDown:0];
      }
    }

    objc_sync_exit(v7);
  }
}

- (BOOL)_shouldSendMessages
{
  v29 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeMessageCount = selfCopy->_activeMessageCount;
  if (selfCopy->_shouldSendMessages)
  {
    if (activeMessageCount >= 16)
    {
      selfCopy->_shouldSendMessages = 0;
      v4 = noiLogHandle;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        connection = [(Client *)selfCopy connection];
        processIdentifier = [connection processIdentifier];
        v7 = selfCopy->_activeMessageCount;
        v19 = 134218752;
        v20 = selfCopy;
        v21 = 1024;
        v22 = processIdentifier;
        v23 = 2048;
        v24 = v7;
        v25 = 1024;
        v26 = 16;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "NOICLIENT <%p:%d> Current message count (%ld) is above sent XPC message limit (%d). Suspending NOI updates", &v19, 0x22u);
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (activeMessageCount > 8)
    {
      droppedMessageCount = selfCopy->_droppedMessageCount;
      if ((droppedMessageCount & 0x8000000000000007) != 1)
      {
LABEL_14:
        selfCopy->_droppedMessageCount = droppedMessageCount + 1;
        selfCopy->_forceUpdateOnWake = 1;
        goto LABEL_15;
      }

      v4 = noiLogHandle;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        connection2 = [(Client *)selfCopy connection];
        processIdentifier2 = [connection2 processIdentifier];
        v16 = selfCopy->_activeMessageCount;
        v19 = 134218752;
        v20 = selfCopy;
        v21 = 1024;
        v22 = processIdentifier2;
        v23 = 2048;
        v24 = v16;
        v25 = 1024;
        v26 = 8;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "NOICLIENT <%p:%d> Current message count (%ld) is still above XPC message resume limit (%d). NOI updates are still suspended (dropping message)", &v19, 0x22u);
      }

LABEL_13:

      droppedMessageCount = selfCopy->_droppedMessageCount;
      goto LABEL_14;
    }

    selfCopy->_shouldSendMessages = 1;
    v8 = noiLogHandle;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      connection3 = [(Client *)selfCopy connection];
      processIdentifier3 = [connection3 processIdentifier];
      v11 = selfCopy->_activeMessageCount;
      v12 = selfCopy->_droppedMessageCount;
      v19 = 134219008;
      v20 = selfCopy;
      v21 = 1024;
      v22 = processIdentifier3;
      v23 = 2048;
      v24 = v11;
      v25 = 1024;
      v26 = 8;
      v27 = 2048;
      v28 = v12;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "NOICLIENT <%p:%d> Current message count (%ld) is below XPC message resume limit (%d). Resuming NOI updates (%ld dropped messages)", &v19, 0x2Cu);
    }

    selfCopy->_droppedMessageCount = 0;
  }

LABEL_15:
  shouldSendMessages = selfCopy->_shouldSendMessages;
  objc_sync_exit(selfCopy);

  return shouldSendMessages;
}

- (void)_sendBarrierIfNecessaryWithBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_barrierMessageCount >= 4)
  {
    v6 = noiLogHandle;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      connection = [(Client *)selfCopy connection];
      v13 = 134218240;
      v14 = selfCopy;
      v15 = 1024;
      processIdentifier = [connection processIdentifier];
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "NOICLIENT <%p:%d> Sending barrier block", &v13, 0x12u);
    }

    [(NSXPCConnection *)selfCopy->_connection addBarrierBlock:blockCopy];
    selfCopy->_barrierMessageCount = 0;
    v8 = noiLogHandle;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      connection2 = [(Client *)selfCopy connection];
      processIdentifier2 = [connection2 processIdentifier];
      activeMessageCount = selfCopy->_activeMessageCount;
      barrierMessageCount = selfCopy->_barrierMessageCount;
      v13 = 134218752;
      v14 = selfCopy;
      v15 = 1024;
      processIdentifier = processIdentifier2;
      v17 = 2048;
      v18 = barrierMessageCount;
      v19 = 2048;
      v20 = activeMessageCount;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "NOICLIENT <%p:%d> Reset barrier send counter (%ld); message count (%ld)", &v13, 0x26u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_incrementMessageCounter:(int64_t)counter
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *&selfCopy->_activeMessageCount = vaddq_s64(*&selfCopy->_activeMessageCount, vdupq_n_s64(counter));
  v5 = noiLogHandle;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    connection = [(Client *)selfCopy connection];
    processIdentifier = [connection processIdentifier];
    activeMessageCount = selfCopy->_activeMessageCount;
    barrierMessageCount = selfCopy->_barrierMessageCount;
    v10 = 134218752;
    v11 = selfCopy;
    v12 = 1024;
    v13 = processIdentifier;
    v14 = 2048;
    v15 = activeMessageCount;
    v16 = 2048;
    v17 = barrierMessageCount;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "NOICLIENT <%p:%d> Incremented message count (%ld); barrier send counter (%ld)", &v10, 0x26u);
  }

  objc_sync_exit(selfCopy);
}

- (void)_decrementMessageCounter:(int64_t)counter
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy->_activeMessageCount - counter;
  selfCopy->_activeMessageCount = v5;
  if (v5 < 0)
  {
    v6 = noiLogHandle;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      connection = [(Client *)selfCopy connection];
      processIdentifier = [connection processIdentifier];
      activeMessageCount = selfCopy->_activeMessageCount;
      v15 = 134218752;
      v16 = selfCopy;
      v17 = 1024;
      v18 = processIdentifier;
      v19 = 2048;
      v20 = activeMessageCount;
      v21 = 2048;
      counterCopy = counter;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "NOICLIENT <%p:%d> Message count underflow! (%ld, decremented by %ld) Resetting to 0", &v15, 0x26u);
    }

    selfCopy->_activeMessageCount = 0;
  }

  v10 = noiLogHandle;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    connection2 = [(Client *)selfCopy connection];
    processIdentifier2 = [connection2 processIdentifier];
    v13 = selfCopy->_activeMessageCount;
    barrierMessageCount = selfCopy->_barrierMessageCount;
    v15 = 134218752;
    v16 = selfCopy;
    v17 = 1024;
    v18 = processIdentifier2;
    v19 = 2048;
    v20 = v13;
    v21 = 2048;
    counterCopy = barrierMessageCount;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "NOICLIENT <%p:%d> Decremented message count (%ld); barrier send counter (%ld)", &v15, 0x26u);
  }

  objc_sync_exit(selfCopy);
}

@end