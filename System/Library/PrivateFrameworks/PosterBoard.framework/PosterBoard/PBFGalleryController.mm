@interface PBFGalleryController
- (BOOL)_stateLock_executeEnqueuedPushToProactive:(id)proactive;
- (BOOL)_stateLock_isGalleryStale;
- (BOOL)_stateLock_persistGalleryConfiguration:(id)configuration lastUpdateDate:(id *)date sessionId:(id)id error:(id *)error;
- (PBFGalleryController)initWithGalleryCacheURL:(id)l galleryLayoutProvider:(id)provider runtimeAssertionProvider:(id)assertionProvider;
- (PBFGalleryController)initWithGalleryCacheURL:(id)l runtimeAssertionProvider:(id)provider;
- (PBFRuntimeAssertionProviding)runtimeAssertionProvider;
- (PRSPosterGalleryLayout)currentGalleryConfiguration;
- (id)_enqueuedPushToProactive;
- (id)determineRefreshStateWithContext:(id)context;
- (id)galleryLayoutProviderWithError:(id *)error;
- (id)runtimeAssertionProviderWithError:(id *)error;
- (void)_pushFaceGalleryConfigurationUpdate:(id)update options:(unint64_t)options fetchError:(id)error sessionId:(id)id completion:(id)completion;
- (void)_stateLock_enqueueGalleryConfigurationUpdateWithOptions:(unint64_t)options powerLogReason:(int64_t)reason sessionId:(id)id completion:(id)completion;
- (void)_stateLock_enqueuePushUpdatedPosterDescriptors:(id)descriptors reason:(id)reason force:(BOOL)force sessionId:(id)id completion:(id)completion;
- (void)_stateLock_flushProactiveUpdateQueue;
- (void)_stateLock_loadPersistedGalleryConfigurationWithLastUpdateDate:(id *)date error:(id *)error;
- (void)_stateLock_notifyGalleryControllerDidUpdateCurrentGalleryConfiguration:(id)configuration;
- (void)_stateLock_notifyGalleryControllerWillUpdateGalleryConfiguration;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)enqueueGalleryConfigurationUpdateWithOptions:(unint64_t)options powerLogReason:(int64_t)reason completion:(id)completion;
- (void)invalidate;
- (void)pushUpdatedPosterDescriptors:(id)descriptors reason:(id)reason force:(BOOL)force completion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)updateGallery:(id)gallery completion:(id)completion;
@end

@implementation PBFGalleryController

- (PBFGalleryController)initWithGalleryCacheURL:(id)l runtimeAssertionProvider:(id)provider
{
  providerCopy = provider;
  lCopy = l;
  v8 = objc_alloc_init(PBFProactivePosterGalleryLayoutProvider);
  v9 = [(PBFGalleryController *)self initWithGalleryCacheURL:lCopy galleryLayoutProvider:v8 runtimeAssertionProvider:providerCopy];

  return v9;
}

- (PBFGalleryController)initWithGalleryCacheURL:(id)l galleryLayoutProvider:(id)provider runtimeAssertionProvider:(id)assertionProvider
{
  lCopy = l;
  providerCopy = provider;
  assertionProviderCopy = assertionProvider;
  if (!assertionProviderCopy)
  {
    [PBFGalleryController initWithGalleryCacheURL:a2 galleryLayoutProvider:? runtimeAssertionProvider:?];
  }

  v12 = assertionProviderCopy;
  if (([assertionProviderCopy conformsToProtocol:&unk_282D45FB0] & 1) == 0)
  {
    [PBFGalleryController initWithGalleryCacheURL:a2 galleryLayoutProvider:? runtimeAssertionProvider:?];
  }

  v13 = providerCopy;
  if (!v13)
  {
    [PBFGalleryController initWithGalleryCacheURL:a2 galleryLayoutProvider:? runtimeAssertionProvider:?];
  }

  v14 = v13;
  if (([v13 conformsToProtocol:&unk_282D3E100] & 1) == 0)
  {
    [PBFGalleryController initWithGalleryCacheURL:a2 galleryLayoutProvider:? runtimeAssertionProvider:?];
  }

  if (([lCopy checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    [PBFGalleryController initWithGalleryCacheURL:a2 galleryLayoutProvider:? runtimeAssertionProvider:?];
  }

  v27.receiver = self;
  v27.super_class = PBFGalleryController;
  v15 = [(PBFGalleryController *)&v27 init];
  if (v15)
  {
    v16 = [lCopy copy];
    galleryCacheURL = v15->_galleryCacheURL;
    v15->_galleryCacheURL = v16;

    v18 = objc_opt_new();
    fileManager = v15->_fileManager;
    v15->_fileManager = v18;

    objc_storeStrong(&v15->_galleryLayoutProvider, provider);
    v15->_stateLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v15->_runtimeAssertionProvider, v12);
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    stateLock_timestampOfLastGalleryPushRequestFromProactive = v15->_stateLock_timestampOfLastGalleryPushRequestFromProactive;
    v15->_stateLock_timestampOfLastGalleryPushRequestFromProactive = distantPast;

    v22 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    invalidationFlag = v15->_invalidationFlag;
    v15->_invalidationFlag = v22;

    v24 = [[_TtC11PosterBoard25PBFGalleryControllerState alloc] initWithLastUsefulGalleryConfigurationPersistDate:0 minimumIntervalBetweenProactivePush:0 maximumIntervalBetweenProactivePush:2.0 proactiveInfractionCount:60.0];
    state = v15->_state;
    v15->_state = v24;

    os_unfair_lock_lock(&v15->_stateLock);
    [(PBFGalleryController *)v15 _stateLock_loadPersistedGalleryConfigurationWithLastUpdateDate:0 error:0];
    os_unfair_lock_unlock(&v15->_stateLock);
  }

  return v15;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(BSAtomicFlag *)self->_invalidationFlag setFlag:1];
  if (v3)
  {
    v4 = PBFLogGallery(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating gallery controller %p during dealloc", buf, 0xCu);
    }
  }

  v5.receiver = self;
  v5.super_class = PBFGalleryController;
  [(PBFGalleryController *)&v5 dealloc];
}

- (PRSPosterGalleryLayout)currentGalleryConfiguration
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_stateLock_lastUsefulGalleryConfiguration;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (id)_enqueuedPushToProactive
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_stateLock_enqueuedPushToProactive;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (id)runtimeAssertionProviderWithError:(id *)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_runtimeAssertionProvider);

  if (error && !WeakRetained)
  {
    v6 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA470];
    v11[0] = @"runtimeAssertionProvider was nil";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v6 pbf_generalErrorWithCode:3 userInfo:v7];
  }

  v8 = objc_loadWeakRetained(&self->_runtimeAssertionProvider);

  return v8;
}

- (id)galleryLayoutProviderWithError:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  galleryLayoutProvider = self->_galleryLayoutProvider;
  if (error && !galleryLayoutProvider)
  {
    v6 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA470];
    v10[0] = @"galleryProvider was nil";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    *error = [v6 pbf_generalErrorWithCode:3 userInfo:v7];

    galleryLayoutProvider = self->_galleryLayoutProvider;
  }

  return galleryLayoutProvider;
}

- (void)enqueueGalleryConfigurationUpdateWithOptions:(unint64_t)options powerLogReason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] enqueueGalleryConfigurationUpdateWithOptions:powerLogReason:completion:", uUID];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke;
  v13[3] = &unk_2782C9908;
  v13[4] = self;
  v14 = uUID;
  v18 = (options & 4) != 0;
  v19 = (options & 8) != 0;
  v20 = (options & 2) != 0;
  v15 = completionCopy;
  optionsCopy = options;
  reasonCopy = reason;
  v11 = completionCopy;
  v12 = uUID;
  PBFDispatchAsyncWithString(v10, QOS_CLASS_DEFAULT, v13);
}

void __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(*(a1 + 32) + 104) lastUsefulGalleryConfigurationPersistDate];
  v4 = PBFLogGallery(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 72);
    v7 = *(a1 + 73);
    v8 = *(a1 + 74);
    *buf = 138544386;
    v49 = v5;
    v50 = 1024;
    *v51 = v6;
    *&v51[4] = 1024;
    *&v51[6] = v7;
    v52 = 1024;
    v53 = v8;
    v54 = 2114;
    v55 = v3;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueueGalleryConfigurationUpdateWithOptions; dontQueryJustUseLocal:%{BOOL}u checkIfGalleryIsStale:%{BOOL}u persist:%{BOOL}u; lastHydrationDate %{public}@", buf, 0x28u);
  }

  v9 = [*(*(a1 + 32) + 32) getFlag];
  if (v9)
  {
    v10 = PBFLogGallery(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138543362;
      v49 = v11;
      _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueueGalleryConfigurationUpdateWithOptions; invalidated", buf, 0xCu);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke_94;
      aBlock[3] = &unk_2782C6068;
      v13 = &v47;
      v47 = v12;
      v14 = _Block_copy(aBlock);
      goto LABEL_22;
    }

    goto LABEL_37;
  }

  if (*(a1 + 72) == 1)
  {
    v15 = PBFLogGallery(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      *buf = 138543618;
      v49 = v16;
      v50 = 2114;
      *v51 = v3;
      _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueueGalleryConfigurationUpdateWithOptions; returning local gallery; last hydrated %{public}@", buf, 0x16u);
    }

    v17 = *(a1 + 48);
    if (!v17)
    {
      goto LABEL_37;
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke_96;
    v42[3] = &unk_2782C6180;
    v13 = &v45;
    v45 = v17;
    v43 = v2;
    v44 = v3;
    v14 = _Block_copy(v42);

    v18 = v43;
  }

  else
  {
    v19 = [*(a1 + 32) _stateLock_isGalleryStale];
    if (*(a1 + 73) != 1 || !v3 || !v2 || (v19 & 1) != 0)
    {
      v23 = *(*(a1 + 32) + 80);
      if (v23 && ([v23 isFinalized] & 1) == 0)
      {
        v24 = *(*(a1 + 32) + 80);
        v25 = v24;
        v26 = 1;
      }

      else
      {
        v24 = [[_PBFGalleryEnqueuedRefreshGalleryRequest alloc] initWithOptions:*(a1 + 56) powerLogReason:*(a1 + 64) sessionId:*(a1 + 40)];
        v25 = v24;
        v26 = 0;
      }

      if (*(a1 + 48))
      {
        v24 = [(_PBFGalleryEnqueuedRefreshGalleryRequest *)v25 addCompletionHandler:?];
      }

      v27 = PBFLogGallery(v24);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      if (v26)
      {
        if (v28)
        {
          v29 = *(a1 + 40);
          *buf = 138543362;
          v49 = v29;
          _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueueGalleryConfigurationUpdateWithOptions; gallery request ongoing, tacking on completion handler", buf, 0xCu);
        }
      }

      else
      {
        if (v28)
        {
          v30 = *(a1 + 40);
          *buf = 138543362;
          v49 = v30;
          _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueueGalleryConfigurationUpdateWithOptions; kicking off new request", buf, 0xCu);
        }

        objc_storeStrong((*(a1 + 32) + 80), v25);
        v31 = *(a1 + 56);
        v32 = *(a1 + 64);
        v34 = *(a1 + 32);
        v33 = *(a1 + 40);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke_99;
        v35[3] = &unk_2782C98E0;
        v36 = v33;
        v37 = v25;
        [v34 _stateLock_enqueueGalleryConfigurationUpdateWithOptions:v31 powerLogReason:v32 sessionId:v36 completion:v35];

        v27 = v36;
      }

      goto LABEL_37;
    }

    v20 = PBFLogGallery(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 40);
      *buf = 138543618;
      v49 = v21;
      v50 = 2114;
      *v51 = v3;
      _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueueGalleryConfigurationUpdateWithOptions; checked if gallery is stale, it is not stale, returning local gallery; last hydrated %{public}@", buf, 0x16u);
    }

    v22 = *(a1 + 48);
    if (!v22)
    {
LABEL_37:
      os_unfair_lock_unlock((*(a1 + 32) + 24));
      goto LABEL_38;
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke_97;
    v38[3] = &unk_2782C6180;
    v13 = &v41;
    v41 = v22;
    v39 = v2;
    v40 = v3;
    v14 = _Block_copy(v38);

    v18 = v39;
  }

LABEL_22:
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  if (v14)
  {
    v14[2](v14);
  }

LABEL_38:
}

void __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke_94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, 0, v2);
}

void __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke_99(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = PBFLogGallery(v11);
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke_99_cold_1();
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = 138543874;
    v16 = v14;
    v17 = 2112;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueueGalleryConfigurationUpdateWithOptions; update completed.  Gallery received: %@, newLastUpdateDate: %{public}@", &v15, 0x20u);
  }

  [*(a1 + 40) fireCompletionHandlersWithError:v11 faceGalleryConfiguration:v9 lastUpdateDate:v10 didUpdate:a4];
}

- (void)pushUpdatedPosterDescriptors:(id)descriptors reason:(id)reason force:(BOOL)force completion:(id)completion
{
  descriptorsCopy = descriptors;
  reasonCopy = reason;
  completionCopy = completion;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] pushUpdatedPosterDescriptors completion", uUID];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__PBFGalleryController_pushUpdatedPosterDescriptors_reason_force_completion___block_invoke;
  v19[3] = &unk_2782C9930;
  v20 = uUID;
  selfCopy = self;
  v22 = descriptorsCopy;
  v23 = reasonCopy;
  forceCopy = force;
  v24 = completionCopy;
  v15 = completionCopy;
  v16 = reasonCopy;
  v17 = descriptorsCopy;
  v18 = uUID;
  PBFDispatchAsyncWithString(v14, QOS_CLASS_DEFAULT, v19);
}

void __77__PBFGalleryController_pushUpdatedPosterDescriptors_reason_force_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = PBFLogGallery(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_21B526000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors begin", &v4, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 40) + 24));
  [*(a1 + 40) _stateLock_enqueuePushUpdatedPosterDescriptors:*(a1 + 48) reason:*(a1 + 56) force:*(a1 + 72) sessionId:*(a1 + 32) completion:*(a1 + 64)];
  os_unfair_lock_unlock((*(a1 + 40) + 24));
}

- (void)updateGallery:(id)gallery completion:(id)completion
{
  v21[1] = *MEMORY[0x277D85DE8];
  galleryCopy = gallery;
  completionCopy = completion;
  if (!completionCopy)
  {
    [PBFGalleryController updateGallery:a2 completion:?];
  }

  v9 = completionCopy;
  if ([MEMORY[0x277CBEBD0] pbf_keynoteModeEnabled])
  {
    v10 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA470];
    v21[0] = @"Keynote mode is enabled; we aren't going to accept gallery updates right now.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v12 = [v10 pbf_generalErrorWithCode:6 userInfo:v11];
    (v9)[2](v9, v12);
  }

  else
  {
    if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
    {
      v13 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      (v9)[2](v9, v13);
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] updateGallery:completion:", uUID];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __49__PBFGalleryController_updateGallery_completion___block_invoke;
      v16[3] = &unk_2782C6338;
      v16[4] = self;
      v17 = uUID;
      v18 = galleryCopy;
      v19 = v9;
      v13 = uUID;
      PBFDispatchAsyncWithString(v15, QOS_CLASS_DEFAULT, v16);
    }
  }
}

void __49__PBFGalleryController_updateGallery_completion___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = *(*(a1 + 32) + 96);
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;
  objc_storeStrong((*(a1 + 32) + 96), v2);
  v7 = PBFLogGallery(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    *buf = 138543618;
    v36 = v8;
    v37 = 2048;
    v38 = v5;
    _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] updateGallery; time since last request: %f", buf, 0x16u);
  }

  if ([*(*(a1 + 32) + 32) getFlag])
  {
    v9 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    goto LABEL_7;
  }

  if ([*(*(a1 + 32) + 40) isEqual:*(a1 + 48)])
  {
    v10 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA470];
    v34 = @"Attempting to update gallery with the current gallery object";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v9 = [v10 pbf_generalErrorWithCode:1 userInfo:v11];

    [*(*(a1 + 32) + 104) setProactiveInfractionCount:{objc_msgSend(*(*(a1 + 32) + 104), "proactiveInfractionCount") + 1}];
    goto LABEL_7;
  }

  [*(*(a1 + 32) + 104) maximumIntervalBetweenProactivePush];
  if (v12 <= 0.0 || ([*(*(a1 + 32) + 104) minimumIntervalBetweenProactivePush], v14 = v13, objc_msgSend(*(*(a1 + 32) + 104), "maximumIntervalBetweenProactivePush"), v14 >= v15))
  {
    [*(*(a1 + 32) + 104) setProactiveInfractionCount:0];
LABEL_16:
    os_unfair_lock_unlock((*(a1 + 32) + 24));
    goto LABEL_17;
  }

  [*(*(a1 + 32) + 104) minimumIntervalBetweenProactivePush];
  v17 = pow(v16, [*(*(a1 + 32) + 104) proactiveInfractionCount]);
  [*(*(a1 + 32) + 104) maximumIntervalBetweenProactivePush];
  if (v17 >= v18)
  {
    v17 = v18;
  }

  if (v5 >= v17)
  {
    goto LABEL_16;
  }

  v31[0] = @"acceptableMinimumIntervalBetweenRequests";
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  v32[0] = v19;
  v31[1] = @"timeIntervalSinceLastRequest";
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v21 = *MEMORY[0x277CCA470];
  v32[1] = v20;
  v32[2] = @"You have been rate limited! Please stop hammering this interface.";
  v31[2] = v21;
  v31[3] = @"numberOfRateLimitedAttempts";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 32) + 104), "proactiveInfractionCount")}];
  v32[3] = v22;
  v31[4] = @"timeWhenceRequestsWillBeAcceptedAgain";
  v23 = [v2 dateByAddingTimeInterval:v17];
  v32[4] = v23;
  v32[5] = v3;
  v31[5] = @"previousRequestDate";
  v31[6] = @"sessionId";
  v24 = [*(a1 + 40) UUIDString];
  v32[6] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:7];

  v9 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:9 userInfo:v25];
  [*(*(a1 + 32) + 104) setProactiveInfractionCount:{objc_msgSend(*(*(a1 + 32) + 104), "proactiveInfractionCount") + 1}];

LABEL_7:
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  if (!v9)
  {
LABEL_17:
    [PBFPowerLogger logUpdate:3 reason:5];
    v27 = *(a1 + 40);
    v26 = *(a1 + 48);
    v28 = *(a1 + 32);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __49__PBFGalleryController_updateGallery_completion___block_invoke_140;
    v29[3] = &unk_2782C9958;
    v30 = *(a1 + 56);
    [v28 _pushFaceGalleryConfigurationUpdate:v26 options:2 fetchError:0 sessionId:v27 completion:v29];
    v9 = v30;
    goto LABEL_18;
  }

  (*(*(a1 + 56) + 16))();
LABEL_18:
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [PBFGalleryController addObserver:a2];
  }

  v9 = observerCopy;
  os_unfair_lock_lock(&self->_stateLock);
  stateLock_observers = self->_stateLock_observers;
  if (!stateLock_observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v8 = self->_stateLock_observers;
    self->_stateLock_observers = weakObjectsHashTable;

    stateLock_observers = self->_stateLock_observers;
  }

  [(NSHashTable *)stateLock_observers addObject:v9];
  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_stateLock);
  [(NSHashTable *)self->_stateLock_observers removeObject:observerCopy];

  if (![(NSHashTable *)self->_stateLock_observers count])
  {
    stateLock_observers = self->_stateLock_observers;
    self->_stateLock_observers = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    galleryLayoutProvider = self->_galleryLayoutProvider;
    self->_galleryLayoutProvider = 0;

    v4 = objc_storeWeak(&self->_runtimeAssertionProvider, 0);
    v5 = PBFLogGallery(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "PBFGalleryController Invalidated %p", &v6, 0xCu);
    }
  }
}

- (void)_stateLock_enqueuePushUpdatedPosterDescriptors:(id)descriptors reason:(id)reason force:(BOOL)force sessionId:(id)id completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  reasonCopy = reason;
  idCopy = id;
  completionCopy = completion;
  PBFDebug_os_unfair_lock_assert_owner();
  stateLock_lastSuccessfulPushToProactive = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (stateLock_lastSuccessfulPushToProactive)
  {
    if (completionCopy)
    {
      v17 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      completionCopy[2](completionCopy, 0, v17);
    }

    v18 = PBFLogGallery(stateLock_lastSuccessfulPushToProactive);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138543362;
      v44 = idCopy;
      _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; invalidated", &v43, 0xCu);
    }

    goto LABEL_32;
  }

  if (force)
  {
    goto LABEL_8;
  }

  v28 = PBFLogGallery(stateLock_lastSuccessfulPushToProactive);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 138543362;
    v44 = idCopy;
    _os_log_impl(&dword_21B526000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; checking if descriptors have already been sent", &v43, 0xCu);
  }

  stateLock_enqueuedPushToProactive = self->_stateLock_enqueuedPushToProactive;
  if (stateLock_enqueuedPushToProactive)
  {
    updatedDescriptors = [(_PBFGalleryEnqueuedPushToProactiveRequest *)stateLock_enqueuedPushToProactive updatedDescriptors];
    v31 = [updatedDescriptors isEqual:descriptorsCopy];

    if (v31)
    {
      v33 = PBFLogGallery(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v43 = 138543362;
        v44 = idCopy;
        _os_log_impl(&dword_21B526000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; descriptors match already enqueued push to proactive.  Bailing.", &v43, 0xCu);
      }

      v34 = self->_stateLock_enqueuedPushToProactive;
LABEL_31:
      [(_PBFGalleryEnqueuedPushToProactiveRequest *)v34 addCompletionHandler:completionCopy];
      goto LABEL_32;
    }
  }

  stateLock_activePushToProactive = self->_stateLock_activePushToProactive;
  if (stateLock_activePushToProactive)
  {
    updatedDescriptors2 = [(_PBFGalleryEnqueuedPushToProactiveRequest *)stateLock_activePushToProactive updatedDescriptors];
    v37 = [updatedDescriptors2 isEqual:descriptorsCopy];

    if (v37)
    {
      v39 = PBFLogGallery(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v43 = 138543362;
        v44 = idCopy;
        _os_log_impl(&dword_21B526000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; descriptors match already active push to proactive.  Bailing.", &v43, 0xCu);
      }

      v34 = self->_stateLock_activePushToProactive;
      goto LABEL_31;
    }
  }

  stateLock_lastSuccessfulPushToProactive = self->_stateLock_lastSuccessfulPushToProactive;
  if (!stateLock_lastSuccessfulPushToProactive || (-[_PBFGalleryEnqueuedPushToProactiveRequest updatedDescriptors](stateLock_lastSuccessfulPushToProactive, "updatedDescriptors"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 isEqual:descriptorsCopy], v40, !v41))
  {
LABEL_8:
    v19 = PBFLogGallery(stateLock_lastSuccessfulPushToProactive);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138543362;
      v44 = idCopy;
      _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; Crafting new _PBFGalleryEnqueuedPushToProactiveRequest", &v43, 0xCu);
    }

    v20 = [[_PBFGalleryEnqueuedPushToProactiveRequest alloc] initWithUpdatedDescriptors:descriptorsCopy reason:reasonCopy sessionId:idCopy];
    v21 = [(_PBFGalleryEnqueuedPushToProactiveRequest *)v20 addCompletionHandler:completionCopy];
    if (self->_stateLock_enqueuedPushToProactive)
    {
      v22 = PBFLogGallery(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        sessionId = [(_PBFGalleryEnqueuedPushToProactiveRequest *)self->_stateLock_enqueuedPushToProactive sessionId];
        v43 = 138543618;
        v44 = idCopy;
        v45 = 2114;
        v46 = sessionId;
        _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; stealing completion handlers for existing enqueued request (sessionId %{public}@) and replacing.", &v43, 0x16u);
      }

      v21 = [(_PBFGalleryEnqueuedPushToProactiveRequest *)v20 addCompletionHandlersFromEnqueuedPushToProactive:self->_stateLock_enqueuedPushToProactive];
    }

    v24 = PBFLogGallery(v21);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138543362;
      v44 = idCopy;
      _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; enqueuing", &v43, 0xCu);
    }

    v25 = self->_stateLock_enqueuedPushToProactive;
    self->_stateLock_enqueuedPushToProactive = v20;

    v27 = PBFLogGallery(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138543362;
      v44 = idCopy;
      _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; flush", &v43, 0xCu);
    }

    [(PBFGalleryController *)self _stateLock_flushProactiveUpdateQueue];
    goto LABEL_32;
  }

  v42 = PBFLogGallery(stateLock_lastSuccessfulPushToProactive);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 138543362;
    v44 = idCopy;
    _os_log_impl(&dword_21B526000, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; descriptors have already been sent in prior send.  Bailing.", &v43, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 0);
  }

LABEL_32:
}

- (void)_stateLock_flushProactiveUpdateQueue
{
  v14 = *MEMORY[0x277D85DE8];
  PBFDebug_os_unfair_lock_assert_owner();
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if ((getFlag & 1) == 0)
  {
    if (self->_stateLock_activePushToProactive || !self->_stateLock_enqueuedPushToProactive)
    {
      v4 = PBFLogGallery(getFlag);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        sessionId = [(_PBFGalleryEnqueuedPushToProactiveRequest *)self->_stateLock_activePushToProactive sessionId];
        sessionId2 = [(_PBFGalleryEnqueuedPushToProactiveRequest *)self->_stateLock_enqueuedPushToProactive sessionId];
        v10 = 138543618;
        v11 = sessionId;
        v12 = 2114;
        v13 = sessionId2;
        _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "_flushProactiveUpdateQueue; nothing to do; active session id %{public}@; enqueued session id %{public}@", &v10, 0x16u);
      }
    }

    else
    {
      v7 = PBFLogGallery(getFlag);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        sessionId3 = [(_PBFGalleryEnqueuedPushToProactiveRequest *)self->_stateLock_enqueuedPushToProactive sessionId];
        v10 = 138543362;
        v11 = sessionId3;
        _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "_flushProactiveUpdateQueue; moving session id %{public}@ to active", &v10, 0xCu);
      }

      objc_storeStrong(&self->_stateLock_activePushToProactive, self->_stateLock_enqueuedPushToProactive);
      stateLock_enqueuedPushToProactive = self->_stateLock_enqueuedPushToProactive;
      self->_stateLock_enqueuedPushToProactive = 0;

      [(PBFGalleryController *)self _stateLock_executeEnqueuedPushToProactive:self->_stateLock_activePushToProactive];
    }
  }
}

- (BOOL)_stateLock_executeEnqueuedPushToProactive:(id)proactive
{
  v86 = *MEMORY[0x277D85DE8];
  proactiveCopy = proactive;
  PBFDebug_os_unfair_lock_assert_owner();
  sessionId = [proactiveCopy sessionId];
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (!getFlag)
  {
    v70 = 0;
    v10 = [(PBFGalleryController *)self runtimeAssertionProviderWithError:&v70];
    v11 = v70;
    v8 = v11;
    if (v11)
    {
      v12 = PBFLogGallery(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PBFGalleryController _stateLock_executeEnqueuedPushToProactive:];
      }

      [proactiveCopy fireCompletionHandlersWithError:v8 didUpdate:0];
      v9 = 0;
      goto LABEL_35;
    }

    v69 = 0;
    v45 = [(PBFGalleryController *)self galleryLayoutProviderWithError:&v69];
    v13 = v69;
    v46 = v13;
    if (v13)
    {
      v14 = PBFLogGallery(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PBFGalleryController _stateLock_executeEnqueuedPushToProactive:];
      }

      [proactiveCopy fireCompletionHandlersWithError:v46 didUpdate:0];
      v9 = 0;
      goto LABEL_34;
    }

    reason = [proactiveCopy reason];
    updatedDescriptors = [proactiveCopy updatedDescriptors];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v82 = 0x3032000000;
    v83 = __Block_byref_object_copy__13;
    v84 = __Block_byref_object_dispose__13;
    currentProcess = [MEMORY[0x277D47008] currentProcess];
    v85 = [v10 acquirePrewarmRuntimeAssertionForReason:@"Push To Proactive" target:currentProcess invalidationHandler:0];

    v19 = PBFLogGallery(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v75 = 138543618;
      *&v75[4] = sessionId;
      *&v75[12] = 2114;
      *&v75[14] = reason;
      _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_executeEnqueuedPushToProactive:reason:'%{public}@'; begin", v75, 0x16u);
    }

    v20 = *MEMORY[0x277CCA470];
    v80[0] = @"Proactive indicated it was not successful in receiving our updatedPosterDescriptorsForExtensionBundleIdentifier";
    v79[0] = v20;
    v79[1] = @"updatedPosterDescriptorsForExtensionBundleIdentifier";
    v21 = [updatedDescriptors description];
    v22 = v21;
    v23 = @"(NULL)";
    if (v21)
    {
      v23 = v21;
    }

    v79[2] = @"reason";
    v24 = @"(null)";
    if (reason)
    {
      v24 = reason;
    }

    v80[1] = v23;
    v80[2] = v24;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:3];

    v25 = updatedDescriptors;
    v26 = objc_opt_new();
    *v75 = 0;
    *&v75[8] = v75;
    *&v75[16] = 0x3032000000;
    v76 = __Block_byref_object_copy__166;
    v77 = __Block_byref_object_dispose__167;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke;
    aBlock[3] = &unk_2782C99A8;
    v40 = sessionId;
    v61 = v40;
    v41 = v26;
    v62 = v41;
    v43 = reason;
    v63 = v43;
    selfCopy = self;
    v65 = proactiveCopy;
    v44 = v25;
    v66 = v44;
    p_buf = &buf;
    v27 = v45;
    v67 = v27;
    v78 = _Block_copy(aBlock);
    if ([v44 count])
    {
      stateLock_lastSentPosterDescriptorsForExtensionBundleIdentifier = self->_stateLock_lastSentPosterDescriptorsForExtensionBundleIdentifier;
      if (!stateLock_lastSentPosterDescriptorsForExtensionBundleIdentifier || (stateLock_lastSentPosterDescriptorsForExtensionBundleIdentifier = [(NSDictionary *)stateLock_lastSentPosterDescriptorsForExtensionBundleIdentifier isEqualToDictionary:v44], !stateLock_lastSentPosterDescriptorsForExtensionBundleIdentifier))
      {
        v31 = PBFLogGallery(stateLock_lastSentPosterDescriptorsForExtensionBundleIdentifier);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *v71 = 138543618;
          v72 = v40;
          v73 = 2114;
          v74 = v43;
          _os_log_impl(&dword_21B526000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_executeEnqueuedPushToProactive:'%{public}@'; dumping payload...", v71, 0x16u);
        }

        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_173;
        v58[3] = &unk_2782C69B0;
        v32 = v40;
        v59 = v32;
        v33 = PBFLogGallery([v44 enumerateKeysAndObjectsUsingBlock:v58]);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *v71 = 138543618;
          v72 = v32;
          v73 = 2114;
          v74 = v43;
          _os_log_impl(&dword_21B526000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_executeEnqueuedPushToProactive:'%{public}@'; firing request...", v71, 0x16u);
        }

        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_177;
        v53[3] = &unk_2782C99F8;
        v34 = v32;
        v54 = v34;
        v35 = v43;
        v55 = v35;
        v57 = v75;
        v36 = v42;
        v56 = v36;
        [v27 handlePosterDescriptorsDidChange:v44 withCompletion:v53];
        v37 = dispatch_time(0, 10000000000);
        v38 = dispatch_get_global_queue(21, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_178;
        block[3] = &unk_2782C9A20;
        v48 = v41;
        v49 = v34;
        v50 = v35;
        v52 = v75;
        v51 = v36;
        dispatch_after(v37, v38, block);

        v9 = 1;
        goto LABEL_33;
      }

      v29 = PBFLogGallery(stateLock_lastSentPosterDescriptorsForExtensionBundleIdentifier);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v71 = 138543618;
        v72 = v40;
        v73 = 2114;
        v74 = v43;
        v30 = "[%{public}@] _stateLock_executeEnqueuedPushToProactive:'%{public}@' -- Bailed; this has already been sent to proactive successfully.";
LABEL_31:
        _os_log_impl(&dword_21B526000, v29, OS_LOG_TYPE_DEFAULT, v30, v71, 0x16u);
      }
    }

    else
    {
      v29 = PBFLogGallery(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v71 = 138543618;
        v72 = v40;
        v73 = 2114;
        v74 = v43;
        v30 = "[%{public}@] _stateLock_executeEnqueuedPushToProactive:'%{public}@' -- Bailed; nothing to send.";
        goto LABEL_31;
      }
    }

    (*(*(*&v75[8] + 40) + 16))();
    v9 = 0;
LABEL_33:
    _Block_object_dispose(v75, 8);

    _Block_object_dispose(&buf, 8);
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  v7 = PBFLogGallery(getFlag);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = sessionId;
    _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_executeEnqueuedPushToProactive; invalidated", &buf, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
  [proactiveCopy fireCompletionHandlersWithError:v8 didUpdate:0];
  v9 = 0;
LABEL_36:

  return v9;
}

void __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] _stateLock_executeEnqueuedPushToProactive completion", *(a1 + 32)];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_2;
  v14[3] = &unk_2782C9980;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = *(a1 + 56);
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v15 = v10;
  v16 = v9;
  v17 = v5;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v21 = a2;
  v13 = *(a1 + 80);
  v11 = v13;
  v20 = v13;
  v12 = v5;
  PBFDispatchAsyncWithString(v6, QOS_CLASS_DEFAULT, v14);
}

uint64_t __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) signal];
  if (result)
  {
    v3 = PBFLogGallery(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v13 = 138543618;
      v14 = v4;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_executeEnqueuedPushToProactive:'%{public}@'; finished", &v13, 0x16u);
    }

    os_unfair_lock_lock((*(a1 + 56) + 24));
    if (!*(a1 + 64))
    {
      objc_storeStrong((*(a1 + 56) + 72), *(a1 + 72));
      v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:*(a1 + 80) copyItems:1];
      v7 = *(a1 + 56);
      v8 = *(v7 + 48);
      *(v7 + 48) = v6;
    }

    v9 = *(a1 + 56);
    v10 = *(v9 + 64);
    *(v9 + 64) = 0;

    [*(a1 + 56) _stateLock_flushProactiveUpdateQueue];
    os_unfair_lock_unlock((*(a1 + 56) + 24));
    [*(*(*(a1 + 96) + 8) + 40) invalidate];
    v11 = *(*(a1 + 96) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    [*(a1 + 72) fireCompletionHandlersWithError:*(a1 + 64) didUpdate:*(a1 + 104)];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [*(a1 + 88) wantsFetchGalleryLayoutAfterHandlePosterDescriptorsDidChange];
      if (result)
      {
        return [*(a1 + 56) enqueueGalleryConfigurationUpdateWithOptions:2 powerLogReason:6 completion:0];
      }
    }
  }

  return result;
}

void __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_173(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PBFLogGallery(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] \textension '%{public}@'", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_174;
  v9[3] = &unk_2782C99D0;
  v10 = *(a1 + 32);
  [v6 enumerateObjectsUsingBlock:v9];
}

void __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_174(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PBFLogGallery(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 identifier];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] \t\tdescriptor identifier '%{public}@'", &v7, 0x16u);
  }
}

void __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_177(void *a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = PBFLogGallery(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_executeEnqueuedPushToProactive:'%{public}@' -- Success? %{BOOL}u", &v9, 0x1Cu);
  }

  v7 = *(*(a1[7] + 8) + 40);
  if (a2)
  {
    (*(v7 + 16))(v7, 1, 0);
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] pbf_dataStoreErrorWithCode:-2222 userInfo:a1[6]];
    (*(v7 + 16))(v7, 0, v8);
  }
}

void __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_178(uint64_t a1)
{
  v2 = [*(a1 + 32) hasBeenSignalled];
  if ((v2 & 1) == 0)
  {
    v3 = PBFLogGallery(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_178_cold_1();
    }

    v4 = *(a1 + 56);
    v5 = *(*(*(a1 + 64) + 8) + 40);
    v6 = [MEMORY[0x277CCA9B8] pbf_dataStoreErrorWithCode:-2221 userInfo:v4];
    (*(v5 + 16))(v5, 0, v6);
  }
}

- (BOOL)_stateLock_isGalleryStale
{
  PBFDebug_os_unfair_lock_assert_owner();
  lastUsefulGalleryConfigurationPersistDate = [(PBFGalleryControllerState *)self->_state lastUsefulGalleryConfigurationPersistDate];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:lastUsefulGalleryConfigurationPersistDate];
  v6 = v5;

  return v6 >= 14400.0;
}

- (void)_stateLock_enqueueGalleryConfigurationUpdateWithOptions:(unint64_t)options powerLogReason:(int64_t)reason sessionId:(id)id completion:(id)completion
{
  v79[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  completionCopy = completion;
  PBFDebug_os_unfair_lock_assert_owner();
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (!getFlag)
  {
    v71 = 0;
    v15 = [(PBFGalleryController *)self runtimeAssertionProviderWithError:&v71];
    v16 = v71;
    v14 = v16;
    if (v16)
    {
      v17 = PBFLogGallery(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PBFGalleryController _stateLock_enqueueGalleryConfigurationUpdateWithOptions:powerLogReason:sessionId:completion:];
      }

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0, 0, 0, v14);
      }

      goto LABEL_47;
    }

    v70 = 0;
    v51 = [(PBFGalleryController *)self galleryLayoutProviderWithError:&v70];
    v18 = v70;
    v52 = v18;
    if (v18)
    {
      v19 = PBFLogGallery(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [PBFGalleryController _stateLock_enqueueGalleryConfigurationUpdateWithOptions:powerLogReason:sessionId:completion:];
      }

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0, 0, 0, v52);
      }

      goto LABEL_46;
    }

    v50 = self->_stateLock_lastUsefulGalleryConfiguration;
    lastUsefulGalleryConfigurationPersistDate = [(PBFGalleryControllerState *)self->_state lastUsefulGalleryConfigurationPersistDate];
    [PBFPowerLogger logUpdate:3 reason:reason];
    v48 = objc_opt_new();
    v47 = objc_opt_new();
    v20 = PBFLogGallery(v47);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = idCopy;
      _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions:; begin", buf, 0xCu);
    }

    if ((options & 8) == 0)
    {
      goto LABEL_35;
    }

    if (lastUsefulGalleryConfigurationPersistDate)
    {
      v22 = v50 == 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = !v22;
    v24 = PBFLogGallery(v21);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v25)
      {
        *buf = 138543362;
        *&buf[4] = idCopy;
        _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions:; Checking if gallery is stale... ", buf, 0xCu);
      }

      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:lastUsefulGalleryConfigurationPersistDate];
      v28 = v27;

      v24 = PBFLogGallery(v29);
      v30 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v28 < 14400.0)
      {
        if (v30)
        {
          *buf = 138543874;
          *&buf[4] = v48;
          *&buf[12] = 2114;
          *&buf[14] = lastUsefulGalleryConfigurationPersistDate;
          *&buf[22] = 2048;
          v75 = 0x40CC200000000000;
          _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions:; gallery was last refreshed at @ %{public}@, which means it is younger than %f seconds, so we're going to not update.", buf, 0x20u);
        }

        (*(completionCopy + 2))(completionCopy, v50, lastUsefulGalleryConfigurationPersistDate, 0, 0);
        goto LABEL_45;
      }

      if (!v30)
      {
        goto LABEL_34;
      }

      *buf = 138543874;
      *&buf[4] = idCopy;
      *&buf[12] = 2114;
      *&buf[14] = lastUsefulGalleryConfigurationPersistDate;
      *&buf[22] = 2048;
      v75 = 0x40CC200000000000;
      v31 = "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions:; gallery was last refreshed at @ %{public}@, which means it is OLDER than %f seconds, so we're going to proceed";
      v32 = v24;
      v33 = 32;
    }

    else
    {
      if (!v25)
      {
LABEL_34:

LABEL_35:
        pbf_keynoteModeEnabled = [MEMORY[0x277CBEBD0] pbf_keynoteModeEnabled];
        if (pbf_keynoteModeEnabled)
        {
          v35 = PBFLogGallery(pbf_keynoteModeEnabled);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = idCopy;
            _os_log_impl(&dword_21B526000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions:; not querying, just using local (keynote mode)", buf, 0xCu);
          }

          lastUsefulGalleryConfigurationPersistDate2 = [(PBFGalleryControllerState *)self->_state lastUsefulGalleryConfigurationPersistDate];
          v37 = MEMORY[0x277CCA9B8];
          v78 = *MEMORY[0x277CCA470];
          v79[0] = @"Keynote mode has been engaged; disabled fetching new gallery configuration.";
          v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:&v78 count:1];
          v39 = [v37 pbf_generalErrorWithCode:6 userInfo:v38];
          (*(completionCopy + 2))(completionCopy, v50, lastUsefulGalleryConfigurationPersistDate2, 0, v39);
        }

        else
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v75 = __Block_byref_object_copy__13;
          v76 = __Block_byref_object_dispose__13;
          currentProcess = [MEMORY[0x277D47008] currentProcess];
          v77 = [v15 acquirePrewarmRuntimeAssertionForReason:@"Gallery Async Fetch" target:currentProcess invalidationHandler:0];

          v68[0] = 0;
          v68[1] = v68;
          v68[2] = 0x3032000000;
          v68[3] = __Block_byref_object_copy__166;
          v68[4] = __Block_byref_object_dispose__167;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke;
          aBlock[3] = &unk_2782C9A70;
          v41 = idCopy;
          v64 = v41;
          v42 = v47;
          v65 = v42;
          v66 = completionCopy;
          v67 = buf;
          v69 = _Block_copy(aBlock);
          v43 = PBFLogGallery(v69);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *v72 = 138543362;
            v73 = v41;
            _os_log_impl(&dword_21B526000, v43, OS_LOG_TYPE_DEFAULT, "(%{public}@)_stateLock_enqueueGalleryConfigurationUpdateWithOptions:; querying", v72, 0xCu);
          }

          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_188;
          v57[3] = &unk_2782C9AE8;
          v44 = v41;
          v58 = v44;
          v59 = v48;
          selfCopy = self;
          v61 = v68;
          optionsCopy = options;
          [v51 fetchGalleryLayoutWithCompletion:v57];
          v45 = dispatch_time(0, 10000000000);
          mEMORY[0x277D3EBA8] = [MEMORY[0x277D3EBA8] sharedWorkloop];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2_199;
          block[3] = &unk_2782C7340;
          v54 = v42;
          v55 = v44;
          v56 = v68;
          dispatch_after(v45, mEMORY[0x277D3EBA8], block);

          _Block_object_dispose(v68, 8);
          _Block_object_dispose(buf, 8);
        }

LABEL_45:

LABEL_46:
LABEL_47:

        goto LABEL_48;
      }

      *buf = 138543362;
      *&buf[4] = idCopy;
      v31 = "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions:; Checked if gallery is stale... but we don't have a gallery, so we're going to proceed.";
      v32 = v24;
      v33 = 12;
    }

    _os_log_impl(&dword_21B526000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
    goto LABEL_34;
  }

  v13 = PBFLogGallery(getFlag);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = idCopy;
    _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions; invalidated", buf, 0xCu);
  }

  if (completionCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v14);
LABEL_48:
  }
}

void __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions completion", *(a1 + 32)];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2;
  v17[3] = &unk_2782C9A48;
  v18 = *(a1 + 40);
  v13 = *(a1 + 48);
  v19 = v9;
  v20 = v10;
  v24 = a4;
  v21 = v11;
  v22 = v13;
  v23 = *(a1 + 56);
  v14 = v11;
  v15 = v10;
  v16 = v9;
  PBFDispatchAsyncWithString(v12, QOS_CLASS_DEFAULT, v17);
}

void __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) signal])
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      (*(v2 + 16))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 80), *(a1 + 56));
    }

    [*(*(*(a1 + 72) + 8) + 40) invalidate];
    v3 = *(*(a1 + 72) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_188(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] _pushFaceGalleryConfigurationUpdate", *(a1 + 32)];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2_192;
  v13[3] = &unk_2782C9AC0;
  v14 = v6;
  v15 = *(a1 + 40);
  v16 = v5;
  v8 = *(a1 + 64);
  v17 = *(a1 + 48);
  v20 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v18 = v9;
  v19 = v10;
  v11 = v5;
  v12 = v6;
  PBFDispatchAsyncWithString(v7, QOS_CLASS_DEFAULT, v13);
}

void __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2_192(void *a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 4);
  v3 = a1[4];
  v4 = PBFLogGallery(a1);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2_192_cold_1();
    }

    v6 = [*v2 localizedFailureReason];
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v11 = [*v2 localizedDescription];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [*v2 description];
      }

      v5 = v13;
    }

    v32 = *MEMORY[0x277CCA470];
    v14 = v32;
    v33[0] = v5;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v16 = MEMORY[0x277CCA9B8];
    v17 = [*v2 domain];
    v18 = [v16 errorWithDomain:v17 code:objc_msgSend(*v2 userInfo:{"code"), v15}];

    v19 = MEMORY[0x277CCA9B8];
    v30[0] = *MEMORY[0x277CCA7E8];
    v30[1] = v14;
    v31[0] = v18;
    v31[1] = @"Fetch from gallery service failed";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v10 = [v19 pbf_generalErrorWithCode:11 userInfo:v20];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v9 = a1[6];
      *buf = 138543618;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions:; received response '%@'", buf, 0x16u);
    }

    v10 = 0;
  }

  v22 = a1[6];
  v21 = a1[7];
  v23 = a1[8];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_196;
  v25[3] = &unk_2782C9A98;
  v24 = a1[10];
  v25[4] = a1[9];
  [v21 _pushFaceGalleryConfigurationUpdate:v22 options:v24 fetchError:v10 sessionId:v23 completion:v25];
}

void __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2_199(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hasBeenSignalled];
  if ((v2 & 1) == 0)
  {
    v3 = PBFLogGallery(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2_199_cold_1();
    }

    v4 = *(*(*(a1 + 48) + 8) + 40);
    v5 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA470];
    v9[0] = @"Proactive timed out calling fetchFaceGalleryConfigurationWithCompletion:";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v7 = [v5 pbf_generalErrorWithCode:2 userInfo:v6];
    (*(v4 + 16))(v4, 0, 0, 0, v7);
  }
}

- (void)_pushFaceGalleryConfigurationUpdate:(id)update options:(unint64_t)options fetchError:(id)error sessionId:(id)id completion:(id)completion
{
  optionsCopy = options;
  v49[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  errorCopy = error;
  idCopy = id;
  completionCopy = completion;
  v17 = PBFLogGallery(completionCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    locale = [updateCopy locale];
    localeIdentifier = [locale localeIdentifier];
    *buf = 138543618;
    v45 = idCopy;
    v46 = 2112;
    *v47 = localeIdentifier;
    _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] _pushFaceGalleryConfigurationUpdate: received gallery w/ locale %@", buf, 0x16u);
  }

  if (updateCopy)
  {
    v21 = PBFLogGallery(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v45 = idCopy;
      v46 = 1024;
      *v47 = (optionsCopy & 2) >> 1;
      *&v47[4] = 2114;
      *&v47[6] = updateCopy;
      _os_log_impl(&dword_21B526000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] _pushFaceGalleryConfigurationUpdate: should Persist? %{BOOL}u '%{public}@'", buf, 0x1Cu);
    }

    os_unfair_lock_lock(&self->_stateLock);
    v22 = [(PRSPosterGalleryLayout *)self->_stateLock_lastUsefulGalleryConfiguration isEqual:updateCopy];
    v41 = errorCopy;
    v23 = errorCopy;
    v24 = v23;
    v40 = v22;
    if (optionsCopy & 2) == 0 || v23 || (v22)
    {
      lastUsefulGalleryConfigurationPersistDate = [(PBFGalleryControllerState *)self->_state lastUsefulGalleryConfigurationPersistDate];
      v25 = self->_stateLock_lastUsefulGalleryConfiguration;
      v36 = PBFLogGallery(v25);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v45 = idCopy;
        v46 = 2114;
        *v47 = updateCopy;
        *&v47[8] = 2114;
        *&v47[10] = lastUsefulGalleryConfigurationPersistDate;
        _os_log_impl(&dword_21B526000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] _pushFaceGalleryConfigurationUpdate: received new gallery but not persisting '%{public}@'/%{public}@", buf, 0x20u);
      }
    }

    else
    {
      v25 = updateCopy;
      v42 = 0;
      v43 = 0;
      [(PBFGalleryController *)self _stateLock_persistGalleryConfiguration:v25 lastUpdateDate:&v43 sessionId:idCopy error:&v42];
      lastUsefulGalleryConfigurationPersistDate = v43;
      v24 = v42;
      v27 = PBFLogGallery(v24);
      v28 = v27;
      if (v24)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v45 = idCopy;
          v46 = 2114;
          *v47 = v25;
          *&v47[8] = 2114;
          *&v47[10] = v24;
          _os_log_error_impl(&dword_21B526000, v28, OS_LOG_TYPE_ERROR, "[%{public}@] _pushFaceGalleryConfigurationUpdate: persisting %{public}@ -- error: %{public}@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v45 = idCopy;
        v46 = 2114;
        *v47 = v25;
        *&v47[8] = 2114;
        *&v47[10] = lastUsefulGalleryConfigurationPersistDate;
        _os_log_impl(&dword_21B526000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] _pushFaceGalleryConfigurationUpdate: persisting %{public}@ -- last update date? %{public}@", buf, 0x20u);
      }

      [(PBFGalleryController *)self _stateLock_notifyGalleryControllerWillUpdateGalleryConfiguration];
      [(PBFGalleryControllerState *)self->_state setLastUsefulGalleryConfigurationPersistDate:lastUsefulGalleryConfigurationPersistDate];
      objc_storeStrong(&self->_stateLock_lastUsefulGalleryConfiguration, update);
      [(PBFGalleryController *)self _stateLock_notifyGalleryControllerDidUpdateCurrentGalleryConfiguration:v25];
    }

    os_unfair_lock_unlock(&self->_stateLock);
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v25, lastUsefulGalleryConfigurationPersistDate, v40 ^ 1u, v24);
    }

    errorCopy = v41;
  }

  else
  {
    v29 = PBFLogGallery(v20);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(PBFGalleryController *)idCopy _pushFaceGalleryConfigurationUpdate:v29 options:v30 fetchError:v31 sessionId:v32 completion:v33, v34, v35];
    }

    if (completionCopy)
    {
      if (errorCopy)
      {
        completionCopy[2](completionCopy, 0, 0, 0, errorCopy);
      }

      else
      {
        v37 = MEMORY[0x277CCA9B8];
        v48 = *MEMORY[0x277CCA470];
        v49[0] = @"Nil gallery was rejected.";
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
        v39 = [v37 pbf_generalErrorWithCode:1 userInfo:v38];
        completionCopy[2](completionCopy, 0, 0, 0, v39);
      }
    }
  }
}

- (BOOL)_stateLock_persistGalleryConfiguration:(id)configuration lastUpdateDate:(id *)date sessionId:(id)id error:(id *)error
{
  v43[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  idCopy = id;
  PBFDebug_os_unfair_lock_assert_owner();
  galleryCacheURL = [(PBFGalleryController *)self galleryCacheURL];
  v13 = galleryCacheURL;
  if (!galleryCacheURL)
  {
    if (error)
    {
      v26 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA470];
      v43[0] = @"Gallery cache URL is invalid.  Bailing.";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      *error = [v26 pbf_dataStoreErrorWithCode:-2214 userInfo:v27];
    }

    v17 = PBFLogGallery(galleryCacheURL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(PBFGalleryController *)idCopy _stateLock_persistGalleryConfiguration:v17 lastUpdateDate:v28 sessionId:v29 error:v30, v31, v32, v33];
    }

    goto LABEL_19;
  }

  fileManager = self->_fileManager;
  v15 = PFFileProtectionNoneAttributes();
  v39 = 0;
  v16 = [(NSFileManager *)fileManager createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:v15 error:&v39];
  v17 = v39;

  if (!v16)
  {
    v34 = PBFLogGallery(v18);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [PBFGalleryController _stateLock_persistGalleryConfiguration:lastUpdateDate:sessionId:error:];
    }

    if (error)
    {
      v35 = v17;
      LOBYTE(v20) = 0;
      *error = v17;
      goto LABEL_23;
    }

LABEL_19:
    LOBYTE(v20) = 0;
    goto LABEL_23;
  }

  v19 = [[PBFPosterGalleryLayoutPersistence alloc] initWithURL:v13];
  v37 = 0;
  v38 = 0;
  v20 = [(PBFPosterGalleryLayoutPersistence *)v19 saveGalleryLayout:configurationCopy returningPersistenceDate:&v38 error:&v37];
  v21 = v38;
  v22 = v37;
  v23 = v22;
  if (date && v20)
  {
    v22 = v21;
    *date = v21;
  }

  if (error)
  {
    v22 = v23;
    *error = v23;
  }

  v24 = PBFLogGallery(v22);
  v25 = v24;
  if (v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [PBFGalleryController _stateLock_persistGalleryConfiguration:lastUpdateDate:sessionId:error:];
    }
  }

  else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v41 = idCopy;
    _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_persistGalleryConfiguration: successfully persisted gallery", buf, 0xCu);
  }

LABEL_23:
  return v20;
}

- (void)_stateLock_loadPersistedGalleryConfigurationWithLastUpdateDate:(id *)date error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  PBFDebug_os_unfair_lock_assert_owner();
  galleryCacheURL = [(PBFGalleryController *)self galleryCacheURL];
  if (galleryCacheURL)
  {
    v7 = [[PBFPosterGalleryLayoutPersistence alloc] initWithURL:galleryCacheURL];
    v37 = 0;
    v38 = 0;
    v36 = 0;
    v8 = [(PBFPosterGalleryLayoutPersistence *)v7 loadNewestUsableGalleryLayoutReturningPersistenceDate:&v38 purgeableGalleryLayoutURLs:&v37 error:&v36];
    v9 = v38;
    v10 = v37;
    v11 = v36;
    v28 = v8;
    objc_storeStrong(&self->_stateLock_lastUsefulGalleryConfiguration, v8);
    v12 = [(PBFGalleryControllerState *)self->_state setLastUsefulGalleryConfigurationPersistDate:v9];
    v30 = v7;
    v31 = galleryCacheURL;
    v29 = v9;
    if (v11)
    {
      if (error)
      {
        v12 = v11;
        *error = v11;
      }

      v13 = PBFLogGallery(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(PBFGalleryController *)v11 _stateLock_loadPersistedGalleryConfigurationWithLastUpdateDate:v13 error:v14, v15, v16, v17, v18, v19];
      }
    }

    else
    {
      v13 = PBFLogGallery(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "_stateLock_loadPersistedGalleryConfigurationWithLastUpdateDate successfully loaded gallery!", buf, 2u);
      }
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = v10;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
      do
      {
        v24 = 0;
        do
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v32 + 1) + 8 * v24);
          v26 = PBFLogReaper(v21);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v40 = v25;
            _os_log_impl(&dword_21B526000, v26, OS_LOG_TYPE_DEFAULT, "Cleaning up old gallery configurations: %{public}@", buf, 0xCu);
          }

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          [defaultManager removeItemAtURL:v25 error:error];

          ++v24;
        }

        while (v22 != v24);
        v21 = [v20 countByEnumeratingWithState:&v32 objects:v41 count:16];
        v22 = v21;
      }

      while (v21);
    }

    galleryCacheURL = v31;
  }
}

- (void)_stateLock_notifyGalleryControllerWillUpdateGalleryConfiguration
{
  v14 = *MEMORY[0x277D85DE8];
  PBFDebug_os_unfair_lock_assert_owner();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_stateLock_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 galleryControllerWillUpdateGalleryConfiguration:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_stateLock_notifyGalleryControllerDidUpdateCurrentGalleryConfiguration:(id)configuration
{
  v16 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  PBFDebug_os_unfair_lock_assert_owner();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_stateLock_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 galleryController:self didUpdateCurrentGalleryConfiguration:{configurationCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)determineRefreshStateWithContext:(id)context
{
  contextCopy = context;
  component = [contextCopy component];
  if ([component isEqual:@"PBFDataComponentGallery"])
  {
    lastUsefulGalleryConfigurationPersistDate = [(PBFGalleryControllerState *)self->_state lastUsefulGalleryConfigurationPersistDate];
    v7 = lastUsefulGalleryConfigurationPersistDate;
    if (lastUsefulGalleryConfigurationPersistDate)
    {
      distantPast = lastUsefulGalleryConfigurationPersistDate;
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v10 = distantPast;

    stateLock_lastUsefulGalleryConfiguration = self->_stateLock_lastUsefulGalleryConfiguration;
    if (stateLock_lastUsefulGalleryConfiguration)
    {
      null = stateLock_lastUsefulGalleryConfiguration;
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v13 = null;
    v14 = [PBFDataComponentObjectEntity alloc];
    v15 = [PBFDataRefreshContext alloc];
    v16 = [contextCopy now];
    v17 = [(PBFDataRefreshContext *)v15 initWithComponent:@"PBFDataComponentGallery" now:v16 lastRefreshDate:v10 userInfo:0];
    v18 = [(PBFDataComponentObjectEntity *)v14 initWithComponent:@"PBFDataComponentGallery" object:v13 context:v17];

    determineRefreshState = [(PBFDataComponentObjectEntity *)v18 determineRefreshState];
  }

  else
  {
    determineRefreshState = [[PBFDataRefreshState alloc] initWithNeedsRefresh:1 reason:@"Unable to ascertain status; just reload anyway..."];
  }

  return determineRefreshState;
}

- (PBFRuntimeAssertionProviding)runtimeAssertionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_runtimeAssertionProvider);

  return WeakRetained;
}

- (void)initWithGalleryCacheURL:(char *)a1 galleryLayoutProvider:runtimeAssertionProvider:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object conformsToProtocol:@protocol(PBFRuntimeAssertionProviding)]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithGalleryCacheURL:(char *)a1 galleryLayoutProvider:runtimeAssertionProvider:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object conformsToProtocol:@protocol(PBFPosterGalleryLayoutProviding)]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithGalleryCacheURL:(char *)a1 galleryLayoutProvider:runtimeAssertionProvider:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[URL checkResourceIsReachableAndReturnError:((void*)0)]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithGalleryCacheURL:(char *)a1 galleryLayoutProvider:runtimeAssertionProvider:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithGalleryCacheURL:(char *)a1 galleryLayoutProvider:runtimeAssertionProvider:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateGallery:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addObserver:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_178_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_21B526000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] _stateLock_executeEnqueuedPushToProactive:'%{public}@' -- Failed; proactive timed out.  Please file a radar.", v2, 0x16u);
}

- (void)_pushFaceGalleryConfigurationUpdate:(uint64_t)a3 options:(uint64_t)a4 fetchError:(uint64_t)a5 sessionId:(uint64_t)a6 completion:(uint64_t)a7 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2(&dword_21B526000, a2, a3, "[%{public}@] _pushFaceGalleryConfigurationUpdate: no gallery received? Erroring out...", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_stateLock_persistGalleryConfiguration:(uint64_t)a3 lastUpdateDate:(uint64_t)a4 sessionId:(uint64_t)a5 error:(uint64_t)a6 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2(&dword_21B526000, a2, a3, "[%{public}@] _stateLock_persistGalleryConfiguration: gallery cache url is unavailable.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_stateLock_loadPersistedGalleryConfigurationWithLastUpdateDate:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2(&dword_21B526000, a2, a3, "_stateLock_loadPersistedGalleryConfigurationWithLastUpdateDate failed to load gallery: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end