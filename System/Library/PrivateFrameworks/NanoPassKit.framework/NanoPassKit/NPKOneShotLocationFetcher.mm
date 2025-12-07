@interface NPKOneShotLocationFetcher
- (NPKOneShotLocationFetcher)init;
- (void)_finishLocationFixWithLocation:(id)location;
- (void)dealloc;
- (void)fetchLocationWithCompletion:(id)completion;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation NPKOneShotLocationFetcher

- (NPKOneShotLocationFetcher)init
{
  v6.receiver = self;
  v6.super_class = NPKOneShotLocationFetcher;
  v2 = [(NPKOneShotLocationFetcher *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nanopassbook.locationfetch", 0);
    locationManagerQueue = v2->_locationManagerQueue;
    v2->_locationManagerQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  v3 = self->_locationManager;
  v4 = self->_inUseAssertion;
  [(CLLocationManager *)v3 setDelegate:0];
  locationManagerQueue = self->_locationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__NPKOneShotLocationFetcher_dealloc__block_invoke;
  block[3] = &unk_2799454E0;
  v10 = v3;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(locationManagerQueue, block);

  v8.receiver = self;
  v8.super_class = NPKOneShotLocationFetcher;
  [(NPKOneShotLocationFetcher *)&v8 dealloc];
}

uint64_t __36__NPKOneShotLocationFetcher_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopUpdatingLocation];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

- (void)fetchLocationWithCompletion:(id)completion
{
  [(NPKOneShotLocationFetcher *)self setCompletionHandler:completion];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__NPKOneShotLocationFetcher_fetchLocationWithCompletion___block_invoke;
  v6[3] = &unk_279946BF8;
  v6[4] = self;
  v4 = v6;
  v5 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___CanDetermineDeviceLocation_block_invoke;
  block[3] = &unk_279945198;
  v8 = v4;
  dispatch_async(v5, block);
}

void __57__NPKOneShotLocationFetcher_fetchLocationWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v4 = pk_Payment_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (a2)
  {
    if (v5)
    {
      v7 = pk_Payment_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Can determine device location.", buf, 2u);
      }
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__NPKOneShotLocationFetcher_fetchLocationWithCompletion___block_invoke_74;
    block[3] = &unk_279944F98;
    block[4] = v8;
    dispatch_async(v9, block);
  }

  else
  {
    if (v5)
    {
      v10 = pk_Payment_log(v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Returning provisioning device data without location", buf, 2u);
      }
    }

    v11 = [*(a1 + 32) completionHandler];

    if (v11)
    {
      v12 = [*(a1 + 32) completionHandler];
      v12[2](v12, 0);

      [*(a1 + 32) setCompletionHandler:0];
    }
  }
}

void __57__NPKOneShotLocationFetcher_fetchLocationWithCompletion___block_invoke_74(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBFC10]);
  v3 = PKPassKitCoreBundle();
  v4 = [v2 initWithEffectiveBundle:v3 delegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 40)];

  v5 = MEMORY[0x277CBFBF8];
  v6 = PKPassKitCoreBundle();
  v7 = [v5 newAssertionForBundle:v6 withReason:@"NanoPassKit one-shot fetcher requested location"];

  [v4 requestWhenInUseAuthorization];
  v8 = [v4 location];
  v9 = v8;
  if (v8 && (v8 = _LocationMeetsAccuracyCriteria(v8), (v8 & 1) != 0))
  {
    v10 = pk_Payment_log(v8);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_Payment_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Immediately retrieved location", buf, 2u);
      }
    }

    v14 = [*(a1 + 32) completionHandler];

    if (v14)
    {
      v15 = [*(a1 + 32) completionHandler];
      (v15)[2](v15, v9);

      [*(a1 + 32) setCompletionHandler:0];
    }

    [v7 invalidate];
  }

  else
  {
    v16 = pk_Payment_log(v8);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v19 = pk_Payment_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Start updating location…", buf, 2u);
      }
    }

    v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 40));
    v21 = dispatch_walltime(0, 10000000000);
    dispatch_source_set_timer(v20, v21, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    objc_initWeak(buf, *(a1 + 32));
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __57__NPKOneShotLocationFetcher_fetchLocationWithCompletion___block_invoke_79;
    handler[3] = &unk_279945030;
    objc_copyWeak(&v23, buf);
    dispatch_source_set_event_handler(v20, handler);
    dispatch_resume(v20);
    [v4 startUpdatingLocation];
    [*(a1 + 32) setLocationFixTimeout:v20];
    [*(a1 + 32) setLocationManager:v4];
    [*(a1 + 32) setInUseAssertion:v7];
    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

void __57__NPKOneShotLocationFetcher_fetchLocationWithCompletion___block_invoke_79(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = pk_Payment_log(WeakRetained);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Event handler fired", v8, 2u);
    }
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained completionHandler];

    if (v6)
    {
      v7 = [WeakRetained completionHandler];
      v7[2](v7, 0);

      [WeakRetained setCompletionHandler:0];
    }
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v31 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  locationsCopy = locations;
  v8 = pk_Payment_log(locationsCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Location did update", buf, 2u);
    }
  }

  dispatch_assert_queue_V2(self->_locationManagerQueue);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = locationsCopy;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
  v14 = v12;
  if (!v13)
  {
    goto LABEL_20;
  }

  v15 = v13;
  v14 = 0;
  v16 = *v26;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v26 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v25 + 1) + 8 * i);
      if (_LocationMeetsAccuracyCriteria(v18))
      {
        v19 = v18;

        v14 = v19;
      }
    }

    v15 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
  }

  while (v15);

  if (v14)
  {
    v21 = pk_Payment_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      v24 = pk_Payment_log(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Notice: Found candidate location", buf, 2u);
      }
    }

    [(NPKOneShotLocationFetcher *)self _finishLocationFixWithLocation:v14, v25];
LABEL_20:
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v5 = pk_Payment_log(self);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Location did fail", v9, 2u);
    }
  }

  dispatch_assert_queue_V2(self->_locationManagerQueue);
  [(NPKOneShotLocationFetcher *)self _finishLocationFixWithLocation:0];
}

- (void)_finishLocationFixWithLocation:(id)location
{
  locationCopy = location;
  dispatch_assert_queue_V2(self->_locationManagerQueue);
  locationManager = [(NPKOneShotLocationFetcher *)self locationManager];
  [locationManager stopUpdatingLocation];

  locationManager2 = [(NPKOneShotLocationFetcher *)self locationManager];
  [locationManager2 setDelegate:0];

  [(NPKOneShotLocationFetcher *)self setLocationManager:0];
  locationFixTimeout = [(NPKOneShotLocationFetcher *)self locationFixTimeout];

  if (locationFixTimeout)
  {
    locationFixTimeout2 = [(NPKOneShotLocationFetcher *)self locationFixTimeout];
    dispatch_source_cancel(locationFixTimeout2);

    [(NPKOneShotLocationFetcher *)self setLocationFixTimeout:0];
  }

  completionHandler = [(NPKOneShotLocationFetcher *)self completionHandler];

  v9 = locationCopy;
  if (completionHandler)
  {
    completionHandler2 = [(NPKOneShotLocationFetcher *)self completionHandler];
    (completionHandler2)[2](completionHandler2, locationCopy);

    [(NPKOneShotLocationFetcher *)self setCompletionHandler:0];
    v9 = locationCopy;
  }
}

@end