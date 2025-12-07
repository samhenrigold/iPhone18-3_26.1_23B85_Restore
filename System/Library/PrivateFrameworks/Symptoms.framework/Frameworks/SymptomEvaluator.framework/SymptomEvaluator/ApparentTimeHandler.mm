@interface ApparentTimeHandler
+ (id)sharedInstance;
- (ApparentTimeHandler)init;
- (ApparentTimeHandlerDelegate)delegate;
- (void)dispatchAfterDelay:(double)delay queue:(id)queue block:(id)block;
- (void)timerCallbackWithReference:(id)reference at:(double)at;
@end

@implementation ApparentTimeHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ApparentTimeHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_40 != -1)
  {
    dispatch_once(&sharedInstance_pred_40, block);
  }

  v2 = sharedInstance_sharedInstance_42;

  return v2;
}

- (void)dispatchAfterDelay:(double)delay queue:(id)queue block:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (activeTraceTargets)
  {
    traceEntry(1, "[ApparentTimeHandler dispatchAfterDelay:queue:block:]", "%f", delay);
  }

  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = self->_pendingDispatchAfterBlocks;
    objc_sync_enter(v11);
    v12 = MEMORY[0x277CCABB0];
    ++self->_dispatchAfterSeqno;
    v13 = [v12 numberWithUnsignedInt:?];
    v14 = _Block_copy(blockCopy);
    [(NSMutableDictionary *)self->_pendingDispatchAfterBlocks setObject:v14 forKeyedSubscript:v13];

    objc_sync_exit(v11);
    v15 = apparentTimeLogHandle;
    if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      delayCopy3 = delay;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "ApparentTimeHandler about to delegate dispatchAfterDelay %.3f to reference %@", buf, 0x16u);
    }

    if (activeTraceTargets)
    {
      traceCallout(1, "[ApparentTimeHandler dispatchAfterDelay:queue:block:]", "setTimerCallbackWithDelay:queue:reference:", "%f %@", v16, v17, v18, v19, *&delay);
    }

    [WeakRetained setTimerCallbackWithDelay:queueCopy queue:v13 reference:delay];
    v20 = apparentTimeLogHandle;
    if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      delayCopy3 = delay;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "ApparentTimeHandler delegated dispatchAfterDelay %.3f to reference %@", buf, 0x16u);
    }
  }

  else
  {
    v21 = apparentTimeLogHandle;
    if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      delayCopy3 = delay;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "ApparentTimeHandler no delegate to handle dispatchAfterDelay %.3f", buf, 0xCu);
    }
  }
}

- (void)timerCallbackWithReference:(id)reference at:(double)at
{
  v17 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  v7 = apparentTimeLogHandle;
  if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = v7;
    v9 = dateStringMillisecondsFromTimeInterval(at);
    *buf = 138412546;
    v14 = referenceCopy;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "ApparentTimeHandler timerCallbackWithReference %@ at %@", buf, 0x16u);
  }

  if (activeTraceTargets)
  {
    traceEntry(1, "[ApparentTimeHandler timerCallbackWithReference:at:]", "%@ %t", referenceCopy, *&at);
  }

  setApparentTime(at);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = referenceCopy;
    v11 = self->_pendingDispatchAfterBlocks;
    objc_sync_enter(v11);
    v12 = [(NSMutableDictionary *)self->_pendingDispatchAfterBlocks objectForKeyedSubscript:v10];
    [(NSMutableDictionary *)self->_pendingDispatchAfterBlocks removeObjectForKey:v10];
    objc_sync_exit(v11);

    if (v12)
    {
      v12[2](v12);
    }
  }
}

- (ApparentTimeHandler)init
{
  v6.receiver = self;
  v6.super_class = ApparentTimeHandler;
  v2 = [(ApparentTimeHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingDispatchAfterBlocks = v2->_pendingDispatchAfterBlocks;
    v2->_pendingDispatchAfterBlocks = v3;
  }

  return v2;
}

uint64_t __37__ApparentTimeHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_42;
  sharedInstance_sharedInstance_42 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (ApparentTimeHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end