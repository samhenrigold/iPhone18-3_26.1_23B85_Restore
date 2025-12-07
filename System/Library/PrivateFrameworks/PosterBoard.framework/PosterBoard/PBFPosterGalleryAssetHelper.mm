@interface PBFPosterGalleryAssetHelper
- (BOOL)_kickoffPreviewGeneratorForPosterPreview:(id)preview context:(id)context;
- (BOOL)_setupHeroShotsForPosterPreview:(id)preview context:(id)context;
- (BOOL)_setupLiveDisplayStyleForPreview:(id)preview;
- (BOOL)_sizeContainerView:(id)view forPreview:(id)preview displayContext:(id)context;
- (BOOL)_updateHydrationStateIfNeeded;
- (BOOL)_updateHydrationStateTo:(int64_t)to reason:(id)reason;
- (BOOL)updatePosterPreview:(id)preview isVisible:(BOOL)visible;
- (CGSize)_contentSizeForPreview:(id)preview;
- (NSSet)knownDisplayContexts;
- (PBFExtensionProviding)extensionProvider;
- (PBFPosterGalleryAssetHelper)initWithPreviewGenerator:(id)generator extensionProvider:(id)provider;
- (PBFPosterGalleryAssetHelperDelegate)delegate;
- (PBFPosterPreviewGenerator)previewGenerator;
- (id)_dequeueViewOfClass:(Class)class;
- (id)_newImageViewWithImage:(id)image posterPreview:(id)preview;
- (id)assetsForPosterPreview:(id)preview;
- (id)knownDisplayContextWithoutActiveDisplayContext;
- (id)sizedDebugViewForPosterPreview:(id)preview reason:(id)reason;
- (void)_invalidateAllHistogramCache;
- (void)_noteInteractionAssertionsWereUpdated;
- (void)_receiveUpdatedAssetForPosterPreview:(id)preview snapshotContext:(id)context snapshotBundle:(id)bundle fetchError:(id)error;
- (void)_recycleView:(id)view;
- (void)_resetHydrationState;
- (void)_sizeAssetsForActiveDisplayContext;
- (void)_stateWasUpdated:(BOOL)updated;
- (void)_stateWasUpdatedForPosterPreviews:(id)previews;
- (void)_teardownLiveViewControllerForState:(id)state invalidate:(BOOL)invalidate;
- (void)_teardownState:(id)state;
- (void)_teardownStateForPosterPreviews:(id)previews;
- (void)_updateActivePosters;
- (void)_updateActivePostersAfterFinishingExecuting:(id)executing successfully:(BOOL)successfully;
- (void)_updateHistogramCacheIfNeeded;
- (void)_updateHydrationStateIfNeeded;
- (void)cancel;
- (void)cancelPrefetchForPosterPreviews:(id)previews;
- (void)dealloc;
- (void)invalidate;
- (void)prefetchPosterPreviews:(id)previews;
- (void)resetKnownDisplayContexts;
- (void)setActiveDisplayContext:(id)context;
- (void)setKnownDisplayContexts:(id)contexts;
- (void)setPosterPreviews:(id)previews;
- (void)setSuspended:(BOOL)suspended;
@end

@implementation PBFPosterGalleryAssetHelper

- (PBFPosterGalleryAssetHelper)initWithPreviewGenerator:(id)generator extensionProvider:(id)provider
{
  generatorCopy = generator;
  providerCopy = provider;
  if (!generatorCopy)
  {
    [PBFPosterGalleryAssetHelper initWithPreviewGenerator:a2 extensionProvider:?];
  }

  v9 = providerCopy;
  if (!providerCopy)
  {
    [PBFPosterGalleryAssetHelper initWithPreviewGenerator:a2 extensionProvider:?];
  }

  v35.receiver = self;
  v35.super_class = PBFPosterGalleryAssetHelper;
  v10 = [(PBFPosterGalleryAssetHelper *)&v35 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_previewGenerator, generatorCopy);
    objc_storeWeak(&v11->_extensionProvider, v9);
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    visibleStatesWithLivePreviewEnabled = v11->_visibleStatesWithLivePreviewEnabled;
    v11->_visibleStatesWithLivePreviewEnabled = strongToStrongObjectsMapTable;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    alreadyPlayedLivePosters = v11->_alreadyPlayedLivePosters;
    v11->_alreadyPlayedLivePosters = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    successfullyPlayedLivePosters = v11->_successfullyPlayedLivePosters;
    v11->_successfullyPlayedLivePosters = weakObjectsHashTable2;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    previewToState = v11->_previewToState;
    v11->_previewToState = strongToStrongObjectsMapTable2;

    v20 = [MEMORY[0x277CBEB98] set];
    knownDisplayContexts = v11->_knownDisplayContexts;
    v11->_knownDisplayContexts = v20;

    v22 = objc_opt_new();
    executingLivePosterStates = v11->_executingLivePosterStates;
    v11->_executingLivePosterStates = v22;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    displayContextHistogramCache = v11->_displayContextHistogramCache;
    v11->_displayContextHistogramCache = dictionary;

    v26 = [MEMORY[0x277CBEB58] set];
    previewsRequiringHistogramCacheInvalidation = v11->_previewsRequiringHistogramCacheInvalidation;
    v11->_previewsRequiringHistogramCacheInvalidation = v26;

    objc_initWeak(&location, v11);
    v28 = MEMORY[0x277CF0BD0];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __74__PBFPosterGalleryAssetHelper_initWithPreviewGenerator_extensionProvider___block_invoke;
    v32[3] = &unk_2782C70E8;
    objc_copyWeak(&v33, &location);
    v29 = [v28 assertionWithIdentifier:@"galleryInteractionCompoundAssertion" stateDidChangeHandler:v32];
    galleryInteractionAssertion = v11->_galleryInteractionAssertion;
    v11->_galleryInteractionAssertion = v29;

    v11->_isSuspended = 1;
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __74__PBFPosterGalleryAssetHelper_initWithPreviewGenerator_extensionProvider___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__PBFPosterGalleryAssetHelper_initWithPreviewGenerator_extensionProvider___block_invoke_2;
  block[3] = &unk_2782C6D48;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __74__PBFPosterGalleryAssetHelper_initWithPreviewGenerator_extensionProvider___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _noteInteractionAssertionsWereUpdated];
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_galleryInteractionAssertion invalidate];
  galleryInteractionAssertion = self->_galleryInteractionAssertion;
  self->_galleryInteractionAssertion = 0;

  v4.receiver = self;
  v4.super_class = PBFPosterGalleryAssetHelper;
  [(PBFPosterGalleryAssetHelper *)&v4 dealloc];
}

- (void)setPosterPreviews:(id)previews
{
  v19 = *MEMORY[0x277D85DE8];
  previewsCopy = previews;
  v5 = BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v6 = PBFLogAssetHelper(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      selfCopy4 = self;
      v7 = "(%p) bail setPosterPreviews; invalidated";
LABEL_7:
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, v7, &v15, 0xCu);
    }
  }

  else
  {
    v8 = BSEqualSets();
    if (v8)
    {
      v6 = PBFLogAssetHelper(v8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        selfCopy4 = self;
        v7 = "(%p) bail setPosterPreviews; same poster previews, no need to do anything";
        goto LABEL_7;
      }
    }

    else
    {
      [(PBFPosterGalleryAssetHelper *)self _resetHydrationState];
      v6 = [previewsCopy mutableCopy];
      [v6 minusSet:self->_posterPreviews];
      v9 = [(NSSet *)self->_posterPreviews mutableCopy];
      v10 = PBFLogAssetHelper([v9 minusSet:previewsCopy]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v15 = 134218242;
        selfCopy4 = self;
        v17 = 2114;
        v18 = v6;
        _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_INFO, "(%p) added poster previews: %{public}@", &v15, 0x16u);
      }

      v12 = PBFLogAssetHelper(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = 134218242;
        selfCopy4 = self;
        v17 = 2114;
        v18 = v9;
        _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_INFO, "(%p) added poster removed: %{public}@", &v15, 0x16u);
      }

      [(PBFPosterGalleryAssetHelper *)self _invalidateAllHistogramCache];
      v13 = [previewsCopy copy];
      posterPreviews = self->_posterPreviews;
      self->_posterPreviews = v13;

      [(PBFPosterGalleryAssetHelper *)self _teardownStateForPosterPreviews:v9];
      [(PBFPosterGalleryAssetHelper *)self _stateWasUpdatedForPosterPreviews:v6];
    }
  }
}

- (void)setActiveDisplayContext:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v7 = PBFLogAssetHelper(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134217984;
      selfCopy5 = self;
      v8 = "(%p) bail setActiveDisplayContext; invalidated";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
      _os_log_impl(&dword_21B526000, v9, v10, v8, &v23, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v11 = BSEqualObjects();
  v12 = v11;
  v13 = PBFLogAssetHelper(v11);
  v7 = v13;
  if (!v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218242;
      selfCopy5 = self;
      v25 = 2114;
      v26 = contextCopy;
      _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "(%p) updating active display context: %{public}@", &v23, 0x16u);
    }

    objc_storeStrong(&self->_activeDisplayContext, context);
    if (self->_activeDisplayContext)
    {
      v14 = [PBFPosterGalleryViewSpec specForDisplayContext:?];
      activeDisplayContextSpec = self->_activeDisplayContextSpec;
      self->_activeDisplayContextSpec = v14;

      v17 = PBFLogAssetHelper(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        activeDisplayContext = self->_activeDisplayContext;
        v23 = 134218242;
        selfCopy5 = self;
        v25 = 2114;
        v26 = activeDisplayContext;
        v19 = "(%p) updating spec for active display context: %{public}@";
LABEL_16:
        _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, v19, &v23, 0x16u);
      }
    }

    else
    {
      v20 = self->_activeDisplayContextSpec;
      self->_activeDisplayContextSpec = 0;

      v17 = PBFLogAssetHelper(v21);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_activeDisplayContext;
        v23 = 134218242;
        selfCopy5 = self;
        v25 = 2114;
        v26 = v22;
        v19 = "(%p) clearing spec for active display context: %{public}@";
        goto LABEL_16;
      }
    }

    [(PBFPosterGalleryAssetHelper *)self _resetHydrationState];
    [(PBFPosterGalleryAssetHelper *)self _invalidateAllHistogramCache];
    [(PBFPosterGalleryAssetHelper *)self _stateWasUpdated:1];
    goto LABEL_18;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v23 = 134217984;
    selfCopy5 = self;
    v8 = "(%p) abort updating active display context; same as existing context";
    v9 = v7;
    v10 = OS_LOG_TYPE_INFO;
    goto LABEL_7;
  }

LABEL_8:

LABEL_18:
}

- (void)setKnownDisplayContexts:(id)contexts
{
  v16 = *MEMORY[0x277D85DE8];
  contextsCopy = contexts;
  v5 = contextsCopy;
  if (self->_isInvalidated)
  {
    v6 = PBFLogAssetHelper(contextsCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "(%p) bail setKnownDisplayContexts; invalidated", &v12, 0xCu);
    }
  }

  else if (![(NSSet *)self->_knownDisplayContexts isEqualToSet:contextsCopy])
  {
    v7 = [v5 copy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x277CBEB98] set];
    }

    knownDisplayContexts = self->_knownDisplayContexts;
    self->_knownDisplayContexts = v9;

    v11 = PBFLogAssetHelper([(PBFPosterGalleryAssetHelper *)self _invalidateAllHistogramCache]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      selfCopy2 = self;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_21B526000, v11, OS_LOG_TYPE_DEFAULT, "(%p) updated known display context: %{public}@", &v12, 0x16u);
    }

    [(PBFPosterGalleryAssetHelper *)self _stateWasUpdated:1];
  }
}

- (void)resetKnownDisplayContexts
{
  v16 = *MEMORY[0x277D85DE8];
  isInvalidated = self->_isInvalidated;
  v4 = PBFLogAssetHelper(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isInvalidated)
  {
    if (v5)
    {
      v14 = 134217984;
      selfCopy4 = self;
      v6 = "(%p) bail resetKnownDisplayContexts; invalidated";
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
      _os_log_impl(&dword_21B526000, v7, v8, v6, &v14, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v5)
  {
    v14 = 134217984;
    selfCopy4 = self;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(%p) resetting known display context", &v14, 0xCu);
  }

  v9 = [MEMORY[0x277CBEB98] set];
  knownDisplayContexts = self->_knownDisplayContexts;
  self->_knownDisplayContexts = v9;

  _invalidateAllHistogramCache = [(PBFPosterGalleryAssetHelper *)self _invalidateAllHistogramCache];
  assetHydrationState = self->_assetHydrationState;
  v13 = PBFLogAssetHelper(_invalidateAllHistogramCache);
  v4 = v13;
  if (assetHydrationState < 3)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 134217984;
      selfCopy4 = self;
      v6 = "(%p) bail reset hydration state after resetKnownDisplayContexts";
      v7 = v4;
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    selfCopy4 = self;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(%p) known display context was reset during asset hydration state of alternate display context - resetting hydration state", &v14, 0xCu);
  }

  [(PBFPosterGalleryAssetHelper *)self _resetHydrationState];
  [(PBFPosterGalleryAssetHelper *)self _stateWasUpdated:1];
}

- (NSSet)knownDisplayContexts
{
  activeDisplayContext = self->_activeDisplayContext;
  knownDisplayContexts = self->_knownDisplayContexts;
  if (activeDisplayContext)
  {
    v4 = [(NSSet *)knownDisplayContexts setByAddingObject:?];
  }

  else
  {
    v4 = [(NSSet *)knownDisplayContexts copy];
  }

  return v4;
}

- (id)knownDisplayContextWithoutActiveDisplayContext
{
  v3 = [(NSSet *)self->_knownDisplayContexts mutableCopy];
  [v3 removeObject:self->_activeDisplayContext];

  return v3;
}

- (void)setSuspended:(BOOL)suspended
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_isInvalidated)
  {
    v4 = PBFLogAssetHelper(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      selfCopy3 = self;
      v5 = "(%p) bail setSuspended; invalidated";
      v6 = v4;
      v7 = 12;
LABEL_7:
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, v5, &v11, v7);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  suspendedCopy = suspended;
  isSuspended = self->_isSuspended;
  v4 = PBFLogAssetHelper(self);
  v10 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isSuspended == suspendedCopy)
  {
    if (v10)
    {
      v11 = 134218240;
      selfCopy3 = self;
      v13 = 1024;
      v14 = suspendedCopy;
      v5 = "(%p) bail update suspended; isSuspended is already %{BOOL}u";
      v6 = v4;
      v7 = 18;
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  if (v10)
  {
    v11 = 134218240;
    selfCopy3 = self;
    v13 = 1024;
    v14 = suspendedCopy;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(%p) update suspended: %{BOOL}u", &v11, 0x12u);
  }

  self->_isSuspended = suspendedCopy;
  [(PBFPosterGalleryAssetHelper *)self _stateWasUpdated:1];
}

- (BOOL)updatePosterPreview:(id)preview isVisible:(BOOL)visible
{
  visibleCopy = visible;
  v23 = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  v7 = BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v8 = PBFLogAssetHelper(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_DEFAULT, "(%p) bail updatePosterPreview; invalidated", &v17, 0xCu);
    }

LABEL_13:
    v15 = 0;
    goto LABEL_16;
  }

  v8 = [(NSMapTable *)self->_previewToState objectForKey:previewCopy];
  isVisible = [v8 isVisible];
  if (isVisible == visibleCopy)
  {
    v14 = PBFLogAssetHelper(isVisible);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PBFPosterGalleryAssetHelper updatePosterPreview:isVisible:];
    }

    goto LABEL_13;
  }

  v10 = PBFLogAssetHelper([(PBFPosterGalleryAssetHelper *)self _invalidateHistogramCacheForPosterPreview:previewCopy]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v17 = 134218498;
    selfCopy2 = self;
    v19 = 2114;
    v20 = previewCopy;
    v21 = 1024;
    v22 = visibleCopy;
    _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_INFO, "(%p) updatePosterPreview for posterPreview %{public}@; marking visible as %{BOOL}u", &v17, 0x1Cu);
  }

  [v8 setVisible:visibleCopy];
  v11 = [MEMORY[0x277CBEB98] setWithObject:previewCopy];
  [(PBFPosterGalleryAssetHelper *)self _stateWasUpdatedForPosterPreviews:v11];

  if ([v8 willUseLivePreview])
  {
    visibleStatesWithLivePreviewEnabled = self->_visibleStatesWithLivePreviewEnabled;
    preview = [v8 preview];
    if (visibleCopy)
    {
      [(NSMapTable *)visibleStatesWithLivePreviewEnabled setObject:v8 forKey:preview];
    }

    else
    {
      [(NSMapTable *)visibleStatesWithLivePreviewEnabled removeObjectForKey:preview];

      [(NSHashTable *)self->_alreadyPlayedLivePosters removeObject:v8];
      [(NSHashTable *)self->_successfullyPlayedLivePosters removeObject:v8];
    }
  }

  [(PBFPosterGalleryAssetHelper *)self _updateActivePosters];
  v15 = 1;
LABEL_16:

  return v15;
}

- (void)prefetchPosterPreviews:(id)previews
{
  v19 = *MEMORY[0x277D85DE8];
  previewsCopy = previews;
  v5 = BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v6 = PBFLogAssetHelper(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "(%p) bail prefetchPosterPreviews; invalidated", buf, 0xCu);
    }
  }

  else
  {
    v7 = [previewsCopy mutableCopy];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __54__PBFPosterGalleryAssetHelper_prefetchPosterPreviews___block_invoke;
    v12 = &unk_2782C7760;
    selfCopy2 = self;
    v6 = v7;
    v14 = v6;
    v8 = PBFLogAssetHelper([previewsCopy enumerateObjectsUsingBlock:&v9]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      selfCopy3 = self;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_INFO, "(%p) prefetchPosterPreviews: %{public}@", buf, 0x16u);
    }

    [(PBFPosterGalleryAssetHelper *)self _stateWasUpdatedForPosterPreviews:v6, v9, v10, v11, v12, selfCopy2];
  }
}

void __54__PBFPosterGalleryAssetHelper_prefetchPosterPreviews___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 8) objectForKey:?];
  if ([v3 shouldPrefetch])
  {
    [*(a1 + 40) removeObject:v4];
  }

  else
  {
    [v3 setShouldPrefetch:1];
    [*(a1 + 32) _invalidateHistogramCacheForPosterPreview:v4];
  }
}

- (void)cancelPrefetchForPosterPreviews:(id)previews
{
  v19 = *MEMORY[0x277D85DE8];
  previewsCopy = previews;
  v5 = BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v6 = PBFLogAssetHelper(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "(%p) bail cancelPrefetchForPosterPreviews; invalidated", buf, 0xCu);
    }
  }

  else
  {
    v7 = [previewsCopy mutableCopy];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __63__PBFPosterGalleryAssetHelper_cancelPrefetchForPosterPreviews___block_invoke;
    v12 = &unk_2782C7760;
    selfCopy2 = self;
    v6 = v7;
    v14 = v6;
    v8 = PBFLogAssetHelper([previewsCopy enumerateObjectsUsingBlock:&v9]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy3 = self;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_DEFAULT, "(%p) cancelPrefetchForPosterPreviews: %{public}@", buf, 0x16u);
    }

    [(PBFPosterGalleryAssetHelper *)self _stateWasUpdatedForPosterPreviews:v6, v9, v10, v11, v12, selfCopy2];
  }
}

void __63__PBFPosterGalleryAssetHelper_cancelPrefetchForPosterPreviews___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 8) objectForKey:?];
  if ([v3 shouldPrefetch])
  {
    [v3 setShouldPrefetch:0];
    [*(a1 + 32) _invalidateHistogramCacheForPosterPreview:v4];
  }

  else
  {
    [*(a1 + 40) removeObject:v4];
  }
}

- (id)assetsForPosterPreview:(id)preview
{
  v33 = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  v5 = BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v6 = PBFLogAssetHelper(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "(%p) bail assetsForPosterPreview; invalidated", &v29, 0xCu);
    }

LABEL_17:
    asset = 0;
    goto LABEL_34;
  }

  v7 = [(NSMapTable *)self->_previewToState objectForKey:previewCopy];
  v6 = v7;
  if (!v7)
  {
    v23 = PBFLogAssetHelper(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 134218242;
      selfCopy2 = self;
      v31 = 2114;
      v32 = previewCopy;
      _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_DEFAULT, "(%p) assetsForPosterPreview: %{public}@ -- no state found; not tracking poster preview?", &v29, 0x16u);
    }

    goto LABEL_17;
  }

  asset = [v7 asset];
  type = [previewCopy type];
  v10 = PBFPreviewTypeHero;

  if (type == v10)
  {
    heroMicaPackageView = [v6 heroMicaPackageView];
    heroImageView = [v6 heroImageView];
    assetViewController3 = heroImageView;
    if (heroMicaPackageView && (v25 = heroMicaPackageView, heroImageView) || (([(PBFPosterGalleryAssetHelper *)self _setupHeroShotsForPosterPreview:previewCopy context:self->_activeDisplayContext], heroMicaPackageView) ? (v25 = heroMicaPackageView) : (v25 = assetViewController3), heroMicaPackageView | assetViewController3))
    {
      [asset setHeroView:v25];
    }

    goto LABEL_33;
  }

  heroMicaPackageView = [v6 snapshotBundleLayoutView];
  if ([v6 willUseLivePreview])
  {
    assetViewController = [asset assetViewController];

    if (!assetViewController)
    {
      [(PBFPosterGalleryAssetHelper *)self _setupLiveDisplayStyleForPreview:previewCopy];
    }

    assetViewController2 = [asset assetViewController];
    viewIfLoaded = [assetViewController2 viewIfLoaded];
    [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:viewIfLoaded forPreview:previewCopy displayContext:self->_activeDisplayContext];
  }

  assetViewController3 = [asset assetViewController];
  activeDisplayContext = self->_activeDisplayContext;
  v17 = [PBFPosterSnapshotDefinition defaultPreviewDefinitionForPreview:previewCopy];
  v18 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:activeDisplayContext definition:v17];

  snapshotCollection = [v6 snapshotCollection];
  v20 = [snapshotCollection receivedSnapshotBundleForContext:v18];

  if (v20)
  {
    if (heroMicaPackageView)
    {
      goto LABEL_12;
    }

    if (([v6 willUseLivePreview]& 1) != 0)
    {
      heroMicaPackageView = 0;
    }

    else
    {
      v26 = objc_opt_self();
      heroMicaPackageView = [(PBFPosterGalleryAssetHelper *)self _dequeueViewOfClass:v26];

      [v6 setSnapshotBundleLayoutView:heroMicaPackageView];
      if (heroMicaPackageView)
      {
LABEL_12:
        snapshotBundle = [heroMicaPackageView snapshotBundle];
        v22 = [v20 isEqual:snapshotBundle];

        if ((v22 & 1) == 0)
        {
          [heroMicaPackageView setSnapshotBundle:v20];
          [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:heroMicaPackageView forPreview:previewCopy displayContext:self->_activeDisplayContext];
        }
      }
    }
  }

  snapshotBundleLayoutView = [asset snapshotBundleLayoutView];

  if (snapshotBundleLayoutView != heroMicaPackageView)
  {
    [asset setSnapshotBundleLayoutView:heroMicaPackageView];
  }

  if (assetViewController3)
  {
    [assetViewController3 setSnapshotBundle:v20 forDisplayContext:self->_activeDisplayContext];
  }

LABEL_33:
LABEL_34:

  return asset;
}

- (id)sizedDebugViewForPosterPreview:(id)preview reason:(id)reason
{
  reasonCopy = reason;
  previewCopy = preview;
  BSDispatchQueueAssertMain();
  posterDescriptorLookupInfo = [previewCopy posterDescriptorLookupInfo];
  posterDescriptorPath = [posterDescriptorLookupInfo posterDescriptorPath];
  identityPathComponent = [posterDescriptorPath identityPathComponent];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ for descriptor instance: %@", reasonCopy, identityPathComponent];

  v12 = objc_opt_new();
  [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:v12 forPreview:previewCopy displayContext:self->_activeDisplayContext];
  v13 = MEMORY[0x277D3EF48];
  [v12 frame];
  v14 = [v13 uiViewWithMessage:v11 level:16 frame:0 location:?];
  [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:v14 forPreview:previewCopy displayContext:self->_activeDisplayContext];

  return v14;
}

- (void)_noteInteractionAssertionsWereUpdated
{
  if (([(BSCompoundAssertion *)self->_galleryInteractionAssertion isActive]& 1) == 0)
  {

    [(PBFPosterGalleryAssetHelper *)self _stateWasUpdated:1];
  }
}

- (void)_invalidateAllHistogramCache
{
  [(NSMutableDictionary *)self->_displayContextHistogramCache removeAllObjects];
  previewsRequiringHistogramCacheInvalidation = self->_previewsRequiringHistogramCacheInvalidation;

  [(NSMutableSet *)previewsRequiringHistogramCacheInvalidation removeAllObjects];
}

- (void)_updateHistogramCacheIfNeeded
{
  if ([(NSMutableSet *)self->_previewsRequiringHistogramCacheInvalidation count])
  {
    previewsRequiringHistogramCacheInvalidation = self->_previewsRequiringHistogramCacheInvalidation;

    [(NSMutableSet *)previewsRequiringHistogramCacheInvalidation removeAllObjects];
  }
}

- (void)_stateWasUpdated:(BOOL)updated
{
  updatedCopy = updated;
  v19 = *MEMORY[0x277D85DE8];
  v5 = BSDispatchQueueAssertMain();
  isInvalidated = self->_isInvalidated;
  posterPreviews = PBFLogAssetHelper(v5);
  v8 = os_log_type_enabled(posterPreviews, OS_LOG_TYPE_DEBUG);
  if (isInvalidated)
  {
    if (v8)
    {
      [PBFPosterGalleryAssetHelper _stateWasUpdated:];
    }
  }

  else
  {
    if (v8)
    {
      [PBFPosterGalleryAssetHelper _stateWasUpdated:];
    }

    posterPreviews = [(PBFPosterGalleryAssetHelper *)self posterPreviews];
    _updateHydrationStateIfNeeded = [(PBFPosterGalleryAssetHelper *)self _updateHydrationStateIfNeeded];
    v10 = _updateHydrationStateIfNeeded;
    v11 = PBFLogAssetHelper(_updateHydrationStateIfNeeded);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if ((v10 & 1) != 0 || updatedCopy)
    {
      if (v12)
      {
        v13 = 134218498;
        selfCopy = self;
        v15 = 1024;
        v16 = updatedCopy;
        v17 = 2114;
        v18 = posterPreviews;
        _os_log_debug_impl(&dword_21B526000, v11, OS_LOG_TYPE_DEBUG, "(%p) _stateWasUpdated:%{BOOL}u; update hydration state was needed for poster previews: %{public}@", &v13, 0x1Cu);
      }

      [(PBFPosterGalleryAssetHelper *)self _stateWasUpdatedForPosterPreviews:posterPreviews];
    }

    else
    {
      if (v12)
      {
        [PBFPosterGalleryAssetHelper _stateWasUpdated:];
      }
    }

    [(PBFPosterGalleryAssetHelper *)self _sizeAssetsForActiveDisplayContext];
    [(PBFPosterGalleryAssetHelper *)self _updateActivePosters];
  }
}

- (BOOL)_updateHydrationStateIfNeeded
{
  v80 = *MEMORY[0x277D85DE8];
  if (self->_isInvalidated)
  {
    v3 = PBFLogAssetHelper(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PBFPosterGalleryAssetHelper _updateHydrationStateIfNeeded];
    }

    return 0;
  }

  _updateHistogramCacheIfNeeded = [(PBFPosterGalleryAssetHelper *)self _updateHistogramCacheIfNeeded];
  p_assetHydrationState = &self->_assetHydrationState;
  if (self->_assetHydrationState)
  {
    posterPreviews = [(PBFPosterGalleryAssetHelper *)self posterPreviews];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__PBFPosterGalleryAssetHelper__updateHydrationStateIfNeeded__block_invoke;
    aBlock[3] = &unk_2782C7788;
    aBlock[4] = self;
    v8 = posterPreviews;
    v73 = v8;
    v9 = _Block_copy(aBlock);
    v10 = self->_assetHydrationState - 1;
    if (v10 > 3)
    {
      v11 = @"PBFPosterGalleryAssetHydrationStateDefault";
    }

    else
    {
      v11 = off_2782C7840[v10];
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) ", v11];
    if (!-[NSMapTable count](self->_previewToState, "count") && ![v8 count])
    {
      goto LABEL_25;
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v14 = v9[2](&v66, v9, self->_activeDisplayContext);
    if (v67 != 0)
    {
      v15 = *p_assetHydrationState;
      v16 = PBFLogAssetHelper(v14);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

      if (v15 == 1)
      {
        if (v17)
        {
          v19 = PBFLogAssetHelper(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [PBFPosterGalleryAssetHelper _updateHydrationStateIfNeeded];
          }

LABEL_24:
          v4 = 0;
LABEL_77:

          goto LABEL_78;
        }

        goto LABEL_25;
      }

      if (v17)
      {
        v24 = PBFLogAssetHelper(v18);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [PBFPosterGalleryAssetHelper _updateHydrationStateIfNeeded];
        }
      }

      v19 = [v13 stringByAppendingString:@"outstanding active display context foreground hydration transitioning back to initial hydration state to finish those up"];;
      selfCopy4 = self;
      v26 = 1;
      goto LABEL_76;
    }

    if (v69 != 0)
    {
      v20 = *p_assetHydrationState;
      v21 = PBFLogAssetHelper(v14);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);

      if (v20 == 2)
      {
        if (v22)
        {
          v19 = PBFLogAssetHelper(v23);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [PBFPosterGalleryAssetHelper _updateHydrationStateIfNeeded];
          }

          goto LABEL_24;
        }

LABEL_25:
        v4 = 0;
LABEL_78:

        return v4;
      }

      if (v22)
      {
        v48 = PBFLogAssetHelper(v23);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          [PBFPosterGalleryAssetHelper _updateHydrationStateIfNeeded];
        }
      }

      v19 = [v13 stringByAppendingString:@"outstanding active display context BACKGROUND hydration transitioning back to initial hydration state to finish those up"];;
      selfCopy4 = self;
      v26 = 2;
LABEL_76:
      v4 = [(PBFPosterGalleryAssetHelper *)selfCopy4 _updateHydrationStateTo:v26 reason:v19];
      goto LABEL_77;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    knownDisplayContexts = [(PBFPosterGalleryAssetHelper *)self knownDisplayContexts];
    v28 = [knownDisplayContexts countByEnumeratingWithState:&v62 objects:v79 count:16];
    if (v28)
    {
      v29 = v28;
      v61 = v13;
      v30 = 0;
      v31 = *v63;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v63 != v31)
          {
            objc_enumerationMutation(knownDisplayContexts);
          }

          if (*(*(&v62 + 1) + 8 * i) != self->_activeDisplayContext)
          {
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            memset(buf, 0, sizeof(buf));
            (v9[2])(buf, v9);
            v30 += *(&v78 + 1);
          }
        }

        v29 = [knownDisplayContexts countByEnumeratingWithState:&v62 objects:v79 count:16];
      }

      while (v29);

      v13 = v61;
      if (v30)
      {
        v34 = PBFLogAssetHelper(v33);
        v35 = os_signpost_id_generate(v34);

        v36 = PRIsLowQualityDevice();
        v37 = v36;
        v38 = PBFLogAssetHelper(v36);
        v39 = v38;
        v40 = v35 - 1;
        if (!v37)
        {
          if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_21B526000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v35, "HighQualityGalleryHydration", "", buf, 2u);
          }

          v53 = PBFLogAssetHelper(v52);
          v54 = v53;
          if (v40 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_21B526000, v54, OS_SIGNPOST_INTERVAL_END, v35, "HighQualityGalleryHydration", "", buf, 2u);
          }

          v56 = PBFLogAssetHelper(v55);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = *p_assetHydrationState - 1;
            if (v57 > 3)
            {
              v58 = @"PBFPosterGalleryAssetHydrationStateDefault";
            }

            else
            {
              v58 = off_2782C7840[v57];
            }

            *buf = 134218498;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v58;
            *&buf[22] = 2114;
            *&buf[24] = @"PBFPosterGalleryAssetHydrationStateAlternateDisplayContextHydration";
            _os_log_impl(&dword_21B526000, v56, OS_LOG_TYPE_INFO, "(%p) _updateHydrationStateIfNeeded; executing transitioning from %{public}@ -> %{public}@", buf, 0x20u);
          }

          v19 = [v61 stringByAppendingString:@"Outstanding display context fetches are needed after initial hydration"];
          selfCopy4 = self;
          v26 = 3;
          goto LABEL_76;
        }

        if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_21B526000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v35, "LowQualityGalleryHydration", "", buf, 2u);
        }

        v42 = PBFLogAssetHelper(v41);
        v43 = v42;
        if (v40 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_21B526000, v43, OS_SIGNPOST_INTERVAL_END, v35, "LowQualityGalleryHydration", "", buf, 2u);
        }

        v45 = PBFLogAssetHelper(v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = *p_assetHydrationState - 1;
          if (v46 > 3)
          {
            v47 = @"PBFPosterGalleryAssetHydrationStateDefault";
          }

          else
          {
            v47 = off_2782C7840[v46];
          }

          *buf = 134218498;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v47;
          *&buf[22] = 2114;
          *&buf[24] = @"PBFPosterGalleryAssetHydrationStateComplete";
          _os_log_impl(&dword_21B526000, v45, OS_LOG_TYPE_INFO, "(%p) _updateHydrationStateIfNeeded; executing transitioning from %{public}@ -> %{public}@", buf, 0x20u);
        }

        v59 = @"Low quality device; marking as complete...";
        goto LABEL_75;
      }
    }

    else
    {
    }

    v49 = PBFLogAssetHelper(v33);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = *p_assetHydrationState - 1;
      if (v50 > 3)
      {
        v51 = @"PBFPosterGalleryAssetHydrationStateDefault";
      }

      else
      {
        v51 = off_2782C7840[v50];
      }

      *buf = 134218498;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v51;
      *&buf[22] = 2114;
      *&buf[24] = @"PBFPosterGalleryAssetHydrationStateComplete";
      _os_log_impl(&dword_21B526000, v49, OS_LOG_TYPE_INFO, "(%p) _updateHydrationStateIfNeeded; executing transitioning from %{public}@ -> %{public}@", buf, 0x20u);
    }

    v59 = @"All requests for active display context as well as other display contexts are complete.";
LABEL_75:
    v19 = [v13 stringByAppendingString:v59];
    selfCopy4 = self;
    v26 = 4;
    goto LABEL_76;
  }

  v12 = PBFLogAssetHelper(_updateHistogramCacheIfNeeded);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PBFPosterGalleryAssetHelper _updateHydrationStateIfNeeded];
  }

  return [(PBFPosterGalleryAssetHelper *)self _updateHydrationStateTo:1 reason:@"Initial Default->Initial transition."];
}

void __60__PBFPosterGalleryAssetHelper__updateHydrationStateIfNeeded__block_invoke(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (![*(*(a1 + 32) + 88) count])
  {
    v23 = [*(*(a1 + 32) + 80) objectForKey:v5];
    if (v23)
    {
      v24 = v23;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      [v23 getValue:a3 size:96];

      goto LABEL_33;
    }
  }

  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v6)
  {
    goto LABEL_30;
  }

  v7 = v6;
  v8 = *v29;
  v26 = v5;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v28 + 1) + 8 * i);
      v11 = [*(*(a1 + 32) + 8) objectForKey:v10];
      v12 = [v10 type];
      v13 = PBFPreviewTypeHero;

      if (v12 != v13)
      {
        v14 = [PBFPosterSnapshotDefinition defaultPreviewDefinitionForPreview:v10];
        v15 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:v5 definition:v14];
        if ([v11 isVisible])
        {
          v16 = 1;
        }

        else
        {
          v16 = [v11 shouldPrefetch];
        }

        v27 = 0;
        v17 = [v11 snapshotCollection];
        v18 = [v17 snapshotFutureForContext:v15 outStatus:&v27];

        if (v27 > 1)
        {
          v5 = v26;
          if (v27 == 2)
          {
            ++*(a3 + 72);
            v20 = v16 == 0;
            v19 = 40;
            v21 = 8;
            goto LABEL_24;
          }

          if (v27 != 3)
          {
            goto LABEL_27;
          }

          ++*(a3 + 64);
          v19 = 32;
          if (v16)
          {
            v19 = 0;
          }
        }

        else
        {
          v5 = v26;
          if (v27)
          {
            if (v27 == 1)
            {
              ++*(a3 + 80);
              v19 = 16;
              if (!v16)
              {
                v19 = 48;
              }

              goto LABEL_26;
            }

LABEL_27:

            goto LABEL_28;
          }

          ++*(a3 + 88);
          v20 = v16 == 0;
          v19 = 56;
          v21 = 24;
LABEL_24:
          if (!v20)
          {
            v19 = v21;
          }
        }

LABEL_26:
        ++*(a3 + v19);
        goto LABEL_27;
      }

LABEL_28:
    }

    v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v7);
LABEL_30:

  v22 = [MEMORY[0x277CCAE60] valueWithBytes:a3 objCType:"{?={?=QQQQ}{?=QQQQ}{?=QQQQ}}"];
  [*(*(a1 + 32) + 80) setObject:v22 forKey:v5];

LABEL_33:
}

- (BOOL)_updateHydrationStateTo:(int64_t)to reason:(id)reason
{
  v28 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v7 = reasonCopy;
  if (self->_isInvalidated)
  {
    v8 = PBFLogAssetHelper(reasonCopy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v20 = 134217984;
      selfCopy3 = self;
      v9 = "(%p) bail _updateHydrationStateTo; invalidated";
      v10 = v8;
      v11 = 12;
LABEL_13:
      _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_INFO, v9, &v20, v11);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  assetHydrationState = self->_assetHydrationState;
  v8 = PBFLogAssetHelper(reasonCopy);
  v13 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (assetHydrationState == to)
  {
    if (v13)
    {
      if ((to - 1) > 3)
      {
        v14 = @"PBFPosterGalleryAssetHydrationStateDefault";
      }

      else
      {
        v14 = off_2782C7840[to - 1];
      }

      v20 = 134218498;
      selfCopy3 = self;
      v22 = 2114;
      v23 = v14;
      v24 = 2114;
      v25 = v7;
      v9 = "(%p) bail _updateHydrationStateTo; state is same '%{public}@' / reason %{public}@";
      v10 = v8;
      v11 = 32;
      goto LABEL_13;
    }

LABEL_14:

    v17 = 0;
    goto LABEL_21;
  }

  if (v13)
  {
    v15 = self->_assetHydrationState - 1;
    if (v15 > 3)
    {
      v16 = @"PBFPosterGalleryAssetHydrationStateDefault";
    }

    else
    {
      v16 = off_2782C7840[v15];
    }

    if ((to - 1) > 3)
    {
      v18 = @"PBFPosterGalleryAssetHydrationStateDefault";
    }

    else
    {
      v18 = off_2782C7840[to - 1];
    }

    v20 = 134218754;
    selfCopy3 = self;
    v22 = 2114;
    v23 = v16;
    v24 = 2114;
    v25 = v18;
    v26 = 2114;
    v27 = v7;
    _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_INFO, "(%p) bail _updateHydrationStateTo; updating state from %{public}@ to '%{public}@' / reason %{public}@", &v20, 0x2Au);
  }

  self->_assetHydrationState = to;
  v17 = 1;
LABEL_21:

  return v17;
}

- (void)_sizeAssetsForActiveDisplayContext
{
  v64 = *MEMORY[0x277D85DE8];
  if (self->_isInvalidated)
  {
    v3 = PBFLogAssetHelper(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy5 = self;
      v4 = "(%p) bail _sizeAssetsForActiveDisplayContext; invalidated";
      v5 = v3;
      v6 = OS_LOG_TYPE_DEFAULT;
LABEL_32:
      _os_log_impl(&dword_21B526000, v5, v6, v4, buf, 0xCu);
    }
  }

  else
  {
    activeDisplayContext = self->_activeDisplayContext;
    v3 = PBFLogAssetHelper(self);
    v8 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (activeDisplayContext)
    {
      if (v8)
      {
        v9 = self->_activeDisplayContext;
        *buf = 134218242;
        selfCopy5 = self;
        v59 = 2114;
        v60 = v9;
        _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_INFO, "(%p) _sizeAssetsForActiveDisplayContext for %{public}@", buf, 0x16u);
      }

      v10 = objc_opt_new();
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      obj = [(PBFPosterGalleryAssetHelper *)self posterPreviews];
      v44 = v10;
      v47 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
      if (v47)
      {
        v46 = *v53;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v53 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v52 + 1) + 8 * i);
            v13 = [(NSMapTable *)self->_previewToState objectForKey:v12, v44];
            v14 = [PBFPosterSnapshotDefinition defaultPreviewDefinitionForPreview:v12];
            asset = [v13 asset];
            assetViewController = [asset assetViewController];

            if (assetViewController)
            {
              asset2 = [v13 asset];
              assetViewController2 = [asset2 assetViewController];
              [assetViewController2 setDisplayContext:self->_activeDisplayContext];

              asset3 = [v13 asset];
              assetViewController3 = [asset3 assetViewController];
              view = [assetViewController3 view];
              v22 = [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:view forPreview:v12 displayContext:self->_activeDisplayContext];

              if (v22)
              {
                [v10 addObject:v12];
              }
            }

            else
            {
              snapshotBundleLayoutView = [v13 snapshotBundleLayoutView];

              if (snapshotBundleLayoutView)
              {
                v24 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:self->_activeDisplayContext definition:v14];
                snapshotBundleLayoutView2 = [v13 snapshotBundleLayoutView];
                snapshotCollection = [v13 snapshotCollection];
                v27 = [snapshotCollection receivedSnapshotBundleForContext:v24];

                if (v27 && snapshotBundleLayoutView2)
                {
                  snapshotBundle = [snapshotBundleLayoutView2 snapshotBundle];
                  v29 = [snapshotBundle isEqual:v27];

                  if ((v29 & 1) == 0)
                  {
                    [v44 addObject:v12];
                    [snapshotBundleLayoutView2 setSnapshotBundle:v27];
                    if ([(PBFPosterGalleryAssetHelper *)self _sizeContainerView:snapshotBundleLayoutView2 forPreview:v12 displayContext:self->_activeDisplayContext])
                    {
                      [v44 addObject:v12];
                    }
                  }

                  v10 = v44;
                }

                else
                {
                }
              }
            }
          }

          v47 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
        }

        while (v47);
      }

      v30 = [v10 count];
      v31 = PBFLogAssetHelper(v30);
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
      if (v30)
      {
        if (v32)
        {
          v33 = self->_activeDisplayContext;
          *buf = 134218498;
          selfCopy5 = self;
          v59 = 2114;
          v60 = v33;
          v61 = 2114;
          v62 = v44;
          _os_log_impl(&dword_21B526000, v31, OS_LOG_TYPE_INFO, "(%p) _sizeAssetsForActiveDisplayContext for %{public}@; notify delegate of updated assets: %{public}@", buf, 0x20u);
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v35 = objc_opt_respondsToSelector();

        if (v35)
        {
          v31 = objc_loadWeakRetained(&self->_delegate);
          v36 = [v44 copy];
          [v31 assetHelper:self didUpdateAssetsForPosterPreviews:v36];
        }

        else
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v31 = v44;
          v38 = [v31 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v49;
            do
            {
              for (j = 0; j != v39; ++j)
              {
                if (*v49 != v40)
                {
                  objc_enumerationMutation(v31);
                }

                v42 = *(*(&v48 + 1) + 8 * j);
                v43 = objc_loadWeakRetained(&self->_delegate);
                [v43 assetHelper:self didUpdateAssetsForPosterPreview:v42];
              }

              v39 = [v31 countByEnumeratingWithState:&v48 objects:v56 count:16];
            }

            while (v39);
          }
        }
      }

      else if (v32)
      {
        v37 = self->_activeDisplayContext;
        *buf = 134218242;
        selfCopy5 = self;
        v59 = 2114;
        v60 = v37;
        _os_log_impl(&dword_21B526000, v31, OS_LOG_TYPE_INFO, "(%p) bail _sizeAssetsForActiveDisplayContext for %{public}@; no updated poster previews to notify delegate of", buf, 0x16u);
      }

      v3 = v44;
    }

    else if (v8)
    {
      *buf = 134217984;
      selfCopy5 = self;
      v4 = "(%p) bail _sizeAssetsForActiveDisplayContext; null active display context";
      v5 = v3;
      v6 = OS_LOG_TYPE_INFO;
      goto LABEL_32;
    }
  }
}

- (void)_stateWasUpdatedForPosterPreviews:(id)previews
{
  v186 = *MEMORY[0x277D85DE8];
  previewsCopy = previews;
  v5 = BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v6 = PBFLogAssetHelper(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy13 = self;
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_INFO, "(%p) bail _stateWasUpdatedForPosterPreviews; invalidated", buf, 0xCu);
    }

    goto LABEL_177;
  }

  isSuspended = [(PBFPosterGalleryAssetHelper *)self isSuspended];
  if (isSuspended)
  {
    v8 = PBFLogAssetHelper(isSuspended);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy13 = self;
      _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_INFO, "(%p) bail _stateWasUpdatedForPosterPreviews; is suspended", buf, 0xCu);
    }

    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v6 = previewsCopy;
    v9 = [v6 countByEnumeratingWithState:&v166 objects:v185 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v167;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v167 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = [(NSMapTable *)self->_previewToState objectForKey:*(*(&v166 + 1) + 8 * i)];
          v14 = v13;
          if (v13)
          {
            [v13 setVisible:0];
          }
        }

        v10 = [v6 countByEnumeratingWithState:&v166 objects:v185 count:16];
      }

      while (v10);
    }

    goto LABEL_177;
  }

  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v15 = previewsCopy;
  v16 = [v15 countByEnumeratingWithState:&v162 objects:v184 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v163;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v163 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(PBFPosterGalleryAssetHelper *)self _invalidateHistogramCacheForPosterPreview:*(*(&v162 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v162 objects:v184 count:16];
    }

    while (v17);
  }

  v136 = previewsCopy;

  v137 = objc_opt_new();
  activeDisplayContext = [(PBFPosterGalleryAssetHelper *)self activeDisplayContext];
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  obj = v15;
  v21 = [obj countByEnumeratingWithState:&v158 objects:v183 count:16];
  v138 = activeDisplayContext;
  if (v21)
  {
    v23 = v21;
    v141 = *v159;
    *&v22 = 134219010;
    v135 = v22;
    do
    {
      v24 = 0;
      v139 = v23;
      do
      {
        if (*v159 != v141)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v158 + 1) + 8 * v24);
        v135 = [(NSMapTable *)self->_previewToState objectForKey:v25, v135];
        if (!v135)
        {
          v135 = [[_PBFPosterGalleryAssetState alloc] initWithPreview:v25];
          [(NSMapTable *)self->_previewToState setObject:v135 forKey:v25];
          if (!activeDisplayContext)
          {
            goto LABEL_140;
          }

LABEL_33:
          v27 = [PBFPosterSnapshotDefinition defaultPreviewDefinitionForPreview:v25];
          snapshotCollection = [(_PBFPosterGalleryAssetState *)v135 snapshotCollection];
          v142 = v27;
          v143 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:self->_activeDisplayContext definition:v27];
          isVisible = [(_PBFPosterGalleryAssetState *)v135 isVisible];
          shouldPrefetch = [(_PBFPosterGalleryAssetState *)v135 shouldPrefetch];
          willUseLivePreview = [(_PBFPosterGalleryAssetState *)v135 willUseLivePreview];
          if (willUseLivePreview)
          {
            asset = [(_PBFPosterGalleryAssetState *)v135 asset];
            assetViewController = [asset assetViewController];

            if (shouldPrefetch)
            {
              if (!assetViewController)
              {
                goto LABEL_41;
              }
            }

            else
            {
              if (assetViewController)
              {
                v33 = 0;
              }

              else
              {
                v33 = isVisible;
              }

              if (v33)
              {
LABEL_41:
                [(PBFPosterGalleryAssetHelper *)self _setupLiveDisplayStyleForPreview:v25];
                asset2 = [(_PBFPosterGalleryAssetState *)v135 asset];
                assetViewController2 = [asset2 assetViewController];

                assetViewController = assetViewController2;
              }
            }

            v23 = v139;
            if (isVisible & 1 | !-[PBFPosterGalleryAssetHelper _galleryInteractionsAreOngoing](self, "_galleryInteractionsAreOngoing") || ([assetViewController isVisible] & 1) == 0)
            {
              [assetViewController setVisible:isVisible];
            }

            [assetViewController setDisplayContext:self->_activeDisplayContext];
          }

          v36 = PBFLogAssetHelper(willUseLivePreview);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v82 = self->_assetHydrationState - 1;
            v83 = @"PBFPosterGalleryAssetHydrationStateDefault";
            if (v82 <= 3)
            {
              v83 = off_2782C7840[v82];
            }

            *buf = 134218498;
            selfCopy13 = self;
            v174 = 2114;
            v175 = v83;
            v176 = 2114;
            v177 = v25;
            _os_log_debug_impl(&dword_21B526000, v36, OS_LOG_TYPE_DEBUG, "(%p; %{public}@) _stateWasUpdatedForPosterPreviews for %{public}@", buf, 0x20u);
          }

          assetHydrationState = self->_assetHydrationState;
          if (assetHydrationState > 2)
          {
            if (assetHydrationState != 3)
            {
              if (assetHydrationState != 4)
              {
                goto LABEL_104;
              }

              v51 = PBFLogAssetHelper(v37);
              v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG);

              if (!v52)
              {
                goto LABEL_104;
              }

              knownDisplayContextWithoutActiveDisplayContext = PBFLogAssetHelper(v37);
              if (os_log_type_enabled(knownDisplayContextWithoutActiveDisplayContext, OS_LOG_TYPE_DEBUG))
              {
                v53 = self->_assetHydrationState - 1;
                v54 = @"PBFPosterGalleryAssetHydrationStateDefault";
                if (v53 <= 3)
                {
                  v54 = off_2782C7840[v53];
                }

                *buf = 134218498;
                selfCopy13 = self;
                v174 = 2114;
                v175 = v54;
                v176 = 2114;
                v177 = v25;
                _os_log_debug_impl(&dword_21B526000, knownDisplayContextWithoutActiveDisplayContext, OS_LOG_TYPE_DEBUG, "(%p; %{public}@)  _stateWasUpdatedForPosterPreviews for posterPreview '%{public}@'", buf, 0x20u);
              }

              goto LABEL_103;
            }

            if (((isVisible | shouldPrefetch) & 1) == 0)
            {
              goto LABEL_104;
            }

            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            knownDisplayContextWithoutActiveDisplayContext = [(PBFPosterGalleryAssetHelper *)self knownDisplayContextWithoutActiveDisplayContext];
            v70 = [knownDisplayContextWithoutActiveDisplayContext countByEnumeratingWithState:&v149 objects:v171 count:16];
            if (!v70)
            {
              goto LABEL_103;
            }

            v71 = v70;
            v72 = *v150;
            do
            {
              v73 = 0;
              do
              {
                if (*v150 != v72)
                {
                  objc_enumerationMutation(knownDisplayContextWithoutActiveDisplayContext);
                }

                v74 = *(*(&v149 + 1) + 8 * v73);
                v75 = PBFLogAssetHelper(v70);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                {
                  v76 = self->_assetHydrationState - 1;
                  v77 = @"PBFPosterGalleryAssetHydrationStateDefault";
                  if (v76 <= 3)
                  {
                    v77 = off_2782C7840[v76];
                  }

                  *buf = 134218754;
                  selfCopy13 = self;
                  v174 = 2114;
                  v175 = v77;
                  v176 = 2114;
                  v177 = v25;
                  v178 = 2114;
                  v179 = v74;
                  _os_log_debug_impl(&dword_21B526000, v75, OS_LOG_TYPE_DEBUG, "(%p; %{public}@)  _stateWasUpdatedForPosterPreviews kickOffPreviewGenerator for posterPreview '%{public}@' w/ display context: %{public}@;", buf, 0x2Au);
                }

                v70 = [(PBFPosterGalleryAssetHelper *)self _kickoffPreviewGeneratorForPosterPreview:v25 context:v74];
                ++v73;
              }

              while (v71 != v73);
              v70 = [knownDisplayContextWithoutActiveDisplayContext countByEnumeratingWithState:&v149 objects:v171 count:16];
              v71 = v70;
            }

            while (v70);
          }

          else
          {
            if (assetHydrationState >= 2)
            {
              if (assetHydrationState != 2)
              {
                goto LABEL_104;
              }

              knownDisplayContextWithoutActiveDisplayContext = [snapshotCollection invalidateAndRemoveInProgressRequestsNotMatchingDisplayContext:activeDisplayContext];
              v153 = 0;
              v55 = [snapshotCollection snapshotFutureForContext:v143 outStatus:&v153];
              if (v153 != 3)
              {
                if (v153 == 2)
                {
                  v94 = PBFLogAssetHelper(v55);
                  v95 = os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG);

                  v45 = v142;
                  if (!v95)
                  {
                    goto LABEL_138;
                  }

                  v46 = PBFLogAssetHelper(v96);
                  if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_137;
                  }

                  v97 = self->_assetHydrationState - 1;
                  v88 = @"PBFPosterGalleryAssetHydrationStateDefault";
                  if (v97 <= 3)
                  {
                    v88 = off_2782C7840[v97];
                  }

                  goto LABEL_114;
                }

                if (v153 != 1)
                {
                  v107 = [(PBFPosterGalleryAssetHelper *)self _kickoffPreviewGeneratorForPosterPreview:v25 context:activeDisplayContext];
                  if (v107)
                  {
                    v108 = PBFLogAssetHelper(v107);
                    v109 = os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG);

                    if (v109)
                    {
                      if (knownDisplayContextWithoutActiveDisplayContext)
                      {
                        v111 = PBFLogAssetHelper(v110);
                        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
                        {
                          v120 = self->_assetHydrationState - 1;
                          v121 = @"PBFPosterGalleryAssetHydrationStateDefault";
                          if (v120 <= 3)
                          {
                            v121 = off_2782C7840[v120];
                          }

                          *buf = v135;
                          selfCopy13 = self;
                          v174 = 2114;
                          v175 = v121;
                          v176 = 2114;
                          v177 = v25;
                          v178 = 2114;
                          v179 = activeDisplayContext;
                          v180 = 1024;
                          v181 = isVisible;
                          _os_log_debug_impl(&dword_21B526000, v111, OS_LOG_TYPE_DEBUG, "(%p; %{public}@)  _stateWasUpdatedForPosterPreviews kickOffPreviewGenerator for posterPreview '%{public}@' w/ activeDisplayContext: %{public}@; notifyUpdatedContent? %{BOOL}u", buf, 0x30u);
                        }
                      }
                    }
                  }

                  goto LABEL_103;
                }

                v56 = PBFLogAssetHelper(v55);
                v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG);

                v45 = v142;
                if (!v57)
                {
                  goto LABEL_138;
                }

                v46 = PBFLogAssetHelper(v58);
                if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_137;
                }

                v59 = self->_assetHydrationState - 1;
                v48 = @"PBFPosterGalleryAssetHydrationStateDefault";
                if (v59 <= 3)
                {
                  v48 = off_2782C7840[v59];
                }

LABEL_57:
                *buf = 134218498;
                selfCopy13 = self;
                v174 = 2114;
                v175 = v48;
                v176 = 2114;
                v177 = v25;
                v49 = v46;
                v50 = "(%p; %{public}@) bail _stateWasUpdatedForPosterPreviews for posterPreview '%{public}@' because request is in flight";
LABEL_136:
                _os_log_debug_impl(&dword_21B526000, v49, OS_LOG_TYPE_DEBUG, v50, buf, 0x20u);
                goto LABEL_137;
              }

              v103 = PBFLogAssetHelper(v55);
              v104 = os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG);

              v45 = v142;
              if (!v104)
              {
                goto LABEL_138;
              }

              v46 = PBFLogAssetHelper(v105);
              if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_137;
              }

              v106 = self->_assetHydrationState - 1;
              v93 = @"PBFPosterGalleryAssetHydrationStateDefault";
              if (v106 <= 3)
              {
                v93 = off_2782C7840[v106];
              }

LABEL_135:
              *buf = 134218498;
              selfCopy13 = self;
              v174 = 2114;
              v175 = v93;
              v176 = 2114;
              v177 = v25;
              v49 = v46;
              v50 = "(%p; %{public}@) bail _stateWasUpdatedForPosterPreviews for posterPreview '%{public}@' because request is hydrated";
              goto LABEL_136;
            }

            v39 = [snapshotCollection invalidateAndRemoveInProgressRequestsNotMatchingDisplayContext:activeDisplayContext];
            knownDisplayContextWithoutActiveDisplayContext = v39;
            if ((isVisible | shouldPrefetch))
            {
              v153 = 0;
              v41 = [snapshotCollection snapshotFutureForContext:v143 outStatus:&v153];
              if (v153 != 3)
              {
                if (v153 != 2)
                {
                  if (v153 == 1)
                  {
                    v42 = PBFLogAssetHelper(v41);
                    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);

                    v45 = v142;
                    if (v43)
                    {
                      v46 = PBFLogAssetHelper(v44);
                      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                      {
                        v47 = self->_assetHydrationState - 1;
                        v48 = @"PBFPosterGalleryAssetHydrationStateDefault";
                        if (v47 <= 3)
                        {
                          v48 = off_2782C7840[v47];
                        }

                        goto LABEL_57;
                      }

LABEL_137:
                    }

LABEL_138:

LABEL_139:
                    goto LABEL_140;
                  }

                  v98 = [(PBFPosterGalleryAssetHelper *)self _kickoffPreviewGeneratorForPosterPreview:v25 context:activeDisplayContext];
                  if (v98)
                  {
                    v99 = PBFLogAssetHelper(v98);
                    v100 = os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG);

                    if (v100 && knownDisplayContextWithoutActiveDisplayContext)
                    {
                      v102 = PBFLogAssetHelper(v101);
                      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
                      {
                        v118 = self->_assetHydrationState - 1;
                        v119 = @"PBFPosterGalleryAssetHydrationStateDefault";
                        if (v118 <= 3)
                        {
                          v119 = off_2782C7840[v118];
                        }

                        *buf = v135;
                        selfCopy13 = self;
                        v174 = 2114;
                        v175 = v119;
                        v176 = 2114;
                        v177 = v25;
                        v178 = 2114;
                        v179 = activeDisplayContext;
                        v180 = 1024;
                        v181 = isVisible;
                        _os_log_debug_impl(&dword_21B526000, v102, OS_LOG_TYPE_DEBUG, "(%p; %{public}@)  _stateWasUpdatedForPosterPreviews kickOffPreviewGenerator for posterPreview '%{public}@' w/ activeDisplayContext: %{public}@; notifyUpdatedContent? %{BOOL}u", buf, 0x30u);
                      }

                      if (isVisible)
                      {
                        goto LABEL_151;
                      }
                    }

                    else
                    {

                      if (isVisible)
                      {
LABEL_151:
                        v114 = PBFLogAssetHelper(v37);
                        v115 = os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG);

                        v45 = v142;
                        if (v115)
                        {
                          v117 = PBFLogAssetHelper(v116);
                          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
                          {
                            v122 = self->_assetHydrationState - 1;
                            v123 = @"PBFPosterGalleryAssetHydrationStateDefault";
                            if (v122 <= 3)
                            {
                              v123 = off_2782C7840[v122];
                            }

                            *buf = 134218498;
                            selfCopy13 = self;
                            v174 = 2114;
                            v175 = v123;
                            v176 = 2114;
                            v177 = v25;
                            _os_log_debug_impl(&dword_21B526000, v117, OS_LOG_TYPE_DEBUG, "(%p; %{public}@)  _stateWasUpdatedForPosterPreviews will notifyUpdatedContent for posterPreview '%{public}@'", buf, 0x20u);
                          }
                        }

                        [v137 addObject:v25];
                        goto LABEL_139;
                      }
                    }

LABEL_104:
                    v78 = PBFLogAssetHelper(v37);
                    v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG);

                    v45 = v142;
                    if (v79)
                    {
                      v81 = PBFLogAssetHelper(v80);
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
                      {
                        v112 = self->_assetHydrationState - 1;
                        v113 = @"PBFPosterGalleryAssetHydrationStateDefault";
                        if (v112 <= 3)
                        {
                          v113 = off_2782C7840[v112];
                        }

                        *buf = 134218498;
                        selfCopy13 = self;
                        v174 = 2114;
                        v175 = v113;
                        v176 = 2114;
                        v177 = v25;
                        _os_log_debug_impl(&dword_21B526000, v81, OS_LOG_TYPE_DEBUG, "(%p; %{public}@)  _stateWasUpdatedForPosterPreviews will *NOT* notifyUpdatedContent for posterPreview '%{public}@'", buf, 0x20u);
                      }
                    }

                    goto LABEL_139;
                  }

LABEL_103:

                  goto LABEL_104;
                }

                v84 = PBFLogAssetHelper(v41);
                v85 = os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG);

                v45 = v142;
                if (!v85)
                {
                  goto LABEL_138;
                }

                v46 = PBFLogAssetHelper(v86);
                if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_137;
                }

                v87 = self->_assetHydrationState - 1;
                v88 = @"PBFPosterGalleryAssetHydrationStateDefault";
                if (v87 <= 3)
                {
                  v88 = off_2782C7840[v87];
                }

LABEL_114:
                *buf = 134218498;
                selfCopy13 = self;
                v174 = 2114;
                v175 = v88;
                v176 = 2114;
                v177 = v25;
                v49 = v46;
                v50 = "(%p; %{public}@) bail _stateWasUpdatedForPosterPreviews for posterPreview '%{public}@' because request was failed";
                goto LABEL_136;
              }

              v89 = PBFLogAssetHelper(v41);
              v90 = os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG);

              v45 = v142;
              if (!v90)
              {
                goto LABEL_138;
              }

              v46 = PBFLogAssetHelper(v91);
              if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_137;
              }

              v92 = self->_assetHydrationState - 1;
              v93 = @"PBFPosterGalleryAssetHydrationStateDefault";
              if (v92 <= 3)
              {
                v93 = off_2782C7840[v92];
              }

              goto LABEL_135;
            }

            v60 = PBFLogAssetHelper(v39);
            v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG);

            if (!v61 || !knownDisplayContextWithoutActiveDisplayContext)
            {
              goto LABEL_103;
            }

            v156 = 0u;
            v157 = 0u;
            v154 = 0u;
            v155 = 0u;
            knownDisplayContextWithoutActiveDisplayContext = knownDisplayContextWithoutActiveDisplayContext;
            v62 = [knownDisplayContextWithoutActiveDisplayContext countByEnumeratingWithState:&v154 objects:v182 count:16];
            if (v62)
            {
              v63 = v62;
              v64 = *v155;
              do
              {
                v65 = 0;
                do
                {
                  if (*v155 != v64)
                  {
                    objc_enumerationMutation(knownDisplayContextWithoutActiveDisplayContext);
                  }

                  v66 = *(*(&v154 + 1) + 8 * v65);
                  v67 = PBFLogAssetHelper(v62);
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                  {
                    v68 = self->_assetHydrationState - 1;
                    v69 = @"PBFPosterGalleryAssetHydrationStateDefault";
                    if (v68 <= 3)
                    {
                      v69 = off_2782C7840[v68];
                    }

                    *buf = 134218754;
                    selfCopy13 = self;
                    v174 = 2114;
                    v175 = v69;
                    v176 = 2114;
                    v177 = v25;
                    v178 = 2114;
                    v179 = v66;
                    _os_log_debug_impl(&dword_21B526000, v67, OS_LOG_TYPE_DEBUG, "(%p; %{public}@) _stateWasUpdatedForPosterPreviews invalidating request for posterPreview '%{public}@' because of non-activeDisplayContext %{public}@", buf, 0x2Au);
                  }

                  ++v65;
                }

                while (v63 != v65);
                v62 = [knownDisplayContextWithoutActiveDisplayContext countByEnumeratingWithState:&v154 objects:v182 count:16];
                v63 = v62;
              }

              while (v62);
            }
          }

          activeDisplayContext = v138;
          v23 = v139;
          goto LABEL_103;
        }

        if (activeDisplayContext)
        {
          goto LABEL_33;
        }

LABEL_140:

        ++v24;
      }

      while (v24 != v23);
      v124 = [obj countByEnumeratingWithState:&v158 objects:v183 count:16];
      v23 = v124;
    }

    while (v124);
  }

  v6 = v137;
  previewsCopy = v136;
  if ([v137 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v126 = objc_opt_respondsToSelector();

    if (v126)
    {
      v127 = objc_loadWeakRetained(&self->_delegate);
      v128 = [v137 copy];
      [v127 assetHelper:self didUpdateAssetsForPosterPreviews:v128];
    }

    else
    {
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v127 = v137;
      v129 = [v127 countByEnumeratingWithState:&v145 objects:v170 count:16];
      if (v129)
      {
        v130 = v129;
        v131 = *v146;
        do
        {
          for (k = 0; k != v130; ++k)
          {
            if (*v146 != v131)
            {
              objc_enumerationMutation(v127);
            }

            v133 = *(*(&v145 + 1) + 8 * k);
            v134 = objc_loadWeakRetained(&self->_delegate);
            [v134 assetHelper:self didUpdateAssetsForPosterPreview:v133];
          }

          v130 = [v127 countByEnumeratingWithState:&v145 objects:v170 count:16];
        }

        while (v130);
      }
    }
  }

LABEL_177:
}

- (BOOL)_setupHeroShotsForPosterPreview:(id)preview context:(id)context
{
  v79 = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  contextCopy = context;
  v8 = BSDispatchQueueAssertMain();
  if (!self->_isInvalidated)
  {
    v11 = [(NSMapTable *)self->_previewToState objectForKey:previewCopy];
    v9 = v11;
    if (!v11)
    {
      galleryOptions = PBFLogAssetHelper(0);
      if (os_log_type_enabled(galleryOptions, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy7 = self;
        _os_log_impl(&dword_21B526000, galleryOptions, OS_LOG_TYPE_INFO, "(%p) bail _setupHeroShotsForPosterPreview; no state", buf, 0xCu);
      }

      LOBYTE(v10) = 0;
      goto LABEL_56;
    }

    galleryOptions = [v11 galleryOptions];
    galleryAssetLookupInfo = [galleryOptions galleryAssetLookupInfo];
    posterDescriptorLookupInfo = [previewCopy posterDescriptorLookupInfo];
    heroMicaPackageView = [v9 heroMicaPackageView];
    heroImageView = [v9 heroImageView];
    heroImage = [v9 heroImage];
    activeDisplayContext = self->_activeDisplayContext;
    v16 = PUIFeatureEnabled();
    LOBYTE(v10) = 0;
    v66 = heroMicaPackageView;
    v67 = posterDescriptorLookupInfo;
    if (v16 && !heroMicaPackageView)
    {
      v64 = galleryOptions;
      posterDescriptorExtension = [posterDescriptorLookupInfo posterDescriptorExtension];
      posterExtensionBundle = [posterDescriptorExtension posterExtensionBundle];
      v70 = 0;
      v10 = [galleryAssetLookupInfo pbf_micaViewFromBundle:posterExtensionBundle error:&v70];
      v19 = v70;

      if (v10 || ([MEMORY[0x277CF0D48] pbf_galleryHeroMicaViewForExtension:posterDescriptorExtension], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        [(PBFPosterGalleryAssetHelper *)self _contentSizeForPreview:previewCopy, activeDisplayContext];
        v21 = v20;
        v23 = v22;
        v24 = objc_opt_self();
        v25 = [(PBFPosterGalleryAssetHelper *)self _dequeueViewOfClass:v24];

        [v25 updatePackageView:v10 contentSize:{v21, v23}];
        [v9 setHeroMicaPackageView:v25];
        asset = [v9 asset];
        [asset setHeroView:v25];

        LODWORD(v10) = 1;
      }

      galleryOptions = v64;
      if (v10)
      {
        posterDescriptorLookupInfo = v67;
        if (heroImage)
        {
          LOBYTE(v10) = 1;
LABEL_55:

LABEL_56:
          goto LABEL_57;
        }
      }

      else
      {
        posterDescriptorLookupInfo = v67;
      }
    }

    v27 = PBFLogAssetHelper(v16);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [PBFPosterGalleryAssetHelper _setupHeroShotsForPosterPreview:context:];
    }

    posterDescriptorPath = [posterDescriptorLookupInfo posterDescriptorPath];
    posterDescriptorExtension2 = [posterDescriptorLookupInfo posterDescriptorExtension];
    v65 = posterDescriptorPath;
    descriptorIdentifier = [posterDescriptorPath descriptorIdentifier];
    v30 = [MEMORY[0x277D755B8] pbf_galleryHeroSnapshotForExtension:posterDescriptorExtension2 descriptorIdentifier:? displayContext:?];

    heroImage = v30;
    if (!v30)
    {
      v42 = PBFLogAssetHelper(v31);
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);

      if (v43)
      {
        v45 = PBFLogAssetHelper(v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [PBFPosterGalleryAssetHelper _setupHeroShotsForPosterPreview:context:];
        }
      }

      if (!galleryOptions || ([posterDescriptorExtension2 posterExtensionBundle], v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(galleryAssetLookupInfo, "pbf_imageFromBundle:displayContext:error:", v46, contextCopy, 0), heroImage = objc_claimAutoreleasedReturnValue(), v46, !heroImage))
      {
        v60 = PBFLogAssetHelper(v44);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterGalleryAssetHelper _setupHeroShotsForPosterPreview:context:];
        }

        heroImage = 0;
        goto LABEL_54;
      }

      v47 = PBFLogAssetHelper(v44);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        [PBFPosterGalleryAssetHelper _setupHeroShotsForPosterPreview:context:];
      }
    }

    v32 = PBFLogAssetHelper(v31);
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);

    v35 = heroImageView;
    if (v33)
    {
      v36 = PBFLogAssetHelper(v34);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218754;
        selfCopy7 = self;
        v73 = 2114;
        v74 = previewCopy;
        v75 = 2114;
        v76 = contextCopy;
        v77 = 1024;
        v78 = activeDisplayContext == contextCopy;
        _os_log_debug_impl(&dword_21B526000, v36, OS_LOG_TYPE_DEBUG, "(%p) _setupHeroShotsForPosterPreview; hero image hydrated already for %{public}@ && context %{public}@; isActiveContext: %{BOOL}u", buf, 0x26u);
      }
    }

    activeDisplayContext = [v9 setHeroImage:heroImage, activeDisplayContext];
    if (heroImageView)
    {
      v38 = PBFLogAssetHelper(activeDisplayContext);
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);

      if (v39)
      {
        v41 = PBFLogAssetHelper(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          selfCopy7 = self;
          v73 = 2114;
          v74 = previewCopy;
          v75 = 2114;
          v76 = contextCopy;
          _os_log_debug_impl(&dword_21B526000, v41, OS_LOG_TYPE_DEBUG, "(%p) _setupHeroShotsForPosterPreview; updating image view for %{public}@ && context %{public}@;", buf, 0x20u);
        }
      }

      [(PBFPosterGalleryAssetHelper *)self _contentSizeForPreview:previewCopy];
      [heroImageView updateImage:heroImage imageSize:?];
    }

    else
    {
      v35 = [(PBFPosterGalleryAssetHelper *)self _newImageViewWithImage:heroImage posterPreview:previewCopy];
      [v9 setHeroImageView:v35];
      asset2 = [v9 asset];
      [asset2 setHeroView:v35];

      v50 = PBFLogAssetHelper(v49);
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG);

      if (v51)
      {
        v53 = PBFLogAssetHelper(v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          selfCopy7 = self;
          v73 = 2114;
          v74 = previewCopy;
          v75 = 2114;
          v76 = contextCopy;
          _os_log_debug_impl(&dword_21B526000, v53, OS_LOG_TYPE_DEBUG, "(%p) _setupHeroShotsForPosterPreview; new image view created for %{public}@ && context %{public}@;", buf, 0x20u);
        }
      }
    }

    heroImageView = v35;
    v54 = [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:v35 forPreview:previewCopy displayContext:contextCopy];
    v55 = v54;
    v56 = PBFLogAssetHelper(v54);
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG);

    if (v57)
    {
      v59 = PBFLogAssetHelper(v58);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218754;
        selfCopy7 = self;
        v73 = 2114;
        v74 = previewCopy;
        v75 = 2114;
        v76 = contextCopy;
        v77 = 1024;
        v78 = v55;
        _os_log_debug_impl(&dword_21B526000, v59, OS_LOG_TYPE_DEBUG, "(%p) _setupHeroShotsForPosterPreview; finished updating image view for %{public}@ && context %{public}@; notifyDidUpdateContent: %{BOOL}u", buf, 0x26u);
      }
    }

    v60 = PBFLogAssetHelper(v58);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      selfCopy7 = self;
      v73 = 2114;
      v74 = previewCopy;
      v75 = 2114;
      v76 = contextCopy;
      _os_log_debug_impl(&dword_21B526000, v60, OS_LOG_TYPE_DEBUG, "(%p) _setupHeroShotsForPosterPreview; stashing generated image for %{public}@ && context %{public}@; and marking notifyDidUpdateContent", buf, 0x20u);
    }

    LOBYTE(v10) = 1;
LABEL_54:

    posterDescriptorLookupInfo = v67;
    goto LABEL_55;
  }

  v9 = PBFLogAssetHelper(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy7 = self;
    _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_INFO, "(%p) bail _setupHeroShotsForPosterPreview; invalidated", buf, 0xCu);
  }

  LOBYTE(v10) = 0;
LABEL_57:

  return v10;
}

- (BOOL)_kickoffPreviewGeneratorForPosterPreview:(id)preview context:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  contextCopy = context;
  v8 = BSDispatchQueueAssertMain();
  if (self->_isInvalidated)
  {
    v9 = PBFLogAssetHelper(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_INFO, "(%p) bail _kickoffPreviewGeneratorForPosterPreview; invalidated", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v11 = [(NSMapTable *)self->_previewToState objectForKey:previewCopy];
    v9 = v11;
    if (v11)
    {
      snapshotCollection = [v11 snapshotCollection];
      v13 = [PBFPosterSnapshotDefinition defaultPreviewDefinitionForPreview:previewCopy];
      activeDisplayContext = self->_activeDisplayContext;
      type = [previewCopy type];
      v16 = [type isEqual:PBFPreviewTypeHero];

      if (v16)
      {
        v10 = [(PBFPosterGalleryAssetHelper *)self _setupHeroShotsForPosterPreview:previewCopy context:contextCopy];
      }

      else
      {
        v17 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:contextCopy definition:v13];
        v18 = [snapshotCollection shouldProceedFetchingSnapshotForContext:v17 maxNumberOfRetryAfterErrors:3];
        if (v18)
        {
          v19 = PBFLogAssetHelper(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 134218754;
            selfCopy3 = self;
            v33 = 2114;
            v34 = previewCopy;
            v35 = 2114;
            v36 = contextCopy;
            v37 = 1024;
            v38 = activeDisplayContext == contextCopy;
            _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_INFO, "(%p) _kickoffPreviewGeneratorForPosterPreview; no image found for %{public}@ / default definition; kicking off image request for display context %{public}@, isActiveDisplayContext? %{BOOL}u", buf, 0x26u);
          }

          objc_initWeak(buf, self);
          v25 = [PBFPosterSnapshotRequest snapshotRequestForPreview:previewCopy context:contextCopy definition:v13];
          WeakRetained = objc_loadWeakRetained(&self->_previewGenerator);
          v21 = [WeakRetained snapshotBundleForRequest:v25];

          v22 = [snapshotCollection trackRequestForContext:v17 future:v21];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __80__PBFPosterGalleryAssetHelper__kickoffPreviewGeneratorForPosterPreview_context___block_invoke;
          v26[3] = &unk_2782C77B0;
          objc_copyWeak(&v30, buf);
          v27 = previewCopy;
          v28 = contextCopy;
          v29 = v17;
          mainThreadScheduler = [MEMORY[0x277D3EC60] mainThreadScheduler];
          [v22 addCompletionBlock:v26 scheduler:mainThreadScheduler];

          objc_destroyWeak(&v30);
          objc_destroyWeak(buf);
        }

        v10 = 0;
      }
    }

    else
    {
      snapshotCollection = PBFLogAssetHelper(0);
      if (os_log_type_enabled(snapshotCollection, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy3 = self;
        _os_log_impl(&dword_21B526000, snapshotCollection, OS_LOG_TYPE_INFO, "(%p) bail _kickoffPreviewGeneratorForPosterPreview; no state", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  return v10;
}

void __80__PBFPosterGalleryAssetHelper__kickoffPreviewGeneratorForPosterPreview_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = PBFLogAssetHelper(WeakRetained);
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        v15 = 134219010;
        v16 = v8;
        v17 = 2114;
        v18 = v11;
        v19 = 2114;
        v20 = v12;
        v21 = 2114;
        v22 = v5;
        v23 = 2114;
        v24 = v6;
        _os_log_error_impl(&dword_21B526000, v10, OS_LOG_TYPE_ERROR, "(%p) _kickoffPreviewGeneratorForPosterPreview; request failed for %{public}@ && context %{public}@; snapshotBundle: %{public}@ error: %{public}@", &v15, 0x34u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = 134218754;
      v16 = v8;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_INFO, "(%p) _kickoffPreviewGeneratorForPosterPreview; request finished for %{public}@ && context %{public}@; snapshotBundle: %{public}@", &v15, 0x2Au);
    }

    [v8 _receiveUpdatedAssetForPosterPreview:*(a1 + 32) snapshotContext:*(a1 + 48) snapshotBundle:v5 fetchError:v6];
  }
}

- (id)_newImageViewWithImage:(id)image posterPreview:(id)preview
{
  v36 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  previewCopy = preview;
  v8 = previewCopy;
  if (self->_isInvalidated)
  {
    posterDescriptorLookupInfo = PBFLogAssetHelper(previewCopy);
    if (os_log_type_enabled(posterDescriptorLookupInfo, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_21B526000, posterDescriptorLookupInfo, OS_LOG_TYPE_INFO, "(%p) bail _newImageViewWithImage; invalidated", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    [(PBFPosterGalleryAssetHelper *)self _contentSizeForPreview:previewCopy];
    v12 = v11;
    v14 = v13;
    reusableViewMap = [(PBFPosterGalleryAssetHelper *)self reusableViewMap];
    v16 = objc_opt_self();
    v10 = [reusableViewMap viewOfClass:v16];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 updateImage:imageCopy imageSize:{v12, v14}];
    posterDescriptorLookupInfo = [v8 posterDescriptorLookupInfo];
    posterDescriptorExtension = [posterDescriptorLookupInfo posterDescriptorExtension];
    posterExtensionBundleIdentifier = [posterDescriptorExtension posterExtensionBundleIdentifier];

    posterDescriptorPath = [posterDescriptorLookupInfo posterDescriptorPath];
    descriptorIdentifier = [posterDescriptorPath descriptorIdentifier];

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", posterExtensionBundleIdentifier, descriptorIdentifier];
    v22 = PBFLogAssetHelper([v10 setAccessibilityIdentifier:v21]);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);

    if (v23)
    {
      v25 = PBFLogAssetHelper(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v37.width = v12;
        v37.height = v14;
        v27 = NSStringFromCGSize(v37);
        *buf = 134218754;
        selfCopy2 = self;
        v30 = 2114;
        v31 = v8;
        v32 = 2114;
        v33 = v21;
        v34 = 2114;
        v35 = v27;
        _os_log_debug_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEBUG, "(%p) _newImageViewWithImage; building new image view for %{public}@/%{public}@; size: %{public}@", buf, 0x2Au);
      }
    }
  }

  return v10;
}

- (CGSize)_contentSizeForPreview:(id)preview
{
  type = [preview type];
  v5 = [type isEqual:PBFPreviewTypeHero];

  activeDisplayContextSpec = self->_activeDisplayContextSpec;
  if (v5)
  {
    v7 = self->_activeDisplayContextSpec;

    [(PBFPosterGalleryViewSpec *)v7 posterHeroContentSize];
  }

  else
  {
    pbf_interfaceOrientation = [(PBFDisplayContext *)self->_activeDisplayContext pbf_interfaceOrientation];

    [(PBFPosterGalleryViewSpec *)activeDisplayContextSpec posterContentSizeForOrientation:pbf_interfaceOrientation];
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)_sizeContainerView:(id)view forPreview:(id)preview displayContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  previewCopy = preview;
  contextCopy = context;
  v11 = contextCopy;
  if (viewCopy)
  {
    if (self->_isInvalidated)
    {
      v12 = PBFLogAssetHelper(contextCopy);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "(%p) bail _sizeContainerView; invalidated", &v24, 0xCu);
      }
    }

    else if (self->_activeDisplayContext == contextCopy)
    {
      type = [previewCopy type];
      v14 = [type isEqual:PBFPreviewTypeHero];

      activeDisplayContextSpec = self->_activeDisplayContextSpec;
      if (v14)
      {
        [(PBFPosterGalleryViewSpec *)activeDisplayContextSpec posterHeroContentSize];
      }

      else
      {
        [(PBFPosterGalleryViewSpec *)activeDisplayContextSpec posterContentSizeForOrientation:[(PBFDisplayContext *)v11 pbf_interfaceOrientation]];
      }

      v18 = v16;
      v19 = v17;
      [viewCopy frame];
      if (v21 != v18 || v20 != v19)
      {
        [viewCopy setFrame:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v18, v19}];
        [viewCopy setNeedsLayout];
        v22 = 1;
        goto LABEL_13;
      }
    }
  }

  v22 = 0;
LABEL_13:

  return v22;
}

- (void)_receiveUpdatedAssetForPosterPreview:(id)preview snapshotContext:(id)context snapshotBundle:(id)bundle fetchError:(id)error
{
  v65 = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  contextCopy = context;
  bundleCopy = bundle;
  errorCopy = error;
  v14 = BSDispatchQueueAssertMain();
  if (!self->_isInvalidated)
  {
    v15 = [(NSMapTable *)self->_previewToState objectForKey:previewCopy];
    if (!v15)
    {
      displayContext = PBFLogAssetHelper(0);
      if (os_log_type_enabled(displayContext, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy7 = self;
        _os_log_impl(&dword_21B526000, displayContext, OS_LOG_TYPE_INFO, "(%p) bail _receiveUpdatedAssetForPosterPreview; no state", buf, 0xCu);
      }

      goto LABEL_48;
    }

    [(PBFPosterGalleryAssetHelper *)self _invalidateHistogramCacheForPosterPreview:previewCopy];
    displayContext = [contextCopy displayContext];
    snapshotCollection = [v15 snapshotCollection];
    v58 = 0;
    v18 = [snapshotCollection snapshotFutureForContext:contextCopy outStatus:&v58];
    if (v58 != 3)
    {
      v25 = PBFLogAssetHelper(v18);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy7 = self;
        _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_INFO, "(%p) bail _receiveUpdatedAssetForPosterPreview; request was cancelled", buf, 0xCu);
      }

      goto LABEL_47;
    }

    v57 = snapshotCollection;
    if (!bundleCopy || errorCopy)
    {
      pbf_isGeneralCancelledError = [errorCopy pbf_isGeneralCancelledError];
      v27 = pbf_isGeneralCancelledError;
      v28 = PBFLogAssetHelper(pbf_isGeneralCancelledError);
      v29 = v28;
      if (v27)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          selfCopy7 = self;
          v61 = 2114;
          v62 = previewCopy;
          v63 = 2114;
          v64 = errorCopy;
          _os_log_impl(&dword_21B526000, v29, OS_LOG_TYPE_DEFAULT, "(%p) _receiveUpdatedAssetForPosterPreview; request was cancelled for preview %{public}@: %{public}@", buf, 0x20u);
        }

        v29 = [MEMORY[0x277CBEB98] setWithObject:previewCopy];
        [(PBFPosterGalleryAssetHelper *)self _stateWasUpdatedForPosterPreviews:v29];
      }

      else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        selfCopy7 = self;
        v61 = 2114;
        v62 = previewCopy;
        v63 = 2114;
        v64 = errorCopy;
        _os_log_error_impl(&dword_21B526000, v29, OS_LOG_TYPE_ERROR, "(%p) _receiveUpdatedAssetForPosterPreview; request failed for preview %{public}@ with error: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      activeDisplayContext = self->_activeDisplayContext;
      v20 = PBFLogAssetHelper(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        selfCopy7 = self;
        v61 = 2114;
        v62 = previewCopy;
        v63 = 2114;
        v64 = bundleCopy;
        _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_INFO, "(%p) _receiveUpdatedAssetForPosterPreview; preview %{public}@ received snapshot bundle %{public}@", buf, 0x20u);
      }

      if (displayContext == activeDisplayContext)
      {
        v22 = PBFLogAssetHelper(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          selfCopy7 = self;
          v61 = 2114;
          v62 = previewCopy;
          _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_INFO, "(%p) _receiveUpdatedAssetForPosterPreview; preview %{public}@ received active display context image; updating image views", buf, 0x16u);
        }

        snapshotBundleLayoutView = [v15 snapshotBundleLayoutView];
        snapshotBundleLayoutView2 = [v15 snapshotBundleLayoutView];
        if (snapshotBundleLayoutView2)
        {
        }

        else if (([v15 willUseLivePreview]& 1) == 0)
        {
          v51 = objc_opt_self();
          v52 = [(PBFPosterGalleryAssetHelper *)self _dequeueViewOfClass:v51];

          if (!v52)
          {
            v52 = objc_opt_new();
          }

          [v15 setSnapshotBundleLayoutView:v52];
          v50 = v52;
          goto LABEL_57;
        }

        v56 = snapshotBundleLayoutView;
        snapshotBundleLayoutView3 = [v15 snapshotBundleLayoutView];
        snapshotBundle = [snapshotBundleLayoutView3 snapshotBundle];
        v47 = [snapshotBundle isEqual:bundleCopy];

        if (v47)
        {
          v48 = 0;
          goto LABEL_58;
        }

        snapshotBundleLayoutView4 = [v15 snapshotBundleLayoutView];
        [snapshotBundleLayoutView4 setSnapshotBundle:bundleCopy];

        v50 = v56;
LABEL_57:
        v56 = v50;
        [PBFPosterGalleryAssetHelper _sizeContainerView:"_sizeContainerView:forPreview:displayContext:" forPreview:? displayContext:?];
        v48 = 1;
LABEL_58:
        asset = [v15 asset];
        assetViewController = [asset assetViewController];

        if (assetViewController && [assetViewController setSnapshotBundle:bundleCopy forDisplayContext:displayContext])
        {
          view = [assetViewController view];
          [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:view forPreview:previewCopy displayContext:displayContext];

          v48 = 1;
        }

        v30 = v48 ^ 1;
LABEL_28:
        v31 = PBFLogAssetHelper(v21);
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);

        if (v32)
        {
          v34 = PBFLogAssetHelper(v33);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            [PBFPosterGalleryAssetHelper _receiveUpdatedAssetForPosterPreview:snapshotContext:snapshotBundle:fetchError:];
          }
        }

        isVisible = [v15 isVisible];
        if (isVisible && (displayContext != self->_activeDisplayContext ? (v36 = 1) : (v36 = v30), (v36 & 1) == 0))
        {
          v41 = PBFLogAssetHelper(isVisible);
          v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);

          snapshotCollection = v57;
          if (v42)
          {
            v44 = PBFLogAssetHelper(v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              [PBFPosterGalleryAssetHelper _receiveUpdatedAssetForPosterPreview:snapshotContext:snapshotBundle:fetchError:];
            }
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained assetHelper:self didUpdateAssetsForPosterPreview:previewCopy];
        }

        else
        {
          v37 = PBFLogAssetHelper(isVisible);
          v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);

          snapshotCollection = v57;
          if (!v38)
          {
LABEL_46:
            [(PBFPosterGalleryAssetHelper *)self _stateWasUpdated:0];
LABEL_47:

LABEL_48:
            goto LABEL_49;
          }

          WeakRetained = PBFLogAssetHelper(v39);
          if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG))
          {
            [PBFPosterGalleryAssetHelper _receiveUpdatedAssetForPosterPreview:snapshotContext:snapshotBundle:fetchError:];
          }
        }

        goto LABEL_46;
      }
    }

    v30 = 1;
    goto LABEL_28;
  }

  v15 = PBFLogAssetHelper(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy7 = self;
    _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_DEFAULT, "(%p) bail _receiveUpdatedAssetForPosterPreview; invalidated", buf, 0xCu);
  }

LABEL_49:
}

- (void)_teardownStateForPosterPreviews:(id)previews
{
  v23 = *MEMORY[0x277D85DE8];
  previewsCopy = previews;
  BSDispatchQueueAssertMain();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = previewsCopy;
  v5 = [previewsCopy copy];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_previewToState objectForKey:v10];
        if (v11)
        {
          [(PBFPosterGalleryAssetHelper *)self _teardownState:v11];
          [(NSMapTable *)self->_previewToState removeObjectForKey:v10];
        }

        else
        {
          v12 = PBFLogAssetHelper(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            selfCopy = self;
            v20 = 2114;
            v21 = v10;
            _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_INFO, "(%p) bail _teardownStateForPosterPreviews; bail teardown for %{public}@; no state", buf, 0x16u);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)_teardownState:(id)state
{
  v29 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = BSDispatchQueueAssertMain();
  v6 = PBFLogAssetHelper(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    preview = [stateCopy preview];
    v25 = 134218242;
    selfCopy4 = self;
    v27 = 2114;
    v28 = preview;
    _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_INFO, "(%p) bail _teardownState; %{public}@", &v25, 0x16u);
  }

  willUseLivePreview = [stateCopy willUseLivePreview];
  if (willUseLivePreview)
  {
    v9 = PBFLogAssetHelper(willUseLivePreview);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      preview2 = [stateCopy preview];
      v25 = 134218242;
      selfCopy4 = self;
      v27 = 2114;
      v28 = preview2;
      _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_INFO, "(%p) _teardownState; %{public}@; tearing down live view controller", &v25, 0x16u);
    }

    [(PBFPosterGalleryAssetHelper *)self _teardownLiveViewControllerForState:stateCopy invalidate:1];
  }

  heroImageView = [stateCopy heroImageView];

  if (heroImageView)
  {
    v13 = PBFLogAssetHelper(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      preview3 = [stateCopy preview];
      v25 = 134218242;
      selfCopy4 = self;
      v27 = 2114;
      v28 = preview3;
      _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_INFO, "(%p) _teardownState; %{public}@; tearing down previewImageView", &v25, 0x16u);
    }

    heroImageView2 = [stateCopy heroImageView];
    [heroImageView2 updateImage:0 imageSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

    heroImageView3 = [stateCopy heroImageView];
    [(PBFPosterGalleryAssetHelper *)self _recycleView:heroImageView3];
    [stateCopy setHeroImageView:0];
  }

  snapshotBundleLayoutView = [stateCopy snapshotBundleLayoutView];

  if (snapshotBundleLayoutView)
  {
    v19 = PBFLogAssetHelper(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      preview4 = [stateCopy preview];
      v25 = 134218242;
      selfCopy4 = self;
      v27 = 2114;
      v28 = preview4;
      _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_INFO, "(%p) _teardownState; %{public}@; tearing down previewImageView", &v25, 0x16u);
    }

    snapshotBundleLayoutView2 = [stateCopy snapshotBundleLayoutView];
    [(PBFPosterGalleryAssetHelper *)self _recycleView:snapshotBundleLayoutView2];

    [stateCopy setSnapshotBundleLayoutView:0];
  }

  snapshotCollection = [stateCopy snapshotCollection];
  [snapshotCollection cancel];

  visibleStatesWithLivePreviewEnabled = self->_visibleStatesWithLivePreviewEnabled;
  preview5 = [stateCopy preview];
  [(NSMapTable *)visibleStatesWithLivePreviewEnabled removeObjectForKey:preview5];

  [(NSHashTable *)self->_alreadyPlayedLivePosters removeObject:stateCopy];
  [(NSHashTable *)self->_successfullyPlayedLivePosters removeObject:stateCopy];
  [(PBFPosterGalleryAssetHelper *)self _updateActivePosters];
}

- (void)_resetHydrationState
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = BSDispatchQueueAssertMain();
  v4 = PBFLogAssetHelper(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = self->_assetHydrationState - 1;
    v6 = @"PBFPosterGalleryAssetHydrationStateDefault";
    if (v5 <= 3)
    {
      v6 = off_2782C7840[v5];
    }

    v7 = 134218498;
    selfCopy = self;
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = @"PBFPosterGalleryAssetHydrationStateDefault";
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(%p) _resetHydrationState; going from %{public}@ -> %{public}@", &v7, 0x20u);
  }

  self->_assetHydrationState = 0;
  [(PBFPosterGalleryAssetHelper *)self _invalidateAllHistogramCache];
}

- (void)_updateActivePosters
{
  OUTLINED_FUNCTION_4();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  OUTLINED_FUNCTION_2_1(&dword_21B526000, v0, v1, "(%p) _updateActivePosters; failed to play any of %li demos.", v2, v3);
}

void __51__PBFPosterGalleryAssetHelper__updateActivePosters__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateActivePostersAfterFinishingExecuting:*(a1 + 32) successfully:a3 == 0];
}

- (void)_updateActivePostersAfterFinishingExecuting:(id)executing successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  executingCopy = executing;
  if (executingCopy)
  {
    [(NSHashTable *)self->_alreadyPlayedLivePosters addObject:executingCopy];
    [(NSMutableSet *)self->_executingLivePosterStates removeObject:executingCopy];
    if (successfullyCopy)
    {
      [(NSHashTable *)self->_successfullyPlayedLivePosters addObject:executingCopy];
    }
  }

  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__updateActivePosters object:0];
  [(PBFPosterGalleryAssetHelper *)self performSelector:sel__updateActivePosters withObject:0 afterDelay:0.0];
}

- (id)_dequeueViewOfClass:(Class)class
{
  reusableViewMap = [(PBFPosterGalleryAssetHelper *)self reusableViewMap];
  v5 = reusableViewMap;
  if (!reusableViewMap || ([reusableViewMap viewOfClass:class], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_opt_new();
  }

  return v6;
}

- (void)_recycleView:(id)view
{
  viewCopy = view;
  reusableViewMap = [(PBFPosterGalleryAssetHelper *)self reusableViewMap];
  [reusableViewMap recycleView:viewCopy];
}

- (BOOL)_setupLiveDisplayStyleForPreview:(id)preview
{
  v37 = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  v5 = BSDispatchQueueAssertMain();
  if (!self->_isInvalidated)
  {
    type = [previewCopy type];
    v8 = [type isEqual:PBFPreviewTypeHero];

    if (v8)
    {
      v6 = PBFLogAssetHelper(v9);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [PBFPosterGalleryAssetHelper _setupLiveDisplayStyleForPreview:];
      }

      goto LABEL_7;
    }

    v11 = [(NSMapTable *)self->_previewToState objectForKey:previewCopy];
    v6 = v11;
    if (v11)
    {
      willUseLivePreview = [v11 willUseLivePreview];
      if (willUseLivePreview)
      {
        asset = [v6 asset];
        assetViewController = [asset assetViewController];

        v16 = PBFLogAssetHelper(v15);
        v17 = v16;
        if (assetViewController)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            [PBFPosterGalleryAssetHelper _setupLiveDisplayStyleForPreview:];
          }
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            selfCopy2 = self;
            v35 = 2114;
            v36 = previewCopy;
            _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_INFO, "(%p) _setupLiveDisplayStyleForPreview: %{public}@; setting Up vc", buf, 0x16u);
          }

          v17 = +[PBFPosterSnapshotDefinition gallerySnapshotKeyFrameDefinition];
          v18 = [[PBFPosterAssetViewController alloc] initWithPreview:previewCopy definition:v17];
          [(PBFPosterAssetViewController *)v18 setDisplayContext:self->_activeDisplayContext];
          view = [(PBFPosterAssetViewController *)v18 view];
          [(PBFPosterGalleryAssetHelper *)self _sizeContainerView:view forPreview:previewCopy displayContext:self->_activeDisplayContext];

          posterDescriptorLookupInfo = [previewCopy posterDescriptorLookupInfo];
          posterDescriptorExtension = [posterDescriptorLookupInfo posterDescriptorExtension];
          posterExtensionBundleIdentifier = [posterDescriptorExtension posterExtensionBundleIdentifier];

          posterDescriptorPath = [posterDescriptorLookupInfo posterDescriptorPath];
          descriptorIdentifier = [posterDescriptorPath descriptorIdentifier];

          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:livePoster", posterExtensionBundleIdentifier, descriptorIdentifier];
          view2 = [(PBFPosterAssetViewController *)v18 view];
          [view2 setAccessibilityIdentifier:v25];

          WeakRetained = objc_loadWeakRetained(&self->_extensionProvider);
          [(PBFPosterAssetViewController *)v18 setExtensionProvider:WeakRetained];

          v28 = objc_loadWeakRetained(&self->_previewGenerator);
          [(PBFPosterAssetViewController *)v18 setComplicationPreviewGenerator:v28];

          [(PBFPosterAssetViewController *)v18 setReusableViewMap:self->_reusableViewMap];
          [(PBFPosterAssetViewController *)v18 setVisible:[v6 isVisible]];
          asset2 = [v6 asset];
          [asset2 setAssetViewController:v18];

          delegate = [(PBFPosterGalleryAssetHelper *)self delegate];
          [delegate assetHelper:self prepareForPosterPreview:previewCopy movingToLive:v18];

          delegate2 = [(PBFPosterGalleryAssetHelper *)self delegate];
          [delegate2 assetHelper:self didUpdateAssetsForPosterPreview:previewCopy];
        }

        v10 = 1;
        goto LABEL_22;
      }

      v17 = PBFLogAssetHelper(willUseLivePreview);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PBFPosterGalleryAssetHelper _setupLiveDisplayStyleForPreview:];
      }
    }

    else
    {
      v17 = PBFLogAssetHelper(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PBFPosterGalleryAssetHelper _setupLiveDisplayStyleForPreview:];
      }
    }

    v10 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v6 = PBFLogAssetHelper(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy2 = self;
    _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "(%p) bail _setupLiveDisplayStyleForPreview; invalidated", buf, 0xCu);
  }

LABEL_7:
  v10 = 0;
LABEL_23:

  return v10;
}

- (void)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = BSDispatchQueueAssertMain();
  isInvalidated = self->_isInvalidated;
  v5 = PBFLogAssetHelper(v3);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isInvalidated)
  {
    if (v6)
    {
      v8 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "(%p) bail invalidate; invalidated", &v8, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v8 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "(%p) invalidate: invalidating...", &v8, 0xCu);
    }

    self->_isInvalidating = 1;
    [(PBFPosterGalleryAssetHelper *)self cancel];
    reusableViewMap = self->_reusableViewMap;
    self->_reusableViewMap = 0;

    self->_isInvalidated = 1;
  }
}

- (void)cancel
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = BSDispatchQueueAssertMain();
  v4 = PBFLogAssetHelper(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy2 = self;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(%p) cancelling...", buf, 0xCu);
  }

  [(PBFPosterGalleryAssetHelper *)self _invalidateAllHistogramCache];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMapTable *)self->_previewToState copy];
  keyEnumerator = [v5 keyEnumerator];

  v7 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    *&v8 = 134218242;
    v14 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v12 = [(NSMapTable *)self->_previewToState objectForKey:*(*(&v15 + 1) + 8 * v11), v14];
        v13 = PBFLogAssetHelper(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          selfCopy2 = self;
          v21 = 2114;
          v22 = v12;
          _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "(%p) cancelling... tearing down %{public}@", buf, 0x16u);
        }

        [(PBFPosterGalleryAssetHelper *)self _teardownState:v12];
        ++v11;
      }

      while (v9 != v11);
      v9 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  [(NSMapTable *)self->_previewToState removeAllObjects];
}

- (void)_teardownLiveViewControllerForState:(id)state invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  v26 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  BSDispatchQueueAssertMain();
  asset = [stateCopy asset];
  assetViewController = [asset assetViewController];

  preview = PBFLogAssetHelper(v9);
  v11 = os_log_type_enabled(preview, OS_LOG_TYPE_DEFAULT);
  if (assetViewController)
  {
    if (v11)
    {
      v20 = 134218498;
      selfCopy2 = self;
      v22 = 2114;
      v23 = assetViewController;
      v24 = 1024;
      v25 = invalidateCopy;
      _os_log_impl(&dword_21B526000, preview, OS_LOG_TYPE_DEFAULT, "(%p) _teardownLiveViewController; gallery poster vc %{public}@ shouldInvalidate? %{BOOL}u", &v20, 0x1Cu);
    }

    preview = [stateCopy preview];
    [(NSMapTable *)self->_visibleStatesWithLivePreviewEnabled removeObjectForKey:preview];
    [(NSHashTable *)self->_alreadyPlayedLivePosters removeObject:stateCopy];
    [(NSHashTable *)self->_successfullyPlayedLivePosters removeObject:stateCopy];
    view = [assetViewController view];
    [view removeFromSuperview];

    [assetViewController removeFromParentViewController];
    [assetViewController invalidate];
    asset2 = [stateCopy asset];
    assetViewController2 = [asset2 assetViewController];
    [assetViewController2 setReusableViewMap:0];

    asset3 = [stateCopy asset];
    assetViewController3 = [asset3 assetViewController];
    [assetViewController3 setComplicationPreviewGenerator:0];

    asset4 = [stateCopy asset];
    assetViewController4 = [asset4 assetViewController];
    [assetViewController4 setExtensionProvider:0];

    asset5 = [stateCopy asset];
    [asset5 setAssetViewController:0];
  }

  else if (v11)
  {
    v20 = 134217984;
    selfCopy2 = self;
    _os_log_impl(&dword_21B526000, preview, OS_LOG_TYPE_DEFAULT, "(%p) bail _teardownLiveViewController; no gallery poster vc?", &v20, 0xCu);
  }
}

- (PBFPosterPreviewGenerator)previewGenerator
{
  WeakRetained = objc_loadWeakRetained(&self->_previewGenerator);

  return WeakRetained;
}

- (PBFExtensionProviding)extensionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionProvider);

  return WeakRetained;
}

- (PBFPosterGalleryAssetHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithPreviewGenerator:(char *)a1 extensionProvider:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"extensionProvider"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPreviewGenerator:(char *)a1 extensionProvider:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"previewGenerator"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterPreview:isVisible:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_stateWasUpdated:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_stateWasUpdated:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_updateHydrationStateIfNeeded
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_setupHeroShotsForPosterPreview:context:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_setupHeroShotsForPosterPreview:context:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_setupHeroShotsForPosterPreview:context:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_receiveUpdatedAssetForPosterPreview:snapshotContext:snapshotBundle:fetchError:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_receiveUpdatedAssetForPosterPreview:snapshotContext:snapshotBundle:fetchError:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_receiveUpdatedAssetForPosterPreview:snapshotContext:snapshotBundle:fetchError:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_setupLiveDisplayStyleForPreview:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end