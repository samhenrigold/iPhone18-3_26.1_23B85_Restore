@interface TSClockInterface
- (TSClockInterface)initWithClockIdentifier:(unint64_t)identifier;
- (void)didChangeClockMasterForClock:(id)clock;
- (void)didChangeLocalPortWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock;
- (void)didChangeLockStateTo:(int)to forClock:(id)clock;
- (void)didEndClockGrandmasterChangeForClock:(id)clock;
- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock;
- (void)setLockStateNotificationCallback:(void *)callback refcon:(void *)refcon;
- (void)setMasterChangeNotificationCallback:(void *)callback refcon:(void *)refcon;
- (void)setTimeSyncTimeChangeNotificationCallback:(void *)callback refcon:(void *)refcon;
- (void)setgPTPGrandmasterIDAndPortNotificationCallback:(void *)callback refcon:(void *)refcon;
- (void)setgPTPGrandmasterNotificationCallback:(void *)callback refcon:(void *)refcon;
- (void)setgPTPLocalPortNotificationCallback:(void *)callback refcon:(void *)refcon;
@end

@implementation TSClockInterface

- (TSClockInterface)initWithClockIdentifier:(unint64_t)identifier
{
  v15.receiver = self;
  v15.super_class = TSClockInterface;
  v4 = [(TSClockInterface *)&v15 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:identifier];
    v6 = dispatch_queue_create([v5 UTF8String], 0);
    notificationsQueue = v4->_notificationsQueue;
    v4->_notificationsQueue = v6;

    v8 = 20;
    while (1)
    {
      v9 = +[TSClockManager sharedClockManager];
      v10 = [v9 clockWithClockIdentifier:?];
      clock = v4->_clock;
      v4->_clock = v10;

      [(TSClock *)v4->_clock addClient:?];
      if (v4->_clock)
      {
        break;
      }

      usleep(0x186A0u);
      v12 = v4->_clock;
      v13 = v8-- != 0;
      if (v12 || v8 == 0 || !v13)
      {
        if (!v12)
        {
          [TSClockInterface initWithClockIdentifier:v4];
          return 0;
        }

        return v4;
      }
    }
  }

  return v4;
}

- (void)setLockStateNotificationCallback:(void *)callback refcon:(void *)refcon
{
  notificationsQueue = self->_notificationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TSClockInterface_setLockStateNotificationCallback_refcon___block_invoke;
  block[3] = &unk_279DBDF78;
  block[4] = self;
  block[5] = callback;
  block[6] = refcon;
  dispatch_sync(notificationsQueue, block);
}

void *__60__TSClockInterface_setLockStateNotificationCallback_refcon___block_invoke(void *result)
{
  *(result[4] + 16) = result[5];
  *(result[4] + 24) = result[6];
  return result;
}

- (void)setMasterChangeNotificationCallback:(void *)callback refcon:(void *)refcon
{
  notificationsQueue = self->_notificationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TSClockInterface_setMasterChangeNotificationCallback_refcon___block_invoke;
  block[3] = &unk_279DBDF78;
  block[4] = self;
  block[5] = callback;
  block[6] = refcon;
  dispatch_sync(notificationsQueue, block);
}

void *__63__TSClockInterface_setMasterChangeNotificationCallback_refcon___block_invoke(void *result)
{
  *(result[4] + 32) = result[5];
  *(result[4] + 40) = result[6];
  return result;
}

- (void)setTimeSyncTimeChangeNotificationCallback:(void *)callback refcon:(void *)refcon
{
  notificationsQueue = self->_notificationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__TSClockInterface_setTimeSyncTimeChangeNotificationCallback_refcon___block_invoke;
  block[3] = &unk_279DBDF78;
  block[4] = self;
  block[5] = callback;
  block[6] = refcon;
  dispatch_sync(notificationsQueue, block);
}

void __69__TSClockInterface_setTimeSyncTimeChangeNotificationCallback_refcon___block_invoke(void *a1)
{
  v2 = +[TSClockManager sharedClockManager];
  v7 = [v2 translationClock];

  v3 = a1[4];
  v4 = a1[5];
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    [v7 removeClient:?];
    v3 = a1[4];
    v4 = a1[5];
  }

  *(v3 + 48) = v4;
  *(a1[4] + 56) = a1[6];
  if (a1[5] && !v5)
  {
    [v7 addClient:?];
  }
}

- (void)setgPTPGrandmasterNotificationCallback:(void *)callback refcon:(void *)refcon
{
  notificationsQueue = self->_notificationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__TSClockInterface_setgPTPGrandmasterNotificationCallback_refcon___block_invoke;
  block[3] = &unk_279DBDF78;
  block[4] = self;
  block[5] = callback;
  block[6] = refcon;
  dispatch_sync(notificationsQueue, block);
}

void *__66__TSClockInterface_setgPTPGrandmasterNotificationCallback_refcon___block_invoke(void *result)
{
  *(result[4] + 64) = result[5];
  *(result[4] + 72) = result[6];
  return result;
}

- (void)setgPTPGrandmasterIDAndPortNotificationCallback:(void *)callback refcon:(void *)refcon
{
  notificationsQueue = self->_notificationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__TSClockInterface_setgPTPGrandmasterIDAndPortNotificationCallback_refcon___block_invoke;
  block[3] = &unk_279DBDF78;
  block[4] = self;
  block[5] = callback;
  block[6] = refcon;
  dispatch_sync(notificationsQueue, block);
}

void *__75__TSClockInterface_setgPTPGrandmasterIDAndPortNotificationCallback_refcon___block_invoke(void *result)
{
  *(result[4] + 80) = result[5];
  *(result[4] + 88) = result[6];
  return result;
}

- (void)setgPTPLocalPortNotificationCallback:(void *)callback refcon:(void *)refcon
{
  notificationsQueue = self->_notificationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__TSClockInterface_setgPTPLocalPortNotificationCallback_refcon___block_invoke;
  block[3] = &unk_279DBDF78;
  block[4] = self;
  block[5] = callback;
  block[6] = refcon;
  dispatch_sync(notificationsQueue, block);
}

void *__64__TSClockInterface_setgPTPLocalPortNotificationCallback_refcon___block_invoke(void *result)
{
  *(result[4] + 96) = result[5];
  *(result[4] + 104) = result[6];
  return result;
}

- (void)didChangeClockMasterForClock:(id)clock
{
  v15 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(TSClockInterface *)self description];
    *buf = 136315394;
    uTF8String = [v5 UTF8String];
    v13 = 2048;
    clockIdentifier = [(TSClock *)clockCopy clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s didChangeClockMasterForClock:0x%016llx\n", buf, 0x16u);
  }

  notificationsQueue = self->_notificationsQueue;
  if (self->_clock == clockCopy)
  {
    v7 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v8 = __49__TSClockInterface_didChangeClockMasterForClock___block_invoke;
  }

  else
  {
    v7 = v9;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v8 = __49__TSClockInterface_didChangeClockMasterForClock___block_invoke_71;
  }

  v7[2] = v8;
  v7[3] = &unk_279DBD538;
  v7[4] = self;
  dispatch_async(notificationsQueue, v7);
}

void __49__TSClockInterface_didChangeClockMasterForClock___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 32))
  {
    v2 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      v4 = [v3 UTF8String];
      v5 = *(a1 + 32);
      v7 = *(v5 + 32);
      v6 = *(v5 + 40);
      v13 = 136315650;
      v14 = v4;
      v15 = 2048;
      v16 = v7;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s calling master changed callback function %p refcon %p\n", &v13, 0x20u);
    }

    (*(*(a1 + 32) + 32))(*(a1 + 32), *(*(a1 + 32) + 40));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) description];
      v9 = [v8 UTF8String];
      v10 = *(a1 + 32);
      v12 = *(v10 + 32);
      v11 = *(v10 + 40);
      v13 = 136315650;
      v14 = v9;
      v15 = 2048;
      v16 = v12;
      v17 = 2048;
      v18 = v11;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished master changed callback function %p refcon %p\n", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
  }
}

void __49__TSClockInterface_didChangeClockMasterForClock___block_invoke_71(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 48))
  {
    v2 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      v4 = [v3 UTF8String];
      v5 = *(a1 + 32);
      v7 = *(v5 + 48);
      v6 = *(v5 + 56);
      v13 = 136315650;
      v14 = v4;
      v15 = 2048;
      v16 = v7;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s calling tiesynctime changed callback function %p refcon %p\n", &v13, 0x20u);
    }

    (*(*(a1 + 32) + 48))(*(a1 + 32), *(*(a1 + 32) + 56));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) description];
      v9 = [v8 UTF8String];
      v10 = *(a1 + 32);
      v12 = *(v10 + 48);
      v11 = *(v10 + 56);
      v13 = 136315650;
      v14 = v9;
      v15 = 2048;
      v16 = v12;
      v17 = 2048;
      v18 = v11;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished tiesynctime changed callback function %p refcon %p\n", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (void)didChangeLockStateTo:(int)to forClock:(id)clock
{
  v18 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(TSClockInterface *)self description];
    *buf = 136315650;
    uTF8String = [v7 UTF8String];
    v16 = 1024;
    *v17 = to;
    *&v17[4] = 2048;
    *&v17[6] = [clockCopy clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s didChangeLockStateTo:%d forClock:0x%016llx\n", buf, 0x1Cu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(TSClockInterface *)self description];
    uTF8String2 = [v8 UTF8String];
    clockIdentifier = [clockCopy clockIdentifier];
    *buf = 136315650;
    uTF8String = uTF8String2;
    v16 = 2048;
    *v17 = clockIdentifier;
    *&v17[8] = 1024;
    *&v17[10] = to;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Lock state] Client %s received lock state change for clock 0x%016llx to %d", buf, 0x1Cu);
  }

  notificationsQueue = self->_notificationsQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__TSClockInterface_didChangeLockStateTo_forClock___block_invoke;
  v12[3] = &unk_279DBD7D0;
  v12[4] = self;
  toCopy = to;
  dispatch_async(notificationsQueue, v12);
}

void __50__TSClockInterface_didChangeLockStateTo_forClock___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 16))
  {
    v2 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      v4 = [v3 UTF8String];
      v5 = *(a1 + 32);
      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      v8 = *(a1 + 40);
      v15 = 136315906;
      v16 = v4;
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = v6;
      v21 = 1024;
      v22 = v8;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s calling lock state callback function %p refcon %p lockstate %d\n", &v15, 0x26u);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(a1 + 32) + 24), *(a1 + 40));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) description];
      v10 = [v9 UTF8String];
      v11 = *(a1 + 32);
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      v14 = *(a1 + 40);
      v15 = 136315906;
      v16 = v10;
      v17 = 2048;
      v18 = v13;
      v19 = 2048;
      v20 = v12;
      v21 = 1024;
      v22 = v14;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished lock state callback function %p refcon %p lockstate %d\n", &v15, 0x26u);
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (void)didEndClockGrandmasterChangeForClock:(id)clock
{
  v20 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(TSClockInterface *)self description];
    *buf = 136315394;
    uTF8String = [v5 UTF8String];
    v16 = 2048;
    clockIdentifier = [clockCopy clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s didEndClockGrandmasterChangeForClock:0x%016llx\n", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TSClockInterface *)self description];
    uTF8String2 = [v6 UTF8String];
    clockIdentifier2 = [clockCopy clockIdentifier];
    grandmasterIdentity = [clockCopy grandmasterIdentity];
    *buf = 136315650;
    uTF8String = uTF8String2;
    v16 = 2048;
    clockIdentifier = clockIdentifier2;
    v18 = 2048;
    v19 = grandmasterIdentity;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[GM Change] Client %s received GM change callback for clock 0x%016llx to GMID 0x%016llx", buf, 0x20u);
  }

  notificationsQueue = self->_notificationsQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__TSClockInterface_didEndClockGrandmasterChangeForClock___block_invoke;
  v12[3] = &unk_279DBD738;
  v12[4] = self;
  v13 = clockCopy;
  v11 = clockCopy;
  dispatch_async(notificationsQueue, v12);
}

void __57__TSClockInterface_didEndClockGrandmasterChangeForClock___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 64))
  {
    v2 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      v4 = [v3 UTF8String];
      v5 = *(a1 + 32);
      v6 = *(v5 + 64);
      v7 = *(v5 + 72);
      v8 = [*(a1 + 40) clockIdentifier];
      v9 = [*(a1 + 40) grandmasterIdentity];
      v17 = 136316162;
      v18 = v4;
      v19 = 2048;
      v20 = v6;
      v21 = 2048;
      v22 = v7;
      v23 = 2048;
      v24 = v8;
      v25 = 2048;
      v26 = v9;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s calling end grandmaster changed callback function %p refcon %p clock 0x%016llx grandmaster 0x%016llx\n", &v17, 0x34u);
    }

    (*(*(a1 + 32) + 64))(*(a1 + 32), *(*(a1 + 32) + 72), [*(a1 + 40) grandmasterIdentity]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) description];
      v11 = [v10 UTF8String];
      v12 = *(a1 + 32);
      v13 = *(v12 + 64);
      v14 = *(v12 + 72);
      v15 = [*(a1 + 40) clockIdentifier];
      v16 = [*(a1 + 40) grandmasterIdentity];
      v17 = 136316162;
      v18 = v11;
      v19 = 2048;
      v20 = v13;
      v21 = 2048;
      v22 = v14;
      v23 = 2048;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished end grandmaster changed callback function %p refcon %p clock 0x%016llx grandmaster 0x%016llx\n", &v17, 0x34u);
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock
{
  portCopy = port;
  v27 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(TSClockInterface *)self description];
    *buf = 136315906;
    uTF8String = [v9 UTF8String];
    v21 = 2048;
    dCopy = d;
    v23 = 1024;
    v24 = portCopy;
    v25 = 2048;
    dCopy2 = [clockCopy clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s didEndClockGrandmasterChangeWithGrandmasterID:0x%016llx localPort:%hu forClock:0x%016llx\n", buf, 0x26u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(TSClockInterface *)self description];
    uTF8String2 = [v10 UTF8String];
    clockIdentifier = [clockCopy clockIdentifier];
    *buf = 136315906;
    uTF8String = uTF8String2;
    v21 = 2048;
    dCopy = clockIdentifier;
    v23 = 1024;
    v24 = portCopy;
    v25 = 2048;
    dCopy2 = d;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[GM Change] Client %s received GM change callback for clock 0x%016llx, port %hu, to GMID 0x%016llx", buf, 0x26u);
  }

  notificationsQueue = self->_notificationsQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__TSClockInterface_didEndClockGrandmasterChangeWithGrandmasterID_localPort_forClock___block_invoke;
  v15[3] = &unk_279DBDFA0;
  v15[4] = self;
  v16 = clockCopy;
  dCopy3 = d;
  v18 = portCopy;
  v14 = clockCopy;
  dispatch_async(notificationsQueue, v15);
}

void __85__TSClockInterface_didEndClockGrandmasterChangeWithGrandmasterID_localPort_forClock___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 80))
  {
    v2 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      v4 = [v3 UTF8String];
      v5 = *(a1 + 32);
      v6 = *(v5 + 80);
      v7 = *(v5 + 88);
      v8 = [*(a1 + 40) clockIdentifier];
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v19 = 136316418;
      v20 = v4;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      v27 = 2048;
      v28 = v9;
      v29 = 1024;
      v30 = v10;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s calling end grandmaster and port changed callback function %p refcon %p clock 0x%016llx grandmaster 0x%016llx localport %hu\n", &v19, 0x3Au);
    }

    (*(*(a1 + 32) + 80))(*(a1 + 32), *(*(a1 + 32) + 88), *(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) description];
      v12 = [v11 UTF8String];
      v13 = *(a1 + 32);
      v14 = *(v13 + 80);
      v15 = *(v13 + 88);
      v16 = [*(a1 + 40) clockIdentifier];
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      v19 = 136316418;
      v20 = v12;
      v21 = 2048;
      v22 = v14;
      v23 = 2048;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      v27 = 2048;
      v28 = v17;
      v29 = 1024;
      v30 = v18;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished end grandmaster and port changed callback function %p refcon %p clock 0x%016llx grandmaster 0x%016llx localport %hu\n", &v19, 0x3Au);
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (void)didChangeLocalPortWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock
{
  portCopy = port;
  v24 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(TSClockInterface *)self description];
    *buf = 136315906;
    uTF8String = [v9 UTF8String];
    v18 = 2048;
    dCopy = d;
    v20 = 1024;
    v21 = portCopy;
    v22 = 2048;
    clockIdentifier = [clockCopy clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s didChangeLocalPortWithGrandmasterID:0x%016llx localPort:%hu forClock:0x%016llx\n", buf, 0x26u);
  }

  notificationsQueue = self->_notificationsQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__TSClockInterface_didChangeLocalPortWithGrandmasterID_localPort_forClock___block_invoke;
  v12[3] = &unk_279DBDFA0;
  v12[4] = self;
  v13 = clockCopy;
  dCopy2 = d;
  v15 = portCopy;
  v11 = clockCopy;
  dispatch_async(notificationsQueue, v12);
}

void __75__TSClockInterface_didChangeLocalPortWithGrandmasterID_localPort_forClock___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 96))
  {
    v2 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      v4 = [v3 UTF8String];
      v5 = *(a1 + 32);
      v6 = *(v5 + 96);
      v7 = *(v5 + 104);
      v8 = [*(a1 + 40) clockIdentifier];
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v19 = 136316418;
      v20 = v4;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      v27 = 2048;
      v28 = v9;
      v29 = 1024;
      v30 = v10;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s calling local port changed callback function %p refcon %p clock 0x%016llx grandmaster 0x%016llx localport %hu\n", &v19, 0x3Au);
    }

    (*(*(a1 + 32) + 96))(*(a1 + 32), *(*(a1 + 32) + 104), *(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) description];
      v12 = [v11 UTF8String];
      v13 = *(a1 + 32);
      v14 = *(v13 + 96);
      v15 = *(v13 + 104);
      v16 = [*(a1 + 40) clockIdentifier];
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      v19 = 136316418;
      v20 = v12;
      v21 = 2048;
      v22 = v14;
      v23 = 2048;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      v27 = 2048;
      v28 = v17;
      v29 = 1024;
      v30 = v18;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished local port changed callback function %p refcon %p clock 0x%016llx grandmaster 0x%016llx localport %hu\n", &v19, 0x3Au);
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (void)initWithClockIdentifier:(void *)a1 .cold.1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

@end