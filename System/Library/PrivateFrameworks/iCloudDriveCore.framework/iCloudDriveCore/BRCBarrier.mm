@interface BRCBarrier
- (BOOL)waitForBarrierWithTimeout:(unint64_t)timeout;
- (BRCBarrier)initWithName:(id)name;
- (void)dealloc;
- (void)signalAndRetakeBarrier;
- (void)signalBarrier;
@end

@implementation BRCBarrier

- (BRCBarrier)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = BRCBarrier;
  v6 = [(BRCBarrier *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    v8 = dispatch_group_create();
    barrierGroup = v7->_barrierGroup;
    v7->_barrierGroup = v8;

    dispatch_group_enter(v7->_barrierGroup);
  }

  return v7;
}

- (void)dealloc
{
  [(BRCBarrier *)self signalBarrier];
  v3.receiver = self;
  v3.super_class = BRCBarrier;
  [(BRCBarrier *)&v3 dealloc];
}

- (void)signalBarrier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_barrierGroup;
  barrierGroup = selfCopy->_barrierGroup;
  selfCopy->_barrierGroup = 0;

  objc_sync_exit(selfCopy);
  if (v3)
  {
    if (selfCopy->_name)
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [BRCBarrier signalBarrier];
      }
    }

    dispatch_group_leave(v3);
  }
}

- (void)signalAndRetakeBarrier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_barrierGroup;
  objc_sync_exit(selfCopy);

  if (v3)
  {
    if (selfCopy->_name)
    {
      v4 = brc_bread_crumbs();
      v5 = brc_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [BRCBarrier signalAndRetakeBarrier];
      }
    }

    dispatch_group_leave(v3);
    dispatch_group_enter(v3);
  }
}

- (BOOL)waitForBarrierWithTimeout:(unint64_t)timeout
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy->_barrierGroup;
  objc_sync_exit(selfCopy);

  if (v5)
  {
    name = selfCopy->_name;
    p_name = &selfCopy->_name;
    if (name)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [BRCBarrier waitForBarrierWithTimeout:];
      }
    }

    v10 = dispatch_group_wait(v5, timeout);
    v11 = v10 == 0;
    if (*p_name)
    {
      v12 = v10;
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v16 = *p_name;
        v17 = @"timeout";
        v18 = 138412802;
        if (!v12)
        {
          v17 = @"success";
        }

        v19 = v16;
        v20 = 2112;
        v21 = v17;
        v22 = 2112;
        v23 = v13;
        _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] Done Waiting for barrier %@ with result %@%@", &v18, 0x20u);
      }
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end