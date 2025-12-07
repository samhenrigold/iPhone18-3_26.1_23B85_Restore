@interface CPSClipMetadataRequest
- (BOOL)isLikelyAvailable;
- (CPSClipMetadataRequest)initWithURL:(id)l fallbackClipBundleID:(id)d;
- (CPSClipMetadataRequest)initWithURLHash:(id)hash;
- (id)getClipMetadataSynchronously;
- (id)getDownloadedIconURLSynchronously;
- (void)_setUpSessionProxyAndPromisesWithURL:(id)l fallbackClipBundleID:(id)d;
- (void)dealloc;
- (void)getClipMetadataSynchronously;
- (void)getDownloadedIconURLSynchronously;
- (void)proxy:(id)proxy didDetermineAvailability:(BOOL)availability;
- (void)proxy:(id)proxy didFinishLoadingWithError:(id)error;
- (void)proxy:(id)proxy didRetrieveApplicationIcon:(id)icon;
- (void)proxyDidRetrieveBusinessIcon:(id)icon;
- (void)proxyDidUpdateMetadata:(id)metadata;
- (void)proxyRemoteServiceDidCrash:(id)crash;
- (void)requestDownloadedIconWithMetadata:(id)metadata completion:(id)completion;
- (void)requestMetadataWithCompletion:(id)completion;
@end

@implementation CPSClipMetadataRequest

- (CPSClipMetadataRequest)initWithURLHash:(id)hash
{
  hashCopy = hash;
  v10.receiver = self;
  v10.super_class = CPSClipMetadataRequest;
  v5 = [(CPSClipMetadataRequest *)&v10 init];
  if (v5)
  {
    v6 = [hashCopy copy];
    fullHash = v5->_fullHash;
    v5->_fullHash = v6;

    v8 = v5;
  }

  return v5;
}

- (CPSClipMetadataRequest)initWithURL:(id)l fallbackClipBundleID:(id)d
{
  lCopy = l;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = CPSClipMetadataRequest;
  v8 = [(CPSClipMetadataRequest *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(CPSClipMetadataRequest *)v8 _setUpSessionProxyAndPromisesWithURL:lCopy fallbackClipBundleID:dCopy];
    v10 = v9;
  }

  return v9;
}

- (void)_setUpSessionProxyAndPromisesWithURL:(id)l fallbackClipBundleID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dCopy = d;
  v8 = +[CPSPromise promise];
  availabilityPromise = self->_availabilityPromise;
  self->_availabilityPromise = v8;

  v10 = +[CPSPromise promise];
  iconPromise = self->_iconPromise;
  self->_iconPromise = v10;

  v12 = +[CPSPromise promise];
  metadataPromise = self->_metadataPromise;
  self->_metadataPromise = v12;

  cps_sanitizedURL = [lCopy cps_sanitizedURL];
  v15 = [[CPSSessionProxy alloc] initWithURL:cps_sanitizedURL];
  sessionProxy = self->_sessionProxy;
  self->_sessionProxy = v15;

  v17 = [CPSSessionConfiguration standardConfigurationWithURL:cps_sanitizedURL fallbackBundleID:dCopy];

  [(CPSSessionProxy *)self->_sessionProxy setConfiguration:v17];
  [(CPSSessionProxy *)self->_sessionProxy setDelegate:self];
  connectToService = [(CPSSessionProxy *)self->_sessionProxy connectToService];
  v20 = CPS_LOG_CHANNEL_PREFIXClipServices(connectToService, v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = v20;
    v22 = objc_opt_class();
    v23 = self->_sessionProxy;
    v24 = 138544131;
    v25 = v22;
    v26 = 2048;
    selfCopy = self;
    v28 = 2048;
    v29 = v23;
    v30 = 2117;
    v31 = lCopy;
    _os_log_impl(&dword_2436ED000, v21, OS_LOG_TYPE_INFO, "%{public}@ (%p): session proxy (%p) set up for URL %{sensitive}@", &v24, 0x2Au);
  }
}

- (BOOL)isLikelyAvailable
{
  if (self->_fullHash)
  {
    return 1;
  }

  v3 = [(CPSSessionProxy *)self->_sessionProxy url];
  cps_fallbackBundleIdentifier = [v3 cps_fallbackBundleIdentifier];

  if (cps_fallbackBundleIdentifier)
  {
    return 1;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  availabilityPromise = self->_availabilityPromise;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __43__CPSClipMetadataRequest_isLikelyAvailable__block_invoke;
  v14 = &unk_278DCEE90;
  v16 = &v17;
  v9 = v7;
  v15 = v9;
  [(CPSPromise *)availabilityPromise addCompletionBlock:&v11];
  v10 = dispatch_time(0, 1000000000);
  dispatch_group_wait(v9, v10);
  bOOLValue = [v18[5] BOOLValue];

  _Block_object_dispose(&v17, 8);
  return bOOLValue;
}

void __43__CPSClipMetadataRequest_isLikelyAvailable__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (id)getClipMetadataSynchronously
{
  v36 = *MEMORY[0x277D85DE8];
  if (!self->_sessionProxy)
  {
    v14 = CPS_LOG_CHANNEL_PREFIXClipServices(self, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CPSClipMetadataRequest *)v14 getClipMetadataSynchronously];
    }

    goto LABEL_8;
  }

  if (![(CPSClipMetadataRequest *)self isLikelyAvailable])
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  metadataPromise = self->_metadataPromise;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __54__CPSClipMetadataRequest_getClipMetadataSynchronously__block_invoke;
  v19 = &unk_278DCEEB8;
  v21 = &v22;
  v5 = v3;
  v20 = v5;
  [(CPSPromise *)metadataPromise addCompletionBlock:&v16];
  v6 = dispatch_time(0, 5000000000);
  v7 = dispatch_group_wait(v5, v6);
  v9 = CPS_LOG_CHANNEL_PREFIXClipServices(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v23[5];
    v12 = [(CPSSessionProxy *)self->_sessionProxy url:v16];
    *buf = 138544131;
    v29 = v10;
    v30 = 2048;
    selfCopy = self;
    v32 = 2048;
    v33 = v11;
    v34 = 2117;
    v35 = v12;
    _os_log_impl(&dword_2436ED000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ (%p): requested metadata %p for %{sensitive}@", buf, 0x2Au);
  }

  v13 = v23[5];
  _Block_object_dispose(&v22, 8);

LABEL_9:

  return v13;
}

void __54__CPSClipMetadataRequest_getClipMetadataSynchronously__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (id)getDownloadedIconURLSynchronously
{
  v36 = *MEMORY[0x277D85DE8];
  if (!self->_sessionProxy)
  {
    v14 = CPS_LOG_CHANNEL_PREFIXClipServices(self, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CPSClipMetadataRequest *)v14 getDownloadedIconURLSynchronously];
    }

    goto LABEL_8;
  }

  if (![(CPSClipMetadataRequest *)self isLikelyAvailable])
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  iconPromise = self->_iconPromise;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __59__CPSClipMetadataRequest_getDownloadedIconURLSynchronously__block_invoke;
  v19 = &unk_278DCEEE0;
  v21 = &v22;
  v5 = v3;
  v20 = v5;
  [(CPSPromise *)iconPromise addCompletionBlock:&v16];
  v6 = dispatch_time(0, 5000000000);
  v7 = dispatch_group_wait(v5, v6);
  v9 = CPS_LOG_CHANNEL_PREFIXClipServices(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v23[5];
    v12 = [(CPSSessionProxy *)self->_sessionProxy url:v16];
    *buf = 138544131;
    v29 = v10;
    v30 = 2048;
    selfCopy = self;
    v32 = 2048;
    v33 = v11;
    v34 = 2117;
    v35 = v12;
    _os_log_impl(&dword_2436ED000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ (%p): requested icon URL %p for %{sensitive}@", buf, 0x2Au);
  }

  v13 = v23[5];
  _Block_object_dispose(&v22, 8);

LABEL_9:

  return v13;
}

void __59__CPSClipMetadataRequest_getDownloadedIconURLSynchronously__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = objc_opt_class();
    sessionProxy = self->_sessionProxy;
    *buf = 138543874;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    v12 = 2048;
    v13 = sessionProxy;
    _os_log_impl(&dword_2436ED000, v4, OS_LOG_TYPE_INFO, "%{public}@ (%p): Disconnecting session proxy (%p)", buf, 0x20u);
  }

  [(CPSSessionProxy *)self->_sessionProxy disconnect];
  v7.receiver = self;
  v7.super_class = CPSClipMetadataRequest;
  [(CPSClipMetadataRequest *)&v7 dealloc];
}

- (void)requestMetadataWithCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke;
  v18[3] = &unk_278DCEF30;
  v18[4] = self;
  v5 = completionCopy;
  v19 = v5;
  v6 = MEMORY[0x245D3D5F0](v18);
  v8 = v6;
  if (self->_sessionProxy)
  {
    (*(v6 + 16))(v6, 0);
  }

  else
  {
    v9 = CPS_LOG_CHANNEL_PREFIXClipServices(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = objc_opt_class();
      fullHash = self->_fullHash;
      *buf = 138543875;
      v21 = v11;
      v22 = 2048;
      selfCopy = self;
      v24 = 2117;
      v25 = fullHash;
      _os_log_impl(&dword_2436ED000, v10, OS_LOG_TYPE_INFO, "%{public}@ (%p): requesting url for %{sensitive}@", buf, 0x20u);
    }

    v13 = +[CPSDaemonConnection sharedConnection];
    v14 = self->_fullHash;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_15;
    v15[3] = &unk_278DCEF58;
    v15[4] = self;
    v16 = v5;
    v17 = v8;
    [v13 fetchClipURLWithURLHash:v14 completionHandler:v15];
  }
}

void __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v17 = *MEMORY[0x277D85DE8];
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_INFO, "%{public}@ (%p): requesting metadata asynchronously", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = *(a1 + 32);
  v8 = *(*(a1 + 32) + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_11;
  v9[3] = &unk_278DCEF08;
  v11 = buf;
  v12 = v2;
  v10 = *(a1 + 40);
  [v8 addCompletionBlock:v9];

  _Block_object_dispose(buf, 8);
}

void __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = CPS_LOG_CHANNEL_PREFIXClipServices(v6, v7);
  v9 = v8;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_11_cold_1(a1, v9);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v19 = 138543618;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    _os_log_impl(&dword_2436ED000, v10, OS_LOG_TYPE_INFO, "%{public}@ (%p): got metadata asynchronously", &v19, 0x16u);
  }

  if (*(a1 + 48) == 1)
  {
    v13 = +[CPSAnalyticsLogger sharedLogger];
    v14 = [v5 clipBundleID];
    [v13 recordClientMetadataRequestWithBundleID:v14 launchReason:@"LocationBased"];

    v15 = [v5 invocationPolicy];
    if (![v15 isEligible])
    {
      v16 = [v5 invocationPolicy];
      [v16 isRecoverable];
    }
  }

  (*(*(a1 + 32) + 16))();
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

void __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = CPS_LOG_CHANNEL_PREFIXClipServices(v6, v7);
  v9 = v8;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_15_cold_1(a1, v9, v6);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = *(v12 + 8);
      v14 = 138543875;
      v15 = v11;
      v16 = 2048;
      v17 = v12;
      v18 = 2117;
      v19 = v13;
      _os_log_impl(&dword_2436ED000, v10, OS_LOG_TYPE_INFO, "%{public}@ (%p): finished requesting url for %{sensitive}@", &v14, 0x20u);
    }

    [*(a1 + 32) _setUpSessionProxyAndPromisesWithURL:v5 fallbackClipBundleID:0];
    (*(*(a1 + 48) + 16))();
  }
}

- (void)requestDownloadedIconWithMetadata:(id)metadata completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  completionCopy = completion;
  v9 = completionCopy;
  if (!self->_sessionProxy)
  {
    clipURL = [metadataCopy clipURL];

    if (!clipURL)
    {
      v9[2](v9, 0);
      goto LABEL_7;
    }

    clipURL2 = [metadataCopy clipURL];
    [(CPSClipMetadataRequest *)self _setUpSessionProxyAndPromisesWithURL:clipURL2 fallbackClipBundleID:0];
  }

  v12 = CPS_LOG_CHANNEL_PREFIXClipServices(completionCopy, v8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2048;
    *&buf[14] = self;
    _os_log_impl(&dword_2436ED000, v13, OS_LOG_TYPE_INFO, "%{public}@ (%p): requesting icon asynchronously", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  selfCopy = self;
  iconPromise = selfCopy->_iconPromise;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__CPSClipMetadataRequest_requestDownloadedIconWithMetadata_completion___block_invoke;
  v15[3] = &unk_278DCEF80;
  v17 = buf;
  v16 = v9;
  [(CPSPromise *)iconPromise addCompletionBlock:v15];

  _Block_object_dispose(buf, 8);
LABEL_7:
}

void __71__CPSClipMetadataRequest_requestDownloadedIconWithMetadata_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v8 = CPS_LOG_CHANNEL_PREFIXClipServices(v6, v7);
  v9 = v8;
  if (!a2 || v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __71__CPSClipMetadataRequest_requestDownloadedIconWithMetadata_completion___block_invoke_cold_1(a1, v9);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v15 = 138543618;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    _os_log_impl(&dword_2436ED000, v10, OS_LOG_TYPE_INFO, "%{public}@ (%p): got icon asynchronously", &v15, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;
}

- (void)proxy:(id)proxy didDetermineAvailability:(BOOL)availability
{
  availabilityCopy = availability;
  if (!availability)
  {
    v6 = +[CPSAnalyticsLogger sharedLogger];
    configuration = [(CPSSessionProxy *)self->_sessionProxy configuration];
    launchReason = [configuration launchReason];
    [v6 recordClientMetadataRequestWithBundleID:0 launchReason:launchReason];
  }

  availabilityPromise = self->_availabilityPromise;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:availabilityCopy];
  [(CPSPromise *)availabilityPromise finishWithResult:v10];
}

- (void)proxy:(id)proxy didRetrieveApplicationIcon:(id)icon
{
  proxyCopy = proxy;
  metadata = [proxyCopy metadata];
  isPoweredByThirdParty = [metadata isPoweredByThirdParty];

  if ((isPoweredByThirdParty & 1) == 0)
  {
    iconPromise = self->_iconPromise;
    applicationIconFileURL = [proxyCopy applicationIconFileURL];
    [(CPSPromise *)iconPromise finishWithResult:applicationIconFileURL];
  }
}

- (void)proxyDidUpdateMetadata:(id)metadata
{
  metadataCopy = metadata;
  metadata = [metadataCopy metadata];
  hasAppMetadata = [metadata hasAppMetadata];

  if (hasAppMetadata)
  {
    v6 = +[CPSAnalyticsLogger sharedLogger];
    metadata2 = [metadataCopy metadata];
    clipBundleID = [metadata2 clipBundleID];
    configuration = [(CPSSessionProxy *)self->_sessionProxy configuration];
    launchReason = [configuration launchReason];
    [v6 recordClientMetadataRequestWithBundleID:clipBundleID launchReason:launchReason];

    metadataPromise = self->_metadataPromise;
    metadata3 = [metadataCopy metadata];
    [(CPSPromise *)metadataPromise finishWithResult:metadata3];
  }

  else
  {
    metadata4 = [metadataCopy metadata];
    metadata3 = [metadata4 invocationPolicy];

    if (metadata3 && ([metadata3 isEligible] & 1) == 0 && (objc_msgSend(metadata3, "isRecoverable") & 1) == 0)
    {
      v14 = self->_metadataPromise;
      metadata5 = [metadataCopy metadata];
      [(CPSPromise *)v14 finishWithResult:metadata5];

      [(CPSPromise *)self->_iconPromise finish];
    }
  }
}

- (void)proxyDidRetrieveBusinessIcon:(id)icon
{
  iconPromise = self->_iconPromise;
  businessIconURL = [icon businessIconURL];
  [(CPSPromise *)iconPromise finishWithResult:businessIconURL];
}

- (void)proxyRemoteServiceDidCrash:(id)crash
{
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CPSErrorDomain" code:3 userInfo:0];
  [(CPSPromise *)self->_metadataPromise finishWithError:v4];
  [(CPSPromise *)self->_iconPromise finishWithError:v4];
}

- (void)proxy:(id)proxy didFinishLoadingWithError:(id)error
{
  metadataPromise = self->_metadataPromise;
  errorCopy = error;
  [(CPSPromise *)metadataPromise finishWithError:errorCopy];
  [(CPSPromise *)self->_iconPromise finishWithError:errorCopy];
}

- (void)getClipMetadataSynchronously
{
  selfCopy = self;
  objc_opt_class();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5(&dword_2436ED000, v3, v4, "%{public}@ (%p): synchronous metadata fetching only works with URL based request, please use initWithURL:", v5, v6, v7, v8);
}

- (void)getDownloadedIconURLSynchronously
{
  selfCopy = self;
  objc_opt_class();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5(&dword_2436ED000, v3, v4, "%{public}@ (%p): synchronous metadata fetching only works with URL based request, please use initWithURL:", v5, v6, v7, v8);
}

void __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_11_cold_1(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_5_1(a1, a2);
  objc_opt_class();
  v3 = [OUTLINED_FUNCTION_2_3() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_15_cold_1(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_class();
  v5 = [a3 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void __71__CPSClipMetadataRequest_requestDownloadedIconWithMetadata_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = OUTLINED_FUNCTION_5_1(a1, a2);
  objc_opt_class();
  v3 = [OUTLINED_FUNCTION_2_3() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

@end