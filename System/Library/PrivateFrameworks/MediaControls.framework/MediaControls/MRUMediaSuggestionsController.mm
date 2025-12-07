@interface MRUMediaSuggestionsController
- (MRUMediaSuggestionsController)initWithEndpointController:(id)controller metadataController:(id)metadataController dataSource:(id)source;
- (MRUMediaSuggestionsControllerDelegate)delegate;
- (void)metadataController:(id)controller didChangeNowPlayingInfo:(id)info;
- (void)playSuggestion:(id)suggestion completion:(id)completion;
- (void)setContext:(id)context;
- (void)setIsQueueHandoffActive:(BOOL)active;
- (void)setMediaSuggestions:(id)suggestions;
- (void)updateLastPlayedDate;
- (void)updateMediaSuggestions;
- (void)updatePlayingState;
@end

@implementation MRUMediaSuggestionsController

- (MRUMediaSuggestionsController)initWithEndpointController:(id)controller metadataController:(id)metadataController dataSource:(id)source
{
  controllerCopy = controller;
  metadataControllerCopy = metadataController;
  sourceCopy = source;
  v20.receiver = self;
  v20.super_class = MRUMediaSuggestionsController;
  v12 = [(MRUMediaSuggestionsController *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_endpointController, controller);
    if ([controllerCopy updatesActiveEndpointInPlace])
    {
      [(MRUEndpointController *)v13->_endpointController addObserver:v13];
    }

    objc_storeStrong(&v13->_metadataController, metadataController);
    [(MRUMetadataController *)v13->_metadataController addObserver:v13];
    objc_storeStrong(&v13->_dataSource, source);
    [(MRUMediaSuggestionsDataSource *)v13->_dataSource setDelegate:v13];
    v14 = dispatch_queue_create("com.apple.MediaControls.MRUMediaSuggestionsController/requestQueue", 0);
    requestQueue = v13->_requestQueue;
    v13->_requestQueue = v14;

    objc_storeStrong(&v13->_context, *MEMORY[0x1E69B0978]);
    v16 = +[MRULockScreenMonitor sharedMonitor];
    lockscreenMonitor = v13->_lockscreenMonitor;
    v13->_lockscreenMonitor = v16;

    [(MRULockScreenMonitor *)v13->_lockscreenMonitor addObserver:v13];
    nowPlayingInfo = [metadataControllerCopy nowPlayingInfo];
    v13->_isPlaying = [nowPlayingInfo isPlaying];

    [(MRUMediaSuggestionsController *)v13 updateLastPlayedDate];
  }

  return v13;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  if (![(NSString *)self->_context isEqualToString:?])
  {
    objc_storeStrong(&self->_context, context);
    [(MRUMediaSuggestionsController *)self updateMediaSuggestions];
  }
}

- (void)setIsQueueHandoffActive:(BOOL)active
{
  if (self->_isQueueHandoffActive != active)
  {
    self->_isQueueHandoffActive = active;
    [(MRUMediaSuggestionsController *)self updateMediaSuggestions];
  }
}

- (void)setMediaSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  if (![(NSArray *)self->_mediaSuggestions isEqualToArray:?])
  {
    objc_storeStrong(&self->_mediaSuggestions, suggestions);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained mediaSuggestionsController:self didChangeMediaSuggestions:suggestionsCopy];
  }
}

- (void)playSuggestion:(id)suggestion completion:(id)completion
{
  suggestionCopy = suggestion;
  completionCopy = completion;
  route = [(MRUEndpointController *)self->_endpointController route];
  endpoint = [route endpoint];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__MRUMediaSuggestionsController_playSuggestion_completion___block_invoke;
  v12[3] = &unk_1E7666370;
  v12[4] = self;
  v13 = suggestionCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = suggestionCopy;
  [v11 playOnEndpoint:endpoint completion:v12];
}

void __59__MRUMediaSuggestionsController_playSuggestion_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = MCLogCategoryDefault(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 40);
      *buf = 138543874;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Error trying to play suggestion: %{public}@ error: %{public}@", buf, 0x20u);
    }
  }

  if (*(a1 + 48))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__MRUMediaSuggestionsController_playSuggestion_completion___block_invoke_1;
    v8[3] = &unk_1E7663FD8;
    v10 = *(a1 + 48);
    v9 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

- (void)metadataController:(id)controller didChangeNowPlayingInfo:(id)info
{
  [(MRUMediaSuggestionsController *)self updatePlayingState:controller];

  [(MRUMediaSuggestionsController *)self updateMediaSuggestions];
}

- (void)updatePlayingState
{
  nowPlayingInfo = [(MRUMetadataController *)self->_metadataController nowPlayingInfo];
  v4 = nowPlayingInfo;
  v8 = nowPlayingInfo;
  if (self->_isPlaying)
  {
    isPlaying = [nowPlayingInfo isPlaying];
    v4 = v8;
    if ((isPlaying & 1) == 0)
    {
      v6 = [MEMORY[0x1E695DF00] now];
      lastPlayingDate = self->_lastPlayingDate;
      self->_lastPlayingDate = v6;

      v4 = v8;
    }
  }

  self->_isPlaying = [v4 isPlaying];
}

- (void)updateMediaSuggestions
{
  v50 = *MEMORY[0x1E69E9840];
  nowPlayingInfo = [(MRUMetadataController *)self->_metadataController nowPlayingInfo];
  mediaSuggestions = [(MRUMediaSuggestionsDataSource *)self->_dataSource mediaSuggestions];
  v5 = [mediaSuggestions objectForKeyedSubscript:self->_context];
  v6 = [v5 copy];

  v7 = [v6 count];
  lastPlayingDate = self->_lastPlayingDate;
  if (lastPlayingDate)
  {
    [(NSDate *)lastPlayingDate timeIntervalSinceNow];
    v10 = -v9 >= 480.0;
  }

  else
  {
    v10 = 0;
  }

  if ([(MRUEndpointController *)self->_endpointController isEndpointDiscovered])
  {
    v31 = objc_msgSend_state(self->_endpointController) == 3;
  }

  else
  {
    v31 = 0;
  }

  isDeviceLocked = [(MRULockScreenMonitor *)self->_lockscreenMonitor isDeviceLocked];
  isPlaying = [nowPlayingInfo isPlaying];
  showPlaceholder = [nowPlayingInfo showPlaceholder];
  isQueueHandoffActive = self->_isQueueHandoffActive;
  v15 = +[MRUFeatureFlagProvider isMediaSuggestionsDevEnabled];
  v30 = v7;
  v16 = !isDeviceLocked;
  v17 = v15 || v10;
  v18 = v7 >= 4 || v15;
  v19 = 0;
  if (v16)
  {
    v20 = isQueueHandoffActive | ~v18;
  }

  else
  {
    v20 = isQueueHandoffActive | ~MRUseInternalUI() | ~v18;
  }

  if (((v20 | isPlaying) & 1) == 0 && v31)
  {
    if ((v17 | showPlaceholder))
    {
      v19 = v6;
    }

    else
    {
      v19 = 0;
    }
  }

  v21 = v19;

  if (![(NSArray *)self->_mediaSuggestions isEqualToArray:v21])
  {
    objc_storeStrong(&self->_mediaSuggestions, v19);
    v23 = MCLogCategoryDefault(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = self->_isQueueHandoffActive;
      isPlaying2 = [nowPlayingInfo isPlaying];
      showPlaceholder2 = [nowPlayingInfo showPlaceholder];
      context = self->_context;
      *buf = 138545410;
      v33 = v24;
      v34 = 2048;
      v35 = v30;
      v36 = 1024;
      v37 = v16;
      v38 = 1024;
      v39 = v25;
      v40 = 1024;
      v41 = isPlaying2;
      v42 = 1024;
      v43 = v31;
      v44 = 1024;
      v45 = v17;
      v46 = 1024;
      v47 = showPlaceholder2;
      v48 = 2114;
      v49 = context;
      _os_log_impl(&dword_1A20FC000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ update media suggestions: #%lu | unlocked: %{BOOL}u | QHO: %{BOOL}u | playing: %{BOOL}u, connected: %{BOOL}u | elapsed: %{BOOL}u | placeholder: %{BOOL}u | context: %{public}@", buf, 0x44u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained mediaSuggestionsController:self didChangeMediaSuggestions:v21];
  }
}

- (void)updateLastPlayedDate
{
  route = [(MRUEndpointController *)self->_endpointController route];
  v4 = [objc_msgSend(route "endpoint")];

  v5 = [objc_alloc(MEMORY[0x1E69B0A98]) initWithOrigin:v4];
  objc_initWeak(&location, self);
  requestQueue = self->_requestQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__MRUMediaSuggestionsController_updateLastPlayedDate__block_invoke;
  v8[3] = &unk_1E7666398;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [v5 requestDeviceLastPlayingDateOnQueue:requestQueue completion:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __53__MRUMediaSuggestionsController_updateLastPlayedDate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = MCLogCategoryDefault(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      *buf = 138412802;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_ERROR, "%@, failed to get the last playing date for origin: %@, error: %@", buf, 0x20u);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__MRUMediaSuggestionsController_updateLastPlayedDate__block_invoke_7;
  v12[3] = &unk_1E7663980;
  objc_copyWeak(&v14, (a1 + 48));
  v13 = v5;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  objc_destroyWeak(&v14);
}

void __53__MRUMediaSuggestionsController_updateLastPlayedDate__block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLastPlayingDate:v2];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 updateMediaSuggestions];
}

- (MRUMediaSuggestionsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end