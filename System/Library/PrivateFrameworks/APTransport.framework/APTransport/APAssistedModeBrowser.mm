@interface APAssistedModeBrowser
- (APAssistedModeBrowser)init;
- (int)setupBonjourBrowser;
- (int)startBonjourBrowser;
- (int)startTimerWithTimeout:(double)timeout;
- (void)callDeviceFoundHandlerOnce:(id)once error:(id)error;
- (void)dealloc;
- (void)setDispatchQueue:(id)queue;
- (void)startBrowsingFor:(id)for withTimeout:(double)timeout deviceFoundHandler:(id)handler;
- (void)stopBrowsing;
- (void)stopBrowsingWithError:(int)error;
@end

@implementation APAssistedModeBrowser

- (APAssistedModeBrowser)init
{
  v4.receiver = self;
  v4.super_class = APAssistedModeBrowser;
  v2 = [(APAssistedModeBrowser *)&v4 init];
  if (v2)
  {
    [(APAssistedModeBrowser *)v2 setInternalBrowserQueue:dispatch_queue_create("APAPAssistedModeBrowserInternalQueue", 0)];
    [(APAssistedModeBrowser *)v2 setDispatchQueue:MEMORY[0x277D85CD0]];
    dispatch_retain([(APAssistedModeBrowser *)v2 dispatchQueue]);
  }

  return v2;
}

- (void)dealloc
{
  self->_instanceName = 0;

  self->_bonjourServiceName = 0;
  self->_bonjourProtocol = 0;
  if (self->_bonjourBrowser)
  {
    BonjourBrowser_Stop();
    CFRelease(self->_bonjourBrowser);
    self->_bonjourBrowser = 0;
  }

  deviceFoundHandlerBlock = self->_deviceFoundHandlerBlock;
  if (deviceFoundHandlerBlock)
  {
    _Block_release(deviceFoundHandlerBlock);
    self->_deviceFoundHandlerBlock = 0;
  }

  internalBrowserQueue = self->_internalBrowserQueue;
  if (internalBrowserQueue)
  {
    dispatch_release(internalBrowserQueue);
    self->_internalBrowserQueue = 0;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(self->_timeoutTimer);
    dispatch_release(timeoutTimer);
    self->_timeoutTimer = 0;
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
    self->_dispatchQueue = 0;
  }

  v7.receiver = self;
  v7.super_class = APAssistedModeBrowser;
  [(APAssistedModeBrowser *)&v7 dealloc];
}

- (void)startBrowsingFor:(id)for withTimeout:(double)timeout deviceFoundHandler:(id)handler
{
  internalBrowserQueue = [(APAssistedModeBrowser *)self internalBrowserQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__APAssistedModeBrowser_startBrowsingFor_withTimeout_deviceFoundHandler___block_invoke;
  v10[3] = &unk_278BC9570;
  v10[4] = self;
  v10[5] = for;
  v10[6] = handler;
  *&v10[7] = timeout;
  dispatch_async(internalBrowserQueue, v10);
}

uint64_t __73__APAssistedModeBrowser_startBrowsingFor_withTimeout_deviceFoundHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) isBrowsing])
  {
    __73__APAssistedModeBrowser_startBrowsingFor_withTimeout_deviceFoundHandler___block_invoke_cold_6();
    v8 = 4294960587;
    goto LABEL_19;
  }

  if (gLogCategory_APAssistedModeBrowser <= 30 && (gLogCategory_APAssistedModeBrowser != -1 || _LogCategory_Initialize()))
  {
    __73__APAssistedModeBrowser_startBrowsingFor_withTimeout_deviceFoundHandler___block_invoke_cold_1(v2, v3, v4);
  }

  [*(a1 + 32) setInstanceName:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"AssistedInstanceName"}];
  if (![*(a1 + 32) instanceName])
  {
    __73__APAssistedModeBrowser_startBrowsingFor_withTimeout_deviceFoundHandler___block_invoke_cold_5();
LABEL_17:
    v8 = 4294960591;
    goto LABEL_19;
  }

  [*(a1 + 32) setBonjourServiceName:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"AssistedBonjourServiceName"}];
  if (![*(a1 + 32) bonjourServiceName])
  {
    __73__APAssistedModeBrowser_startBrowsingFor_withTimeout_deviceFoundHandler___block_invoke_cold_4();
    goto LABEL_17;
  }

  [*(a1 + 32) setBonjourProtocol:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"AssistedBonjourProtocol"}];
  if (![*(a1 + 32) bonjourProtocol])
  {
    __73__APAssistedModeBrowser_startBrowsingFor_withTimeout_deviceFoundHandler___block_invoke_cold_3();
    goto LABEL_17;
  }

  [*(a1 + 32) setDeviceFoundHandlerBlock:_Block_copy(*(a1 + 48))];
  v5 = [*(a1 + 32) startBonjourBrowser];
  if (!v5)
  {
    [*(a1 + 32) startTimerWithTimeout:*(a1 + 56)];
    v6 = *(a1 + 32);

    return [v6 setIsBrowsing:1];
  }

  v8 = v5;
  __73__APAssistedModeBrowser_startBrowsingFor_withTimeout_deviceFoundHandler___block_invoke_cold_2(v5);
LABEL_19:
  v9 = *v2;

  return [v9 stopBrowsingWithError:v8];
}

- (void)stopBrowsing
{
  internalBrowserQueue = [(APAssistedModeBrowser *)self internalBrowserQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__APAssistedModeBrowser_stopBrowsing__block_invoke;
  block[3] = &unk_278BC6E38;
  block[4] = self;
  dispatch_sync(internalBrowserQueue, block);
}

- (void)setDispatchQueue:(id)queue
{
  internalBrowserQueue = [(APAssistedModeBrowser *)self internalBrowserQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__APAssistedModeBrowser_setDispatchQueue___block_invoke;
  v6[3] = &unk_278BC71F8;
  v6[4] = queue;
  v6[5] = self;
  dispatch_sync(internalBrowserQueue, v6);
}

void __42__APAssistedModeBrowser_setDispatchQueue___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = MEMORY[0x277D85CD0];
  }

  dispatch_retain(v2);
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  if (v4)
  {
    dispatch_release(v4);
    v3 = *(a1 + 40);
  }

  *(v3 + 16) = v2;
}

- (int)startBonjourBrowser
{
  setupBonjourBrowser = [(APAssistedModeBrowser *)self setupBonjourBrowser];
  if (setupBonjourBrowser)
  {
    v5 = setupBonjourBrowser;
    [(APAssistedModeBrowser *)setupBonjourBrowser startBonjourBrowser];
  }

  else
  {
    if (gLogCategory_APAssistedModeBrowser <= 50 && (gLogCategory_APAssistedModeBrowser != -1 || _LogCategory_Initialize()))
    {
      [(APAssistedModeBrowser *)self startBonjourBrowser];
    }

    [(APAssistedModeBrowser *)self bonjourBrowser];
    [-[APAssistedModeBrowser getExpectedBonjourService](self "getExpectedBonjourService")];
    v4 = BonjourBrowser_Start();
    v5 = v4;
    if (v4)
    {
      [(APAssistedModeBrowser *)v4 startBonjourBrowser];
    }
  }

  return v5;
}

- (int)setupBonjourBrowser
{
  if (![(APAssistedModeBrowser *)self bonjourBrowser])
  {
    v3 = BonjourBrowser_CreateEx();
    if (v3)
    {
      v4 = v3;
      [(APAssistedModeBrowser *)v3 setupBonjourBrowser];
      return v4;
    }

    [(APAssistedModeBrowser *)self bonjourBrowser];
    [(APAssistedModeBrowser *)self internalBrowserQueue];
    BonjourBrowser_SetDispatchQueue();
  }

  [(APAssistedModeBrowser *)self bonjourBrowser];
  BonjourBrowser_SetEventHandlerBlock();
  return 0;
}

uint64_t __44__APAssistedModeBrowser_setupBonjourBrowser__block_invoke(uint64_t result, uint64_t a2, CFDictionaryRef theDict)
{
  v5 = result;
  if (gLogCategory_APAssistedModeBrowser <= 30 && (gLogCategory_APAssistedModeBrowser != -1 || (result = _LogCategory_Initialize(), result)))
  {
    result = __44__APAssistedModeBrowser_setupBonjourBrowser__block_invoke_cold_1(v5, a2, theDict);
    if (!theDict)
    {
      goto LABEL_6;
    }
  }

  else if (!theDict)
  {
    goto LABEL_6;
  }

  result = [objc_msgSend(CFDictionaryGetValue(theDict @"dnsName")];
  if ((result & 1) == 0)
  {
    return __44__APAssistedModeBrowser_setupBonjourBrowser__block_invoke_cold_2((v5 + 32));
  }

LABEL_6:
  if (a2 == 1)
  {
    if (gLogCategory_APAssistedModeBrowser <= 50 && (gLogCategory_APAssistedModeBrowser != -1 || _LogCategory_Initialize()))
    {
      __44__APAssistedModeBrowser_setupBonjourBrowser__block_invoke_cold_4(v5);
    }

    [*(v5 + 32) callDeviceFoundHandlerOnce:theDict error:0];
    v6 = *(v5 + 32);

    return [v6 stopBrowsingWithError:0];
  }

  else if (gLogCategory_APAssistedModeBrowser <= 30)
  {
    if (gLogCategory_APAssistedModeBrowser != -1)
    {
      return __44__APAssistedModeBrowser_setupBonjourBrowser__block_invoke_cold_3(v5, a2, theDict);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __44__APAssistedModeBrowser_setupBonjourBrowser__block_invoke_cold_3(v5, a2, theDict);
    }
  }

  return result;
}

- (int)startTimerWithTimeout:(double)timeout
{
  if ([(APAssistedModeBrowser *)self isBrowsing])
  {
    [APAssistedModeBrowser startTimerWithTimeout:];
    return -6709;
  }

  if ([(APAssistedModeBrowser *)self timeoutTimer])
  {
    [APAssistedModeBrowser startTimerWithTimeout:];
    return -6709;
  }

  internalBrowserQueue = [(APAssistedModeBrowser *)self internalBrowserQueue];
  [(APAssistedModeBrowser *)self setTimeoutTimer:dispatch_source_create(MEMORY[0x277D85D38], 0, 0, internalBrowserQueue)];
  if ([(APAssistedModeBrowser *)self timeoutTimer])
  {
    timeoutTimer = [(APAssistedModeBrowser *)self timeoutTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __47__APAssistedModeBrowser_startTimerWithTimeout___block_invoke;
    handler[3] = &unk_278BC6E38;
    handler[4] = self;
    dispatch_source_set_event_handler(timeoutTimer, handler);
    if (gLogCategory_APAssistedModeBrowser <= 30 && (gLogCategory_APAssistedModeBrowser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAssistedModeBrowser, "[APAssistedModeBrowser startTimerWithTimeout:]", 33554462, "[%{ptr}] Starting %.fs browse timeout timer", self, *&timeout);
    }

    timeoutTimer2 = [(APAssistedModeBrowser *)self timeoutTimer];
    v8 = dispatch_time(0, 1000000000 * timeout);
    dispatch_source_set_timer(timeoutTimer2, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume([(APAssistedModeBrowser *)self timeoutTimer]);
    return 0;
  }

  else
  {
    [APAssistedModeBrowser startTimerWithTimeout:];
    return -6728;
  }
}

void *__47__APAssistedModeBrowser_startTimerWithTimeout___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [*(a1 + 32) isBrowsing];
  if (result)
  {
    if (gLogCategory_APAssistedModeBrowser <= 30 && (gLogCategory_APAssistedModeBrowser != -1 || _LogCategory_Initialize()))
    {
      __47__APAssistedModeBrowser_startTimerWithTimeout___block_invoke_cold_1(v1, v3, v4);
    }

    v5 = *v1;

    return [v5 stopBrowsingWithError:4294960574];
  }

  return result;
}

- (void)stopBrowsingWithError:(int)error
{
  v3 = *&error;
  if ([(APAssistedModeBrowser *)self timeoutTimer])
  {
    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      dispatch_release(timeoutTimer);
      self->_timeoutTimer = 0;
    }
  }

  if ([(APAssistedModeBrowser *)self bonjourBrowser])
  {
    [(APAssistedModeBrowser *)self bonjourBrowser];
    BonjourBrowser_Stop();
    [(APAssistedModeBrowser *)self bonjourBrowser];
    BonjourBrowser_SetEventHandlerBlock();
  }

  if ([(APAssistedModeBrowser *)self isBrowsing]&& gLogCategory_APAssistedModeBrowser <= 50 && (gLogCategory_APAssistedModeBrowser != -1 || _LogCategory_Initialize()))
  {
    [(APAssistedModeBrowser *)self stopBrowsingWithError:v3];
  }

  self->_instanceName = 0;
  self->_bonjourServiceName = 0;

  self->_bonjourProtocol = 0;
  if (v3)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v3 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  [(APAssistedModeBrowser *)self callDeviceFoundHandlerOnce:0 error:v6];

  [(APAssistedModeBrowser *)self setIsBrowsing:0];
}

- (void)callDeviceFoundHandlerOnce:(id)once error:(id)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  if ([(APAssistedModeBrowser *)self deviceFoundHandlerBlock])
  {
    if (gLogCategory_APAssistedModeBrowser <= 30 && (gLogCategory_APAssistedModeBrowser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAssistedModeBrowser, "[APAssistedModeBrowser callDeviceFoundHandlerOnce:error:]", 33554462, "[%{ptr}] Calling device found handler block [%{ptr}], err=%@", self, [(APAssistedModeBrowser *)self deviceFoundHandlerBlock], error);
    }

    v7 = _Block_copy([(APAssistedModeBrowser *)self deviceFoundHandlerBlock]);
    v12[5] = v7;
    deviceFoundHandlerBlock = self->_deviceFoundHandlerBlock;
    if (deviceFoundHandlerBlock)
    {
      _Block_release(deviceFoundHandlerBlock);
      self->_deviceFoundHandlerBlock = 0;
    }

    dispatchQueue = [(APAssistedModeBrowser *)self dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__APAssistedModeBrowser_callDeviceFoundHandlerOnce_error___block_invoke;
    block[3] = &unk_278BC95C0;
    block[5] = error;
    block[6] = &v11;
    block[4] = once;
    dispatch_async(dispatchQueue, block);
  }

  _Block_object_dispose(&v11, 8);
}

void __58__APAssistedModeBrowser_callDeviceFoundHandlerOnce_error___block_invoke(uint64_t a1)
{
  (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    _Block_release(v2);
    *(*(*(a1 + 48) + 8) + 40) = 0;
  }
}

id *__44__APAssistedModeBrowser_setupBonjourBrowser__block_invoke_cold_2(id *result)
{
  if (gLogCategory_APAssistedModeBrowser <= 30)
  {
    v1 = result;
    if (gLogCategory_APAssistedModeBrowser != -1 || (result = _LogCategory_Initialize(), result))
    {
      [*v1 getExpectedServiceInstanceName];
      return OUTLINED_FUNCTION_7_0(&gLogCategory_APAssistedModeBrowser, "[APAssistedModeBrowser setupBonjourBrowser]_block_invoke", v2, "[%{ptr}] Ignoring %s event for %@. Does not match target: %@");
    }
  }

  return result;
}

@end