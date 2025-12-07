@interface SSNetworkQualityInquiry
+ (BOOL)isEntitled;
+ (id)sharedInstance;
- (BOOL)areKnownNetworksReady;
- (SSNetworkQualityInquiry)init;
- (id)investigateNetworks;
- (void)dealloc;
- (void)didStartTrackingNOI:(id)i;
- (void)didStopTrackingAllNOIs:(id)is;
- (void)didStopTrackingNOI:(id)i;
- (void)drainKnownNetworksReadyHandlers;
- (void)performWhenKnownNetworksReady:(id)ready;
@end

@implementation SSNetworkQualityInquiry

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSNetworkQualityInquiry_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedSelf;

  return v2;
}

void __41__SSNetworkQualityInquiry_sharedInstance__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = objc_alloc_init(SSNetworkQualityInquiry);
  v2 = sharedInstance_sharedSelf;
  sharedInstance_sharedSelf = v1;

  if (!sharedInstance_sharedSelf)
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      LODWORD(v5) = v4 | 2;
    }

    else
    {
      LODWORD(v5) = v4;
    }

    v6 = [v3 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v15 = 138412290;
      v16 = objc_opt_class();
      v7 = v16;
      v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, v6, 16, "[%@]: The network quality inquiry couldnt be initialized for metrics.", &v15, 12);

      if (!v8)
      {
LABEL_14:

        return;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
      free(v8);
      SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, v6);
    }

    goto LABEL_14;
  }
}

- (SSNetworkQualityInquiry)init
{
  v30 = *MEMORY[0x1E69E9840];
  if (([objc_opt_class() isEntitled] & 1) == 0)
  {
    v13 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      LODWORD(v15) = shouldLog | 2;
    }

    else
    {
      LODWORD(v15) = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v15 = v15;
    }

    else
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v28 = 138412290;
      v29 = objc_opt_class();
      v17 = v29;
      v18 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "[%@]: Missing entitlements to perform network quality inquiry.", &v28, 12);

      if (!v18)
      {
LABEL_17:

        v5 = 0;
        goto LABEL_18;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:4];
      free(v18);
      SSFileLog(v13, @"%@", v19, v20, v21, v22, v23, v24, oSLogObject);
    }

    goto LABEL_17;
  }

  v27.receiver = self;
  v27.super_class = SSNetworkQualityInquiry;
  v3 = [(SSNetworkQualityInquiry *)&v27 init];
  v5 = v3;
  if (v3)
  {
    v6 = SSVSymptomPresentationFeed(v3, v4);
    v7 = objc_alloc_init(SSVWeakLinkedClassForString(&cfstr_Nwnetworkofint.isa, v6));
    manager = v5->_manager;
    v5->_manager = v7;

    if (!v5->_manager)
    {
      v25 = 0;
      goto LABEL_19;
    }

    v9 = dispatch_queue_create("com.apple.StoreServices.NetworkQualityInquiry.queue", 0);
    queue = v5->_queue;
    v5->_queue = v9;

    [(NWNetworkOfInterestManager *)v5->_manager setQueue:v5->_queue];
    [(NWNetworkOfInterestManager *)v5->_manager setDelegate:v5];
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    knownNetworks = v5->_knownNetworks;
    v5->_knownNetworks = v11;

    [(NWNetworkOfInterestManager *)v5->_manager trackNOIAnyForInterfaceType:2 options:0];
    [(NWNetworkOfInterestManager *)v5->_manager trackNOIAnyForInterfaceType:1 options:0];
    [(NWNetworkOfInterestManager *)v5->_manager trackNOIAnyForInterfaceType:3 options:0];
  }

LABEL_18:
  v5 = v5;
  v25 = v5;
LABEL_19:

  return v25;
}

- (void)dealloc
{
  [(NWNetworkOfInterestManager *)self->_manager setDelegate:0];
  [(NWNetworkOfInterestManager *)self->_manager destroy];
  v3.receiver = self;
  v3.super_class = SSNetworkQualityInquiry;
  [(SSNetworkQualityInquiry *)&v3 dealloc];
}

- (BOOL)areKnownNetworksReady
{
  queue = [(SSNetworkQualityInquiry *)self queue];
  dispatch_assert_queue_V2(queue);

  knownNetworks = [(SSNetworkQualityInquiry *)self knownNetworks];
  LOBYTE(queue) = [knownNetworks count] == 3;

  return queue;
}

- (void)performWhenKnownNetworksReady:(id)ready
{
  readyCopy = ready;
  queue = [(SSNetworkQualityInquiry *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SSNetworkQualityInquiry_performWhenKnownNetworksReady___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = readyCopy;
  v6 = readyCopy;
  dispatch_async(queue, v7);
}

void __57__SSNetworkQualityInquiry_performWhenKnownNetworksReady___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) areKnownNetworksReady])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 32) knownNetworksReadyHandlers];

    if (!v3)
    {
      v4 = *(a1 + 32);
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      [v4 setKnownNetworksReadyHandlers:v5];
    }

    v8 = [*(a1 + 32) knownNetworksReadyHandlers];
    v6 = [*(a1 + 40) copy];
    v7 = MEMORY[0x1DA6DFBB0]();
    [v8 addObject:v7];
  }
}

- (void)drainKnownNetworksReadyHandlers
{
  v14 = *MEMORY[0x1E69E9840];
  queue = [(SSNetworkQualityInquiry *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  knownNetworksReadyHandlers = [(SSNetworkQualityInquiry *)self knownNetworksReadyHandlers];
  v5 = [knownNetworksReadyHandlers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(knownNetworksReadyHandlers);
        }

        (*(*(*(&v9 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [knownNetworksReadyHandlers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(SSNetworkQualityInquiry *)self setKnownNetworksReadyHandlers:0];
}

- (void)didStartTrackingNOI:(id)i
{
  iCopy = i;
  knownNetworks = [(SSNetworkQualityInquiry *)self knownNetworks];
  [knownNetworks addObject:iCopy];

  if ([(SSNetworkQualityInquiry *)self areKnownNetworksReady])
  {

    [(SSNetworkQualityInquiry *)self drainKnownNetworksReadyHandlers];
  }
}

- (void)didStopTrackingNOI:(id)i
{
  v23 = *MEMORY[0x1E69E9840];
  iCopy = i;
  knownNetworks = [(SSNetworkQualityInquiry *)self knownNetworks];
  [knownNetworks removeObject:iCopy];

  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 2;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v19 = 138412546;
  selfCopy = self;
  v21 = 2112;
  v22 = iCopy;
  v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "[%@]: Stopped tracking %@, searching for interface again", &v19, 22);

  if (v11)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
    free(v11);
    SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, oSLogObject);
LABEL_12:
  }

  manager = [(SSNetworkQualityInquiry *)self manager];
  [manager trackNOIAnyForInterfaceType:objc_msgSend(iCopy options:{"interface"), 0}];
}

- (void)didStopTrackingAllNOIs:(id)is
{
  v14 = *MEMORY[0x1E69E9840];
  isCopy = is;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [isCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(isCopy);
        }

        [(SSNetworkQualityInquiry *)self didStopTrackingNOI:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [isCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)investigateNetworks
{
  v3 = objc_alloc_init(SSPromise);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SSNetworkQualityInquiry_investigateNetworks__block_invoke;
  v8[3] = &unk_1E84AFC30;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(SSNetworkQualityInquiry *)self performWhenKnownNetworksReady:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __46__SSNetworkQualityInquiry_investigateNetworks__block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __46__SSNetworkQualityInquiry_investigateNetworks__block_invoke_2;
    v34[3] = &unk_1E84AFBB8;
    v35 = *(a1 + 40);
    [v3 addFinishBlock:v34];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF00]);
    [v4 timeIntervalSince1970];
    v6 = v5;

    v7 = *(a1 + 32);
    if (*(v7 + 8) && (v6 * 1000.0) - *(v7 + 16) <= 999)
    {
      [*(a1 + 40) finishWithResult:?];
    }

    else
    {
      v22 = a1;
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = [v24 knownNetworks];
      v10 = [v9 count];

      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      obj = [v24 knownNetworks];
      v12 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
        do
        {
          v15 = 0;
          do
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v30 + 1) + 8 * v15);
            v17 = objc_alloc_init(SSPromise);
            [v8 addObject:v17];
            v18 = [v24 manager];
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __46__SSNetworkQualityInquiry_investigateNetworks__block_invoke_3;
            v27[3] = &unk_1E84AFBE0;
            v27[4] = v16;
            v28 = v11;
            v29 = v17;
            v19 = v17;
            [v18 auditableLinkQualityForNOI:v16 reply:v27];

            ++v15;
          }

          while (v13 != v15);
          v13 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v13);
      }

      v20 = [SSPromise promiseWithAll:v8];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __46__SSNetworkQualityInquiry_investigateNetworks__block_invoke_55;
      v25[3] = &unk_1E84AFC08;
      v25[4] = *(v22 + 32);
      v26 = v11;
      v21 = v11;
      [v20 addFinishBlock:v25];
      objc_storeStrong((*(v22 + 32) + 24), *(v22 + 40));
    }
  }
}

void __46__SSNetworkQualityInquiry_investigateNetworks__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v5;
  if (v8 && (v9 = [v7 interface], (v9 - 1) <= 2))
  {
    v10 = off_1E84AFC50[v9 - 1];
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *v27 = MEMORY[0x1E69E9820];
    *&v27[8] = 3221225472;
    *&v27[16] = __SSNetworkQualityInquiryReportMake_block_invoke;
    v28 = &unk_1E84AE620;
    v12 = v11;
    v29 = v12;
    [v8 enumerateKeysAndObjectsUsingBlock:v27];
    if ([v12 count])
    {
      [v12 setObject:v10 forKeyedSubscript:@"interface"];
      v13 = [v12 copy];
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      [*(a1 + 40) addObject:v13];
    }
  }

  else
  {
  }

  if (v6)
  {
    v14 = +[SSLogConfig sharedConfig];
    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v19 = *(a1 + 32);
      *v27 = 138412546;
      *&v27[4] = v19;
      *&v27[12] = 2112;
      *&v27[14] = v6;
      v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_1D48BA000, v17, 16, "Could not determine link quality for %@, reason: %@", v27, 22);

      if (!v20)
      {
LABEL_20:

        goto LABEL_21;
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog(v14, @"%@", v21, v22, v23, v24, v25, v26, v17);
    }

    goto LABEL_20;
  }

LABEL_21:
  [*(a1 + 48) finishWithResult:MEMORY[0x1E695E118]];
}

void __46__SSNetworkQualityInquiry_investigateNetworks__block_invoke_55(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  v2 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [v2 timeIntervalSince1970];
  *(*(a1 + 32) + 16) = (v3 * 1000.0);

  [*(*(a1 + 32) + 24) finishWithResult:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

+ (BOOL)isEntitled
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [&unk_1F507A2E8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = *v14;
  v5 = 1;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v14 != v4)
      {
        objc_enumerationMutation(&unk_1F507A2E8);
      }

      v7 = *(*(&v13 + 1) + 8 * i);
      v8 = SecTaskCreateFromSelf(0);
      if (v8)
      {
        v9 = v8;
        error = 0;
        v10 = SecTaskCopyValueForEntitlement(v8, v7, &error);
        if (error)
        {
          CFRelease(error);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        else
        {
          v5 = 0;
        }

        CFRelease(v9);
      }

      else
      {
        v5 = 0;
      }
    }

    v3 = [&unk_1F507A2E8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v3);
  return v5;
}

@end