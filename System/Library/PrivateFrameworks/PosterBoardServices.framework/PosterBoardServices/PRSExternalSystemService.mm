@interface PRSExternalSystemService
- (id)createLockScreenPhotosPosterWithImageAtURL:(id)l selectedLockScreenPoster:(BOOL)poster;
- (id)service;
- (void)createLockScreenPhotosPosterWithImageAtURL:(id)l selectLockScreenPoster:(BOOL)poster completion:(id)completion;
- (void)fetchEligibleConfigurationsWithCompletion:(id)completion;
- (void)fetchHomeScreenWallpaperForOrientation:(int64_t)orientation completion:(id)completion;
- (void)fetchHomeScreenWallpaperWithCompletion:(id)completion;
- (void)fetchLockScreenWallpaperForOrientation:(int64_t)orientation completion:(id)completion;
- (void)fetchLockScreenWallpaperForRequest:(id)request checkLockScreenPoster:(BOOL)poster completion:(id)completion;
- (void)fetchLockScreenWallpaperForType:(int64_t)type variant:(int64_t)variant options:(unint64_t)options orientation:(int64_t)orientation completion:(id)completion;
- (void)fetchLockScreenWallpaperWithCompletion:(id)completion;
- (void)resetLockScreenWallpapersToImageAtURL:(id)l completion:(id)completion;
- (void)resetLockScreenWallpapersToImageAtURL:(id)l homeScreenWallpaper:(id)wallpaper completion:(id)completion;
- (void)updateHomeScreenImageForLockScreenPoster:(id)poster withImageAtURL:(id)l selectLockPoster:(BOOL)lockPoster completion:(id)completion;
- (void)updateLockScreenPhotosPoster:(id)poster withImageAtURL:(id)l selectLockScreenPoster:(BOOL)screenPoster completion:(id)completion;
- (void)updatePosterMatchingUUID:(id)d withConfiguration:(id)configuration completion:(id)completion;
@end

@implementation PRSExternalSystemService

- (id)service
{
  v3 = PRSLogExternalSystemService(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v3, OS_LOG_TYPE_DEFAULT, "Accessing service instance", buf, 2u);
  }

  selfCopy = self;
  v5 = objc_sync_enter(selfCopy);
  service = selfCopy->_service;
  if (!service)
  {
    v7 = PRSLogExternalSystemService(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 0;
      _os_log_impl(&dword_1C26FF000, v7, OS_LOG_TYPE_DEFAULT, "Creating new PRSService instance", v12, 2u);
    }

    v8 = objc_opt_new();
    v9 = selfCopy->_service;
    selfCopy->_service = v8;

    service = selfCopy->_service;
  }

  v10 = service;
  objc_sync_exit(selfCopy);

  return v10;
}

- (void)fetchEligibleConfigurationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = PRSLogExternalSystemService(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v6, OS_LOG_TYPE_DEFAULT, "Starting fetchEligibleConfigurationsWithCompletion", buf, 2u);
  }

  if (!completionCopy)
  {
    [PRSExternalSystemService fetchEligibleConfigurationsWithCompletion:a2];
  }

  service = [(PRSExternalSystemService *)self service];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PRSExternalSystemService_fetchEligibleConfigurationsWithCompletion___block_invoke;
  v9[3] = &unk_1E818CFB0;
  v10 = completionCopy;
  v8 = completionCopy;
  [service fetchPosterConfigurationsForRole:@"PRPosterRoleLockScreen" completion:v9];
}

void __70__PRSExternalSystemService_fetchEligibleConfigurationsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v31 = a3;
  v5 = PRSLogExternalSystemService(v31);
  v6 = v5;
  if (v31)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __70__PRSExternalSystemService_fetchEligibleConfigurationsWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v4 count];
    _os_log_impl(&dword_1C26FF000, v6, OS_LOG_TYPE_DEFAULT, "Retrieved %ld poster configurations", &buf, 0xCu);
  }

  v32 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v7)
  {
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        v11 = [v10 providerBundleIdentifier];
        v12 = PRSLogExternalSystemService(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v11;
          _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_DEFAULT, "Checking configuration with bundle identifier: %{public}@", &buf, 0xCu);
        }

        v13 = [v11 isEqual:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
        if (v13)
        {
          v14 = [v10 _path];
          v15 = [v14 contentsURL];

          v17 = PRSLogExternalSystemService(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v15;
            _os_log_impl(&dword_1C26FF000, v17, OS_LOG_TYPE_DEFAULT, "Loading PFPosterConfiguration from URL: %{public}@", &buf, 0xCu);
          }

          v41 = 0;
          v42 = &v41;
          v43 = 0x2050000000;
          v18 = getPFPosterConfigurationClass_softClass;
          v44 = getPFPosterConfigurationClass_softClass;
          if (!getPFPosterConfigurationClass_softClass)
          {
            *&buf = MEMORY[0x1E69E9820];
            *(&buf + 1) = 3221225472;
            v47 = __getPFPosterConfigurationClass_block_invoke;
            v48 = &unk_1E818CC28;
            v49 = &v41;
            __getPFPosterConfigurationClass_block_invoke(&buf);
            v18 = v42[3];
          }

          v19 = v18;
          _Block_object_dispose(&v41, 8);
          v36 = 0;
          v20 = [v18 loadFromURL:v15 error:&v36];
          v21 = v36;
          v22 = v21;
          if (!v20 || v21)
          {
            if (v21)
            {
              v23 = PRSLogExternalSystemService(v21);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v22;
                _os_log_error_impl(&dword_1C26FF000, v23, OS_LOG_TYPE_ERROR, "Error loading PFPosterConfiguration: %{public}@", &buf, 0xCu);
              }

              goto LABEL_32;
            }

            if (!v20)
            {
              v23 = PRSLogExternalSystemService(0);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                __70__PRSExternalSystemService_fetchEligibleConfigurationsWithCompletion___block_invoke_cold_2(&v34, v35, v23);
              }

              goto LABEL_32;
            }
          }

          else
          {
            v21 = [v20 configurationType];
            if (!v21)
            {
              v23 = [v10 serverUUID];
              v24 = PRSLogExternalSystemService(v23);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v23;
                _os_log_impl(&dword_1C26FF000, v24, OS_LOG_TYPE_DEFAULT, "Adding eligible configuration UUID: %{public}@", &buf, 0xCu);
              }

              [v32 bs_safeAddObject:v23];
LABEL_32:

              goto LABEL_33;
            }
          }

          v23 = PRSLogExternalSystemService(v21);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v20 configurationType];
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v25;
            _os_log_impl(&dword_1C26FF000, v23, OS_LOG_TYPE_DEFAULT, "Configuration type is not photo: %ld", &buf, 0xCu);
          }

          goto LABEL_32;
        }

        v22 = PRSLogExternalSystemService(v13);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v11;
          _os_log_impl(&dword_1C26FF000, v22, OS_LOG_TYPE_DEFAULT, "Skipping non-Photos configuration: %{public}@", &buf, 0xCu);
        }

LABEL_33:

        ++v9;
      }

      while (v7 != v9);
      v26 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      v7 = v26;
    }

    while (v26);
  }

  v28 = PRSLogExternalSystemService(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v32 count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v29;
    _os_log_impl(&dword_1C26FF000, v28, OS_LOG_TYPE_DEFAULT, "Found %ld eligible configurations", &buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)updatePosterMatchingUUID:(id)d withConfiguration:(id)configuration completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  configurationCopy = configuration;
  completionCopy = completion;
  v12 = PRSLogExternalSystemService(completionCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = dCopy;
    _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_DEFAULT, "Starting updatePosterMatchingUUID: %{public}@", buf, 0xCu);
  }

  v13 = configurationCopy;
  NSClassFromString(&cfstr_Wfwallpapercon.isa);
  if (!v13)
  {
    [PRSExternalSystemService updatePosterMatchingUUID:a2 withConfiguration:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSExternalSystemService updatePosterMatchingUUID:a2 withConfiguration:? completion:?];
  }

  v14 = dCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v14)
  {
    [PRSExternalSystemService updatePosterMatchingUUID:a2 withConfiguration:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSExternalSystemService updatePosterMatchingUUID:a2 withConfiguration:? completion:?];
  }

  v15 = [PRSPosterUpdate posterUpdatesForWFWallpaperConfiguration:v13];
  v16 = PRSLogExternalSystemService(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v15 count];
    *buf = 134217984;
    v23 = v17;
    _os_log_impl(&dword_1C26FF000, v16, OS_LOG_TYPE_DEFAULT, "Created %ld poster updates for wallpaper configuration", buf, 0xCu);
  }

  service = self->_service;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__PRSExternalSystemService_updatePosterMatchingUUID_withConfiguration_completion___block_invoke;
  v20[3] = &unk_1E818DAE8;
  v21 = completionCopy;
  v19 = completionCopy;
  [(PRSService *)service updatePosterConfigurationMatchingUUID:v14 updates:v15 completion:v20];
}

void __82__PRSExternalSystemService_updatePosterMatchingUUID_withConfiguration_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PRSLogExternalSystemService(v9);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __82__PRSExternalSystemService_updatePosterMatchingUUID_withConfiguration_completion___block_invoke_cold_1();
    }

    v12 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v32 = [v8 count];
      _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_DEFAULT, "Received %ld update results", buf, 0xCu);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [v18 error];

          if (v19)
          {
            v23 = PRSLogExternalSystemService(v20);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              __82__PRSExternalSystemService_updatePosterMatchingUUID_withConfiguration_completion___block_invoke_cold_2(v18);
            }

            v24 = *(a1 + 32);
            v25 = [v18 error];
            (*(v24 + 16))(v24, 0, v25);

            goto LABEL_22;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v22 = PRSLogExternalSystemService(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v22, OS_LOG_TYPE_DEFAULT, "Successfully updated poster configuration", buf, 2u);
    }

    v12 = *(*(a1 + 32) + 16);
  }

  v12();
LABEL_22:
}

- (void)createLockScreenPhotosPosterWithImageAtURL:(id)l selectLockScreenPoster:(BOOL)poster completion:(id)completion
{
  posterCopy = poster;
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  v10 = PRSLogExternalSystemService(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (posterCopy)
    {
      v11 = @"YES";
    }

    *buf = 138543618;
    v22 = lCopy;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&dword_1C26FF000, v10, OS_LOG_TYPE_DEFAULT, "Starting createLockScreenPhotosPosterWithImageAtURL: %{public}@, selectPoster: %{public}@", buf, 0x16u);
  }

  if (!completionCopy)
  {
    [PRSExternalSystemService createLockScreenPhotosPosterWithImageAtURL:selectLockScreenPoster:completion:];
  }

  if (([lCopy checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    [PRSExternalSystemService createLockScreenPhotosPosterWithImageAtURL:selectLockScreenPoster:completion:];
  }

  service = [(PRSExternalSystemService *)self service];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke;
  v16[3] = &unk_1E818DB60;
  v18 = lCopy;
  v19 = completionCopy;
  v17 = service;
  v20 = posterCopy;
  v13 = lCopy;
  v14 = service;
  v15 = completionCopy;
  [v14 createPosterConfigurationForProviderIdentifier:@"com.apple.PhotosUIPrivate.PhotosPosterProvider" posterDescriptorIdentifier:0 role:@"PRPosterRoleLockScreen" completion:v16];
}

void __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PRSLogExternalSystemService(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 serverUUID];
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_DEFAULT, "Successfully created poster configuration: %{public}@", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = [PRSPosterUpdate posterUpdateLockScreenPosterWithImageAtURL:*(a1 + 40)];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_43;
    v12[3] = &unk_1E818DB38;
    v13 = *(a1 + 32);
    v14 = v5;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    [v10 updatePosterConfiguration:v14 update:v11 completion:v12];
  }
}

void __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_43(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = PRSLogExternalSystemService(v7);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_43_cold_1();
    }

    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) serverUUID];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_44;
    v22[3] = &unk_1E818DB10;
    v24 = *(a1 + 48);
    v23 = v7;
    [v10 deletePosterConfigurationsMatchingUUID:v11 completion:v22];

    v12 = v24;
LABEL_11:

    goto LABEL_12;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_DEFAULT, "Successfully updated poster configuration with image", buf, 2u);
  }

  v13 = *(a1 + 56);
  v15 = PRSLogExternalSystemService(v14);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v13 == 1)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v15, OS_LOG_TYPE_DEFAULT, "Selecting newly created poster as active", buf, 2u);
    }

    v17 = *(a1 + 32);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_46;
    v18[3] = &unk_1E818DB10;
    v20 = *(a1 + 48);
    v19 = v6;
    [v17 updateSelectedForRoleIdentifier:@"PRPosterRoleLockScreen" newlySelectedConfiguration:v19 completion:v18];

    v12 = v20;
    goto LABEL_11;
  }

  if (v16)
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v15, OS_LOG_TYPE_DEFAULT, "Poster created successfully without selection", buf, 2u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_12:
}

void __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogExternalSystemService(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_44_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully cleaned up failed poster configuration", v6, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogExternalSystemService(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_46_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully selected poster", v6, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)createLockScreenPhotosPosterWithImageAtURL:(id)l selectedLockScreenPoster:(BOOL)poster
{
  posterCopy = poster;
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = PRSLogExternalSystemService(lCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (posterCopy)
    {
      v8 = @"YES";
    }

    *buf = 138543618;
    v16 = lCopy;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_1C26FF000, v7, OS_LOG_TYPE_DEFAULT, "Starting createLockScreenPhotosPosterWithImageAtURL (future variant): %{public}@, selectPoster: %{public}@", buf, 0x16u);
  }

  v9 = objc_alloc_init(MEMORY[0x1E69C5260]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectedLockScreenPoster___block_invoke;
  v13[3] = &unk_1E818DB88;
  v14 = v9;
  v10 = v9;
  [(PRSExternalSystemService *)self createLockScreenPhotosPosterWithImageAtURL:lCopy selectLockScreenPoster:posterCopy completion:v13];
  future = [v10 future];

  return future;
}

void __96__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectedLockScreenPoster___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogExternalSystemService(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __96__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectedLockScreenPoster___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_DEFAULT, "Future-based poster creation succeeded", v9, 2u);
  }

  [*(a1 + 32) finishWithResult:v6 error:v5];
}

- (void)updateLockScreenPhotosPoster:(id)poster withImageAtURL:(id)l selectLockScreenPoster:(BOOL)screenPoster completion:(id)completion
{
  screenPosterCopy = screenPoster;
  v33 = *MEMORY[0x1E69E9840];
  posterCopy = poster;
  lCopy = l;
  completionCopy = completion;
  v13 = PRSLogExternalSystemService(completionCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    serverUUID = [posterCopy serverUUID];
    v15 = @"NO";
    *buf = 138543874;
    v28 = serverUUID;
    v29 = 2114;
    if (screenPosterCopy)
    {
      v15 = @"YES";
    }

    v30 = lCopy;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&dword_1C26FF000, v13, OS_LOG_TYPE_DEFAULT, "Starting updateLockScreenPhotosPoster: %{public}@, imageURL: %{public}@, selectPoster: %{public}@", buf, 0x20u);
  }

  if (completionCopy)
  {
    if (posterCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [PRSExternalSystemService updateLockScreenPhotosPoster:withImageAtURL:selectLockScreenPoster:completion:];
    if (posterCopy)
    {
      goto LABEL_7;
    }
  }

  [PRSExternalSystemService updateLockScreenPhotosPoster:withImageAtURL:selectLockScreenPoster:completion:];
LABEL_7:
  if (([lCopy checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    [PRSExternalSystemService updateLockScreenPhotosPoster:withImageAtURL:selectLockScreenPoster:completion:];
  }

  service = [(PRSExternalSystemService *)self service];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke;
  v21[3] = &unk_1E818DBD8;
  v22 = posterCopy;
  v23 = service;
  v24 = lCopy;
  v25 = completionCopy;
  v26 = screenPosterCopy;
  v17 = lCopy;
  v18 = service;
  v19 = posterCopy;
  v20 = completionCopy;
  [(PRSExternalSystemService *)self fetchEligibleConfigurationsWithCompletion:v21];
}

void __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PRSLogExternalSystemService(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) serverUUID];
      *buf = 138543618;
      v29 = v9;
      v30 = 2048;
      v31 = [v5 count];
      _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_DEFAULT, "Checking if poster UUID %{public}@ is in eligible set of %ld configurations", buf, 0x16u);
    }

    v10 = [*(a1 + 32) serverUUID];
    v11 = [v5 containsObject:v10];

    v13 = PRSLogExternalSystemService(v12);
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C26FF000, v14, OS_LOG_TYPE_DEFAULT, "Poster is eligible, proceeding with update", buf, 2u);
      }

      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = [PRSPosterUpdate posterUpdateLockScreenPosterWithImageAtURL:*(a1 + 48)];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_61;
      v22[3] = &unk_1E818DBB0;
      v24 = *(a1 + 56);
      v25 = *(a1 + 64);
      v23 = *(a1 + 40);
      [v15 updatePosterConfiguration:v16 update:v17 completion:v22];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_cold_2((a1 + 32));
      }

      v18 = *(a1 + 56);
      v19 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A588];
      v27 = @"Poster is not eligible";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v21 = [v19 errorWithDomain:@"com.apple.posterboardservices" code:0 userInfo:v20];
      (*(v18 + 16))(v18, 0, v21);
    }
  }
}

void __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_61(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = PRSLogExternalSystemService(v7);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_61_cold_1();
    }

    v10 = *(*(a1 + 40) + 16);
LABEL_14:
    v10();
    goto LABEL_15;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_DEFAULT, "Successfully updated lock screen poster", buf, 2u);
  }

  v11 = *(a1 + 48);
  v13 = PRSLogExternalSystemService(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11 != 1)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v13, OS_LOG_TYPE_DEFAULT, "Poster updated successfully without selection", buf, 2u);
    }

    v10 = *(*(a1 + 40) + 16);
    goto LABEL_14;
  }

  if (v14)
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v13, OS_LOG_TYPE_DEFAULT, "Selecting updated poster as active", buf, 2u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_62;
  v16[3] = &unk_1E818DB10;
  v15 = *(a1 + 32);
  v18 = *(a1 + 40);
  v17 = v6;
  [v15 updateSelectedForRoleIdentifier:@"PRPosterRoleLockScreen" newlySelectedConfiguration:v17 completion:v16];

LABEL_15:
}

void __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_62(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogExternalSystemService(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_62_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully selected updated poster", v6, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updateHomeScreenImageForLockScreenPoster:(id)poster withImageAtURL:(id)l selectLockPoster:(BOOL)lockPoster completion:(id)completion
{
  lockPosterCopy = lockPoster;
  v33 = *MEMORY[0x1E69E9840];
  posterCopy = poster;
  lCopy = l;
  completionCopy = completion;
  v13 = PRSLogExternalSystemService(completionCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    serverUUID = [posterCopy serverUUID];
    v15 = @"NO";
    *buf = 138543874;
    v28 = serverUUID;
    v29 = 2114;
    if (lockPosterCopy)
    {
      v15 = @"YES";
    }

    v30 = lCopy;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&dword_1C26FF000, v13, OS_LOG_TYPE_DEFAULT, "Starting updateHomeScreenImageForLockScreenPoster: %{public}@, imageURL: %{public}@, selectLockPoster: %{public}@", buf, 0x20u);
  }

  if (completionCopy)
  {
    if (posterCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [PRSExternalSystemService updateHomeScreenImageForLockScreenPoster:withImageAtURL:selectLockPoster:completion:];
    if (posterCopy)
    {
      goto LABEL_7;
    }
  }

  [PRSExternalSystemService updateHomeScreenImageForLockScreenPoster:withImageAtURL:selectLockPoster:completion:];
LABEL_7:
  if (([lCopy checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    [PRSExternalSystemService updateHomeScreenImageForLockScreenPoster:withImageAtURL:selectLockPoster:completion:];
  }

  service = [(PRSExternalSystemService *)self service];
  serverUUID2 = [posterCopy serverUUID];
  v18 = [PRSPosterUpdate posterUpdateHomeScreenPosterWithImageAtURL:lCopy];
  v26 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __112__PRSExternalSystemService_updateHomeScreenImageForLockScreenPoster_withImageAtURL_selectLockPoster_completion___block_invoke;
  v22[3] = &unk_1E818DC00;
  v25 = lockPosterCopy;
  v23 = service;
  v24 = completionCopy;
  v20 = service;
  v21 = completionCopy;
  [v20 updatePosterConfigurationMatchingUUID:serverUUID2 updates:v19 completion:v22];
}

void __112__PRSExternalSystemService_updateHomeScreenImageForLockScreenPoster_withImageAtURL_selectLockPoster_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = PRSLogExternalSystemService(v7);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __112__PRSExternalSystemService_updateHomeScreenImageForLockScreenPoster_withImageAtURL_selectLockPoster_completion___block_invoke_cold_1();
    }

    v10 = *(*(a1 + 40) + 16);
LABEL_14:
    v10();
    goto LABEL_15;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_DEFAULT, "Successfully updated home screen image", buf, 2u);
  }

  v11 = *(a1 + 48);
  v13 = PRSLogExternalSystemService(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11 != 1)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v13, OS_LOG_TYPE_DEFAULT, "Home screen image updated successfully without lock poster selection", buf, 2u);
    }

    v10 = *(*(a1 + 40) + 16);
    goto LABEL_14;
  }

  if (v14)
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v13, OS_LOG_TYPE_DEFAULT, "Selecting lock screen poster as active", buf, 2u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __112__PRSExternalSystemService_updateHomeScreenImageForLockScreenPoster_withImageAtURL_selectLockPoster_completion___block_invoke_65;
  v16[3] = &unk_1E818DB10;
  v15 = *(a1 + 32);
  v18 = *(a1 + 40);
  v17 = v6;
  [v15 updateSelectedForRoleIdentifier:@"PRPosterRoleLockScreen" newlySelectedConfiguration:v17 completion:v16];

LABEL_15:
}

void __112__PRSExternalSystemService_updateHomeScreenImageForLockScreenPoster_withImageAtURL_selectLockPoster_completion___block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogExternalSystemService(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __112__PRSExternalSystemService_updateHomeScreenImageForLockScreenPoster_withImageAtURL_selectLockPoster_completion___block_invoke_65_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully selected lock screen poster", v6, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchLockScreenWallpaperWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PRSLogExternalSystemService(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Starting fetchLockScreenWallpaperWithCompletion (portrait orientation)", v6, 2u);
  }

  [(PRSExternalSystemService *)self fetchLockScreenWallpaperForOrientation:1 completion:completionCopy];
}

- (void)fetchLockScreenWallpaperForOrientation:(int64_t)orientation completion:(id)completion
{
  v10 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = PRSLogExternalSystemService(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    orientationCopy = orientation;
    _os_log_impl(&dword_1C26FF000, v7, OS_LOG_TYPE_DEFAULT, "Starting fetchLockScreenWallpaperForOrientation: %ld", &v8, 0xCu);
  }

  [(PRSExternalSystemService *)self fetchLockScreenWallpaperForType:0 variant:0 options:192 orientation:orientation completion:completionCopy];
}

- (void)fetchHomeScreenWallpaperWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PRSLogExternalSystemService(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Starting fetchHomeScreenWallpaperWithCompletion (portrait orientation)", v6, 2u);
  }

  [(PRSExternalSystemService *)self fetchHomeScreenWallpaperForOrientation:1 completion:completionCopy];
}

- (void)fetchHomeScreenWallpaperForOrientation:(int64_t)orientation completion:(id)completion
{
  v10 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = PRSLogExternalSystemService(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    orientationCopy = orientation;
    _os_log_impl(&dword_1C26FF000, v7, OS_LOG_TYPE_DEFAULT, "Starting fetchHomeScreenWallpaperForOrientation: %ld", &v8, 0xCu);
  }

  [(PRSExternalSystemService *)self fetchLockScreenWallpaperForType:0 variant:1 options:197 orientation:1 completion:completionCopy];
}

- (void)fetchLockScreenWallpaperForType:(int64_t)type variant:(int64_t)variant options:(unint64_t)options orientation:(int64_t)orientation completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v13 = PRSLogExternalSystemService(completionCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    typeCopy = type;
    v21 = 2048;
    variantCopy = variant;
    v23 = 2048;
    optionsCopy = options;
    v25 = 2048;
    orientationCopy = orientation;
    _os_log_impl(&dword_1C26FF000, v13, OS_LOG_TYPE_DEFAULT, "Starting fetchLockScreenWallpaperForType: %ld, variant: %ld, options: %ld, orientation: %ld", buf, 0x2Au);
  }

  if (!completionCopy)
  {
    [PRSExternalSystemService fetchLockScreenWallpaperForType:variant:options:orientation:completion:];
  }

  v17 = @"PRSPosterSnapshotRequestOptionSnapshotDefinitionIdentifier";
  v18 = @"OSMigration";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v15 = [[PRSPosterSnapshotRequest alloc] initWithConfigurationType:type variantType:variant options:options orientation:orientation requestOptions:v14];
  v16 = PRSLogExternalSystemService(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v16, OS_LOG_TYPE_DEFAULT, "Created snapshot request with definition identifier: OSMigration", buf, 2u);
  }

  [(PRSExternalSystemService *)self fetchLockScreenWallpaperForRequest:v15 checkLockScreenPoster:variant == 0 completion:completionCopy];
}

- (void)fetchLockScreenWallpaperForRequest:(id)request checkLockScreenPoster:(BOOL)poster completion:(id)completion
{
  posterCopy = poster;
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  requestCopy = request;
  v10 = PRSLogExternalSystemService(requestCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (posterCopy)
    {
      v11 = @"YES";
    }

    *buf = 138543362;
    v18 = v11;
    _os_log_impl(&dword_1C26FF000, v10, OS_LOG_TYPE_DEFAULT, "Starting fetchLockScreenWallpaperForRequest, checkLockScreenPoster: %{public}@", buf, 0xCu);
  }

  service = [(PRSExternalSystemService *)self service];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke;
  v14[3] = &unk_1E818DC28;
  v16 = posterCopy;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [service fetchPosterSnapshotsWithRequest:requestCopy completion:v14];
}

void __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = PRSLogExternalSystemService(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [a2 snapshots];
    v9 = [v8 firstObject];

    if (v9)
    {
      if (*(a1 + 48))
      {
        [v9 switcherConfigurationPath];
      }

      else
      {
        [v9 homeScreenConfigurationPath];
      }
      v16 = ;
      v17 = [v16 identity];
      v14 = [v17 provider];

      v19 = PRSLogExternalSystemService(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v14;
        _os_log_impl(&dword_1C26FF000, v19, OS_LOG_TYPE_DEFAULT, "Snapshot provider: %{public}@", buf, 0xCu);
      }

      v20 = [v14 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
      if (v20)
      {
        v15 = [MEMORY[0x1E695DFF8] pf_temporaryDirectoryURLWithBasenamePrefix:@"ExternalSystemServiceFetchLockScreen"];
        v21 = [MEMORY[0x1E696AFB0] UUID];
        v22 = [v21 UUIDString];
        v23 = [v22 stringByAppendingFormat:@"fetchedWallpaper.png"];

        v24 = [v15 URLByAppendingPathComponent:v23];
        v25 = PRSLogExternalSystemService(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v51 = v24;
          _os_log_impl(&dword_1C26FF000, v25, OS_LOG_TYPE_DEFAULT, "Writing snapshot to temporary URL: %{public}@", buf, 0xCu);
        }

        v49 = 0;
        v26 = [v9 writePNGToURL:v24 error:&v49];
        v27 = v49;
        v28 = PRSLogExternalSystemService(v27);
        v29 = v28;
        if (v26)
        {
          v44 = v27;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C26FF000, v29, OS_LOG_TYPE_DEFAULT, "Successfully wrote PNG, now mapping data", buf, 2u);
          }

          v48 = 0;
          v46 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v24 options:8 error:&v48];
          v30 = v48;
          v31 = [MEMORY[0x1E696AC08] defaultManager];
          v47 = 0;
          v32 = [v31 removeItemAtURL:v15 error:&v47];
          v45 = v47;

          v34 = PRSLogExternalSystemService(v33);
          v35 = v34;
          if (v32)
          {
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1C26FF000, v35, OS_LOG_TYPE_DEFAULT, "Successfully removed temporary directory", buf, 2u);
            }
          }

          else if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_4();
          }

          v39 = PRSLogExternalSystemService(v38);
          v40 = v39;
          v27 = v44;
          if (v30)
          {
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_5();
            }

            (*(*(a1 + 40) + 16))();
            v41 = v46;
          }

          else
          {
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v42 = [v46 length];
              *buf = 134217984;
              v51 = v42;
              _os_log_impl(&dword_1C26FF000, v40, OS_LOG_TYPE_DEFAULT, "Successfully fetched wallpaper data (%ld bytes)", buf, 0xCu);
            }

            v43 = *(*(a1 + 40) + 16);
            v41 = v46;
            v43();
          }
        }

        else
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_3();
          }

          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        v36 = PRSLogExternalSystemService(v20);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_2();
        }

        v37 = *(a1 + 40);
        v15 = PFFunctionNameForAddress();
        v23 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
        (*(v37 + 16))(v37, 0, 0, v23);
      }
    }

    else
    {
      v11 = PRSLogExternalSystemService(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_6(v11);
      }

      v12 = *(a1 + 40);
      v13 = MEMORY[0x1E696ABC0];
      v52 = *MEMORY[0x1E696A588];
      v53[0] = @"No snapshots available";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
      v15 = [v13 errorWithDomain:@"com.apple.posterboardservices" code:0 userInfo:v14];
      (*(v12 + 16))(v12, 0, 0, v15);
    }
  }
}

- (void)resetLockScreenWallpapersToImageAtURL:(id)l completion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  v8 = PRSLogExternalSystemService(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = lCopy;
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_DEFAULT, "Starting resetLockScreenWallpapersToImageAtURL: %{public}@", &v9, 0xCu);
  }

  [(PRSExternalSystemService *)self resetLockScreenWallpapersToImageAtURL:lCopy homeScreenWallpaper:0 completion:completionCopy];
}

- (void)resetLockScreenWallpapersToImageAtURL:(id)l homeScreenWallpaper:(id)wallpaper completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  lCopy = l;
  wallpaperCopy = wallpaper;
  completionCopy = completion;
  v11 = PRSLogExternalSystemService(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v45 = lCopy;
    v46 = 2114;
    v47 = wallpaperCopy;
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_DEFAULT, "Starting resetLockScreenWallpapersToImageAtURL: %{public}@, homeScreenWallpaper: %{public}@", buf, 0x16u);
  }

  if (!completionCopy)
  {
    [PRSExternalSystemService resetLockScreenWallpapersToImageAtURL:homeScreenWallpaper:completion:];
  }

  v13 = PRSLogExternalSystemService(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v45 = lCopy;
    _os_log_impl(&dword_1C26FF000, v13, OS_LOG_TYPE_DEFAULT, "Checking if lockScreenImageURL is reachable: %{public}@", buf, 0xCu);
  }

  v43 = 0;
  v14 = [lCopy checkResourceIsReachableAndReturnError:&v43];
  v15 = v43;
  v16 = PRSLogExternalSystemService(v15);
  v17 = v16;
  if (v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v17, OS_LOG_TYPE_DEFAULT, "lockScreenImageURL is reachable", buf, 2u);
    }

    if (wallpaperCopy)
    {
      v42 = v15;
      v18 = [wallpaperCopy checkResourceIsReachableAndReturnError:&v42];
      v19 = v42;

      v21 = PRSLogExternalSystemService(v20);
      v22 = v21;
      if ((v18 & 1) == 0)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [PRSExternalSystemService resetLockScreenWallpapersToImageAtURL:homeScreenWallpaper:completion:];
        }

        v23 = PFFunctionNameForAddress();
        v24 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
        completionCopy[2](completionCopy, v24);
        goto LABEL_25;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C26FF000, v22, OS_LOG_TYPE_DEFAULT, "homeScreenWallpaperURL is reachable", buf, 2u);
      }
    }

    else
    {
      v19 = v15;
    }

    service = [(PRSExternalSystemService *)self service];
    v26 = PRSLogExternalSystemService(service);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v26, OS_LOG_TYPE_DEFAULT, "Creating lock screen photos poster and starting reset operation", buf, 2u);
    }

    v27 = [(PRSExternalSystemService *)self createLockScreenPhotosPosterWithImageAtURL:lCopy selectedLockScreenPoster:1];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke;
    v39[3] = &unk_1E818DC78;
    v40 = wallpaperCopy;
    v28 = service;
    v41 = v28;
    v29 = [v27 flatMap:v39];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_102;
    v36[3] = &unk_1E818DCF0;
    v37 = v28;
    v30 = completionCopy;
    v38 = v30;
    v23 = v28;
    v31 = [v29 flatMap:v36];

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_108;
    v34[3] = &unk_1E818DD18;
    v35 = v30;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_110;
    v32[3] = &unk_1E818D020;
    v33 = v35;
    [v31 addSuccessBlock:v34 andFailureBlock:v32];

    v24 = v40;
LABEL_25:
    v15 = v19;
    goto LABEL_26;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [PRSExternalSystemService resetLockScreenWallpapersToImageAtURL:homeScreenWallpaper:completion:];
  }

  v23 = PFFunctionNameForAddress();
  v24 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
  completionCopy[2](completionCopy, v24);
LABEL_26:
}

id __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRSLogExternalSystemService(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 serverUUID];
    *buf = 138543362;
    v23 = v5;
    _os_log_impl(&dword_1C26FF000, v4, OS_LOG_TYPE_DEFAULT, "Lock screen poster created successfully: %{public}@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v8 = PRSLogExternalSystemService(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_DEFAULT, "Updating home screen wallpaper", buf, 2u);
    }

    v10 = objc_opt_new();
    v11 = *(a1 + 40);
    v12 = [PRSPosterUpdate posterUpdateHomeScreenPosterWithImageAtURL:*(a1 + 32)];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_99;
    v19 = &unk_1E818DC50;
    v20 = v10;
    v21 = v3;
    v13 = v10;
    [v11 updatePosterConfiguration:v21 update:v12 completion:&v16];

    v14 = [v13 future];
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_DEFAULT, "No home screen wallpaper to update", buf, 2u);
    }

    v14 = [MEMORY[0x1E69C5258] futureWithResult:v3];
  }

  return v14;
}

void __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_99(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PRSLogExternalSystemService(v9);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_99_cold_1();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_DEFAULT, "Successfully updated home screen wallpaper", v13, 2u);
  }

  v12 = v7;
  if (!v7)
  {
    v12 = *(a1 + 40);
  }

  [*(a1 + 32) finishWithResult:v12 error:0];
}

id __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_102(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRSLogExternalSystemService(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v4, OS_LOG_TYPE_DEFAULT, "Starting cleanup of existing poster configurations", buf, 2u);
  }

  v5 = objc_opt_new();
  v6 = [v3 _path];
  v7 = [v6 serverIdentity];
  v8 = [v7 posterUUID];

  v10 = PRSLogExternalSystemService(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_1C26FF000, v10, OS_LOG_TYPE_DEFAULT, "New configuration UUID to preserve: %{public}@", buf, 0xCu);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_103;
  v18[3] = &unk_1E818DCC8;
  v11 = *(a1 + 32);
  v23 = *(a1 + 40);
  v19 = v8;
  v20 = *(a1 + 32);
  v12 = v5;
  v21 = v12;
  v22 = v3;
  v13 = v3;
  v14 = v8;
  [v11 fetchPosterConfigurationsForRole:@"PRPosterRoleLockScreen" completion:v18];
  v15 = v22;
  v16 = v12;

  return v12;
}

void __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PRSLogExternalSystemService(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_103_cold_1();
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v26 = 0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v41 = [v5 count];
      _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_DEFAULT, "Found %ld configurations to process for cleanup", buf, 0xCu);
    }

    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = v5;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [*(*(&v35 + 1) + 8 * i) _path];
          v16 = [v15 serverIdentity];
          v17 = [v16 posterUUID];

          v18 = [v17 isEqual:*(a1 + 32)];
          LODWORD(v16) = v18;
          v19 = PRSLogExternalSystemService(v18);
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          if (v16)
          {
            if (v20)
            {
              *buf = 138543362;
              v41 = v17;
              _os_log_impl(&dword_1C26FF000, v19, OS_LOG_TYPE_DEFAULT, "Skipping deletion of new configuration: %{public}@", buf, 0xCu);
            }
          }

          else
          {
            if (v20)
            {
              *buf = 138543362;
              v41 = v17;
              _os_log_impl(&dword_1C26FF000, v19, OS_LOG_TYPE_DEFAULT, "Deleting configuration: %{public}@", buf, 0xCu);
            }

            ++v12;
            dispatch_group_enter(v9);
            v21 = *(a1 + 40);
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_104;
            v32[3] = &unk_1E818DCA0;
            v22 = v17;
            v33 = v22;
            v34 = v9;
            [v21 deletePosterConfigurationsMatchingUUID:v22 completion:v32];

            v19 = v33;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    dispatch_group_leave(v9);
    v24 = PRSLogExternalSystemService(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v41 = v12;
      _os_log_impl(&dword_1C26FF000, v24, OS_LOG_TYPE_DEFAULT, "Initiated deletion of %ld configurations", buf, 0xCu);
    }

    v25 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_105;
    block[3] = &unk_1E818CF88;
    v30 = *(a1 + 48);
    v31 = *(a1 + 56);
    dispatch_group_notify(v9, v25, block);

    v6 = v26;
    v5 = v27;
  }
}

void __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_104(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRSLogExternalSystemService(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_104_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully deleted configuration: %{public}@", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_105(uint64_t a1)
{
  v2 = PRSLogExternalSystemService(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C26FF000, v2, OS_LOG_TYPE_DEFAULT, "Cleanup completed successfully", v4, 2u);
  }

  return [*(a1 + 32) finishWithResult:*(a1 + 40)];
}

uint64_t __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_108(uint64_t a1)
{
  v2 = PRSLogExternalSystemService(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C26FF000, v2, OS_LOG_TYPE_DEFAULT, "Reset lock screen wallpapers operation completed successfully", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogExternalSystemService(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_110_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchEligibleConfigurationsWithCompletion:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"completionHandler"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __70__PRSExternalSystemService_fetchEligibleConfigurationsWithCompletion___block_invoke_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C26FF000, log, OS_LOG_TYPE_ERROR, "Failed to load PFPosterConfiguration (nil result)", buf, 2u);
}

- (void)updatePosterMatchingUUID:(char *)a1 withConfiguration:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:WFWallpaperConfigurationClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterMatchingUUID:(char *)a1 withConfiguration:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSUUIDClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterMatchingUUID:(char *)a1 withConfiguration:completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterMatchingUUID:(char *)a1 withConfiguration:completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __82__PRSExternalSystemService_updatePosterMatchingUUID_withConfiguration_completion___block_invoke_cold_2(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_1(&dword_1C26FF000, v2, v3, "Update result contains error: %{public}@", v4, v5, v6, v7);
}

- (void)createLockScreenPhotosPosterWithImageAtURL:selectLockScreenPoster:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

- (void)createLockScreenPhotosPosterWithImageAtURL:selectLockScreenPoster:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"[imageURL checkResourceIsReachableAndReturnError:nil]" object:? file:? lineNumber:? description:?];
}

- (void)updateLockScreenPhotosPoster:withImageAtURL:selectLockScreenPoster:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

- (void)updateLockScreenPhotosPoster:withImageAtURL:selectLockScreenPoster:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"poster" object:? file:? lineNumber:? description:?];
}

- (void)updateLockScreenPhotosPoster:withImageAtURL:selectLockScreenPoster:completion:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"[imageURL checkResourceIsReachableAndReturnError:nil]" object:? file:? lineNumber:? description:?];
}

void __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_cold_2(id *a1)
{
  v1 = [*a1 serverUUID];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_1(&dword_1C26FF000, v2, v3, "Poster UUID %{public}@ is not eligible for update", v4, v5, v6, v7);
}

- (void)updateHomeScreenImageForLockScreenPoster:withImageAtURL:selectLockPoster:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

- (void)updateHomeScreenImageForLockScreenPoster:withImageAtURL:selectLockPoster:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"poster" object:? file:? lineNumber:? description:?];
}

- (void)updateHomeScreenImageForLockScreenPoster:withImageAtURL:selectLockPoster:completion:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"[imageURL checkResourceIsReachableAndReturnError:nil]" object:? file:? lineNumber:? description:?];
}

- (void)fetchLockScreenWallpaperForType:variant:options:orientation:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)resetLockScreenWallpapersToImageAtURL:homeScreenWallpaper:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_104_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1C26FF000, log, OS_LOG_TYPE_ERROR, "Error deleting configuration %{public}@: %{public}@", &v4, 0x16u);
}

@end