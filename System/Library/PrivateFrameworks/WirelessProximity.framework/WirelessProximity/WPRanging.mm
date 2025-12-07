@interface WPRanging
- (WPRanging)initWithDelegate:(id)delegate queue:(id)queue;
- (WPRangingDelegate)delegate;
- (void)enableRanging:(BOOL)ranging;
- (void)enableRanging:(BOOL)ranging reply:(id)reply;
- (void)invalidate;
- (void)isRangingEnabledReply:(id)reply;
- (void)rangingEnabled:(BOOL)enabled withError:(id)error;
- (void)stateDidChange:(int64_t)change;
@end

@implementation WPRanging

- (WPRanging)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  if (+[WPClient supportsRanging])
  {
    v13.receiver = self;
    v13.super_class = WPRanging;
    v8 = [(WPClient *)&v13 initWithQueue:queueCopy machName:0];
    v9 = v8;
    if (v8)
    {
      objc_storeWeak(&v8->_delegate, delegateCopy);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPRanging initWithDelegate:queue:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPRanging initWithDelegate:v11 queue:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)invalidate
{
  [(WPRanging *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = WPRanging;
  [(WPClient *)&v3 invalidate];
}

- (void)enableRanging:(BOOL)ranging
{
  rangingCopy = ranging;
  v11 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPRanging enableRanging:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = rangingCopy;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "Ranging enableRanging:%d", buf, 8u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__WPRanging_enableRanging___block_invoke_123;
  v7[3] = &unk_279ED73D0;
  v7[4] = self;
  v8 = rangingCopy;
  v6.receiver = self;
  v6.super_class = WPRanging;
  [(WPClient *)&v6 enableRanging:rangingCopy reply:v7];
}

- (void)enableRanging:(BOOL)ranging reply:(id)reply
{
  rangingCopy = ranging;
  v11 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  if (WPLogInitOnce != -1)
  {
    [WPRanging enableRanging:reply:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = rangingCopy;
    _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "WPRanging enable ranging:%d with reply", buf, 8u);
  }

  v8.receiver = self;
  v8.super_class = WPRanging;
  [(WPClient *)&v8 enableRanging:rangingCopy reply:replyCopy];
}

- (void)isRangingEnabledReply:(id)reply
{
  replyCopy = reply;
  if (WPLogInitOnce != -1)
  {
    [WPRanging isRangingEnabledReply:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "WPRanging is ranging enabled?", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = WPRanging;
  [(WPClient *)&v6 isRangingEnabledReply:replyCopy];
}

- (void)stateDidChange:(int64_t)change
{
  v7.receiver = self;
  v7.super_class = WPRanging;
  [(WPClient *)&v7 stateDidChange:change];
  delegate = [(WPRanging *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WPRanging *)self delegate];
    [delegate2 rangingDidUpdateState:self];
  }
}

- (void)rangingEnabled:(BOOL)enabled withError:(id)error
{
  enabledCopy = enabled;
  errorCopy = error;
  delegate = [(WPRanging *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(WPRanging *)self delegate];
    [delegate2 ranging:self enabled:enabledCopy withError:errorCopy];
  }
}

- (WPRangingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end