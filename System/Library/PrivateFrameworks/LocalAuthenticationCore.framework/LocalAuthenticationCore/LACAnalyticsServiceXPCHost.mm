@interface LACAnalyticsServiceXPCHost
- (LACAnalyticsServiceXPCHost)initWithWorkQueue:(id)queue;
- (id)sessionForContextUUID:(id)d;
- (void)connectSessionForContext:(id)context reply:(id)reply;
- (void)startSessionForContext:(id)context dialogID:(id)d bundleID:(id)iD reply:(id)reply;
@end

@implementation LACAnalyticsServiceXPCHost

- (LACAnalyticsServiceXPCHost)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = LACAnalyticsServiceXPCHost;
  v6 = [(LACAnalyticsServiceXPCHost *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, queue);
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    sessions = v7->_sessions;
    v7->_sessions = weakObjectsPointerArray;
  }

  return v7;
}

- (id)sessionForContextUUID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSPointerArray *)self->_sessions allObjects];
  session = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (session)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != session; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        contextUUID = [v9 contextUUID];
        v11 = [contextUUID isEqual:dCopy];

        if (v11)
        {
          session = [v9 session];
          goto LABEL_11;
        }
      }

      session = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (session)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return session;
}

- (void)startSessionForContext:(id)context dialogID:(id)d bundleID:(id)iD reply:(id)reply
{
  v23 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dCopy = d;
  iDCopy = iD;
  workQueue = self->_workQueue;
  replyCopy = reply;
  dispatch_assert_queue_V2(workQueue);
  v15 = [(LACAnalyticsServiceXPCHost *)self sessionForContextUUID:contextCopy];

  if (v15)
  {
    v16 = [LACError errorWithCode:-1000 debugDescription:@"Session already exists for this context"];
    replyCopy[2](replyCopy, 0, v16);
  }

  else
  {
    [(NSPointerArray *)self->_sessions compact];
    v16 = [[LACAnalyticsSession alloc] initWithDialogID:dCopy bundleID:iDCopy];
    v17 = [[LACAnalyticsSessionXPCHost alloc] initWithSession:v16 contextUUID:contextCopy connected:0 workQueue:self->_workQueue];
    v18 = LACLogAnalytics([(NSPointerArray *)self->_sessions addPointer:v17]);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = contextCopy;
      _os_log_impl(&dword_1B0233000, v18, OS_LOG_TYPE_DEFAULT, "Started %{public}@ for contextUUID: %{public}@", &v19, 0x16u);
    }

    (replyCopy)[2](replyCopy, v17, 0);
  }
}

- (void)connectSessionForContext:(id)context reply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  workQueue = self->_workQueue;
  replyCopy = reply;
  dispatch_assert_queue_V2(workQueue);
  v9 = [(LACAnalyticsServiceXPCHost *)self sessionForContextUUID:contextCopy];
  if (v9)
  {
    v10 = [[LACAnalyticsSessionXPCHost alloc] initWithSession:v9 contextUUID:contextCopy connected:1 workQueue:self->_workQueue];
    v11 = LACLogAnalytics([(NSPointerArray *)self->_sessions addPointer:v10]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = contextCopy;
      _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "Connected to %{public}@ for contextUUID: %{public}@", &v12, 0x16u);
    }

    replyCopy[2](replyCopy, v10, 0);
  }

  else
  {
    v10 = [LACError errorWithCode:-1000 debugDescription:@"No session exists for this context"];
    (replyCopy)[2](replyCopy, 0, v10);
  }
}

@end