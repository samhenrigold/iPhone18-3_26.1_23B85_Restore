@interface BBObserverGatewayHolder
+ (id)gatewayHolderSortComparator;
+ (unint64_t)sortIndexForGatewayHolder:(id)holder;
+ (unint64_t)sortOrderForPriority:(unint64_t)priority;
- (BBObserverGatewayHolder)initWithQueue:(id)queue name:(id)name;
- (BOOL)_invalidateTimeout:(id)timeout;
- (id)_addTimeout:(double)timeout forBulletinID:(id)d inSectionID:(id)iD handler:(id)handler;
- (void)_handleTimeout;
- (void)_invalidateTimer;
- (void)_startNextTimer;
- (void)_startTimerWithFireDate:(id)date;
- (void)dealloc;
- (void)sendAddBulletin:(id)bulletin playLightsAndSirens:(BOOL)sirens forFeeds:(unint64_t)feeds withTimeout:(double)timeout handler:(id)handler;
- (void)sendObserver:(id)observer addBulletin:(id)bulletin playLightsAndSirens:(BOOL)sirens forFeeds:(unint64_t)feeds withHandler:(id)handler;
- (void)sendObserversAddBulletin:(id)bulletin playLightsAndSirens:(BOOL)sirens forFeeds:(unint64_t)feeds;
@end

@implementation BBObserverGatewayHolder

- (BBObserverGatewayHolder)initWithQueue:(id)queue name:(id)name
{
  queueCopy = queue;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = BBObserverGatewayHolder;
  v9 = [(BBObserverGatewayHolder *)&v17 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    timeouts = v9->_timeouts;
    v9->_timeouts = v10;

    v12 = [nameCopy copy];
    name = v9->_name;
    v9->_name = v12;

    objc_storeStrong(&v9->_queue, queue);
    v14 = [[BBMaskedSet alloc] initWithMaskBits:16];
    observerFeedSet = v9->_observerFeedSet;
    v9->_observerFeedSet = v14;
  }

  return v9;
}

- (void)_startNextTimer
{
  v19 = *MEMORY[0x277D85DE8];
  [(BBObserverGatewayHolder *)self _invalidateTimer];
  if ([(NSMutableArray *)self->_timeouts count])
  {
    v3 = [(NSMutableArray *)self->_timeouts objectAtIndexedSubscript:0];
    v4 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      name = [(BBObserverGatewayHolder *)self name];
      timeout = [v3 timeout];
      bulletinID = [v3 bulletinID];
      sectionID = [v3 sectionID];
      v11 = 138544130;
      v12 = name;
      v13 = 2114;
      v14 = timeout;
      v15 = 2114;
      v16 = bulletinID;
      v17 = 2114;
      v18 = sectionID;
      _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ start timer (%{public}@) for out for bulletin %{public}@ in section %{public}@", &v11, 0x2Au);
    }

    timeout2 = [v3 timeout];
    [(BBObserverGatewayHolder *)self _startTimerWithFireDate:timeout2];
  }
}

- (void)_startTimerWithFireDate:(id)date
{
  v4 = MEMORY[0x277D3A180];
  dateCopy = date;
  v6 = [[v4 alloc] initWithFireDate:dateCopy serviceIdentifier:@"com.apple.bulletinboard.identityqueue.gatewayholdertimeout" target:self selector:sel__handleTimeout userInfo:0];

  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v6;

  [(PCPersistentTimer *)self->_timeoutTimer setMinimumEarlyFireProportion:1.0];
  [(PCPersistentTimer *)self->_timeoutTimer setUserVisible:1];
  queue = self->_queue;
  v8 = self->_timeoutTimer;

  [(PCPersistentTimer *)v8 scheduleInQueue:queue];
}

- (void)_invalidateTimer
{
  [(PCPersistentTimer *)self->_timeoutTimer invalidate];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = 0;
}

- (BOOL)_invalidateTimeout:(id)timeout
{
  v21 = *MEMORY[0x277D85DE8];
  timeoutCopy = timeout;
  v5 = [(NSMutableArray *)self->_timeouts indexOfObject:timeoutCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      name = [(BBObserverGatewayHolder *)self name];
      timeout = [timeoutCopy timeout];
      bulletinID = [timeoutCopy bulletinID];
      sectionID = [timeoutCopy sectionID];
      v13 = 138544130;
      v14 = name;
      v15 = 2114;
      v16 = timeout;
      v17 = 2114;
      v18 = bulletinID;
      v19 = 2114;
      v20 = sectionID;
      _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ invalidated timer (%{public}@) for out for bulletin %{public}@ in section %{public}@", &v13, 0x2Au);
    }

    [(NSMutableArray *)self->_timeouts removeObjectAtIndex:v5];
    if (!v5)
    {
      [(BBObserverGatewayHolder *)self _startNextTimer];
    }
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_handleTimeout
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_timeouts count])
  {
    v3 = [(NSMutableArray *)self->_timeouts objectAtIndexedSubscript:0];
    v4 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      name = [(BBObserverGatewayHolder *)self name];
      bulletinID = [v3 bulletinID];
      sectionID = [v3 sectionID];
      v10 = 138543874;
      v11 = name;
      v12 = 2114;
      v13 = bulletinID;
      v14 = 2114;
      v15 = sectionID;
      _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ timed out for bulletin %{public}@ in section %{public}@", &v10, 0x20u);
    }

    timeoutHandler = [v3 timeoutHandler];
    timeoutHandler[2]();

    [(NSMutableArray *)self->_timeouts removeObjectAtIndex:0];
    [(BBObserverGatewayHolder *)self _startNextTimer];
  }
}

- (id)_addTimeout:(double)timeout forBulletinID:(id)d inSectionID:(id)iD handler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v12 = MEMORY[0x277CBEAA8];
  handlerCopy = handler;
  v14 = [v12 dateWithTimeIntervalSinceNow:timeout];
  v15 = BBLogGateway;
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    name = [(BBObserverGatewayHolder *)self name];
    v20 = 138544130;
    v21 = name;
    v22 = 2114;
    v23 = v14;
    v24 = 2114;
    v25 = dCopy;
    v26 = 2114;
    v27 = iDCopy;
    _os_log_impl(&dword_241EFF000, v16, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ add timer (%{public}@) for bulletin %{public}@ in section %{public}@", &v20, 0x2Au);
  }

  v18 = objc_alloc_init(BBObserverGatewayAddBulletinRequest);
  [(BBObserverGatewayAddBulletinRequest *)v18 setTimeout:v14];
  [(BBObserverGatewayAddBulletinRequest *)v18 setTimeoutHandler:handlerCopy];

  [(BBObserverGatewayAddBulletinRequest *)v18 setBulletinID:dCopy];
  [(BBObserverGatewayAddBulletinRequest *)v18 setSectionID:iDCopy];
  [(NSMutableArray *)self->_timeouts addObject:v18];
  if ([(NSMutableArray *)self->_timeouts count]== 1)
  {
    [(BBObserverGatewayHolder *)self _startNextTimer];
  }

  return v18;
}

- (void)sendAddBulletin:(id)bulletin playLightsAndSirens:(BOOL)sirens forFeeds:(unint64_t)feeds withTimeout:(double)timeout handler:(id)handler
{
  sirensCopy = sirens;
  v56 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  handlerCopy = handler;
  bulletinID = [bulletinCopy bulletinID];
  sectionID = [bulletinCopy sectionID];
  v14 = self->_feed & feeds;
  v15 = BBLogGateway;
  v16 = os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (sirensCopy)
    {
      if (v16)
      {
        v17 = v15;
        name = [(BBObserverGatewayHolder *)self name];
        v19 = "WITH";
        *buf = 138544386;
        *&buf[4] = name;
        if (!handlerCopy)
        {
          v19 = "WITHOUT";
        }

        *&buf[12] = 2114;
        *&buf[14] = bulletinID;
        *&buf[22] = 2114;
        v51 = sectionID;
        v52 = 2048;
        timeoutCopy = timeout;
        v54 = 2082;
        v55 = v19;
        _os_log_impl(&dword_241EFF000, v17, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ sending add bulletin lights and sirens YES for %{public}@ in section %{public}@ with timeout %f %{public}s handler", buf, 0x34u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v51) = 0;
      objc_initWeak(&location, self);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __92__BBObserverGatewayHolder_sendAddBulletin_playLightsAndSirens_forFeeds_withTimeout_handler___block_invoke;
      v43[3] = &unk_278D2BA98;
      objc_copyWeak(&v48, &location);
      v20 = bulletinID;
      v44 = v20;
      v21 = sectionID;
      v45 = v21;
      v47 = buf;
      v22 = handlerCopy;
      v46 = v22;
      v23 = [(BBObserverGatewayHolder *)self _addTimeout:v20 forBulletinID:v21 inSectionID:v43 handler:timeout];
      gateway = [(BBObserverGatewayHolder *)self gateway];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __92__BBObserverGatewayHolder_sendAddBulletin_playLightsAndSirens_forFeeds_withTimeout_handler___block_invoke_42;
      v35[3] = &unk_278D2BAC0;
      objc_copyWeak(v42, &location);
      v36 = v20;
      v37 = v21;
      v41 = buf;
      v25 = v23;
      v38 = v25;
      v39 = bulletinCopy;
      v42[1] = feeds;
      v40 = v22;
      [(BBObserverGatewayHolder *)self sendObserver:gateway addBulletin:v39 playLightsAndSirens:1 forFeeds:feeds withHandler:v35];

      objc_destroyWeak(v42);
      objc_destroyWeak(&v48);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);
      goto LABEL_16;
    }

    if (v16)
    {
      v28 = v15;
      name2 = [(BBObserverGatewayHolder *)self name];
      bulletinID2 = [bulletinCopy bulletinID];
      sectionID2 = [bulletinCopy sectionID];
      *buf = 138543874;
      *&buf[4] = name2;
      *&buf[12] = 2114;
      *&buf[14] = bulletinID2;
      *&buf[22] = 2114;
      v51 = sectionID2;
      _os_log_impl(&dword_241EFF000, v28, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ sending add bulletin lights and sirens NO for %{public}@ in section %{public}@ with NO timeout and NO handler", buf, 0x20u);
    }

    gateway2 = [(BBObserverGatewayHolder *)self gateway];
    [(BBObserverGatewayHolder *)self sendObserver:gateway2 addBulletin:bulletinCopy playLightsAndSirens:0 forFeeds:feeds withHandler:0];

    [(BBObserverGatewayHolder *)self sendObserversAddBulletin:bulletinCopy playLightsAndSirens:0 forFeeds:feeds];
    if (handlerCopy)
    {
LABEL_15:
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }

  else
  {
    if (v16)
    {
      v26 = v15;
      name3 = [(BBObserverGatewayHolder *)self name];
      *buf = 138544130;
      *&buf[4] = name3;
      *&buf[12] = 2114;
      *&buf[14] = bulletinID;
      *&buf[22] = 2114;
      v51 = sectionID;
      v52 = 2048;
      timeoutCopy = *&feeds;
      _os_log_impl(&dword_241EFF000, v26, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ will not handle add bulletin %{public}@ in section %{public}@ for feed %lu. It's not in a relevant feed.", buf, 0x2Au);
    }

    if (handlerCopy)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
}

void __92__BBObserverGatewayHolder_sendAddBulletin_playLightsAndSirens_forFeeds_withTimeout_handler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [WeakRetained name];
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 138543874;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ did NOT receive lights and sirens response for bulletin %{public}@ in section %{public}@", &v9, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, 0, 0);
  }
}

void __92__BBObserverGatewayHolder_sendAddBulletin_playLightsAndSirens_forFeeds_withTimeout_handler___block_invoke_42(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (!WeakRetained)
  {
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v7 = BBLogGateway;
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [WeakRetained name];
    v10 = v9;
    v11 = "DID NOT";
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    *v15 = 138544130;
    if (a2)
    {
      v11 = "DID";
    }

    *&v15[4] = v9;
    v16 = 2082;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ received %{public}s play lights and sirens for bulletin %{public}@ in section %{public}@", v15, 0x2Au);
  }

  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    [WeakRetained _invalidateTimeout:*(a1 + 48)];
    if ((a2 & 1) != 0 || [WeakRetained gatewayPriority] != 3)
    {
      [WeakRetained sendObserversAddBulletin:*(a1 + 56) playLightsAndSirens:a2 forFeeds:{*(a1 + 88), *v15}];
    }

LABEL_11:
    v14 = *(a1 + 64);
    if (v14)
    {
      (*(v14 + 16))(v14, a2, v5);
    }
  }

LABEL_13:
}

- (void)sendObserversAddBulletin:(id)bulletin playLightsAndSirens:(BOOL)sirens forFeeds:(unint64_t)feeds
{
  sirensCopy = sirens;
  v19 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  v9 = [(BBMaskedSet *)self->_observerFeedSet objectsForMask:feeds];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(BBObserverGatewayHolder *)self sendObserver:*(*(&v14 + 1) + 8 * v13++) addBulletin:bulletinCopy playLightsAndSirens:sirensCopy forFeeds:feeds withHandler:0];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)sendObserver:(id)observer addBulletin:(id)bulletin playLightsAndSirens:(BOOL)sirens forFeeds:(unint64_t)feeds withHandler:(id)handler
{
  sirensCopy = sirens;
  v28 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  bulletinCopy = bulletin;
  handlerCopy = handler;
  bulletinID = [bulletinCopy bulletinID];
  v15 = [observerCopy incrementedTransactionIDForBulletinID:bulletinID];

  v16 = BBLogBulletinLife;
  if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT))
  {
    if (sirensCopy)
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    v18 = v16;
    bulletinID2 = [bulletinCopy bulletinID];
    v22 = 136446722;
    v23 = v17;
    v24 = 2048;
    v25 = v15;
    v26 = 2114;
    v27 = bulletinID2;
    _os_log_impl(&dword_241EFF000, v18, OS_LOG_TYPE_DEFAULT, "Sending add bulletin with lights and sirens %{public}s for transactionID %ld, bulletin %{public}@", &v22, 0x20u);
  }

  v20 = [BBBulletinAddUpdate updateWithBulletin:bulletinCopy feeds:feeds shouldPlayLightsAndSirens:sirensCopy];
  v21 = [BBBulletinUpdateTransaction transactionWithBulletinUpdate:v20 transactionID:v15];
  [observerCopy updateBulletin:v21 withHandler:handlerCopy];
}

- (void)dealloc
{
  [(BBObserverGatewayHolder *)self _invalidateTimer];
  v3.receiver = self;
  v3.super_class = BBObserverGatewayHolder;
  [(BBObserverGatewayHolder *)&v3 dealloc];
}

+ (id)gatewayHolderSortComparator
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__BBObserverGatewayHolder_gatewayHolderSortComparator__block_invoke;
  v4[3] = &__block_descriptor_40_e61_q24__0__BBObserverGatewayHolder_8__BBObserverGatewayHolder_16l;
  v4[4] = self;
  v2 = MEMORY[0x245D05D40](v4, a2);

  return v2;
}

uint64_t __54__BBObserverGatewayHolder_gatewayHolderSortComparator__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 sortIndexForGatewayHolder:a2];
  v8 = [*(a1 + 32) sortIndexForGatewayHolder:v6];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v11 = [v9 compare:v10];

  return v11;
}

+ (unint64_t)sortOrderForPriority:(unint64_t)priority
{
  if (priority > 6)
  {
    return -1;
  }

  else
  {
    return qword_241F7FE18[priority];
  }
}

+ (unint64_t)sortIndexForGatewayHolder:(id)holder
{
  holderCopy = holder;
  gatewayPriority = [holderCopy gatewayPriority];
  if (gatewayPriority == 2)
  {
    name = [holderCopy name];
    bulletinDistributorLegacyGatewayName = [self bulletinDistributorLegacyGatewayName];
    v8 = [name isEqual:bulletinDistributorLegacyGatewayName];

    if (v8)
    {
      gatewayPriority = 5;
    }

    else
    {
      name2 = [holderCopy name];
      usernotificationsdLegacyGatewayName = [self usernotificationsdLegacyGatewayName];
      v11 = [name2 isEqual:usernotificationsdLegacyGatewayName];

      if (v11)
      {
        gatewayPriority = 6;
      }

      else
      {
        gatewayPriority = 2;
      }
    }
  }

  v12 = [self sortOrderForPriority:gatewayPriority];

  return v12;
}

@end