@interface WFScanManager
- (WFScanManager)init;
- (WFScanManager)initWithScanProxy:(id)proxy delegate:(id)delegate;
- (WFScanManagerDelegate)delegate;
- (double)setTwentyPercentSkew:(double)skew;
- (id)_knownHiddenNetworkNames;
- (id)hotspotHelperForScanRecord:(id)record;
- (int64_t)state;
- (void)_cancelQueuedScan;
- (void)_checkForNoNetworksFound;
- (void)_processNextScan;
- (void)_queueScan;
- (void)_removeQueuedScans;
- (void)_resetNoNetworksFoundCounters;
- (void)_scan;
- (void)_scanningDidFinishWithError:(id)error;
- (void)_scanningWillStart;
- (void)_startHotspotPluginScan;
- (void)_stopNetworkPluginScan;
- (void)_updatePartialScanResults:(id)results;
- (void)pause;
- (void)resume;
- (void)setScanInterval:(double)interval;
- (void)setState:(int64_t)state;
- (void)start;
- (void)stop;
@end

@implementation WFScanManager

- (WFScanManager)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-[WFScanManager init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (void)start
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(6uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) && v3)
  {
    v7 = v3;
    if (os_log_type_enabled(v7, v5))
    {
      state = [(WFScanManager *)self state];
      if (state > 3)
      {
        v9 = 0;
      }

      else
      {
        v9 = off_279EBE378[state];
      }

      v23 = 138412290;
      v24 = v9;
      _os_log_impl(&dword_273ECD000, v7, v5, "starting scan manager (current state='%@')", &v23, 0xCu);
    }
  }

  scanProxy = [(WFScanManager *)self scanProxy];
  isScanningAllowed = [scanProxy isScanningAllowed];

  if (isScanningAllowed)
  {
    if ([(WFScanManager *)self state])
    {
      v12 = WFLogForCategory(6uLL);
      v13 = OSLogForWFLogLevel(2uLL);
      v14 = v13;
      if (WFCurrentLogLevel(v13, v15) >= 2 && v12)
      {
        v16 = v12;
        if (os_log_type_enabled(v16, v14))
        {
          state2 = [(WFScanManager *)self state];
          if (state2 > 3)
          {
            v18 = 0;
          }

          else
          {
            v18 = off_279EBE378[state2];
          }

          v23 = 138412290;
          v24 = v18;
          _os_log_impl(&dword_273ECD000, v16, v14, "scanning is already started (state='%@').", &v23, 0xCu);
        }
      }
    }

    else
    {
      [(WFScanManager *)self setState:1];
      self->_numberOfScansPerformed = 0;
      [(WFScanManager *)self _scan];
      [(WFScanManager *)self _startHotspotPluginScan];
    }
  }

  else
  {
    v19 = WFLogForCategory(6uLL);
    v20 = OSLogForWFLogLevel(2uLL);
    v21 = v20;
    if (WFCurrentLogLevel(v20, v22) >= 2 && v19 && os_log_type_enabled(v19, v21))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_273ECD000, v19, v21, "interface is powered OFF, pausing scan state.", &v23, 2u);
    }

    [(WFScanManager *)self setState:3];
  }
}

- (void)stop
{
  v19 = *MEMORY[0x277D85DE8];
  state = [(WFScanManager *)self state];
  v4 = WFLogForCategory(6uLL);
  if (state)
  {
    v5 = OSLogForWFLogLevel(1uLL);
    v6 = v5;
    if (WFCurrentLogLevel(v5, v7) && v4)
    {
      v8 = v4;
      if (os_log_type_enabled(v8, v6))
      {
        state2 = [(WFScanManager *)self state];
        if (state2 > 3)
        {
          v10 = 0;
        }

        else
        {
          v10 = off_279EBE378[state2];
        }

        v17 = 138412290;
        v18 = v10;
        _os_log_impl(&dword_273ECD000, v8, v6, "stopping scan manager (current state='%@')", &v17, 0xCu);
      }
    }

    [(WFScanManager *)self setState:0];
    [(WFScanManager *)self setNetworks:0];
    [(WFScanManager *)self _removeQueuedScans];
    [(WFScanManager *)self _cancelQueuedScan];
    [(WFScanManager *)self _stopNetworkPluginScan];
    self->_numberOfScansPerformed = 0;
  }

  else
  {
    v11 = OSLogForWFLogLevel(4uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) >= 4 && v4)
    {
      v14 = v4;
      if (os_log_type_enabled(v14, v12))
      {
        state3 = [(WFScanManager *)self state];
        if (state3 > 3)
        {
          v16 = 0;
        }

        else
        {
          v16 = off_279EBE378[state3];
        }

        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&dword_273ECD000, v14, v12, "unable to stop scan manager, already paused (current state='%@')", &v17, 0xCu);
      }
    }
  }
}

- (void)pause
{
  v18 = *MEMORY[0x277D85DE8];
  state = [(WFScanManager *)self state];
  v4 = WFLogForCategory(6uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7))
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (state == 3)
  {
    if (v9)
    {
      v10 = v4;
      if (os_log_type_enabled(v10, v6))
      {
        state2 = [(WFScanManager *)self state];
        if (state2 > 3)
        {
          v12 = 0;
        }

        else
        {
          v12 = off_279EBE378[state2];
        }

        v16 = 138412290;
        v17 = v12;
        _os_log_impl(&dword_273ECD000, v10, v6, "unable to pause scan manager, already paused (current state='%@')", &v16, 0xCu);
      }
    }
  }

  else
  {
    if (v9)
    {
      v13 = v4;
      if (os_log_type_enabled(v13, v6))
      {
        state3 = [(WFScanManager *)self state];
        if (state3 > 3)
        {
          v15 = 0;
        }

        else
        {
          v15 = off_279EBE378[state3];
        }

        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&dword_273ECD000, v13, v6, "pausing scan manager (current state='%@')", &v16, 0xCu);
      }
    }

    [(WFScanManager *)self setState:3];
    [(WFScanManager *)self setNetworks:0];
    [(WFScanManager *)self _removeQueuedScans];
    [(WFScanManager *)self _cancelQueuedScan];
    [(WFScanManager *)self _stopNetworkPluginScan];
  }
}

- (void)resume
{
  v23 = *MEMORY[0x277D85DE8];
  _canResumeScanning = [(WFScanManager *)self _canResumeScanning];
  v4 = WFLogForCategory(6uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7))
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (_canResumeScanning)
  {
    if (v9)
    {
      v10 = v4;
      if (os_log_type_enabled(v10, v6))
      {
        state = [(WFScanManager *)self state];
        if (state > 3)
        {
          v12 = 0;
        }

        else
        {
          v12 = off_279EBE378[state];
        }

        v21 = 138412290;
        v22 = v12;
        _os_log_impl(&dword_273ECD000, v10, v6, "resuming scan manager (current state='%@')", &v21, 0xCu);
      }
    }

    scanProxy = [(WFScanManager *)self scanProxy];
    isScanningAllowed = [scanProxy isScanningAllowed];

    if (isScanningAllowed)
    {
      [(WFScanManager *)self setState:1];
      [(WFScanManager *)self _scan];
      [(WFScanManager *)self _startHotspotPluginScan];
      return;
    }

    v4 = WFLogForCategory(6uLL);
    v18 = OSLogForWFLogLevel(1uLL);
    v19 = v18;
    if (WFCurrentLogLevel(v18, v20) && v4 && os_log_type_enabled(v4, v19))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_273ECD000, v4, v19, "can't resume scanning, power is off.", &v21, 2u);
    }
  }

  else if (v9)
  {
    v13 = v4;
    if (os_log_type_enabled(v13, v6))
    {
      state2 = [(WFScanManager *)self state];
      if (state2 > 3)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_279EBE378[state2];
      }

      v21 = 138412290;
      v22 = v15;
      _os_log_impl(&dword_273ECD000, v13, v6, "unable to resume scan manager, already resumed (current state='%@')", &v21, 0xCu);
    }
  }
}

- (void)setScanInterval:(double)interval
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_scanInterval != interval)
  {
    v5 = WFLogForCategory(6uLL);
    v6 = OSLogForWFLogLevel(1uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
    {
      scanInterval = self->_scanInterval;
      v10 = 134218240;
      v11 = scanInterval;
      v12 = 2048;
      intervalCopy = interval;
      _os_log_impl(&dword_273ECD000, v5, v7, "scan interval changed from %f to %f", &v10, 0x16u);
    }

    self->_scanInterval = interval;
    if ([(WFScanManager *)self state]== 1)
    {
      [(WFScanManager *)self _cancelQueuedScan];
      [(WFScanManager *)self _queueScan];
    }
  }
}

- (void)setState:(int64_t)state
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(WFScanManager *)self state]!= state)
  {
    state = [(WFScanManager *)self state];
    internalQueue = self->_internalQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __26__WFScanManager_setState___block_invoke;
    v14[3] = &unk_279EBCFB8;
    v14[4] = self;
    v14[5] = state;
    dispatch_barrier_async(internalQueue, v14);
    v7 = WFLogForCategory(6uLL);
    v8 = OSLogForWFLogLevel(1uLL);
    v9 = v8;
    if (WFCurrentLogLevel(v8, v10) && v7 && os_log_type_enabled(v7, v9))
    {
      if (state > 3)
      {
        v11 = 0;
      }

      else
      {
        v11 = off_279EBE378[state];
      }

      if (state > 3)
      {
        v12 = 0;
      }

      else
      {
        v12 = off_279EBE378[state];
      }

      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_273ECD000, v7, v9, "scan manager state changed from %@ to %@", buf, 0x16u);
    }

    delegate = [(WFScanManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate scanManager:self stateDidChange:state];
    }
  }
}

- (int64_t)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22__WFScanManager_state__block_invoke;
  v5[3] = &unk_279EBD9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)setTwentyPercentSkew:(double)skew
{
  v3 = skew - skew * 0.1;
  v4 = skew * 0.1 + skew;
  v5 = arc4random();
  return v3 + (v5 + ((v5 / 0x7FFFFFFF) | ((v5 / 0x7FFFFFFF) << 31))) / 2147483650.0 * (v4 - v3);
}

- (void)_queueScan
{
  v23[2] = *MEMORY[0x277D85DE8];
  if ([(WFScanManager *)self state]== 1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x3042000000;
    v21 = __Block_byref_object_copy__6;
    v22 = __Block_byref_object_dispose__6;
    objc_initWeak(v23, self);
    if (self->_singleScanBlock)
    {
      v13 = WFLogForCategory(6uLL);
      v14 = OSLogForWFLogLevel(2uLL);
      v15 = v14;
      if (WFCurrentLogLevel(v14, v16) >= 2 && v13 && os_log_type_enabled(v13, v15))
      {
        *v18 = 0;
        _os_log_impl(&dword_273ECD000, v13, v15, "Won't dispatch another scan 'timer'(dispatch_after now) as there's already one waiting to execute", v18, 2u);
      }
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __27__WFScanManager__queueScan__block_invoke;
      block[3] = &unk_279EBCD88;
      block[4] = &buf;
      v3 = dispatch_block_create(0, block);
      [(WFScanManager *)self setSingleScanBlock:v3];

      [(WFScanManager *)self setTwentyPercentSkew:self->_scanInterval];
      v5 = dispatch_time(0, (v4 * 1000000000.0));
      dispatch_after(v5, self->_scanDispatchQueue, self->_singleScanBlock);
    }

    _Block_object_dispose(&buf, 8);
    objc_destroyWeak(v23);
  }

  else
  {
    v6 = WFLogForCategory(6uLL);
    v7 = OSLogForWFLogLevel(2uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) >= 2 && v6)
    {
      v10 = v6;
      if (os_log_type_enabled(v10, v8))
      {
        state = [(WFScanManager *)self state];
        if (state > 3)
        {
          v12 = 0;
        }

        else
        {
          v12 = off_279EBE378[state];
        }

        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_impl(&dword_273ECD000, v10, v8, "can't queue scan, scanning state is not Idle, it's %@", &buf, 0xCu);
      }
    }
  }
}

void __27__WFScanManager__queueScan__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained _scan];
}

- (void)_cancelQueuedScan
{
  scanDispatchQueue = self->_scanDispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WFScanManager__cancelQueuedScan__block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_async(scanDispatchQueue, block);
}

void __34__WFScanManager__cancelQueuedScan__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) singleScanBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) singleScanBlock];
    dispatch_block_cancel(v3);

    v4 = *(a1 + 32);

    [v4 setSingleScanBlock:0];
  }
}

- (void)_scan
{
  scanProxy = [(WFScanManager *)self scanProxy];
  isScanningAllowed = [scanProxy isScanningAllowed];

  if (isScanningAllowed)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    [(WFScanManager *)self setNetworks:v5];

    [(WFScanManager *)self _scanningWillStart];
    scanDispatchQueue = self->_scanDispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __22__WFScanManager__scan__block_invoke;
    block[3] = &unk_279EBCFE0;
    block[4] = self;
    dispatch_async(scanDispatchQueue, block);
  }

  else
  {
    v7 = WFLogForCategory(6uLL);
    v8 = OSLogForWFLogLevel(2uLL);
    v9 = v8;
    if (WFCurrentLogLevel(v8, v10) >= 2 && v7 && os_log_type_enabled(v7, v9))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v7, v9, "stopping scan, power is OFF", buf, 2u);
    }
  }
}

void __22__WFScanManager__scan__block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) scanProxy];
  v3 = [v2 scannableChannels];

  if (v3)
  {
    v62 = v3;
    v4 = WFSplitChannelsBetweenBands(v3);
    v59 = a1;
    v5 = *(a1 + 32);
    v6 = *(v5 + 112);
    if (v6 >= 4)
    {
      *(v5 + 112) = 0;
      v7 = WFLogForCategory(6uLL);
      v8 = OSLogForWFLogLevel(1uLL);
      v9 = v8;
      if (WFCurrentLogLevel(v8, v10) && v7 && os_log_type_enabled(v7, v9))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v7, v9, "resetting scan count for low priority", buf, 2u);
      }
    }

    v11 = v6 - 1;
    v12 = [MEMORY[0x277CBEB18] array];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v67 objects:v76 count:16];
    v60 = v13;
    if (v14)
    {
      v15 = v14;
      v16 = *v68;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v68 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v67 + 1) + 8 * i);
          v19 = [WFScanRequest scanRequestForChannels:v18];
          [v19 setIncludeBSSList:1];
          [v19 setLowPriorityScan:v11 < 3];
          v20 = WFLogForCategory(6uLL);
          if (v19)
          {
            v21 = OSLogForWFLogLevel(4uLL);
            v22 = v21;
            if (WFCurrentLogLevel(v21, v23) >= 4 && v20 && os_log_type_enabled(v20, v22))
            {
              *buf = 138412290;
              v72 = v19;
              _os_log_impl(&dword_273ECD000, v20, v22, "created scan request: %@", buf, 0xCu);
            }

            [v12 addObject:v19];
          }

          else
          {
            v24 = OSLogForWFLogLevel(1uLL);
            v25 = v24;
            if (WFCurrentLogLevel(v24, v26) && v20 && os_log_type_enabled(v20, v25))
            {
              *buf = 138543362;
              v72 = v18;
              _os_log_impl(&dword_273ECD000, v20, v25, "Unable to create scan request from channels %{public}@", buf, 0xCu);
            }

            v13 = v60;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v15);
    }

    v27 = [*(v59 + 32) _knownHiddenNetworkNames];
    v28 = v27;
    v61 = v12;
    if (v27)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v29 = [v27 countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v64;
        do
        {
          v32 = v28;
          for (j = 0; j != v30; ++j)
          {
            if (*v64 != v31)
            {
              objc_enumerationMutation(v32);
            }

            v34 = *(*(&v63 + 1) + 8 * j);
            v35 = [WFScanRequest scanRequestForSSID:v34 channels:v62];
            [v35 setIncludeBSSList:1];
            [v35 setLowPriorityScan:v11 < 3];
            v36 = WFLogForCategory(6uLL);
            if (v35)
            {
              v37 = OSLogForWFLogLevel(4uLL);
              v38 = v37;
              if (WFCurrentLogLevel(v37, v39) >= 4 && v36 && os_log_type_enabled(v36, v38))
              {
                *buf = 138412290;
                v72 = v34;
                _os_log_impl(&dword_273ECD000, v36, v38, "created directed scan for %@", buf, 0xCu);
              }

              [v61 addObject:v35];
            }

            else
            {
              v40 = OSLogForWFLogLevel(1uLL);
              v41 = v40;
              if (WFCurrentLogLevel(v40, v42) && v36 && os_log_type_enabled(v36, v41))
              {
                *buf = 138412546;
                v72 = v34;
                v73 = 2114;
                v74 = v62;
                _os_log_impl(&dword_273ECD000, v36, v41, "Unable to create scan request for ssid %@ from channels %{public}@", buf, 0x16u);
              }
            }
          }

          v28 = v32;
          v30 = [v32 countByEnumeratingWithState:&v63 objects:v75 count:16];
        }

        while (v30);
      }
    }

    else
    {
      v49 = WFLogForCategory(6uLL);
      v50 = OSLogForWFLogLevel(4uLL);
      v51 = v50;
      if (WFCurrentLogLevel(v50, v52) >= 4 && v49 && os_log_type_enabled(v49, v51))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v49, v51, "no hidden networks to scan", buf, 2u);
      }
    }

    v53 = WFLogForCategory(6uLL);
    v54 = OSLogForWFLogLevel(1uLL);
    v55 = v54;
    v3 = v62;
    if (WFCurrentLogLevel(v54, v56) && v53)
    {
      v57 = v53;
      if (os_log_type_enabled(v57, v55))
      {
        v58 = [v61 count];
        *buf = 134217984;
        v72 = v58;
        _os_log_impl(&dword_273ECD000, v57, v55, "queuing scans: %lu", buf, 0xCu);
      }
    }

    [*(v59 + 32) setScanQueue:v61];
    [*(v59 + 32) _processNextScan];

    v48 = v60;
  }

  else
  {
    v43 = WFLogForCategory(6uLL);
    v44 = OSLogForWFLogLevel(1uLL);
    v45 = v44;
    if (WFCurrentLogLevel(v44, v46) && v43 && os_log_type_enabled(v43, v45))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v43, v45, "device scan channels are nil", buf, 2u);
    }

    v47 = *(a1 + 32);
    v48 = [MEMORY[0x277CCA9B8] scanErrorWithReason:4];
    [v47 _scanningDidFinishWithError:v48];
  }
}

- (void)_processNextScan
{
  v33 = *MEMORY[0x277D85DE8];
  scanQueue = [(WFScanManager *)self scanQueue];
  if ([scanQueue count])
  {
    _isScanning = [(WFScanManager *)self _isScanning];

    if (_isScanning)
    {
      scanQueue2 = [(WFScanManager *)self scanQueue];
      firstObject = [scanQueue2 firstObject];

      v7 = WFLogForCategory(6uLL);
      v8 = OSLogForWFLogLevel(1uLL);
      v9 = v8;
      if (WFCurrentLogLevel(v8, v10) && v7 && os_log_type_enabled(v7, v9))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = firstObject;
        _os_log_impl(&dword_273ECD000, v7, v9, "{SCAN+} starting scan: %@", &buf, 0xCu);
      }

      delegate = [(WFScanManager *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        delegate2 = [(WFScanManager *)self delegate];
        [delegate2 scanManager:self willStartScanRequest:firstObject];
      }

      if ([(WFScanManager *)self supportsUnfilteredScanning]&& self->_doUnFilteredScanning)
      {
        v14 = WFLogForCategory(6uLL);
        v15 = OSLogForWFLogLevel(1uLL);
        v16 = v15;
        if (WFCurrentLogLevel(v15, v17) && v14 && os_log_type_enabled(v14, v16))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_273ECD000, v14, v16, "removing scan filter", &buf, 2u);
        }

        [firstObject setApplyRssiThresholdFilter:0];
      }

      date = [MEMORY[0x277CBEAA8] date];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v31 = 0x2020000000;
      ssid = [firstObject ssid];
      v20 = ssid != 0;

      v32 = v20;
      objc_initWeak(&location, self);
      scanProxy = [(WFScanManager *)self scanProxy];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __33__WFScanManager__processNextScan__block_invoke;
      v24[3] = &unk_279EBE310;
      objc_copyWeak(&v28, &location);
      v22 = date;
      v25 = v22;
      v23 = firstObject;
      v26 = v23;
      p_buf = &buf;
      [scanProxy performScanWithRequest:v23 reply:v24];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
      _Block_object_dispose(&buf, 8);

      return;
    }
  }

  else
  {
  }

  [(WFScanManager *)self _scanningDidFinishWithError:0];
}

void __33__WFScanManager__processNextScan__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained scanDispatchQueue];

    if (v9)
    {
      v10 = [v8 scanDispatchQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __33__WFScanManager__processNextScan__block_invoke_2;
      v11[3] = &unk_279EBE2E8;
      v12 = *(a1 + 32);
      v13 = v5;
      v14 = *(a1 + 40);
      v15 = v6;
      v16 = v8;
      v17 = *(a1 + 48);
      dispatch_async(v10, v11);
    }
  }
}

void __33__WFScanManager__processNextScan__block_invoke_2(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) timeIntervalSinceNow];
  v3 = -v2;
  v4 = *(a1 + 40);
  v5 = WFLogForCategory(6uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8))
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v4)
  {
    if (v10 && os_log_type_enabled(v5, v7))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v42 = 134218498;
      v43 = v3;
      v44 = 2112;
      *v45 = v11;
      *&v45[8] = 2112;
      *&v45[10] = v12;
      _os_log_impl(&dword_273ECD000, v5, v7, "{SCAN-} %f sec, scan error %@ for request: %@", &v42, 0x20u);
    }
  }

  else if (v10)
  {
    v13 = v5;
    if (os_log_type_enabled(v13, v7))
    {
      v14 = [*(a1 + 56) count];
      v15 = *(a1 + 48);
      v42 = 134218498;
      v43 = v3;
      v44 = 1024;
      *v45 = v14;
      *&v45[4] = 2112;
      *&v45[6] = v15;
      _os_log_impl(&dword_273ECD000, v13, v7, "{SCAN-} %f sec, networks found %d for request: %@", &v42, 0x1Cu);
    }
  }

  v16 = [*(a1 + 64) scanQueue];
  v17 = [v16 containsObject:*(a1 + 48)];

  if ((v17 & 1) == 0)
  {
    v24 = WFLogForCategory(6uLL);
    v25 = OSLogForWFLogLevel(1uLL);
    v26 = v25;
    if (WFCurrentLogLevel(v25, v27) && v24 && os_log_type_enabled(v24, v26))
    {
      v28 = *(a1 + 48);
      v42 = 138412290;
      v43 = v28;
      _os_log_impl(&dword_273ECD000, v24, v26, "scan request='%@' was cancelled, disregarding result", &v42, 0xCu);
    }

    goto LABEL_39;
  }

  v18 = *(a1 + 40);
  if (v18 && [v18 code])
  {
    v19 = WFLogForCategory(6uLL);
    v20 = OSLogForWFLogLevel(1uLL);
    v21 = v20;
    if (WFCurrentLogLevel(v20, v22) && v19 && os_log_type_enabled(v19, v21))
    {
      LOWORD(v42) = 0;
      _os_log_impl(&dword_273ECD000, v19, v21, "deferring scans until device is available", &v42, 2u);
    }

    [*(a1 + 64) _removeQueuedScans];
    [*(a1 + 64) _scanningDidFinishWithError:*(a1 + 40)];
  }

  if ([*(a1 + 64) _isScanning])
  {
    if (*(*(*(a1 + 72) + 8) + 24) == 1 && ![*(a1 + 56) count])
    {
      v36 = WFLogForCategory(6uLL);
      v37 = OSLogForWFLogLevel(1uLL);
      v38 = v37;
      if (WFCurrentLogLevel(v37, v39) && v36)
      {
        v40 = v36;
        if (os_log_type_enabled(v40, v38))
        {
          [*(a1 + 48) ssid];
          v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v42 = 138412290;
          v43 = v41;
          _os_log_impl(&dword_273ECD000, v40, v38, "no result for hidden network %@", &v42, 0xCu);
        }
      }
    }

    else
    {
      [*(a1 + 64) _updatePartialScanResults:*(a1 + 56)];
    }

    v23 = [*(a1 + 64) scanQueue];
    [v23 removeObject:*(a1 + 48)];

    [*(a1 + 64) _processNextScan];
  }

  else
  {
    v29 = WFLogForCategory(6uLL);
    v30 = OSLogForWFLogLevel(1uLL);
    v31 = v30;
    if (WFCurrentLogLevel(v30, v32) && v29 && os_log_type_enabled(v29, v31))
    {
      v33 = *(a1 + 48);
      v42 = 138412290;
      v43 = v33;
      _os_log_impl(&dword_273ECD000, v29, v31, "discarding results from: %@, this request was cancelled.", &v42, 0xCu);
    }
  }

  v34 = [*(a1 + 64) delegate];
  v35 = objc_opt_respondsToSelector();

  if (v35)
  {
    v24 = [*(a1 + 64) delegate];
    [v24 scanManager:*(a1 + 64) didFinishScanRequest:*(a1 + 48) results:*(a1 + 56) error:*(a1 + 40) timeElapsed:v3];
LABEL_39:
  }
}

- (void)_updatePartialScanResults:(id)results
{
  v53 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  networks = [(WFScanManager *)self networks];

  if (networks)
  {
    networks2 = [(WFScanManager *)self networks];
    v7 = [networks2 mutableCopy];

    [v7 intersectSet:resultsCopy];
    if ([v7 count])
    {
      v8 = WFLogForCategory(6uLL);
      v9 = OSLogForWFLogLevel(1uLL);
      v10 = v9;
      if (WFCurrentLogLevel(v9, v11) && v8)
      {
        v12 = v8;
        if (os_log_type_enabled(v12, v10))
        {
          v13 = [v7 count];
          logStringWithScanRecords = [v7 logStringWithScanRecords];
          *buf = 67109378;
          v50 = v13;
          v51 = 2112;
          v52 = logStringWithScanRecords;
          _os_log_impl(&dword_273ECD000, v12, v10, "found duplicate (%d networks): %@", buf, 0x12u);
        }
      }
    }

    v15 = [resultsCopy mutableCopy];
    networks3 = [(WFScanManager *)self networks];
    [v15 minusSet:networks3];

    if (v15)
    {
      v17 = WFLogForCategory(6uLL);
      v18 = OSLogForWFLogLevel(1uLL);
      v19 = v18;
      if (WFCurrentLogLevel(v18, v20) && v17)
      {
        v21 = v17;
        if (os_log_type_enabled(v21, v19))
        {
          v22 = [v15 count];
          logStringWithScanRecords2 = [v15 logStringWithScanRecords];
          *buf = 67109378;
          v50 = v22;
          v51 = 2112;
          v52 = logStringWithScanRecords2;
          _os_log_impl(&dword_273ECD000, v21, v19, "found new networks (%d networks): %@", buf, 0x12u);
        }
      }
    }
  }

  networks4 = [(WFScanManager *)self networks];
  [networks4 compareAndUpdateDuplicateScanRecords:resultsCopy];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  networks5 = [(WFScanManager *)self networks];
  v26 = [networks5 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v45;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(networks5);
        }

        v30 = *(*(&v44 + 1) + 8 * i);
        v31 = [(WFScanManager *)self hotspotHelperForScanRecord:v30];
        v32 = v31;
        if (v31)
        {
          label = [v31 label];
          [v30 setHotspotPluginLabel:label];
        }
      }

      v27 = [networks5 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v27);
  }

  networks6 = [(WFScanManager *)self networks];
  v35 = [networks6 mutableCopy];

  [v35 intersectSet:resultsCopy];
  v36 = WFLogForCategory(6uLL);
  v37 = OSLogForWFLogLevel(1uLL);
  v38 = v37;
  if (WFCurrentLogLevel(v37, v39) && v36)
  {
    v40 = v36;
    if (os_log_type_enabled(v40, v38))
    {
      v41 = [v35 count];
      logStringWithScanRecords3 = [v35 logStringWithScanRecords];
      *buf = 67109378;
      v50 = v41;
      v51 = 2112;
      v52 = logStringWithScanRecords3;
      _os_log_impl(&dword_273ECD000, v40, v38, "partial scan results (%d networks): %@", buf, 0x12u);
    }
  }

  delegate = [(WFScanManager *)self delegate];
  [delegate scanManager:self updatedPartialResults:v35];
}

- (void)_scanningWillStart
{
  v3 = WFLogForCategory(6uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
  {
    *v8 = 0;
    _os_log_impl(&dword_273ECD000, v3, v5, "scanning will start", v8, 2u);
  }

  [(WFScanManager *)self setState:2];
  delegate = [(WFScanManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate scanManagerScanningWillStart:self];
  }
}

- (void)_scanningDidFinishWithError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = WFLogForCategory(6uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      state = [(WFScanManager *)self state];
      if (state > 3)
      {
        v11 = 0;
      }

      else
      {
        v11 = off_279EBE378[state];
      }

      networks = [(WFScanManager *)self networks];
      *buf = 138412802;
      v22 = v11;
      v23 = 2048;
      v24 = [networks count];
      v25 = 1024;
      supportsUnfilteredScanning = [(WFScanManager *)self supportsUnfilteredScanning];
      _os_log_impl(&dword_273ECD000, v9, v7, "scanning did finish (current state='%@'), results=%lu, supportsUnfilteredScanning=%u", buf, 0x1Cu);
    }
  }

  ++self->_numberOfScansPerformed;
  if ([(WFScanManager *)self supportsUnfilteredScanning])
  {
    if (errorCopy)
    {
      [(WFScanManager *)self _resetNoNetworksFoundCounters];
    }

    else
    {
      [(WFScanManager *)self _checkForNoNetworksFound];
    }
  }

  delegate = [(WFScanManager *)self delegate];
  networks2 = [(WFScanManager *)self networks];
  [delegate scanManagerScanningDidFinish:self withResults:networks2 error:errorCopy];

  networks3 = [(WFScanManager *)self networks];
  if (networks3)
  {
    v16 = networks3;
    hotspotPluginNetworks = [(WFScanManager *)self hotspotPluginNetworks];

    if (hotspotPluginNetworks)
    {
      if (objc_opt_respondsToSelector())
      {
        hotspotPluginNetworks2 = [(WFScanManager *)self hotspotPluginNetworks];
        [delegate scanManager:self didFindHotspotHelperNetworks:hotspotPluginNetworks2];
      }
    }
  }

  if ([(WFScanManager *)self state]!= 3 && [(WFScanManager *)self state])
  {
    [(WFScanManager *)self setState:1];
    singleScanBlock = self->_singleScanBlock;
    self->_singleScanBlock = 0;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__WFScanManager__scanningDidFinishWithError___block_invoke;
    block[3] = &unk_279EBCFE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_checkForNoNetworksFound
{
  networks = [(WFScanManager *)self networks];
  v4 = [networks count];

  if (v4)
  {

    [(WFScanManager *)self _resetNoNetworksFoundCounters];
  }

  else
  {
    if (self->_doUnFilteredScanning)
    {
      v5 = self->_consecutiveZeroUnFilteredScanResults + 1;
      self->_consecutiveZeroUnFilteredScanResults = v5;
      if (v5 < 2)
      {
        return;
      }
    }

    else
    {
      ++self->_consecutiveZeroFilteredScanResults;
      self->_doUnFilteredScanning = 1;
    }

    scanProxy = [(WFScanManager *)self scanProxy];
    [scanProxy initiateNoNetworksSoftError];
  }
}

- (void)_resetNoNetworksFoundCounters
{
  self->_doUnFilteredScanning = 0;
  self->_consecutiveZeroFilteredScanResults = 0;
  self->_consecutiveZeroUnFilteredScanResults = 0;
}

- (void)_startHotspotPluginScan
{
  v24 = *MEMORY[0x277D85DE8];
  if (![(WFScanManager *)self supportsHotspotHelper])
  {
    v3 = WFLogForCategory(6uLL);
    v7 = OSLogForWFLogLevel(1uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) && v3 && os_log_type_enabled(v3, v8))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_273ECD000, v3, v8, "hotspot helper is not supported", buf, 2u);
    }

    goto LABEL_7;
  }

  if ([(WFScanManager *)self hotspotHelperScanning])
  {
    v3 = WFLogForCategory(6uLL);
    v4 = OSLogForWFLogLevel(1uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_273ECD000, v3, v5, "hotspot helper is already scanning", buf, 2u);
    }

LABEL_7:

    return;
  }

  objc_initWeak(buf, self);
  v10 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v20, buf);
  v11 = CNScanListFilterStart();

  v12 = WFLogForCategory(6uLL);
  v13 = OSLogForWFLogLevel(4uLL);
  v14 = v13;
  if (WFCurrentLogLevel(v13, v15) >= 4 && v12 && os_log_type_enabled(v12, v14))
  {
    *v22 = 67109120;
    v23 = v11;
    _os_log_impl(&dword_273ECD000, v12, v14, "starting hotspot helper scanning success=%d", v22, 8u);
  }

  if (v11)
  {
    [(WFScanManager *)self setHotspotHelperScanning:1];
  }

  else
  {
    v16 = WFLogForCategory(6uLL);
    v17 = OSLogForWFLogLevel(1uLL);
    v18 = v17;
    if (WFCurrentLogLevel(v17, v19) && v16 && os_log_type_enabled(v16, v18))
    {
      *v22 = 0;
      _os_log_impl(&dword_273ECD000, v16, v18, "unable to register for CN scan list filtering", v22, 2u);
    }
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __40__WFScanManager__startHotspotPluginScan__block_invoke(uint64_t a1, WFHotspotHelperNetwork *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v33 = [MEMORY[0x277CBEB58] set];
  v5 = WFLogForCategory(6uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 138412546;
    v40 = a2;
    v41 = 2112;
    v42 = a3;
    _os_log_impl(&dword_273ECD000, v5, v7, "CN Callback(%@): %@", buf, 0x16u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = a3;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v32 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v12 = CNNetworkGetSSIDString();
        v13 = CNNetworkGetPassword();
        v14 = CNNetworkGetPluginBundleID();
        v15 = CNNetworkCopyPluginNames();
        if (v15)
        {
          v16 = v15;
          v17 = MEMORY[0x277CCAB68];
          v18 = [v15 objectAtIndex:0];
          v19 = [v17 stringWithString:v18];

          if ([v16 count] >= 2)
          {
            v20 = 2;
            v21 = 1;
            do
            {
              v22 = [v16 objectAtIndex:v21];
              [v19 appendFormat:@", %@", v22];

              v21 = v20;
            }

            while ([v16 count] > v20++);
          }

          CFRelease(v16);
        }

        else
        {
          v19 = 0;
        }

        v24 = [[WFHotspotHelperNetwork alloc] initWithSSID:v12 bundleIdentifier:v14 password:v13 label:v19];
        [v33 addObject:v24];
        v25 = WFLogForCategory(6uLL);
        v26 = OSLogForWFLogLevel(1uLL);
        v27 = v26;
        if (WFCurrentLogLevel(v26, v28) && v25 && os_log_type_enabled(v25, v27))
        {
          *buf = 138412290;
          v40 = v24;
          _os_log_impl(&dword_273ECD000, v25, v27, "found hotspot helper network=%@", buf, 0xCu);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v10);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHotspotPluginNetworks:v33];
}

- (void)_stopNetworkPluginScan
{
  if ([(WFScanManager *)self supportsHotspotHelper])
  {
    hotspotHelperScanning = [(WFScanManager *)self hotspotHelperScanning];
    v4 = WFLogForCategory(6uLL);
    if (hotspotHelperScanning)
    {
      v5 = OSLogForWFLogLevel(4uLL);
      v6 = v5;
      if (WFCurrentLogLevel(v5, v7) >= 4 && v4 && os_log_type_enabled(v4, v6))
      {
        *v11 = 0;
        _os_log_impl(&dword_273ECD000, v4, v6, "stopping hotspot helper scanning", v11, 2u);
      }

      CNScanListFilterStop();
      [(WFScanManager *)self setHotspotHelperScanning:0];
    }

    else
    {
      v8 = OSLogForWFLogLevel(1uLL);
      v9 = v8;
      if (WFCurrentLogLevel(v8, v10) && v4 && os_log_type_enabled(v4, v9))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v4, v9, "hotspot helper is not scanning", buf, 2u);
      }
    }
  }
}

- (id)hotspotHelperForScanRecord:(id)record
{
  v25 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  hotspotPluginNetworks = [(WFScanManager *)self hotspotPluginNetworks];
  if (hotspotPluginNetworks)
  {
    hotspotPluginNetworks2 = [(WFScanManager *)self hotspotPluginNetworks];
    v7 = [hotspotPluginNetworks2 count];

    if (v7)
    {
      hotspotPluginNetworks3 = [(WFScanManager *)self hotspotPluginNetworks];
      v9 = MEMORY[0x277CCAC30];
      ssid = [recordCopy ssid];
      v11 = [v9 predicateWithFormat:@"ssid == %@", ssid];
      v12 = [hotspotPluginNetworks3 filteredSetUsingPredicate:v11];

      if ([v12 count])
      {
        allObjects = [v12 allObjects];
        hotspotPluginNetworks = [allObjects firstObject];

        v14 = WFLogForCategory(6uLL);
        v15 = OSLogForWFLogLevel(1uLL);
        v16 = v15;
        if (WFCurrentLogLevel(v15, v17) && v14)
        {
          v18 = v14;
          if (os_log_type_enabled(v18, v16))
          {
            ssid2 = [recordCopy ssid];
            *buf = 138412546;
            v22 = ssid2;
            v23 = 2112;
            v24 = hotspotPluginNetworks;
            _os_log_impl(&dword_273ECD000, v18, v16, "found hotspot network for %@ (helper %@)", buf, 0x16u);
          }
        }
      }

      else
      {
        hotspotPluginNetworks = 0;
      }
    }

    else
    {
      hotspotPluginNetworks = 0;
    }
  }

  return hotspotPluginNetworks;
}

- (id)_knownHiddenNetworkNames
{
  delegate = [(WFScanManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFScanManager *)self delegate];
    v6 = [delegate2 scanManagerKnownHiddenNetworkNames:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_removeQueuedScans
{
  objc_initWeak(&location, self);
  scanDispatchQueue = self->_scanDispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__WFScanManager__removeQueuedScans__block_invoke;
  v4[3] = &unk_279EBCEA0;
  objc_copyWeak(&v5, &location);
  dispatch_async(scanDispatchQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __35__WFScanManager__removeQueuedScans__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WFLogForCategory(6uLL);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2)
  {
    v6 = v2;
    if (os_log_type_enabled(v6, v4))
    {
      v7 = [WeakRetained scanQueue];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_273ECD000, v6, v4, "removing scan queue contents: %@", &v9, 0xCu);
    }
  }

  v8 = [WeakRetained scanQueue];
  [v8 removeAllObjects];
}

- (WFScanManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WFScanManager)initWithScanProxy:(id)proxy delegate:(id)delegate
{
  proxyCopy = proxy;
  delegateCopy = delegate;
  [proxyCopy scanInterval];
  if (v9 < 1.0)
  {
    v28 = WFLogForCategory(0);
    v29 = OSLogForWFLogLevel(1uLL);
    v30 = v29;
    if (!WFCurrentLogLevel(v29, v31) || !v28 || !os_log_type_enabled(v28, v30))
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_0_11();
    v37 = 8;
    goto LABEL_24;
  }

  [proxyCopy scanInterval];
  self->_scanInterval = v10;
  if (!delegateCopy)
  {
LABEL_26:
    p_super = &self->super;
    self = 0;
    goto LABEL_15;
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  self->_state = 0;
  if (!proxyCopy)
  {
    v28 = WFLogForCategory(0);
    v38 = OSLogForWFLogLevel(1uLL);
    v39 = v38;
    if (!WFCurrentLogLevel(v38, v40) || !v28 || !os_log_type_enabled(v28, v39))
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_0_11();
    v37 = 12;
LABEL_24:
    _os_log_impl(v32, v33, v34, v35, v36, v37);
LABEL_25:

    goto LABEL_26;
  }

  objc_storeStrong(&self->_scanProxy, proxy);
  v11 = dispatch_queue_create(0, MEMORY[0x277D85CD8]);
  internalQueue = self->_internalQueue;
  self->_internalQueue = v11;

  if (!self->_internalQueue)
  {
    goto LABEL_26;
  }

  v13 = dispatch_queue_create("com.apple.wifikit.scanmanager", 0);
  scanDispatchQueue = self->_scanDispatchQueue;
  self->_scanDispatchQueue = v13;

  if (!self->_scanDispatchQueue)
  {
    goto LABEL_26;
  }

  self->_doUnFilteredScanning = 0;
  self->_consecutiveZeroFilteredScanResults = 0;
  self->_consecutiveZeroUnFilteredScanResults = 0;
  v15 = objc_opt_respondsToSelector();
  v16 = 0;
  if (v15)
  {
    v16 = [delegateCopy scanManagerShouldSupportUnfilteredScanning:self];
  }

  self->_supportsUnfilteredScanning = v16;
  if (objc_opt_respondsToSelector())
  {
    v17 = [delegateCopy scanManagerShouldSupportHotspotHelper:self];
  }

  else
  {
    v17 = 0;
  }

  self->_supportsHotspotHelper = v17;
  self->_hotspotHelperScanning = 0;
  p_super = WFLogForCategory(6uLL);
  v19 = OSLogForWFLogLevel(1uLL);
  v20 = v19;
  if (WFCurrentLogLevel(v19, v21) && p_super && os_log_type_enabled(p_super, v20))
  {
    OUTLINED_FUNCTION_0_11();
    _os_log_impl(v22, v23, v24, v25, v26, 0xEu);
  }

LABEL_15:

  return self;
}

@end