@interface WFHotspotInterface
- (BOOL)isScanning;
- (WFHotspotInterface)init;
- (WFHotspotInterfaceDelegate)delegate;
- (id)enableHotspot:(id)hotspot error:(id *)error;
- (void)_stopBrowsingRemoveCache:(BOOL)cache;
- (void)init;
- (void)session:(id)session updatedFoundDevices:(id)devices;
- (void)startBrowsing;
- (void)updateNetworksWithHotspots:(id)hotspots;
@end

@implementation WFHotspotInterface

- (WFHotspotInterface)init
{
  v10.receiver = self;
  v10.super_class = WFHotspotInterface;
  v2 = [(WFHotspotInterface *)&v10 init];
  if (!v2)
  {
    v4 = 0;
LABEL_5:

    v2 = 0;
    goto LABEL_6;
  }

  v3 = objc_alloc_init(MEMORY[0x277D54CC8]);
  v4 = v3;
  if (!v3)
  {
    [WFHotspotInterface init];
    goto LABEL_5;
  }

  [v3 setDelegate:v2];
  objc_storeStrong(&v2->_hotspotSession, v4);
  v5 = [MEMORY[0x277CBEB98] set];
  networks = v2->_networks;
  v2->_networks = v5;

  if (!v2->_networks)
  {
    goto LABEL_5;
  }

  v7 = dispatch_queue_create(0, 0);
  internalQueue = v2->_internalQueue;
  v2->_internalQueue = v7;

  if (!v2->_internalQueue)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v2;
}

- (void)updateNetworksWithHotspots:(id)hotspots
{
  v34 = *MEMORY[0x277D85DE8];
  hotspotsCopy = hotspots;
  v5 = [MEMORY[0x277CBEB58] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = hotspotsCopy;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[WFHotspotDevice alloc] initWithHotspotDevice:*(*(&v25 + 1) + 8 * v10)];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }

  networks = [(WFHotspotInterface *)self networks];
  v13 = [v5 isEqualToSet:networks];

  if (v13)
  {
    delegate = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(3uLL);
    v16 = v15;
    if (WFCurrentLogLevel(v15, v17) >= 3 && delegate && os_log_type_enabled(delegate, v16))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, delegate, v16, "Instant HS scan finished-> No new networks found.", buf, 2u);
    }
  }

  else
  {
    [(WFHotspotInterface *)self setNetworks:v5];
    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(3uLL);
    v20 = v19;
    if (WFCurrentLogLevel(v19, v21) >= 3 && v18 && os_log_type_enabled(v18, v20))
    {
      *buf = 136315394;
      v30 = "[WFHotspotInterface updateNetworksWithHotspots:]";
      v31 = 2112;
      v32 = v5;
      _os_log_impl(&dword_273ECD000, v18, v20, "%s: new hotspots %@", buf, 0x16u);
    }

    delegate = [(WFHotspotInterface *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __49__WFHotspotInterface_updateNetworksWithHotspots___block_invoke;
      v22[3] = &unk_279EBD290;
      delegate = delegate;
      v23 = delegate;
      selfCopy = self;
      dispatch_async(MEMORY[0x277D85CD0], v22);
    }
  }
}

- (id)enableHotspot:(id)hotspot error:(id *)error
{
  hotspotCopy = hotspot;
  hotspotDevice = [hotspotCopy hotspotDevice];

  if (hotspotDevice)
  {
    *buf = 0;
    v30 = buf;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__7;
    v33 = __Block_byref_object_dispose__7;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__7;
    v27 = __Block_byref_object_dispose__7;
    v28 = 0;
    v8 = dispatch_semaphore_create(0);
    hotspotSession = [(WFHotspotInterface *)self hotspotSession];
    hotspotDevice2 = [hotspotCopy hotspotDevice];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__WFHotspotInterface_enableHotspot_error___block_invoke;
    v19[3] = &unk_279EBE410;
    v21 = &v23;
    v22 = buf;
    v11 = v8;
    v20 = v11;
    [hotspotSession enableRemoteHotspotForDevice:hotspotDevice2 withCompletionHandler:v19];

    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      v12 = v24[5];
      if (v12)
      {
        *error = v12;
      }
    }

    v13 = *(v30 + 5);

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(1uLL);
    v16 = v15;
    if (WFCurrentLogLevel(v15, v17) && v14 && os_log_type_enabled(v14, v16))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v14, v16, "Cannot enable hotspot, WFHotspotDevice missing SFRemoteHotspotDevice", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

void __42__WFHotspotInterface_enableHotspot_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(1uLL);
    v10 = v9;
    if (WFCurrentLogLevel(v9, v11) && v8 && os_log_type_enabled(v8, v10))
    {
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&dword_273ECD000, v8, v10, "error enabling hotspot: %{public}@", &v13, 0xCu);
    }

    v12 = 40;
  }

  else
  {
    v12 = 48;
    a3 = a2;
  }

  objc_storeStrong((*(*(a1 + v12) + 8) + 40), a3);
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)isScanning
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__WFHotspotInterface_isScanning__block_invoke;
  v5[3] = &unk_279EBD9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)startBrowsing
{
  if (![(WFHotspotInterface *)self isScanning])
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(1uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v3, v5, "Starting hotspot browsing", buf, 2u);
    }

    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__WFHotspotInterface_startBrowsing__block_invoke;
    block[3] = &unk_279EBCFE0;
    block[4] = self;
    dispatch_sync(internalQueue, block);
  }
}

uint64_t __35__WFHotspotInterface_startBrowsing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hotspotSession];
  [v2 startBrowsing];

  v3 = *(a1 + 32);

  return [v3 setScanning:1];
}

- (void)_stopBrowsingRemoveCache:(BOOL)cache
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__WFHotspotInterface__stopBrowsingRemoveCache___block_invoke;
  v4[3] = &unk_279EBDF00;
  v4[4] = self;
  cacheCopy = cache;
  dispatch_sync(internalQueue, v4);
}

void *__47__WFHotspotInterface__stopBrowsingRemoveCache___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(a1 + 40);
    v10[0] = 67109376;
    v10[1] = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_273ECD000, v2, v4, "Stopping hotspot browsing (isBrowsing %d removeCache %d)", v10, 0xEu);
  }

  v8 = [*(a1 + 32) hotspotSession];
  [v8 stopBrowsing];

  result = [*(a1 + 32) setScanning:0];
  if (*(a1 + 40) == 1)
  {
    return [*(a1 + 32) updateNetworksWithHotspots:0];
  }

  return result;
}

- (void)session:(id)session updatedFoundDevices:(id)devices
{
  v13 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
  {
    v11 = 138412290;
    v12 = devicesCopy;
    _os_log_impl(&dword_273ECD000, v6, v8, "Found hotspots %@", &v11, 0xCu);
  }

  v10 = [MEMORY[0x277CBEB58] set];
  [v10 addObjectsFromArray:devicesCopy];
  [(WFHotspotInterface *)self updateNetworksWithHotspots:v10];
}

- (WFHotspotInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    *v4 = 0;
    _os_log_impl(&dword_273ECD000, v0, v2, "failed to create SFRemoteHotspotSession", v4, 2u);
  }
}

@end