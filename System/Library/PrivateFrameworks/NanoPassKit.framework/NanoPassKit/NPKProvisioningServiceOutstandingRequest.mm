@interface NPKProvisioningServiceOutstandingRequest
- (void)invalidateCleanupTimer;
- (void)setOrResetCleanupTimer;
@end

@implementation NPKProvisioningServiceOutstandingRequest

- (void)setOrResetCleanupTimer
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      messageIdentifier = self->_messageIdentifier;
      *buf = 138412290;
      v18 = messageIdentifier;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Setting or resetting cleanup timer for message with identifier %@", buf, 0xCu);
    }
  }

  [(NPKProvisioningServiceOutstandingRequest *)self invalidateCleanupTimer];
  timeoutQueue = self->_timeoutQueue;
  if (timeoutQueue)
  {
    v9 = timeoutQueue;
  }

  else
  {
    v9 = dispatch_get_global_queue(0, 0);
  }

  v10 = v9;
  v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v9);
  v12 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(buf, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __66__NPKProvisioningServiceOutstandingRequest_setOrResetCleanupTimer__block_invoke;
  handler[3] = &unk_279945030;
  objc_copyWeak(&v16, buf);
  dispatch_source_set_event_handler(v11, handler);
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v11;
  v14 = v11;

  dispatch_resume(v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __66__NPKProvisioningServiceOutstandingRequest_setOrResetCleanupTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 4);
    if (v3)
    {
      v4 = v2;
      (*(v3 + 16))();
      v2 = v4;
    }
  }
}

- (void)invalidateCleanupTimer
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
    v4 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }
}

@end