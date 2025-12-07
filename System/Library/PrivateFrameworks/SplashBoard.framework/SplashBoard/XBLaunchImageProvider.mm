@interface XBLaunchImageProvider
+ (id)sharedInstance;
- (XBLaunchImageProvider)init;
- (id)createLaunchImageGeneratorWithContext:(id)context asyncImageData:(BOOL)data error:(id *)error;
- (void)_addBadLaunchInterfaceToDenyList:(id)list forError:(id)error;
- (void)_generateImageForSnapshot:(id)snapshot inManifest:(id)manifest withContext:(id)context asyncImageData:(BOOL)data dataProvider:(id)provider scheduleAsyncGeneration:(BOOL)generation completion:(id)completion;
- (void)_resetBadLaunchInterfaceCount:(id)count;
- (void)captureLaunchImageForManifest:(id)manifest withCompatibilityInfo:(id)info launchRequests:(id)requests createCaptureInfo:(BOOL)captureInfo firstImageIsReady:(id)ready withCompletionHandler:(id)handler;
- (void)dealloc;
@end

@implementation XBLaunchImageProvider

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[XBLaunchImageProvider sharedInstance];
  }

  v3 = sharedInstance_sXBLaunchImageProvider;

  return v3;
}

uint64_t __39__XBLaunchImageProvider_sharedInstance__block_invoke()
{
  sharedInstance_sXBLaunchImageProvider = objc_alloc_init(XBLaunchImageProvider);

  return MEMORY[0x2821F96F8]();
}

- (XBLaunchImageProvider)init
{
  v6.receiver = self;
  v6.super_class = XBLaunchImageProvider;
  v2 = [(XBLaunchImageProvider *)&v6 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    workQueue = v2->_workQueue;
    v2->_workQueue = Serial;
  }

  return v2;
}

- (void)dealloc
{
  stateCaptureAssertion = self->_stateCaptureAssertion;
  if (stateCaptureAssertion)
  {
    [(BSInvalidatable *)stateCaptureAssertion invalidate];
    v4 = self->_stateCaptureAssertion;
    self->_stateCaptureAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = XBLaunchImageProvider;
  [(XBLaunchImageProvider *)&v5 dealloc];
}

- (id)createLaunchImageGeneratorWithContext:(id)context asyncImageData:(BOOL)data error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  launchRequest = [contextCopy launchRequest];
  applicationCompatibilityInfo = [contextCopy applicationCompatibilityInfo];
  if (contextCopy)
  {
    if (launchRequest)
    {
      goto LABEL_3;
    }

LABEL_22:
    [XBLaunchImageProvider createLaunchImageGeneratorWithContext:asyncImageData:error:];
    if (applicationCompatibilityInfo)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  [XBLaunchImageProvider createLaunchImageGeneratorWithContext:asyncImageData:error:];
  if (!launchRequest)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (applicationCompatibilityInfo)
  {
    goto LABEL_4;
  }

LABEL_23:
  [XBLaunchImageProvider createLaunchImageGeneratorWithContext:asyncImageData:error:];
LABEL_4:
  hasKnownBadLaunchImage = [applicationCompatibilityInfo hasKnownBadLaunchImage];
  if (hasKnownBadLaunchImage)
  {
    date = XBLogCapture(hasKnownBadLaunchImage);
    if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      [XBLaunchImageProvider createLaunchImageGeneratorWithContext:applicationCompatibilityInfo asyncImageData:date error:?];
    }

    v14 = 0;
  }

  else
  {
    dataCopy = data;
    date = [MEMORY[0x277CBEAA8] date];
    v15 = XBLogCapture(date);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = launchRequest;
      _os_log_impl(&dword_26B5EF000, v15, OS_LOG_TYPE_DEFAULT, "Synchronously generating image for request: %@", buf, 0xCu);
    }

    v16 = [[XBLaunchImageProviderClient alloc] initWithApplicationInfo:applicationCompatibilityInfo];
    v34 = 0;
    v17 = [(XBLaunchImageProviderClient *)v16 generateImageWithContext:contextCopy captureInfo:0 error:&v34];
    v18 = v34;
    v19 = v18;
    if (v18)
    {
      if (error)
      {
        v20 = v18;
        *error = v19;
      }

      [(XBLaunchImageProvider *)self _addBadLaunchInterfaceToDenyList:applicationCompatibilityInfo forError:v19];
      v21 = 0;
    }

    else
    {
      v21 = 0;
      if (v17 && v17 != -1)
      {
        [(XBLaunchImageProvider *)self _resetBadLaunchInterfaceCount:applicationCompatibilityInfo];
        v22 = -[XBLaunchImageDataProvider initWithRequest:contextID:opaque:]([XBLaunchImageDataProvider alloc], "initWithRequest:contextID:opaque:", launchRequest, v17, [applicationCompatibilityInfo launchesOpaque]);
        fetchImage = [(XBLaunchImageDataProvider *)v22 fetchImage];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __84__XBLaunchImageProvider_createLaunchImageGeneratorWithContext_asyncImageData_error___block_invoke;
        v27[3] = &unk_279CF9C38;
        v32 = a2;
        v27[4] = self;
        v28 = applicationCompatibilityInfo;
        v33 = dataCopy;
        v29 = contextCopy;
        v30 = v22;
        v31 = date;
        v24 = v22;
        v21 = MEMORY[0x26D67C6A0](v27);
      }
    }

    [(BSBaseXPCClient *)v16 invalidate];
    v14 = [v21 copy];
  }

  return v14;
}

void __84__XBLaunchImageProvider_createLaunchImageGeneratorWithContext_asyncImageData_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    __84__XBLaunchImageProvider_createLaunchImageGeneratorWithContext_asyncImageData_error___block_invoke_cold_1(a1);
  }

  v4 = [XBSnapshotContainerIdentity identityForCompatibilityInfo:*(a1 + 40)];
  v5 = [XBApplicationSnapshotManifest alloc];
  v6 = [v3 _store];
  v7 = [(XBApplicationSnapshotManifest *)v5 initWithContainerIdentity:v4 store:v6];

  [*(a1 + 32) _generateImageForSnapshot:v3 inManifest:v7 withContext:*(a1 + 48) asyncImageData:*(a1 + 80) dataProvider:*(a1 + 56) scheduleAsyncGeneration:0 completion:0];
  v8 = XBLogCapture([v3 _generateImageIfPossible]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 64) timeIntervalSinceNow];
    *buf = 134217984;
    v11 = -v9;
    _os_log_impl(&dword_26B5EF000, v8, OS_LOG_TYPE_DEFAULT, "Snapshot image generation completed after %.3fs.", buf, 0xCu);
  }
}

- (void)captureLaunchImageForManifest:(id)manifest withCompatibilityInfo:(id)info launchRequests:(id)requests createCaptureInfo:(BOOL)captureInfo firstImageIsReady:(id)ready withCompletionHandler:(id)handler
{
  captureInfoCopy = captureInfo;
  v98 = *MEMORY[0x277D85DE8];
  manifestCopy = manifest;
  infoCopy = info;
  requestsCopy = requests;
  readyCopy = ready;
  handlerCopy = handler;
  v46 = manifestCopy;
  if (!manifestCopy)
  {
    [XBLaunchImageProvider captureLaunchImageForManifest:withCompatibilityInfo:launchRequests:createCaptureInfo:firstImageIsReady:withCompletionHandler:];
  }

  if (([infoCopy allowsSavingLaunchImages] & 1) == 0)
  {
    [XBLaunchImageProvider captureLaunchImageForManifest:withCompatibilityInfo:launchRequests:createCaptureInfo:firstImageIsReady:withCompletionHandler:];
  }

  if (![requestsCopy count])
  {
    [XBLaunchImageProvider captureLaunchImageForManifest:withCompatibilityInfo:launchRequests:createCaptureInfo:firstImageIsReady:withCompletionHandler:];
  }

  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = __Block_byref_object_copy__3;
  v91 = __Block_byref_object_dispose__3;
  v92 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = __Block_byref_object_copy__3;
  v85 = __Block_byref_object_dispose__3;
  v86 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__3;
  v79 = __Block_byref_object_dispose__3;
  v80 = 0;
  if (handlerCopy && captureInfoCopy)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:requestsCopy];
    v17 = v88[5];
    v88[5] = v16;

    v18 = [v88[5] count];
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v18];
    v20 = v82[5];
    v82[5] = v19;

    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v18];
    v22 = v76[5];
    v76[5] = v21;
  }

  v23 = [[XBLaunchImageProviderClient alloc] initWithApplicationInfo:infoCopy];
  if (readyCopy)
  {
    v24 = [MEMORY[0x277CF0BA0] sentinelWithQueue:0 signalCount:1 completion:?];
  }

  else
  {
    v24 = 0;
  }

  v25 = MEMORY[0x277CF0BA0];
  v26 = [requestsCopy count];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke;
  v67[3] = &unk_279CF9C60;
  v45 = v24;
  v68 = v45;
  v74 = captureInfoCopy;
  v39 = handlerCopy;
  v70 = v39;
  v71 = &v87;
  v72 = &v81;
  v73 = &v75;
  v44 = v23;
  v69 = v44;
  v27 = [v25 sentinelWithQueue:0 signalCount:v26 + 1 completion:v67];
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  v66 = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = requestsCopy;
  v28 = [obj countByEnumeratingWithState:&v61 objects:v97 count:16];
  v29 = v28;
  v43 = v27;
  if (v28)
  {
    v30 = *v62;
    do
    {
      v31 = 0;
      do
      {
        if (*v62 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v61 + 1) + 8 * v31);
        v33 = XBLogCapture(v28);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [MEMORY[0x277CF0C00] descriptionForObject:{v32, v39}];
          bundleIdentifier = [infoCopy bundleIdentifier];
          *buf = 138412546;
          v94 = v34;
          v95 = 2112;
          v96 = bundleIdentifier;
          _os_log_impl(&dword_26B5EF000, v33, OS_LOG_TYPE_DEFAULT, "Processing launch request %@ for app: %@.", buf, 0x16u);
        }

        v36 = [[XBApplicationSnapshotGenerationContext alloc] initWithApplicationCompatibilityInfo:infoCopy launchRequest:v32 timeout:0.0];
        workQueue = self->_workQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44;
        block[3] = &unk_279CF9CB0;
        block[4] = v32;
        v56 = v65;
        v49 = infoCopy;
        v50 = v44;
        v51 = v36;
        v60 = captureInfoCopy;
        v52 = v46;
        selfCopy = self;
        v54 = v45;
        v57 = &v87;
        v58 = &v81;
        v59 = &v75;
        v55 = v43;
        v38 = v36;
        dispatch_async(workQueue, block);

        ++v31;
      }

      while (v29 != v31);
      v28 = [obj countByEnumeratingWithState:&v61 objects:v97 count:16];
      v29 = v28;
    }

    while (v28);
  }

  [v43 signal];
  _Block_object_dispose(v65, 8);

  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v81, 8);

  _Block_object_dispose(&v87, 8);
}

uint64_t __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) signal];
  v2 = *(a1 + 48);
  if (v2)
  {
    if (*(a1 + 80) == 1)
    {
      v3 = [[XBApplicationCaptureInformation alloc] initWithLaunchRequests:*(*(*(a1 + 56) + 8) + 40) captureInfos:*(*(*(a1 + 64) + 8) + 40) launchImagePaths:*(*(*(a1 + 72) + 8) + 40)];
      v2 = *(a1 + 48);
    }

    else
    {
      v3 = 0;
    }

    (*(v2 + 16))(v2, v3);
  }

  v4 = *(a1 + 40);

  return [v4 invalidate];
}

void __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__3;
  v51 = __Block_byref_object_dispose__3;
  v52 = 0;
  v2 = XBLogCapture(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v54 = v3;
    _os_log_impl(&dword_26B5EF000, v2, OS_LOG_TYPE_DEFAULT, "Asynchronously generating image data for request: %@", buf, 0xCu);
  }

  if (*(*(*(a1 + 96) + 8) + 24) == 1)
  {
    v5 = XBLogCapture(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x277CF0C00] descriptionForObject:*(a1 + 32)];
      [*(a1 + 40) bundleIdentifier];
      objc_claimAutoreleasedReturnValue();
      __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44_cold_3();
    }

    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 128);
    if (*(a1 + 128))
    {
      v11 = &v46;
    }

    else
    {
      v11 = 0;
    }

    if (v10 == 1)
    {
      v46 = 0;
    }

    v45 = 0;
    v12 = [v8 generateImageWithContext:v9 captureInfo:v11 error:&v45];
    if (v10)
    {
      v7 = v46;
    }

    else
    {
      v7 = 0;
    }

    v13 = v45;
    v5 = v13;
    if (v13)
    {
      v14 = XBLogCapture(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [MEMORY[0x277CF0C00] descriptionForObject:*(a1 + 32)];
        __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44_cold_1(v15, buf, v14);
      }

      *(*(*(a1 + 96) + 8) + 24) = 1;
      [*(a1 + 72) _addBadLaunchInterfaceToDenyList:*(a1 + 40) forError:v5];
    }

    else
    {
      if (!v12 || v12 == -1)
      {
        v16 = XBLogCapture(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v31 = [MEMORY[0x277CF0C00] descriptionForObject:*(a1 + 32)];
          __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44_cold_2(v31, buf, v16);
        }
      }

      else
      {
        v16 = [*(a1 + 56) launchRequest];
        v17 = -[XBLaunchImageDataProvider initWithRequest:contextID:opaque:]([XBLaunchImageDataProvider alloc], "initWithRequest:contextID:opaque:", v16, v12, [*(a1 + 40) launchesOpaque]);
        v18 = dispatch_semaphore_create(0);
        v19 = *(a1 + 64);
        v20 = [v16 groupID];
        v21 = [v19 createSnapshotWithGroupID:v20];
        v22 = v48[5];
        v48[5] = v21;

        v23 = *(a1 + 64);
        v24 = v48[5];
        v25 = *(a1 + 56);
        v37 = *(a1 + 72);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_45;
        v38[3] = &unk_279CF9C88;
        v44 = &v47;
        v26 = *(a1 + 80);
        v27 = *(a1 + 72);
        v39 = v26;
        v40 = v27;
        v28 = *(a1 + 40);
        v29 = *(a1 + 32);
        v41 = v28;
        v42 = v29;
        v30 = v18;
        v43 = v30;
        [v37 _generateImageForSnapshot:v24 inManifest:v23 withContext:v25 asyncImageData:0 dataProvider:v17 scheduleAsyncGeneration:1 completion:v38];
        dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

  if (*(a1 + 128) == 1)
  {
    v32 = [*(*(*(a1 + 104) + 8) + 40) indexOfObject:*(a1 + 32)];
    if (v32 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = v7;
      if (!v7)
      {
        v33 = objc_alloc_init(XBLaunchCaptureInformation);
      }

      [*(*(*(a1 + 112) + 8) + 40) setObject:v33 atIndexedSubscript:v32];
      if (!v7)
      {
      }

      v34 = [v48[5] path];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = &stru_287C1E488;
      }

      [*(*(*(a1 + 120) + 8) + 40) setObject:v36 atIndexedSubscript:v32];
    }
  }

  [*(a1 + 88) signal];
  _Block_object_dispose(&v47, 8);
}

intptr_t __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_45(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(*(*(a1 + 72) + 8) + 40) _cacheImage:0];
  v4 = [*(a1 + 32) signal];
  if (a2)
  {
    v5 = XBLogCapture([*(a1 + 40) _resetBadLaunchInterfaceCount:*(a1 + 48)]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_26B5EF000, v5, OS_LOG_TYPE_DEFAULT, "Image generation complete for: %{public}@", &v9, 0xCu);
    }
  }

  else
  {
    v5 = XBLogCapture(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_45_cold_1(a1, v5, v7);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 64));
}

- (void)_generateImageForSnapshot:(id)snapshot inManifest:(id)manifest withContext:(id)context asyncImageData:(BOOL)data dataProvider:(id)provider scheduleAsyncGeneration:(BOOL)generation completion:(id)completion
{
  LODWORD(v26) = data;
  HIDWORD(v26) = generation;
  manifestCopy = manifest;
  completionCopy = completion;
  providerCopy = provider;
  contextCopy = context;
  snapshotCopy = snapshot;
  launchRequest = [contextCopy launchRequest];
  applicationCompatibilityInfo = [contextCopy applicationCompatibilityInfo];

  groupID = [launchRequest groupID];
  if (manifestCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [XBLaunchImageProvider _generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:];
    if (contextCopy)
    {
LABEL_3:
      if (applicationCompatibilityInfo)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  [XBLaunchImageProvider _generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:];
  if (applicationCompatibilityInfo)
  {
LABEL_4:
    if (providerCopy)
    {
      goto LABEL_5;
    }

LABEL_19:
    [XBLaunchImageProvider _generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:];
    if (groupID)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_18:
  [XBLaunchImageProvider _generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:];
  if (!providerCopy)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (groupID)
  {
    goto LABEL_6;
  }

LABEL_20:
  [XBLaunchImageProvider _generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:];
LABEL_6:
  v19 = [XBApplicationSnapshotManifestImpl _snapshotPredicateForRequest:launchRequest, v26];
  v20 = [manifestCopy snapshotsForGroupID:groupID matchingPredicate:v19];

  v21 = [v20 indexesOfObjectsPassingTest:&__block_literal_global_60];
  v22 = [v20 objectsAtIndexes:v21];

  if ([v22 count])
  {
    [manifestCopy deleteSnapshots:v22];
  }

  [XBApplicationSnapshotManifestImpl _configureSnapshot:snapshotCopy withCompatibilityInfo:applicationCompatibilityInfo forLaunchRequest:launchRequest];
  allowsSavingLaunchImages = [applicationCompatibilityInfo allowsSavingLaunchImages];
  v24 = allowsSavingLaunchImages;
  if (v27)
  {
    v24 = allowsSavingLaunchImages | 2;
  }

  if (v28)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 | 4;
  }

  [manifestCopy generateImageForSnapshot:snapshotCopy dataProvider:providerCopy options:v25 imageGeneratedHandler:completionCopy imageDataSavedHandler:0];
}

BOOL __137__XBLaunchImageProvider__generateImageForSnapshot_inManifest_withContext_asyncImageData_dataProvider_scheduleAsyncGeneration_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 generationContext];
  v3 = v2 == 0;

  return v3;
}

- (void)_addBadLaunchInterfaceToDenyList:(id)list forError:(id)error
{
  listCopy = list;
  errorCopy = error;
  code = [errorCopy code];
  bundleIdentifier = [listCopy bundleIdentifier];
  v11 = XBLogCapture(bundleIdentifier);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(XBLaunchImageProvider *)errorCopy _addBadLaunchInterfaceToDenyList:bundleIdentifier forError:v11];
  }

  if (code != 10 && ([listCopy hasKnownBadLaunchImage] & 1) == 0)
  {
    if ((code & 0xFFFFFFFFFFFFFFFELL) != 8)
    {
      goto LABEL_12;
    }

    badLaunchImageCandidateCount = [listCopy badLaunchImageCandidateCount];
    if ((badLaunchImageCandidateCount & 0x8000000000000000) != 0)
    {
      [XBLaunchImageProvider _addBadLaunchInterfaceToDenyList:a2 forError:self];
    }

    if (badLaunchImageCandidateCount >= 4)
    {
      [XBLaunchImageProvider _addBadLaunchInterfaceToDenyList:a2 forError:self];
    }

    v13 = badLaunchImageCandidateCount + 1;
    v14 = badLaunchImageCandidateCount + 1 >= 3 ? 3 : badLaunchImageCandidateCount + 1;
    [listCopy setBadLaunchImageCandidateCount:v14];
    if (v13 == 3)
    {
LABEL_12:
      [listCopy setHasKnownBadLaunchImage:1];
    }

    hasKnownBadLaunchImage = [listCopy hasKnownBadLaunchImage];
    if (hasKnownBadLaunchImage)
    {
      v16 = XBLogCapture(hasKnownBadLaunchImage);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(XBLaunchImageProvider *)bundleIdentifier _addBadLaunchInterfaceToDenyList:v16 forError:v17];
      }

      v18 = +[XBApplicationDataStore sharedInstance];
      [v18 _persistCompatibilityInfo:listCopy forBundleIdentifier:bundleIdentifier];
    }
  }
}

- (void)_resetBadLaunchInterfaceCount:(id)count
{
  countCopy = count;
  if ([countCopy badLaunchImageCandidateCount])
  {
    [countCopy setBadLaunchImageCandidateCount:0];
    bundleIdentifier = [countCopy bundleIdentifier];
    v4 = +[XBApplicationDataStore sharedInstance];
    [v4 _persistCompatibilityInfo:countCopy forBundleIdentifier:bundleIdentifier];
  }
}

- (void)createLaunchImageGeneratorWithContext:asyncImageData:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"context" object:? file:? lineNumber:? description:?];
}

- (void)createLaunchImageGeneratorWithContext:asyncImageData:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"launchRequest" object:? file:? lineNumber:? description:?];
}

- (void)createLaunchImageGeneratorWithContext:asyncImageData:error:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"appInfo" object:? file:? lineNumber:? description:?];
}

- (void)createLaunchImageGeneratorWithContext:(void *)a1 asyncImageData:(NSObject *)a2 error:.cold.4(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleIdentifier];
  v5 = 138543362;
  v6 = v3;
  OUTLINED_FUNCTION_2_1(&dword_26B5EF000, a2, v4, "Snapshot generation request for bundleID: %{public}@ rejected due to the app being denylisted.", &v5);
}

void __84__XBLaunchImageProvider_createLaunchImageGeneratorWithContext_asyncImageData_error___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"XBLaunchImageProvider.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"snapshot"}];
}

- (void)captureLaunchImageForManifest:withCompatibilityInfo:launchRequests:createCaptureInfo:firstImageIsReady:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"manifest" object:? file:? lineNumber:? description:?];
}

- (void)captureLaunchImageForManifest:withCompatibilityInfo:launchRequests:createCaptureInfo:firstImageIsReady:withCompletionHandler:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[appInfo allowsSavingLaunchImages]" object:? file:? lineNumber:? description:?];
}

- (void)captureLaunchImageForManifest:withCompatibilityInfo:launchRequests:createCaptureInfo:firstImageIsReady:withCompletionHandler:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[launchRequests count] > 0" object:? file:? lineNumber:? description:?];
}

void __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_2_1(&dword_26B5EF000, a3, a3, "Error generating image for launch request %@ .", a2);
}

void __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_2_1(&dword_26B5EF000, a3, a3, "Unable to generate context for %@, so skipping it and moving on.", a2);
}

void __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44_cold_3()
{
  OUTLINED_FUNCTION_0();
  *v2 = 138412546;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2112;
  *(v2 + 14) = v4;
  _os_log_error_impl(&dword_26B5EF000, v6, OS_LOG_TYPE_ERROR, "Skipping launch request %@ due to denied app: %@.", v5, 0x16u);
}

void __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_45_cold_1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = 138543362;
  v5 = v3;
  OUTLINED_FUNCTION_2_1(&dword_26B5EF000, a2, a3, "Image generation failed for: %{public}@", &v4);
}

- (void)_generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"manifest" object:? file:? lineNumber:? description:?];
}

- (void)_generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"context" object:? file:? lineNumber:? description:?];
}

- (void)_generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"appInfo" object:? file:? lineNumber:? description:?];
}

- (void)_generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"dataProvider" object:? file:? lineNumber:? description:?];
}

- (void)_generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:.cold.5()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"snapshotGroupID" object:? file:? lineNumber:? description:?];
}

- (void)_addBadLaunchInterfaceToDenyList:(NSObject *)a3 forError:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134218242;
  v6 = [a1 code];
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_26B5EF000, a3, OS_LOG_TYPE_ERROR, "Snapshot generation resulted in an error with code: %ld for app bundleID: %@", &v5, 0x16u);
}

- (void)_addBadLaunchInterfaceToDenyList:(uint64_t)a3 forError:.cold.2(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  OUTLINED_FUNCTION_2_1(&dword_26B5EF000, a2, a3, "Noting that the application %@ has a bad launch image until it is updated.", &v3);
}

- (void)_addBadLaunchInterfaceToDenyList:(const char *)a1 forError:(uint64_t)a2 .cold.3(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"strikeCount <= NumberOfStrikesBeforeMarkingBad + 1"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v9 = @"XBLaunchImageProvider.m";
    v10 = 1024;
    v11 = 313;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_26B5EF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_addBadLaunchInterfaceToDenyList:(const char *)a1 forError:(uint64_t)a2 .cold.4(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"strikeCount >= 1"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v9 = @"XBLaunchImageProvider.m";
    v10 = 1024;
    v11 = 312;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_26B5EF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end