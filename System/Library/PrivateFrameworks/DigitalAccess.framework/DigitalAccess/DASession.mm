@interface DASession
- (DASession)initWithCoder:(id)coder;
- (DASession)initWithDelegate:(id)delegate;
- (id)getRemoteProxy:(id)proxy;
- (void)didEnd:(id)end;
- (void)didStart:(BOOL)start;
- (void)endSession;
@end

@implementation DASession

- (DASession)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = DASession;
  v5 = [(DASession *)&v9 init];
  if (v5)
  {
    v6 = [[DASessionInternal alloc] initWithDelegate:delegateCopy];
    internal = v5->_internal;
    v5->_internal = v6;
  }

  return v5;
}

- (void)endSession
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  if (!selfCopy->_hasEnded)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = __Block_byref_object_copy__2;
    v8[4] = __Block_byref_object_dispose__2;
    v9 = 0;
    v4 = KmlLogger(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v11 = "[DASession endSession]";
      v12 = 1024;
      v13 = 48;
      _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __23__DASession_endSession__block_invoke;
    v7[3] = &unk_278F6FB00;
    v7[4] = v8;
    v5 = [(DASession *)selfCopy getRemoteProxy:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __23__DASession_endSession__block_invoke_14;
    v6[3] = &unk_278F70868;
    v6[4] = selfCopy;
    v6[5] = v8;
    [v5 endSessionWithCompletion:v6];

    _Block_object_dispose(v8, 8);
  }

  objc_sync_exit(selfCopy);
}

void __23__DASession_endSession__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DASession endSession]_block_invoke";
    v15 = 1024;
    v16 = 50;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v11}];
  v12 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __23__DASession_endSession__block_invoke_14(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = KmlLogger(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[DASession endSession]_block_invoke";
    v8 = 1024;
    v9 = 53;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : Proxy end session", &v6, 0x12u);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (!v4)
  {
    *(*(a1 + 32) + 24) = 1;
  }
}

- (id)getRemoteProxy:(id)proxy
{
  v18 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  v5 = [(DASessionInternal *)self->_internal synchronousRemoteObjectProxyWithErrorHandler:proxyCopy];
  if (!v5)
  {
    v6 = KmlLogger(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[DASession getRemoteProxy:]";
      v16 = 1024;
      v17 = 74;
      _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_ERROR, "%s : %i : XPC proxy not available", buf, 0x12u);
    }

    v7 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
    v13 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = [v7 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v9];
    proxyCopy[2](proxyCopy, v10);
  }

  return v5;
}

- (void)didStart:(BOOL)start
{
  startCopy = start;
  v15 = *MEMORY[0x277D85DE8];
  v5 = KmlLogger(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v10 = "[DASession didStart:]";
    v11 = 1024;
    v12 = 98;
    v13 = 1024;
    v14 = startCopy;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : : %d", buf, 0x18u);
  }

  objc_initWeak(buf, self);
  internal = self->_internal;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __22__DASession_didStart___block_invoke;
  v7[3] = &unk_278F70890;
  objc_copyWeak(&v8, buf);
  [(DASessionInternal *)internal dispatchBlockOnCallback:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __22__DASession_didStart___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[2] delegate];
    [v2 daSession:v3 didBecomeActive:0];

    WeakRetained = v3;
  }
}

- (void)didEnd:(id)end
{
  v17 = *MEMORY[0x277D85DE8];
  endCopy = end;
  v5 = KmlLogger(endCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v12 = "[DASession didEnd:]";
    v13 = 1024;
    v14 = 112;
    v15 = 2112;
    v16 = endCopy;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : :%@", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  internal = self->_internal;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __20__DASession_didEnd___block_invoke;
  v8[3] = &unk_278F708B8;
  objc_copyWeak(&v10, buf);
  v7 = endCopy;
  v9 = v7;
  [(DASessionInternal *)internal dispatchBlockOnCallback:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

uint64_t __20__DASession_didEnd___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = +[DAManager sharedManager];
    [v3 unregisterSession:v7];

    v4 = [v7[2] delegate];
    [v4 daSession:v7 didEnd:*(a1 + 32)];

    [v7[2] closeProxy];
    v5 = v7[2];
    v7[2] = 0;
  }

  return MEMORY[0x2821F96F8]();
}

- (DASession)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = DASession;
  return [(DASession *)&v4 init];
}

@end