@interface CKMessagesComplicationDataProvider
- (CKMessagesComplicationDataProvider)init;
- (id)currentSubscribers;
- (id)urlForLastMessage;
- (void)addSubscriber:(id)subscriber;
- (void)connectToDaemon;
- (void)dealloc;
- (void)disconnectFromDaemon;
- (void)notifySubscribersAboutNewUnreadCount:(id)count;
- (void)removeSubscriber:(id)subscriber;
- (void)startUnreadCountObservation;
- (void)stopUnreadCountObservation;
@end

@implementation CKMessagesComplicationDataProvider

- (CKMessagesComplicationDataProvider)init
{
  v8.receiver = self;
  v8.super_class = CKMessagesComplicationDataProvider;
  v2 = [(CKMessagesComplicationDataProvider *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] hashTableWithOptions:5];
    subscribers = v2->_subscribers;
    v2->_subscribers = v3;

    v5 = os_log_create("com.apple.Messages", "CKMessagesComplicationDataProvider");
    log = v2->_log;
    v2->_log = v5;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  subscribers = [(CKMessagesComplicationDataProvider *)self subscribers];
  [subscribers removeAllObjects];

  [(CKMessagesComplicationDataProvider *)self stopUnreadCountObservation];
  [(CKMessagesComplicationDataProvider *)self disconnectFromDaemon];
  v4.receiver = self;
  v4.super_class = CKMessagesComplicationDataProvider;
  [(CKMessagesComplicationDataProvider *)&v4 dealloc];
}

- (void)addSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  os_unfair_lock_lock(&self->_lock);
  subscribers = [(CKMessagesComplicationDataProvider *)self subscribers];
  [subscribers addObject:subscriberCopy];

  v6 = [(CKMessagesComplicationDataProvider *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20BF0(subscriberCopy, v6);
  }

  subscribers2 = [(CKMessagesComplicationDataProvider *)self subscribers];
  v8 = [subscribers2 count];

  if (v8 == 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD1D2D0;
    block[3] = &unk_278B93128;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_23BD1D30C;
    v9[3] = &unk_278B93150;
    v9[4] = self;
    v10 = subscriberCopy;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  os_unfair_lock_lock(&self->_lock);
  subscribers = [(CKMessagesComplicationDataProvider *)self subscribers];
  [subscribers removeObject:subscriberCopy];

  v6 = [(CKMessagesComplicationDataProvider *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20C68(subscriberCopy, v6);
  }

  subscribers2 = [(CKMessagesComplicationDataProvider *)self subscribers];
  v8 = [subscribers2 count];

  if (!v8)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD1D49C;
    block[3] = &unk_278B93128;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)currentSubscribers
{
  os_unfair_lock_lock(&self->_lock);
  subscribers = [(CKMessagesComplicationDataProvider *)self subscribers];
  v4 = [subscribers copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)connectToDaemon
{
  os_unfair_lock_lock(&self->_lock);
  daemonConnection = [(CKMessagesComplicationDataProvider *)self daemonConnection];

  if (!daemonConnection)
  {
    mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedController];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [mEMORY[0x277D18D68] multiplexedConnectionWithLabel:v6 capabilities:0x8000 context:0];
    [(CKMessagesComplicationDataProvider *)self setDaemonConnection:v7];

    daemonConnection2 = [(CKMessagesComplicationDataProvider *)self daemonConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_23BD1D658;
    v9[3] = &unk_278B93128;
    v9[4] = self;
    [daemonConnection2 connectWithCompletion:v9];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)disconnectFromDaemon
{
  os_unfair_lock_lock(&self->_lock);
  daemonConnection = [(CKMessagesComplicationDataProvider *)self daemonConnection];
  [daemonConnection invalidate];

  [(CKMessagesComplicationDataProvider *)self setDaemonConnection:0];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [(CKMessagesComplicationDataProvider *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20D14();
  }
}

- (void)startUnreadCountObservation
{
  observationToken = [(CKMessagesComplicationDataProvider *)self observationToken];

  if (!observationToken)
  {
    v4 = [(CKMessagesComplicationDataProvider *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD20D48();
    }

    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v7 = *MEMORY[0x277D18CC8];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = sub_23BD1D960;
    v12 = &unk_278B93178;
    objc_copyWeak(&v13, &location);
    v8 = [defaultCenter addObserverForName:v7 object:0 queue:mainQueue usingBlock:&v9];
    [(CKMessagesComplicationDataProvider *)self setObservationToken:v8, v9, v10, v11, v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)notifySubscribersAboutNewUnreadCount:(id)count
{
  v25 = *MEMORY[0x277D85DE8];
  countCopy = count;
  mEMORY[0x277D18D40] = [MEMORY[0x277D18D40] sharedRegistry];
  unreadCount = [mEMORY[0x277D18D40] unreadCount];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = countCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v17;
    *&v9 = 138543618;
    v15 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v13 unreadCountDidChange:{unreadCount, v15, v16}];
        v14 = [(CKMessagesComplicationDataProvider *)self log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = v15;
          v21 = v13;
          v22 = 2050;
          v23 = unreadCount;
          _os_log_debug_impl(&dword_23BD1C000, v14, OS_LOG_TYPE_DEBUG, "notifed subscriber %{public}@ of unread count: %{public}lu", buf, 0x16u);
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v10);
  }
}

- (void)stopUnreadCountObservation
{
  v3 = [(CKMessagesComplicationDataProvider *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20D7C();
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  observationToken = [(CKMessagesComplicationDataProvider *)self observationToken];
  [defaultCenter removeObserver:observationToken];

  [(CKMessagesComplicationDataProvider *)self setObservationToken:0];
}

- (id)urlForLastMessage
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"com.apple.MobileSMS"];
  mEMORY[0x277D18D40] = [MEMORY[0x277D18D40] sharedRegistry];
  numberOfExistingChats = [mEMORY[0x277D18D40] numberOfExistingChats];

  if (numberOfExistingChats)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_23BD1DDE4;
    v17 = sub_23BD1DDF4;
    v18 = 0;
    mEMORY[0x277D18D40]2 = [MEMORY[0x277D18D40] sharedRegistry];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_23BD1DDFC;
    v12[3] = &unk_278B931A0;
    v12[4] = &v13;
    [mEMORY[0x277D18D40]2 _loadChatsFilteredUsingPredicate:0 lastMessageOlderThan:0 limit:1 waitForReply:1 completionHandler:v12];

    v7 = v14[5];
    if (v7 && [v7 unreadMessageCount])
    {
      mEMORY[0x277D18D40]3 = [MEMORY[0x277D18D40] sharedRegistry];
      v9 = [mEMORY[0x277D18D40]3 messagesURLWithChat:v14[5] orHandles:0 withMessageText:0];

      v3 = v9;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = [(CKMessagesComplicationDataProvider *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD20DB0();
    }
  }

  return v3;
}

@end