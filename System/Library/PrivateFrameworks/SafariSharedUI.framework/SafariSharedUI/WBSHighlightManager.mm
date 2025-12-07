@interface WBSHighlightManager
+ (void)initialize;
- (WBSHighlightManager)init;
- (WBSStartPageSuggestionsProviderDelegate)suggestionsProviderDelegate;
- (id)attributionViewForHighlight:(id)highlight;
- (void)_didFetchHighlights;
- (void)_enableNewSLAttributionViewAppereance;
- (void)_setHighlights:(id)highlights;
- (void)_showBannerIfNeededForPresenter:(id)presenter;
- (void)_updateAttributionViews;
- (void)_updateHighlights;
- (void)fetchMetadataForHighlight:(id)highlight completionHandler:(id)handler;
- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights;
- (void)highlightCenterDidAddHighlights:(id)highlights;
- (void)sendFeedbackForHighlight:(id)highlight withType:(unint64_t)type inPrivateBrowsing:(BOOL)browsing;
- (void)updateHighlightForAttributionPresenter:(id)presenter;
@end

@implementation WBSHighlightManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = NSClassFromString(&cfstr_Slhighlight.isa);
    if (v2)
    {
      v3 = v2;
      v4 = imp_implementationWithBlock(&__block_literal_global_18);

      class_addMethod(v3, sel_suggestionIdentifier, v4, "@@:");
    }
  }
}

- (WBSHighlightManager)init
{
  v13.receiver = self;
  v13.super_class = WBSHighlightManager;
  v2 = [(WBSHighlightManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Safari.HighlightManager", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;

    v5 = v2->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__WBSHighlightManager_init__block_invoke;
    block[3] = &unk_1E8283080;
    v6 = v2;
    v12 = v6;
    dispatch_async(v5, block);
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    linkDataCache = v6->_linkDataCache;
    v6->_linkDataCache = v7;

    [(WBSHighlightManager *)v6 _updateHighlights];
    [(WBSHighlightManager *)v6 _enableNewSLAttributionViewAppereance];
    v9 = v6;
  }

  return v2;
}

- (void)_updateHighlights
{
  self->_isFetchingHighlights = 1;
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__WBSHighlightManager__updateHighlights__block_invoke;
  block[3] = &unk_1E8283C90;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(internalQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_enableNewSLAttributionViewAppereance
{
  if (_enableNewSLAttributionViewAppereance_once != -1)
  {
    [WBSHighlightManager _enableNewSLAttributionViewAppereance];
  }
}

uint64_t __60__WBSHighlightManager__enableNewSLAttributionViewAppereance__block_invoke()
{
  SLAttributionViewClass = getSLAttributionViewClass();
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [SLAttributionViewClass useNewDefaultBackgroundStyle];
  }

  return result;
}

uint64_t __27__WBSHighlightManager_init__block_invoke(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getSLHighlightCenterClass_softClass;
  v12 = getSLHighlightCenterClass_softClass;
  if (!getSLHighlightCenterClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getSLHighlightCenterClass_block_invoke;
    v8[3] = &unk_1E8283D08;
    v8[4] = &v9;
    __getSLHighlightCenterClass_block_invoke(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = objc_alloc_init(v2);
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;

  return [*(*(a1 + 32) + 8) setDelegate:?];
}

void __40__WBSHighlightManager__updateHighlights__block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__WBSHighlightManager__updateHighlights__block_invoke_2;
  aBlock[3] = &unk_1E82856E8;
  objc_copyWeak(&v4, (a1 + 40));
  v2 = _Block_copy(aBlock);
  [*(*(a1 + 32) + 8) fetchHighlights:v2];

  objc_destroyWeak(&v4);
}

- (void)fetchMetadataForHighlight:(id)highlight completionHandler:(id)handler
{
  highlightCopy = highlight;
  handlerCopy = handler;
  identifier = [highlightCopy identifier];
  v9 = [(NSCache *)self->_linkDataCache objectForKey:identifier];
  if (v9)
  {
    handlerCopy[2](handlerCopy, v9);
  }

  else
  {
    attributions = [highlightCopy attributions];
    firstObject = [attributions firstObject];
    uniqueIdentifier = [firstObject uniqueIdentifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__WBSHighlightManager_fetchMetadataForHighlight_completionHandler___block_invoke;
    v13[3] = &unk_1E8285678;
    v14 = highlightCopy;
    selfCopy = self;
    v16 = identifier;
    v17 = handlerCopy;
    [(WBSHighlightManager *)self loadLinkMetadataForMessageWithGUID:uniqueIdentifier completionHandler:v13];
  }
}

void __67__WBSHighlightManager_fetchMetadataForHighlight_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = [*(a1 + 32) identifier];
    v9 = WBS_LOG_CHANNEL_PREFIXInterstellar(v7, v8);
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __67__WBSHighlightManager_fetchMetadataForHighlight_completionHandler___block_invoke_cold_1(v7, v10, v6);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v30 = v7;
      _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, "Highlight <%{public}@> has no metadata", buf, 0xCu);
    }

    v5 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  }

  v11 = [v5 URL];

  if (!v11)
  {
    v12 = [*(a1 + 32) resourceURL];
    [v5 setURL:v12];

    v13 = [v5 URL];
    [v5 setOriginalURL:v13];
  }

  v14 = [v5 title];

  if (!v14)
  {
    v15 = [v5 URL];
    v16 = [v15 safari_canonicalURL];
    v17 = [v16 safari_originalDataAsString];
    v18 = [v17 safari_simplifiedUserVisibleURLStringWithSimplifications:135 forDisplayOnly:1 simplifiedStringOffset:0];
    [v5 setTitle:v18];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WBSHighlightManager_fetchMetadataForHighlight_completionHandler___block_invoke_22;
  block[3] = &unk_1E8284E18;
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v24 = v6;
  v25 = v19;
  v26 = v5;
  v27 = v20;
  v28 = *(a1 + 56);
  v21 = v5;
  v22 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __67__WBSHighlightManager_fetchMetadataForHighlight_completionHandler___block_invoke_22(void *a1)
{
  if (!a1[4])
  {
    [*(a1[5] + 24) setObject:a1[6] forKey:a1[7]];
  }

  v2 = *(a1[8] + 16);

  return v2();
}

- (void)updateHighlightForAttributionPresenter:(id)presenter
{
  presenterCopy = presenter;
  v6 = presenterCopy;
  if (self->_isFetchingHighlights)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXInterstellar(presenterCopy, v5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v8)
    {
      *v14 = 0;
      _os_log_impl(&dword_1C6968000, v7, OS_LOG_TYPE_INFO, "Defer checking for Highlight until the Highlight Center finishes fetching.", v14, 2u);
    }

    v10 = WBS_LOG_CHANNEL_PREFIXInterstellar(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(WBSHighlightManager *)v10 updateHighlightForAttributionPresenter:v6];
    }

    deferredAttributionPresenters = self->_deferredAttributionPresenters;
    if (!deferredAttributionPresenters)
    {
      array = [MEMORY[0x1E695DF70] array];
      v13 = self->_deferredAttributionPresenters;
      self->_deferredAttributionPresenters = array;

      deferredAttributionPresenters = self->_deferredAttributionPresenters;
    }

    [(NSMutableArray *)deferredAttributionPresenters addObject:v6];
  }

  else
  {
    [(WBSHighlightManager *)self _showBannerIfNeededForPresenter:presenterCopy];
  }
}

- (void)_showBannerIfNeededForPresenter:(id)presenter
{
  presenterCopy = presenter;
  highlights = self->_highlights;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__WBSHighlightManager__showBannerIfNeededForPresenter___block_invoke;
  v15[3] = &unk_1E82856A0;
  v6 = presenterCopy;
  v16 = v6;
  v7 = [(NSArray *)highlights safari_firstObjectPassingTest:v15];
  v9 = v7;
  if (v7)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXInterstellar(v7, v8);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v11)
    {
      *v14 = 0;
      _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, "Found a matching Highlight", v14, 2u);
    }

    v13 = WBS_LOG_CHANNEL_PREFIXInterstellar(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(WBSHighlightManager *)v13 _showBannerIfNeededForPresenter:v6];
    }
  }

  [v6 displayAttributionBannerForHighlightIfNeeded:v9];
}

uint64_t __55__WBSHighlightManager__showBannerIfNeededForPresenter___block_invoke(uint64_t a1, void *a2)
{
  v3 = WBSURLForHighlight(a2);
  v4 = [v3 safari_canonicalURL];
  v5 = [v4 safari_userVisibleString];
  v6 = [*(a1 + 32) attributionPresenterURL];
  v7 = [v6 safari_canonicalURL];
  v8 = [v7 safari_userVisibleString];
  v9 = [v5 isEqualToString:v8];

  return v9;
}

- (void)sendFeedbackForHighlight:(id)highlight withType:(unint64_t)type inPrivateBrowsing:(BOOL)browsing
{
  highlightCopy = highlight;
  v10 = highlightCopy;
  if (!browsing)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXInterstellar(highlightCopy, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [WBSHighlightManager sendFeedbackForHighlight:v11 withType:v10 inPrivateBrowsing:type];
    }

    [(SLHighlightCenter *)self->_highlightCenter feedbackForHighlight:v10 withType:type completionBlock:0];
  }
}

- (void)_updateAttributionViews
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  highlights = [(WBSHighlightManager *)self highlights];
  v5 = [highlights countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(highlights);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [(NSMutableDictionary *)self->_highlightToAttributionViewMap objectForKeyedSubscript:identifier];
        if (v11)
        {
          [(NSMutableDictionary *)dictionary setObject:v11 forKeyedSubscript:identifier];
        }

        else
        {
          v12 = [objc_alloc(getSLAttributionViewClass()) initWithHighlight:v9];
          [(NSMutableDictionary *)dictionary setObject:v12 forKeyedSubscript:identifier];
        }
      }

      v6 = [highlights countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  highlightToAttributionViewMap = self->_highlightToAttributionViewMap;
  self->_highlightToAttributionViewMap = dictionary;
}

- (id)attributionViewForHighlight:(id)highlight
{
  highlightCopy = highlight;
  identifier = [highlightCopy identifier];
  v6 = [(NSMutableDictionary *)self->_highlightToAttributionViewMap objectForKeyedSubscript:identifier];
  if (!v6)
  {
    v6 = [objc_alloc(getSLAttributionViewClass()) initWithHighlight:highlightCopy];
    [(NSMutableDictionary *)self->_highlightToAttributionViewMap setObject:v6 forKeyedSubscript:identifier];
  }

  v7 = v6;

  return v7;
}

- (void)_setHighlights:(id)highlights
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [highlights safari_filterObjectsUsingBlock:&__block_literal_global_28];
  v5 = v4;
  if (v4 != self->_highlights)
  {
    if ([(NSArray *)v4 count]> 0x18)
    {
      v6 = [(NSArray *)v5 subarrayWithRange:0, 24];
    }

    else
    {
      v6 = [(NSArray *)v5 copy];
    }

    highlights = self->_highlights;
    self->_highlights = v6;

    [(WBSHighlightManager *)self _updateAttributionViews];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"WBSHighlightsContentDidChangeNotification" object:self];

    v9 = WBS_LOG_CHANNEL_PREFIXStartPage();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_highlights;
      v11 = v9;
      v13 = 134217984;
      v14 = [(NSArray *)v10 count];
      _os_log_impl(&dword_1C6968000, v11, OS_LOG_TYPE_INFO, "Received %lu highlights for suggestions", &v13, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_suggestionsProviderDelegate);
    [WeakRetained startPageSuggestionsProvider:self didUpdateSuggestions:self->_highlights];
  }
}

uint64_t __38__WBSHighlightManager__setHighlights___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 resourceURL];
  v3 = [v2 safari_isSharedTabGroupURL];

  return v3 ^ 1u;
}

void __40__WBSHighlightManager__updateHighlights__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v8 = WBS_LOG_CHANNEL_PREFIXInterstellar(v6, v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __40__WBSHighlightManager__updateHighlights__block_invoke_2_cold_1(v9, v6);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__WBSHighlightManager__updateHighlights__block_invoke_30;
    block[3] = &unk_1E8283A38;
    v10 = &v16;
    objc_copyWeak(&v16, (a1 + 32));
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = v9;
      *buf = 134217984;
      v18 = [v5 count];
      _os_log_impl(&dword_1C6968000, v11, OS_LOG_TYPE_INFO, "Fetched %ld Highlights.", buf, 0xCu);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__WBSHighlightManager__updateHighlights__block_invoke_31;
    v12[3] = &unk_1E8283C90;
    v10 = &v14;
    objc_copyWeak(&v14, (a1 + 32));
    v13 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }

  objc_destroyWeak(v10);
}

void __40__WBSHighlightManager__updateHighlights__block_invoke_30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didFetchHighlights];
    WeakRetained = v2;
  }
}

void __40__WBSHighlightManager__updateHighlights__block_invoke_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setHighlights:*(a1 + 32)];
    [v3 _didFetchHighlights];
    WeakRetained = v3;
  }
}

- (void)_didFetchHighlights
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_deferredAttributionPresenters;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [(WBSHighlightManager *)self _showBannerIfNeededForPresenter:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  deferredAttributionPresenters = self->_deferredAttributionPresenters;
  self->_deferredAttributionPresenters = 0;

  self->_isFetchingHighlights = 0;
}

- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights
{
  highlightsCopy = highlights;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__WBSHighlightManager_highlightCenter_didRemoveHighlights___block_invoke;
  v7[3] = &unk_1E82834A0;
  v8 = highlightsCopy;
  selfCopy = self;
  v6 = highlightsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __59__WBSHighlightManager_highlightCenter_didRemoveHighlights___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXInterstellar(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    *buf = 134217984;
    v18 = [v4 count];
    _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_INFO, "%ld Highlight(s) removed.", buf, 0xCu);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__WBSHighlightManager_highlightCenter_didRemoveHighlights___block_invoke_33;
  v16[3] = &unk_1E8285710;
  v6 = *(a1 + 32);
  v16[4] = *(a1 + 40);
  v7 = [v6 safari_setByApplyingBlock:v16];
  [*(a1 + 40) _handleRemovalOfHighlights:v7];
  v8 = *(*(a1 + 40) + 64);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __59__WBSHighlightManager_highlightCenter_didRemoveHighlights___block_invoke_2;
  v14 = &unk_1E82856A0;
  v15 = v7;
  v9 = v7;
  v10 = [v8 safari_filterObjectsUsingBlock:&v11];
  [*(a1 + 40) _setHighlights:{v10, v11, v12, v13, v14}];
}

id __59__WBSHighlightManager_highlightCenter_didRemoveHighlights___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  [*(*(a1 + 32) + 24) removeObjectForKey:v3];

  return v3;
}

uint64_t __59__WBSHighlightManager_highlightCenter_didRemoveHighlights___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)highlightCenterDidAddHighlights:(id)highlights
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__WBSHighlightManager_highlightCenterDidAddHighlights___block_invoke;
  block[3] = &unk_1E8283080;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __55__WBSHighlightManager_highlightCenterDidAddHighlights___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXInterstellar(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C6968000, v3, OS_LOG_TYPE_INFO, "Highlight Center did add Highlights.", v5, 2u);
  }

  return [*(a1 + 32) _updateHighlights];
}

- (WBSStartPageSuggestionsProviderDelegate)suggestionsProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsProviderDelegate);

  return WeakRetained;
}

void __67__WBSHighlightManager_fetchMetadataForHighlight_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [a3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(&dword_1C6968000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch metadata for Highlight <%{public}@>: %{public}@", v6, 0x16u);
}

- (void)updateHighlightForAttributionPresenter:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 attributionPresenterURL];
  v5 = [v4 safari_userVisibleString];
  LODWORD(v12) = 138477827;
  *(&v12 + 4) = v5;
  OUTLINED_FUNCTION_0_0(&dword_1C6968000, v6, v7, "Defer checking for Highlight for tab with URL: %{private}@", v8, v9, v10, v11, v12, DWORD2(v12));
}

- (void)_showBannerIfNeededForPresenter:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 attributionPresenterURL];
  v5 = [v4 safari_userVisibleString];
  LODWORD(v12) = 138477827;
  *(&v12 + 4) = v5;
  OUTLINED_FUNCTION_0_0(&dword_1C6968000, v6, v7, "Found a matching Highlight for tab with URL: %{private}@", v8, v9, v10, v11, v12, DWORD2(v12));
}

- (void)sendFeedbackForHighlight:(void *)a1 withType:(void *)a2 inPrivateBrowsing:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 identifier];
  v7 = @"Other";
  if (a3 == 1)
  {
    v7 = @"Interacted";
  }

  if (!a3)
  {
    v7 = @"Displayed";
  }

  v8 = v7;
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(&dword_1C6968000, v5, OS_LOG_TYPE_DEBUG, "Sending feedback for highlight <%{public}@>: <%{public}@>", v9, 0x16u);
}

void __40__WBSHighlightManager__updateHighlights__block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Failed to fetch highlights: %{public}@", &v5, 0xCu);
}

@end