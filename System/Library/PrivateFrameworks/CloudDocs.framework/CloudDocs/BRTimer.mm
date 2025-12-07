@interface BRTimer
- (BRTimer)initWithName:(id)name interval:(double)interval callbackQueue:(id)queue block:(id)block;
- (void)dealloc;
- (void)stop;
@end

@implementation BRTimer

- (BRTimer)initWithName:(id)name interval:(double)interval callbackQueue:(id)queue block:(id)block
{
  nameCopy = name;
  queueCopy = queue;
  blockCopy = block;
  v32.receiver = self;
  v32.super_class = BRTimer;
  v14 = [(BRTimer *)&v32 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    objc_storeStrong(&v15->_queue, queue);
    v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v15->_queue);
    timer = v15->_timer;
    v15->_timer = v16;

    v18 = dispatch_time(0, (interval * 1000000000.0));
    dispatch_source_set_timer(v15->_timer, v18, (interval * 1000000000.0), (interval * 1000000000.0) / 0xAuLL);
    objc_initWeak(&location, v15);
    v19 = v15->_timer;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __53__BRTimer_initWithName_interval_callbackQueue_block___block_invoke;
    v28[3] = &unk_1E7A16430;
    objc_copyWeak(&v30, &location);
    v29 = blockCopy;
    v20 = v19;
    v21 = v28;
    v22 = v20;
    v23 = v21;
    v24 = v23;
    v25 = v23;
    if (brc_block_remember_persona)
    {
      v25 = brc_block_remember_persona(v23);
    }

    v26 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v25);
    dispatch_source_set_event_handler(v22, v26);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __53__BRTimer_initWithName_interval_callbackQueue_block___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    [WeakRetained stop];
  }
}

- (void)dealloc
{
  v3 = brc_bread_crumbs("[BRTimer dealloc]", 41);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRTimer dealloc];
  }

  dispatch_source_cancel(self->_timer);
  v5.receiver = self;
  v5.super_class = BRTimer;
  [(BRTimer *)&v5 dealloc];
}

- (void)stop
{
  v3 = brc_bread_crumbs("[BRTimer stop]", 52);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRTimer stop];
  }

  dispatch_source_cancel(self->_timer);
}

@end