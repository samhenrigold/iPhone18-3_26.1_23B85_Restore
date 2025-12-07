@interface CMContinuityCaptureProximityMonitor
- (BOOL)isDeviceKnown:(id)known;
- (BOOL)isDeviceNearby:(id)nearby;
- (CMContinuityCaptureProximityMonitor)initWithQueue:(id)queue delegate:(id)delegate;
- (void)_invalidate;
- (void)_startNearbyInteractionSession;
- (void)beginTracking:(id)tracking;
- (void)dealloc;
- (void)endTracking:(id)tracking;
- (void)invalidate;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)sessionSuspensionEnded:(id)ended;
- (void)sessionWasSuspended:(id)suspended;
@end

@implementation CMContinuityCaptureProximityMonitor

- (CMContinuityCaptureProximityMonitor)initWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v31.receiver = self;
  v31.super_class = CMContinuityCaptureProximityMonitor;
  v9 = [(CMContinuityCaptureProximityMonitor *)&v31 init];
  v10 = v9;
  if (v9)
  {
    v9->_havePendingUpdates = 0;
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v11 = dispatch_queue_create("continuity-capture-proximity-monitor", 0);
    internalQueue = v10->_internalQueue;
    v10->_internalQueue = v11;

    objc_storeStrong(&v10->_callbackQueue, queue);
    v13 = objc_opt_new();
    niSession = v10->_niSession;
    v10->_niSession = v13;

    v15 = [objc_alloc(MEMORY[0x277CD8A60]) initWithName:? devicePresencePreset:?];
    innerPredicate = v10->_innerPredicate;
    v10->_innerPredicate = v15;

    v17 = [objc_alloc(MEMORY[0x277CD8A60]) initWithName:? devicePresencePreset:?];
    outerPredicate = v10->_outerPredicate;
    v10->_outerPredicate = v17;

    v19 = objc_opt_new();
    tracking = v10->_tracking;
    v10->_tracking = v19;

    v21 = objc_opt_new();
    nearby = v10->_nearby;
    v10->_nearby = v21;

    v23 = objc_opt_new();
    knownDevices = v10->_knownDevices;
    v10->_knownDevices = v23;

    v25 = v10->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__CMContinuityCaptureProximityMonitor_initWithQueue_delegate___block_invoke;
    block[3] = &unk_278D5C0D0;
    v26 = v10;
    v30 = v26;
    dispatch_sync(v25, block);
    v27 = v26;
  }

  return v10;
}

- (void)beginTracking:(id)tracking
{
  trackingCopy = tracking;
  v5 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = trackingCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ begin tracking %@", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__CMContinuityCaptureProximityMonitor_beginTracking___block_invoke;
  v8[3] = &unk_278D5C008;
  v8[4] = self;
  v9 = trackingCopy;
  v7 = trackingCopy;
  dispatch_sync(internalQueue, v8);
}

void __53__CMContinuityCaptureProximityMonitor_beginTracking___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 64) containsObject:?] & 1) == 0)
  {
    [*(*(a1 + 32) + 64) addObject:?];
    if ([*(*(a1 + 32) + 80) containsObject:?])
    {
      objc_copyWeak(&to, (*(a1 + 32) + 16));
      v2 = [*(*(a1 + 32) + 72) containsObject:?];
      v3 = *(*(a1 + 32) + 32);
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __53__CMContinuityCaptureProximityMonitor_beginTracking___block_invoke_2;
      v4[3] = &unk_278D5C6B0;
      objc_copyWeak(&v6, &to);
      v5 = *(a1 + 40);
      v7 = v2;
      dispatch_async(v3, v4);

      objc_destroyWeak(&v6);
      objc_destroyWeak(&to);
    }
  }
}

void __53__CMContinuityCaptureProximityMonitor_beginTracking___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained device:? isNearby:?];
    WeakRetained = v2;
  }
}

- (void)endTracking:(id)tracking
{
  trackingCopy = tracking;
  v5 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = trackingCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ end tracking %@", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__CMContinuityCaptureProximityMonitor_endTracking___block_invoke;
  v8[3] = &unk_278D5C008;
  v8[4] = self;
  v9 = trackingCopy;
  v7 = trackingCopy;
  dispatch_sync(internalQueue, v8);
}

- (BOOL)isDeviceNearby:(id)nearby
{
  nearbyCopy = nearby;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -86;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CMContinuityCaptureProximityMonitor_isDeviceNearby___block_invoke;
  block[3] = &unk_278D5C4E0;
  v9 = nearbyCopy;
  v10 = &v11;
  block[4] = self;
  v6 = nearbyCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void *__54__CMContinuityCaptureProximityMonitor_isDeviceNearby___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) containsObject:?];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)isDeviceKnown:(id)known
{
  knownCopy = known;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -86;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CMContinuityCaptureProximityMonitor_isDeviceKnown___block_invoke;
  block[3] = &unk_278D5C4E0;
  v9 = knownCopy;
  v10 = &v11;
  block[4] = self;
  v6 = knownCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void *__53__CMContinuityCaptureProximityMonitor_isDeviceKnown___block_invoke(void *a1)
{
  result = [*(a1[4] + 80) containsObject:?];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)invalidate
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CMContinuityCaptureProximityMonitor_invalidate__block_invoke;
  block[3] = &unk_278D5C0D0;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)dealloc
{
  [(CMContinuityCaptureProximityMonitor *)self _invalidate];
  v3.receiver = self;
  v3.super_class = CMContinuityCaptureProximityMonitor;
  [(CMContinuityCaptureProximityMonitor *)&v3 dealloc];
}

- (void)_startNearbyInteractionSession
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ : monitoring nearby interaction", &v8, 0xCu);
  }

  v4 = objc_alloc(MEMORY[0x277CD8A28]);
  v12 = 0;
  v5 = [v4 initWithInnerBoundary:? outerBoundary:? error:?];
  v6 = v12;
  [v5 setAllowedDevices:?];
  [v5 setMonitoringOption:?];
  if (v6)
  {
    v7 = CMContinuityCaptureLog(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      selfCopy2 = self;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%@ ERROR in NIDevicePresenceConfiguration: %@", &v8, 0x16u);
    }
  }

  else
  {
    [(NISession *)self->_niSession setDelegate:?];
    [(NISession *)self->_niSession setDelegateQueue:?];
    [(NISession *)self->_niSession runWithConfiguration:?];
  }
}

- (void)_invalidate
{
  v3 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableSet *)self->_tracking count];
    v5 = [(NSMutableSet *)self->_nearby count];
    v7 = 138412802;
    selfCopy = self;
    v9 = 1024;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ invalidate (%d tracked, %d nearby)", &v7, 0x18u);
  }

  [(NISession *)self->_niSession invalidate];
  niSession = self->_niSession;
  self->_niSession = 0;

  objc_storeWeak(&self->_delegate, 0);
  [(NSMutableSet *)self->_tracking removeAllObjects];
}

- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  sessionCopy = session;
  objectCopy = object;
  regionCopy = region;
  previousRegionCopy = previousRegion;
  dispatch_assert_queue_V2(self->_callbackQueue);
  v14 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    deviceIdentifier = [objectCopy deviceIdentifier];
    [objectCopy distance];
    *buf = 138413314;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = deviceIdentifier;
    *&buf[22] = 2048;
    v30 = v16;
    *v31 = 2112;
    *&v31[2] = previousRegionCopy;
    *&v31[10] = 2112;
    *&v31[12] = regionCopy;
    _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_INFO, "%@ : device %@ (%f) moved from %@ to %@", buf, 0x34u);
  }

  deviceIdentifier2 = [objectCopy deviceIdentifier];
  v18 = [regionCopy isEqual:?];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = v18;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = COERCE_DOUBLE(__Block_byref_object_copy__8);
  *v31 = __Block_byref_object_dispose__8;
  *&v31[8] = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__CMContinuityCaptureProximityMonitor_session_object_didUpdateRegion_previousRegion___block_invoke;
  block[3] = &unk_278D5DBB0;
  block[4] = self;
  v20 = deviceIdentifier2;
  v23 = v20;
  v24 = v27;
  v26 = v18;
  v25 = buf;
  dispatch_sync(internalQueue, block);
  v21 = *(*&buf[8] + 40);
  if (v21)
  {
    [v21 device:? isNearby:?];
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v27, 8);
}

void __85__CMContinuityCaptureProximityMonitor_session_object_didUpdateRegion_previousRegion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 80) addObject:?];
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 72) containsObject:?];
  v2 = *(a1 + 64);
  if (v2 != *(*(*(a1 + 48) + 8) + 24))
  {
    v3 = CMContinuityCaptureLog(1);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (v2)
    {
      if (v4)
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 40);
        v16 = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_INFO, "%@ : device entered inner boundary: %@", &v16, 0x16u);
      }

      [*(*(a1 + 32) + 72) addObject:?];
    }

    else
    {
      if (v4)
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v16 = 138412546;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_INFO, "%@ : device left inner boundary: %@", &v16, 0x16u);
      }

      [*(*(a1 + 32) + 72) removeObject:?];
    }

    if ([*(*(a1 + 32) + 64) containsObject:?])
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
      v10 = *(*(a1 + 56) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = WeakRetained;
    }
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 88);
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v15 < 0 == v14)
  {
    *(v12 + 88) = v15;
  }
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_callbackQueue);
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__CMContinuityCaptureProximityMonitor_session_didInvalidateWithError___block_invoke;
  v8[3] = &unk_278D5CA78;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  objc_copyWeak(&v10, &location);
  dispatch_async(internalQueue, v8);
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __70__CMContinuityCaptureProximityMonitor_session_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v16 = v3;
    v17 = 2112;
    v18[0] = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%@ NISession error: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = *(a1 + 40);
    if (v6 && [v6 code] + 5889 <= 1)
    {
      [WeakRetained _invalidate];
      goto LABEL_15;
    }

    v7 = *(WeakRetained + 22);
    if (v7 < 1)
    {
      v9 = 0;
    }

    else
    {
      v8 = 250000000 * (1 << (v7 - 1));
      v9 = dispatch_time(0, v8);
      v10 = CMContinuityCaptureLog(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(WeakRetained + 22);
        *buf = 138412802;
        v16 = WeakRetained;
        v17 = 1024;
        LODWORD(v18[0]) = v11;
        WORD2(v18[0]) = 2048;
        *(v18 + 6) = v8;
        _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ Backing off NISession restart %d (%lld ns)", buf, 0x1Cu);
      }

      v7 = *(WeakRetained + 22);
      if (v7 > 6)
      {
        goto LABEL_14;
      }
    }

    *(WeakRetained + 22) = v7 + 1;
LABEL_14:
    v12 = *(WeakRetained + 3);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__CMContinuityCaptureProximityMonitor_session_didInvalidateWithError___block_invoke_11;
    block[3] = &unk_278D5C080;
    objc_copyWeak(&v14, (a1 + 48));
    dispatch_after(v9, v12, block);
    objc_destroyWeak(&v14);
  }

LABEL_15:
}

void __70__CMContinuityCaptureProximityMonitor_session_didInvalidateWithError___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_opt_new();
    v3 = v4[5];
    v4[5] = v2;

    [v4 _startNearbyInteractionSession];
    WeakRetained = v4;
  }
}

- (void)sessionWasSuspended:(id)suspended
{
  dispatch_assert_queue_V2(self->_callbackQueue);
  v4 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%@ NISession was suspended", &v5, 0xCu);
  }
}

- (void)sessionSuspensionEnded:(id)ended
{
  dispatch_assert_queue_V2(self->_callbackQueue);
  v4 = CMContinuityCaptureLog(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%@ NISession resuming", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CMContinuityCaptureProximityMonitor_sessionSuspensionEnded___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v7, buf);
  dispatch_async(internalQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __62__CMContinuityCaptureProximityMonitor_sessionSuspensionEnded___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _startNearbyInteractionSession];
    WeakRetained = v2;
  }
}

@end