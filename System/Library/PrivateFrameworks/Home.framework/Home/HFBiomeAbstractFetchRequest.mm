@interface HFBiomeAbstractFetchRequest
- (BOOL)publisherFilter:(id)filter;
- (HFBiomeAbstractFetchRequest)init;
- (HFBiomeAbstractFetchRequest)initWithHome:(id)home;
- (id)fetch;
- (void)_fetchWithPromise:(id)promise;
@end

@implementation HFBiomeAbstractFetchRequest

- (HFBiomeAbstractFetchRequest)initWithHome:(id)home
{
  homeCopy = home;
  v15.receiver = self;
  v15.super_class = HFBiomeAbstractFetchRequest;
  v6 = [(HFBiomeAbstractFetchRequest *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_create("com.apple.Home.biomefetchrequest", v9);
    workQueue = v7->_workQueue;
    v7->_workQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x277CF1968]);
    accessoryControlStream = v7->_accessoryControlStream;
    v7->_accessoryControlStream = v12;
  }

  return v7;
}

- (HFBiomeAbstractFetchRequest)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFBiomeAbstractFetchRequest.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFBiomeAbstractFetchRequest init]", v5}];

  return 0;
}

- (BOOL)publisherFilter:(id)filter
{
  eventBody = [filter eventBody];
  if (eventBody && (objc_msgSend_home(self), v5 = objc_claimAutoreleasedReturnValue(), [v5 uniqueIdentifier], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "UUIDString"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(eventBody, "base"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "homeUniqueIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "isEqualToString:", v9), v9, v8, v7, v6, v5, v10) && ((-[HFBiomeAbstractFetchRequest room](self, "room"), (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (v12 = v11, -[HFBiomeAbstractFetchRequest room](self, "room"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "uniqueIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "UUIDString"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(eventBody, "roomUniqueIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, v14, v13, v12, v17)) && ((-[HFBiomeAbstractFetchRequest zone](self, "zone"), (v18 = objc_claimAutoreleasedReturnValue()) == 0) || (v19 = v18, objc_msgSend(eventBody, "zoneUniqueIdentifiers"), v20 = objc_claimAutoreleasedReturnValue(), -[HFBiomeAbstractFetchRequest zone](self, "zone"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "uniqueIdentifier"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "UUIDString"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v20, "containsObject:", v23), v23, v22, v21, v20, v19, v24)) && ((-[HFBiomeAbstractFetchRequest accessory](self, "accessory"), (v25 = objc_claimAutoreleasedReturnValue()) == 0) || (v26 = v25, -[HFBiomeAbstractFetchRequest accessory](self, "accessory"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "uniqueIdentifier"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "UUIDString"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(eventBody, "accessoryUniqueIdentifier"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v29, "isEqualToString:", v30), v30, v29, v28, v27, v26, v31)))
  {
    v32 = objc_msgSend_service(self);
    if (v32)
    {
      v33 = v32;
      v34 = objc_msgSend_service(self);
      uniqueIdentifier = [v34 uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      serviceUniqueIdentifier = [eventBody serviceUniqueIdentifier];
      v38 = [uUIDString isEqualToString:serviceUniqueIdentifier];
    }

    else
    {
      v38 = 1;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38 & 1;
}

- (void)_fetchWithPromise:(id)promise
{
  promiseCopy = promise;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v7 = v6;

  accessoryControlStream = [(HFBiomeAbstractFetchRequest *)self accessoryControlStream];
  v9 = [accessoryControlStream publisherFromStartTime:v7];

  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__HFBiomeAbstractFetchRequest__fetchWithPromise___block_invoke;
  v18[3] = &unk_277DFB6C8;
  objc_copyWeak(&v19, &location);
  v10 = [v9 filterWithIsIncluded:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__HFBiomeAbstractFetchRequest__fetchWithPromise___block_invoke_2;
  v15[3] = &unk_277DFB6F0;
  v11 = promiseCopy;
  v16 = v11;
  objc_copyWeak(&v17, &location);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__HFBiomeAbstractFetchRequest__fetchWithPromise___block_invoke_3;
  v13[3] = &unk_277DFB718;
  objc_copyWeak(&v14, &location);
  v12 = [v10 sinkWithCompletion:v15 receiveInput:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

uint64_t __49__HFBiomeAbstractFetchRequest__fetchWithPromise___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained publisherFilter:v3];

  return v5;
}

void __49__HFBiomeAbstractFetchRequest__fetchWithPromise___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = HFLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 error];
      *buf = 136315394;
      v16 = "[HFBiomeAbstractFetchRequest _fetchWithPromise:]_block_invoke_2";
      v17 = 2112;
      v18 = v8;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "%s: %@", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__HFBiomeAbstractFetchRequest__fetchWithPromise___block_invoke_10;
    block[3] = &unk_277DF3370;
    v13 = *(a1 + 32);
    v14 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v5 = v13;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained successHandler];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__HFBiomeAbstractFetchRequest__fetchWithPromise___block_invoke_2_12;
    v9[3] = &unk_277DF3370;
    v10 = v7;
    v11 = *(a1 + 32);
    v5 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

void __49__HFBiomeAbstractFetchRequest__fetchWithPromise___block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) error];
  [v1 finishWithError:v2];
}

uint64_t __49__HFBiomeAbstractFetchRequest__fetchWithPromise___block_invoke_2_12(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 finishWithResult:?];
  }

  else
  {
    return [v1 finishWithNoResult];
  }
}

void __49__HFBiomeAbstractFetchRequest__fetchWithPromise___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained eventHandler:v5];

  objc_autoreleasePoolPop(v3);
}

- (id)fetch
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__HFBiomeAbstractFetchRequest_fetch__block_invoke;
  v4[3] = &unk_277DF29A0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] futureWithBlock:v4];

  return v2;
}

void __36__HFBiomeAbstractFetchRequest_fetch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFUtilities isInternalTest];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _fetchWithPromise:v3];
  }

  else
  {
    v6 = [v5 workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__HFBiomeAbstractFetchRequest_fetch__block_invoke_2;
    v7[3] = &unk_277DF3370;
    v7[4] = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

@end