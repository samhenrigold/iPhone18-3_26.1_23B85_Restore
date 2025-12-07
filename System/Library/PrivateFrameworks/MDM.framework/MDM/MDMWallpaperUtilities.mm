@interface MDMWallpaperUtilities
- (PRSExternalSystemService)externalPosterService;
- (PRSService)posterService;
- (id)_storeImageToTempDirectory:(id)directory;
- (void)_createNewConfigurationIfNeeedWithCompletionHandler:(id)handler;
- (void)_createNewConfigurationWithCompletionHandler:(id)handler;
- (void)_removeImageFromURL:(id)l;
- (void)_setWallpaper:(id)wallpaper forConfigurationWithUUID:(id)d setLockScreen:(BOOL)screen setHomeScreen:(BOOL)homeScreen completionHandler:(id)handler;
- (void)_updateWallpaperConfiguraitonWithUUID:(id)d updates:(id)updates completionHandler:(id)handler;
- (void)_updateWallpaperConfiguraitonWithUUID:(id)d updates:(id)updates retryCount:(unint64_t)count completionHandler:(id)handler;
- (void)_verifyWallpaperConfigExistsWithUUID:(id)d completionHandler:(id)handler;
- (void)setWallpaper:(id)wallpaper forLockScreen:(BOOL)screen homeScreen:(BOOL)homeScreen completionHandler:(id)handler;
@end

@implementation MDMWallpaperUtilities

- (void)setWallpaper:(id)wallpaper forLockScreen:(BOOL)screen homeScreen:(BOOL)homeScreen completionHandler:(id)handler
{
  wallpaperCopy = wallpaper;
  handlerCopy = handler;
  v12 = [(MDMWallpaperUtilities *)self _storeImageToTempDirectory:wallpaperCopy];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__MDMWallpaperUtilities_setWallpaper_forLockScreen_homeScreen_completionHandler___block_invoke;
  v15[3] = &unk_27982D5B8;
  objc_copyWeak(&v18, &location);
  v13 = handlerCopy;
  v17 = v13;
  v14 = v12;
  v16 = v14;
  screenCopy = screen;
  homeScreenCopy = homeScreen;
  [(MDMWallpaperUtilities *)self _createNewConfigurationIfNeeedWithCompletionHandler:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __81__MDMWallpaperUtilities_setWallpaper_forLockScreen_homeScreen_completionHandler___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v8)
    {
      v10 = *(a1 + 40);
      if (v10)
      {
        (*(v10 + 16))(v10, v8);
      }
    }

    else
    {
      objc_initWeak(&location, WeakRetained);
      v11 = *(a1 + 32);
      v12 = *(a1 + 56) | a2;
      v13 = *(a1 + 57) | a2;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __81__MDMWallpaperUtilities_setWallpaper_forLockScreen_homeScreen_completionHandler___block_invoke_2;
      v14[3] = &unk_27982D590;
      objc_copyWeak(&v17, &location);
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      [WeakRetained _setWallpaper:v11 forConfigurationWithUUID:v7 setLockScreen:v12 & 1 setHomeScreen:v13 & 1 completionHandler:v14];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

void __81__MDMWallpaperUtilities_setWallpaper_forLockScreen_homeScreen_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _removeImageFromURL:*(a1 + 32)];
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, v6);
    }
  }
}

- (void)_createNewConfigurationIfNeeedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
  wallpaperConfigurationUUID = [mEMORY[0x277D24648] wallpaperConfigurationUUID];

  if (wallpaperConfigurationUUID)
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "Existing wallpaper config UUID is not nil.", buf, 2u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77__MDMWallpaperUtilities__createNewConfigurationIfNeeedWithCompletionHandler___block_invoke;
    v8[3] = &unk_27982D5E0;
    v11 = handlerCopy;
    v9 = wallpaperConfigurationUUID;
    selfCopy = self;
    [(MDMWallpaperUtilities *)self _verifyWallpaperConfigExistsWithUUID:v9 completionHandler:v8];
  }

  else
  {
    [(MDMWallpaperUtilities *)self _createNewConfigurationWithCompletionHandler:handlerCopy];
  }
}

uint64_t __77__MDMWallpaperUtilities__createNewConfigurationIfNeeedWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "Found existing wallpaper configuration.", v7, 2u);
    }

    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v5 _createNewConfigurationWithCompletionHandler:v6];
  }
}

- (void)_createNewConfigurationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Will create new wallpaper configuration...", buf, 2u);
  }

  objc_initWeak(buf, self);
  posterService = [(MDMWallpaperUtilities *)self posterService];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__MDMWallpaperUtilities__createNewConfigurationWithCompletionHandler___block_invoke;
  v8[3] = &unk_27982D608;
  objc_copyWeak(&v10, buf);
  v7 = handlerCopy;
  v9 = v7;
  [posterService createPosterConfigurationForProviderIdentifier:@"com.apple.PhotosUIPrivate.PhotosPosterProvider" posterDescriptorIdentifier:0 role:0 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __70__MDMWallpaperUtilities__createNewConfigurationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = *DMCLogObjects();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = 138543362;
        v15 = v6;
        _os_log_impl(&dword_2561F5000, v8, OS_LOG_TYPE_ERROR, "Failed to create poster configuration with error: %{public}@", &v14, 0xCu);
      }

      v9 = *(a1 + 32);
      if (v9)
      {
        (*(v9 + 16))(v9, 0, 0, v6);
      }
    }

    else
    {
      v10 = [v5 serverUUID];
      v11 = [MEMORY[0x277D24648] sharedConfiguration];
      [v11 setWallpaperConfigurationUUID:v10];

      v12 = *DMCLogObjects();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v10;
        _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "Poster configuration created with UUID: %{public}@", &v14, 0xCu);
      }

      v13 = *(a1 + 32);
      if (v13)
      {
        (*(v13 + 16))(v13, 1, v10, 0);
      }
    }
  }
}

- (void)_verifyWallpaperConfigExistsWithUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  externalPosterService = [(MDMWallpaperUtilities *)self externalPosterService];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__MDMWallpaperUtilities__verifyWallpaperConfigExistsWithUUID_completionHandler___block_invoke;
  v11[3] = &unk_27982D630;
  objc_copyWeak(&v14, &location);
  v9 = dCopy;
  v12 = v9;
  v10 = handlerCopy;
  v13 = v10;
  [externalPosterService fetchEligibleConfigurationsWithCompletion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __80__MDMWallpaperUtilities__verifyWallpaperConfigExistsWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = *DMCLogObjects();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 138543362;
        v12 = v6;
        _os_log_impl(&dword_2561F5000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch eligible configuration with error: %{public}@", &v11, 0xCu);
      }
    }

    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Wallpaper configuration with UUID (%{public}@) exists.", &v11, 0xCu);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), [v5 containsObject:*(a1 + 32)]);
  }
}

- (void)_setWallpaper:(id)wallpaper forConfigurationWithUUID:(id)d setLockScreen:(BOOL)screen setHomeScreen:(BOOL)homeScreen completionHandler:(id)handler
{
  homeScreenCopy = homeScreen;
  screenCopy = screen;
  wallpaperCopy = wallpaper;
  dCopy = d;
  handlerCopy = handler;
  v15 = objc_opt_new();
  if (screenCopy)
  {
    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v16, OS_LOG_TYPE_DEFAULT, "Will update lock screen", buf, 2u);
    }

    v17 = [MEMORY[0x277D3E9C8] posterUpdateLockScreenPosterWithImageAtURL:wallpaperCopy];
    [v15 addObject:v17];
  }

  if (homeScreenCopy)
  {
    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v18, OS_LOG_TYPE_DEFAULT, "Will update home screen", buf, 2u);
    }

    v19 = [MEMORY[0x277D3E9C8] posterUpdateHomeScreenPosterWithImageAtURL:wallpaperCopy];
    v20 = [MEMORY[0x277D3E9C8] posterUpdateHomeScreenAppearance:4];
    [v15 addObject:v19];
    [v15 addObject:v20];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __110__MDMWallpaperUtilities__setWallpaper_forConfigurationWithUUID_setLockScreen_setHomeScreen_completionHandler___block_invoke;
  v22[3] = &unk_27982BD00;
  v23 = handlerCopy;
  v21 = handlerCopy;
  [(MDMWallpaperUtilities *)self _updateWallpaperConfiguraitonWithUUID:dCopy updates:v15 retryCount:2 completionHandler:v22];
}

- (void)_updateWallpaperConfiguraitonWithUUID:(id)d updates:(id)updates retryCount:(unint64_t)count completionHandler:(id)handler
{
  dCopy = d;
  updatesCopy = updates;
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __100__MDMWallpaperUtilities__updateWallpaperConfiguraitonWithUUID_updates_retryCount_completionHandler___block_invoke;
  v16[3] = &unk_27982D658;
  v19 = handlerCopy;
  countCopy = count;
  v16[4] = self;
  v17 = dCopy;
  v18 = updatesCopy;
  v13 = handlerCopy;
  v14 = updatesCopy;
  v15 = dCopy;
  [(MDMWallpaperUtilities *)self _updateWallpaperConfiguraitonWithUUID:v15 updates:v14 completionHandler:v16];
}

void __100__MDMWallpaperUtilities__updateWallpaperConfiguraitonWithUUID_updates_retryCount_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 64);
    *buf = 134217984;
    v19 = v5;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "Failed to update wallpaper. Retry count %ld", buf, 0xCu);
  }

  if (*(a1 + 64))
  {
    v6 = dispatch_time(0, 500000000);
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__MDMWallpaperUtilities__updateWallpaperConfiguraitonWithUUID_updates_retryCount_completionHandler___block_invoke_8;
    block[3] = &unk_27982D1D0;
    v13 = *(a1 + 32);
    v8 = *(&v13 + 1);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v17 = *(a1 + 64);
    v11 = v10;
    *&v12 = v9;
    *(&v12 + 1) = v11;
    v15 = v13;
    v16 = v12;
    dispatch_after(v6, v7, block);
  }

  else
  {
LABEL_6:
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __100__MDMWallpaperUtilities__updateWallpaperConfiguraitonWithUUID_updates_retryCount_completionHandler___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "Retry setting wallpaper...", v5, 2u);
  }

  return [*(a1 + 32) _updateWallpaperConfiguraitonWithUUID:*(a1 + 40) updates:*(a1 + 48) retryCount:*(a1 + 64) - 1 completionHandler:*(a1 + 56)];
}

- (void)_updateWallpaperConfiguraitonWithUUID:(id)d updates:(id)updates completionHandler:(id)handler
{
  dCopy = d;
  updatesCopy = updates;
  handlerCopy = handler;
  if (dCopy && [updatesCopy count])
  {
    objc_initWeak(&location, self);
    posterService = [(MDMWallpaperUtilities *)self posterService];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __89__MDMWallpaperUtilities__updateWallpaperConfiguraitonWithUUID_updates_completionHandler___block_invoke;
    v12[3] = &unk_27982D680;
    objc_copyWeak(&v14, &location);
    v13 = handlerCopy;
    [posterService updatePosterConfigurationMatchingUUID:dCopy updates:updatesCopy completion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __89__MDMWallpaperUtilities__updateWallpaperConfiguraitonWithUUID_updates_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = *DMCLogObjects();
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v7;
        _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_ERROR, "Failed to update poster configuration UUID with error: %{public}@", buf, 0xCu);
      }

      v10 = *(a1 + 32);
      if (v10)
      {
        (*(v10 + 16))(v10, v7);
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Poster configuration updated.", buf, 2u);
      }

      v11 = [WeakRetained posterService];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __89__MDMWallpaperUtilities__updateWallpaperConfiguraitonWithUUID_updates_completionHandler___block_invoke_13;
      v12[3] = &unk_27982BD00;
      v13 = *(a1 + 32);
      [v11 updateSelectedForRoleIdentifier:@"PRPosterRoleLockScreen" newlySelectedConfiguration:v6 completion:v12];
    }
  }
}

void __89__MDMWallpaperUtilities__updateWallpaperConfiguraitonWithUUID_updates_completionHandler___block_invoke_13(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *DMCLogObjects();
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = 138543362;
    v11 = v3;
    v5 = "Failed to selected configuration with error: %{public}@";
    v6 = v4;
    v7 = OS_LOG_TYPE_ERROR;
    v8 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    LOWORD(v10) = 0;
    v5 = "Poster configuration selected.";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 2;
  }

  _os_log_impl(&dword_2561F5000, v6, v7, v5, &v10, v8);
LABEL_7:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

- (PRSService)posterService
{
  posterService = self->_posterService;
  if (!posterService)
  {
    v4 = objc_alloc_init(MEMORY[0x277D3EA00]);
    v5 = self->_posterService;
    self->_posterService = v4;

    posterService = self->_posterService;
  }

  return posterService;
}

- (PRSExternalSystemService)externalPosterService
{
  externalPosterService = self->_externalPosterService;
  if (!externalPosterService)
  {
    v4 = objc_alloc_init(MEMORY[0x277D3E940]);
    v5 = self->_externalPosterService;
    self->_externalPosterService = v4;

    externalPosterService = self->_externalPosterService;
  }

  return externalPosterService;
}

- (id)_storeImageToTempDirectory:(id)directory
{
  v21 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"MDMWallpaper.png"];

  v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v5];
  v7 = UIImagePNGRepresentation(directoryCopy);

  v16 = 0;
  v8 = [v7 writeToURL:v6 options:1 error:&v16];
  v9 = v16;

  v10 = *DMCLogObjects();
  if (v8)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138543362;
    v18 = v6;
    v11 = "Image stored to url: %{public}@";
    v12 = v10;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 138543618;
    v18 = v6;
    v19 = 2114;
    v20 = v9;
    v11 = "Failed to write image to url: %{public}@, error: %{public}@";
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 22;
  }

  _os_log_impl(&dword_2561F5000, v12, v13, v11, buf, v14);
LABEL_7:

  return v6;
}

- (void)_removeImageFromURL:(id)l
{
  v10 = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = 0;
  [defaultManager removeItemAtURL:lCopy error:&v7];
  v5 = v7;

  if (v5)
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = lCopy;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "Failed to remove image from URL with error: %{public}@", buf, 0xCu);
    }
  }
}

@end