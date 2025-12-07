@interface SASWallpaperWorkspaceSnapshotFetcher
- (SASFetchesWallpaperDelegate)delegate;
- (float)_timeoutForSnapshotRequest;
- (int)_maximumNumberOfLoadingAttempts;
- (void)_invalidateWorkspaceObservation;
- (void)activeConfigurationDidUpdate:(id)update;
- (void)dealloc;
- (void)fetch;
- (void)invalidate;
- (void)posterWorkspace:(id)workspace didAddInstance:(id)instance;
- (void)posterWorkspace:(id)workspace didUpdateInstance:(id)instance;
- (void)snapshotFromWorkSpace:(id)space;
- (void)textureFromSceneSnapshot:(id)snapshot orientation:(int64_t)orientation;
@end

@implementation SASWallpaperWorkspaceSnapshotFetcher

- (void)dealloc
{
  observer = [(SASWallpaperWorkspaceSnapshotFetcher *)self observer];
  [observer invalidate];

  workspace = [(SASWallpaperWorkspaceSnapshotFetcher *)self workspace];
  [workspace removeWorkspaceObserver:self];

  v5.receiver = self;
  v5.super_class = SASWallpaperWorkspaceSnapshotFetcher;
  [(SASWallpaperWorkspaceSnapshotFetcher *)&v5 dealloc];
}

- (void)fetch
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_3_cold_1(v1, v2, v3);
}

void __45__SASWallpaperWorkspaceSnapshotFetcher_fetch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained variant];
  if (v5 == 1)
  {
    v8 = +[SASUILogging bookendFacility];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_265A4C000, v8, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: StateObserver handler called with HomeScreen configuration", v12, 2u);
    }

    v9 = [v3 activeHome];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v3 activeLock];
    }

    v7 = v11;

    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (!v5)
  {
    v6 = +[SASUILogging bookendFacility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_265A4C000, v6, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: StateObserver handler called with LockScreen configuration", buf, 2u);
    }

    v7 = [v3 activeLock];
    if (v7)
    {
LABEL_6:
      [WeakRetained setCurrentPosterConfiguration:v7];
      [WeakRetained activeConfigurationDidUpdate:v7];
    }
  }
}

- (void)invalidate
{
  [(SASWallpaperWorkspaceSnapshotFetcher *)self setDelegate:0];

  [(SASWallpaperWorkspaceSnapshotFetcher *)self _invalidateWorkspaceObservation];
}

- (void)activeConfigurationDidUpdate:(id)update
{
  v11 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  currentPosterConfiguration = [(SASWallpaperWorkspaceSnapshotFetcher *)self currentPosterConfiguration];

  if (currentPosterConfiguration == updateCopy)
  {
    workspace = [(SASWallpaperWorkspaceSnapshotFetcher *)self workspace];
    v7 = [workspace workspaceForPoster:updateCopy];

    v8 = +[SASUILogging bookendFacility];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_265A4C000, v8, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: activeConfigurationDidUpdate got workspace %p", &v9, 0xCu);
    }

    if (v7)
    {
      [(SASWallpaperWorkspaceSnapshotFetcher *)self snapshotFromWorkSpace:v7];
    }
  }
}

- (void)posterWorkspace:(id)workspace didAddInstance:(id)instance
{
  instanceCopy = instance;
  v6 = +[SASUILogging bookendFacility];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265A4C000, v6, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: didAddInstance called", buf, 2u);
  }

  poster = [instanceCopy poster];
  currentPosterConfiguration = [(SASWallpaperWorkspaceSnapshotFetcher *)self currentPosterConfiguration];
  v9 = [poster isEqual:currentPosterConfiguration];

  if (v9)
  {
    v10 = +[SASUILogging bookendFacility];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_265A4C000, v10, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: didAddInstance current configuration", v11, 2u);
    }

    [(SASWallpaperWorkspaceSnapshotFetcher *)self snapshotFromWorkSpace:instanceCopy];
  }
}

- (void)posterWorkspace:(id)workspace didUpdateInstance:(id)instance
{
  instanceCopy = instance;
  v6 = +[SASUILogging bookendFacility];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265A4C000, v6, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: didUpdateInstance called", buf, 2u);
  }

  poster = [instanceCopy poster];
  currentPosterConfiguration = [(SASWallpaperWorkspaceSnapshotFetcher *)self currentPosterConfiguration];
  v9 = [poster isEqual:currentPosterConfiguration];

  if (v9)
  {
    v10 = +[SASUILogging bookendFacility];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_265A4C000, v10, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: didUpdateInstance current configuration", v11, 2u);
    }

    [(SASWallpaperWorkspaceSnapshotFetcher *)self snapshotFromWorkSpace:instanceCopy];
  }
}

- (void)snapshotFromWorkSpace:(id)space
{
  spaceCopy = space;
  currentPosterConfiguration = [(SASWallpaperWorkspaceSnapshotFetcher *)self currentPosterConfiguration];
  objc_initWeak(&location, currentPosterConfiguration);

  v6 = +[SASUILogging bookendFacility];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_265A4C000, v6, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: snapshotFromWorkSpace", &buf, 2u);
  }

  objc_initWeak(&buf, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke;
  v8[3] = &unk_279BB2A68;
  objc_copyWeak(&v11, &buf);
  v9 = spaceCopy;
  v7 = spaceCopy;
  objc_copyWeak(&v12, &location);
  selfCopy = self;
  dispatch_async(MEMORY[0x277D85CD0], v8);
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&buf);
  objc_destroyWeak(&location);
}

void __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    [WeakRetained _timeoutForSnapshotRequest];
    v6 = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_2;
    v7[3] = &unk_279BB2A40;
    objc_copyWeak(&v8, (a1 + 48));
    objc_copyWeak(&v9, (a1 + 56));
    v7[4] = *(a1 + 40);
    [v4 snapshotWithTimeout:v7 completion:v6];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v8);
  }
}

void __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_initWeak(&location, WeakRetained);
    v10 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_3;
    block[3] = &unk_279BB2A18;
    objc_copyWeak(&v17, &location);
    objc_copyWeak(v18, (a1 + 48));
    v11 = v8;
    v12 = *(a1 + 32);
    v14 = v11;
    v15 = v12;
    v16 = v7;
    v18[1] = a3;
    dispatch_async(v10, block);

    objc_destroyWeak(v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 64));
    if (v3 && ([WeakRetained currentPosterConfiguration], v4 = objc_claimAutoreleasedReturnValue(), v4, v3 == v4))
    {
      if (!*(a1 + 32))
      {
        [WeakRetained textureFromSceneSnapshot:*(a1 + 48) orientation:*(a1 + 72)];
        goto LABEL_7;
      }

      v6 = +[SASUILogging bookendFacility];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_3_cold_1((a1 + 32), WeakRetained, v6);
      }

      [WeakRetained _invalidateWorkspaceObservation];
      v7 = [WeakRetained delegate];

      if (v7)
      {
        v8 = [WeakRetained currentAttempt];
        if (v8 >= [WeakRetained _maximumNumberOfLoadingAttempts])
        {
          v9 = +[SASUILogging bookendFacility];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_3_cold_2(v9);
          }

          v10 = [WeakRetained delegate];
          [v10 wallpaperFetcher:*(a1 + 40) failedToLoadWithError:*(a1 + 32)];
        }

        else
        {
          [WeakRetained setCurrentAttempt:{objc_msgSend(WeakRetained, "currentAttempt") + 1}];
          [WeakRetained fetch];
        }

        goto LABEL_7;
      }

      v5 = +[SASUILogging bookendFacility];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_3_cold_3(v5);
      }
    }

    else
    {
      v5 = +[SASUILogging bookendFacility];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_265A4C000, v5, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: Active configuration has changed during snapshot request.", v11, 2u);
      }
    }

LABEL_7:
  }
}

- (void)textureFromSceneSnapshot:(id)snapshot orientation:(int64_t)orientation
{
  v18 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  v7 = +[SASUILogging bookendFacility];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    orientationCopy = orientation;
    _os_log_impl(&dword_265A4C000, v7, OS_LOG_TYPE_DEFAULT, "WorkspaceSnapshotFetcher: textureFromSnapshot called with orientation: %ld", buf, 0xCu);
  }

  v8 = objc_autoreleasePoolPush();
  iOSurface = [snapshotCopy IOSurface];
  v10 = [objc_alloc(MEMORY[0x277D755B8]) _initWithIOSurface:iOSurface scale:__UIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation(1 orientation:{orientation), 1.0}];
  objc_initWeak(buf, self);
  queue = [(SASWallpaperWorkspaceSnapshotFetcher *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SASWallpaperWorkspaceSnapshotFetcher_textureFromSceneSnapshot_orientation___block_invoke;
  v13[3] = &unk_279BB2A90;
  objc_copyWeak(&v15, buf);
  v14 = v10;
  v12 = v10;
  dispatch_async(queue, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  objc_autoreleasePoolPop(v8);
}

void __77__SASWallpaperWorkspaceSnapshotFetcher_textureFromSceneSnapshot_orientation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 wallpaperFetcher:v4 didFinishWithImage:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)_invalidateWorkspaceObservation
{
  observer = [(SASWallpaperWorkspaceSnapshotFetcher *)self observer];
  [observer invalidate];

  [(SASWallpaperWorkspaceSnapshotFetcher *)self setObserver:0];
  workspace = [(SASWallpaperWorkspaceSnapshotFetcher *)self workspace];
  [workspace removeWorkspaceObserver:self];

  [(SASWallpaperWorkspaceSnapshotFetcher *)self setWorkspace:0];
  [(SASWallpaperWorkspaceSnapshotFetcher *)self setStateObserver:0];

  [(SASWallpaperWorkspaceSnapshotFetcher *)self setCurrentPosterConfiguration:0];
}

- (float)_timeoutForSnapshotRequest
{
  v2 = +[SASPreferencesManager shared];
  v3 = [v2 readValueForKey:3];

  if (v3)
  {
    [v3 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.25;
  }

  return v5;
}

- (int)_maximumNumberOfLoadingAttempts
{
  v2 = +[SASPreferencesManager shared];
  v3 = [v2 readValueForKey:2];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 5;
  }

  return intValue;
}

- (SASFetchesWallpaperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

void __62__SASWallpaperWorkspaceSnapshotFetcher_snapshotFromWorkSpace___block_invoke_3_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = 138412546;
  v6 = v4;
  v7 = 1024;
  v8 = [a2 currentAttempt];
  _os_log_error_impl(&dword_265A4C000, a3, OS_LOG_TYPE_ERROR, "WorkspaceSnapshotFetcher: Error fetching snapshot: %@, attempt: %i", &v5, 0x12u);
}

@end