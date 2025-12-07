@interface PUImageEditPluginSession
- (id)imageDataSource;
- (void)loadItemProviderWithSupportedAdjustmentData:(id)data loadHandler:(id)handler;
- (void)setAllowLivePhotoExtensions:(BOOL)extensions;
- (void)setAllowSpatialPhotoExtensions:(BOOL)extensions;
- (void)shouldLaunchPlugin:(id)plugin completion:(id)completion;
@end

@implementation PUImageEditPluginSession

- (void)loadItemProviderWithSupportedAdjustmentData:(id)data loadHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "loadItemProviderWithSupportedAdjustmentData", buf, 2u);
  }

  imageDataSource = [(PUImageEditPluginSession *)self imageDataSource];
  asset = [(PUEditPluginSession *)self asset];
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__28466;
  v49[4] = __Block_byref_object_dispose__28467;
  v50 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__28466;
  v47[4] = __Block_byref_object_dispose__28467;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__28466;
  v45[4] = __Block_byref_object_dispose__28467;
  v46 = 0;
  *buf = 0;
  v40 = buf;
  v41 = 0x3810000000;
  v42 = &unk_1B3DBEC63;
  v43 = *MEMORY[0x1E6960C70];
  v44 = *(MEMORY[0x1E6960C70] + 16);
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke;
  v36[3] = &unk_1E7B7FBC0;
  v38 = v49;
  v12 = v11;
  v37 = v12;
  [imageDataSource editPluginSession:self loadPlaceholderImageWithHandler:v36];
  currentPlugin = [(PUEditPluginSession *)self currentPlugin];
  extension = [currentPlugin extension];
  v15 = [extension pu_supportsMediaType:1];

  if (v15 && [(PUImageEditPluginSession *)self allowLivePhotoExtensions])
  {
    dispatch_group_enter(v12);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_2;
    v32[3] = &unk_1E7B77448;
    v34 = v45;
    v35 = buf;
    v33 = v12;
    [imageDataSource editPluginSession:self loadVideoComplementURLWithHandler:v32];
  }

  dispatch_group_enter(v12);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_3;
  v29[3] = &unk_1E7B7FBC0;
  v31 = v47;
  v16 = v12;
  v30 = v16;
  [imageDataSource editPluginSession:self loadDisplaySizeImageWithHandler:v29];
  v17 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_4;
  block[3] = &unk_1E7B774C0;
  v25 = v45;
  v26 = buf;
  v27 = v49;
  v28 = v47;
  block[4] = self;
  v22 = asset;
  v23 = dataCopy;
  v24 = handlerCopy;
  v18 = handlerCopy;
  v19 = dataCopy;
  v20 = asset;
  dispatch_group_notify(v16, v17, block);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);
}

void __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_2(uint64_t a1, void *a2, __int128 *a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v8 = a2;
  v6 = *(*(a1 + 48) + 8);
  v7 = *a3;
  *(v6 + 48) = *(a3 + 2);
  *(v6 + 32) = v7;
  dispatch_group_leave(*(a1 + 32));
}

void __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_4(uint64_t a1)
{
  v2 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "loadItemProviderWithSupportedAdjustmentData; dispatch group complete", buf, 2u);
  }

  v3 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  if (([*(*(*(a1 + 64) + 8) + 40) isFileURL] & 1) == 0)
  {
    objc_initWeak(buf, *(a1 + 32));
    goto LABEL_7;
  }

  v4 = *(*(*(a1 + 72) + 8) + 44);
  objc_initWeak(buf, *(a1 + 32));
  if ((v4 & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v5 = [*(*(*(a1 + 64) + 8) + 40) path];
  v6 = PLGetSandboxExtensionToken();

  v7 = 1;
LABEL_8:
  v8 = *MEMORY[0x1E69791B8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_289;
  v13[3] = &unk_1E7B77498;
  v17 = *(a1 + 80);
  v14 = *(a1 + 40);
  v21 = v7;
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v15 = v9;
  v18 = v10;
  v11 = v6;
  v12 = *(a1 + 72);
  v16 = v11;
  v19 = v12;
  objc_copyWeak(&v20, buf);
  [v3 registerItemForTypeIdentifier:v8 loadHandler:v13];
  (*(*(a1 + 56) + 16))();
  objc_destroyWeak(&v20);

  objc_destroyWeak(buf);
}

void __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_289(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = UIImageJPEGRepresentation(*(*(*(a1 + 56) + 8) + 40), 0.899999976);
  v5 = UIImageJPEGRepresentation(*(*(*(a1 + 64) + 8) + 40), 0.899999976);
  v6 = [*(a1 + 32) mediaSubtypes];
  if (*(a1 + 96))
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_alloc_init(MEMORY[0x1E6979110]);
  [v8 setMediaType:1];
  [v8 setMediaSubtypes:v7 | v6];
  [v8 setPlaybackStyle:{objc_msgSend(*(a1 + 32), "playbackStyle")}];
  v9 = [*(a1 + 32) creationDate];
  [v8 setCreationDate:v9];

  v10 = [*(a1 + 32) location];
  [v8 setLocation:v10];

  [v8 setAdjustmentData:*(a1 + 40)];
  [v8 setPlaceholderImageData:v4];
  [v8 setDisplaySizeImageData:v5];
  [v8 setVideoURL:*(*(*(a1 + 72) + 8) + 40)];
  [v8 setVideoPathSandboxExtensionToken:*(a1 + 48)];
  v11 = *(*(a1 + 80) + 8);
  v21 = *(v11 + 32);
  v22 = *(v11 + 48);
  [v8 setLivePhotoStillDisplayTime:&v21];
  v12 = [*(a1 + 32) accessibilityDescription];
  [v8 setAccessibilityDescription:v12];

  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v14 = [WeakRetained imageDataSource];
  v15 = objc_loadWeakRetained((a1 + 88));
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_2_291;
  v18[3] = &unk_1E7B77470;
  v19 = v8;
  v20 = v3;
  v16 = v3;
  v17 = v8;
  [v14 editPluginSession:v15 loadFullSizeImageWithHandler:v18];
}

uint64_t __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_2_291(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "loadItemProviderWithSupportedAdjustmentData; full size image loaded", v11, 2u);
  }

  v9 = PLExifOrientationFromImageOrientation();
  [*(a1 + 32) setFullSizeImageURL:v7];

  [*(a1 + 32) setFullSizeImageURLSandboxExtensionToken:v6];
  [*(a1 + 32) setFullSizeImageExifOrientation:v9];
  return (*(*(a1 + 40) + 16))();
}

- (void)shouldLaunchPlugin:(id)plugin completion:(id)completion
{
  pluginCopy = plugin;
  completionCopy = completion;
  if ([(PUImageEditPluginSession *)self allowSpatialPhotoExtensions])
  {
    v51 = PULocalizedString(@"PLUGIN_DISABLES_SPATIAL_PHOTO_TITLE_FORMAT");
    title = [pluginCopy title];
    v15 = PUStringWithValidatedFormat(v51, @"%@", v9, v10, v11, v12, v13, v14, title);

    v16 = MEMORY[0x1E69DC650];
    v17 = PULocalizedString(@"PLUGIN_DISABLES_SPATIAL_PHOTO_MESSAGE");
    v18 = [v16 alertControllerWithTitle:v15 message:v17 preferredStyle:1];

    v19 = MEMORY[0x1E69DC648];
    v20 = PULocalizedString(@"OK");
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __58__PUImageEditPluginSession_shouldLaunchPlugin_completion___block_invoke;
    v59[3] = &unk_1E7B80980;
    v21 = pluginCopy;
    v22 = completionCopy;
    v23 = completionCopy;
    v60 = v23;
    v24 = [v19 actionWithTitle:v20 style:0 handler:v59];
    [v18 addAction:v24];

    v25 = MEMORY[0x1E69DC648];
    v26 = PULocalizedString(@"CANCEL");
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __58__PUImageEditPluginSession_shouldLaunchPlugin_completion___block_invoke_2;
    v57[3] = &unk_1E7B80980;
    v27 = v23;
    completionCopy = v22;
    pluginCopy = v21;
    v58 = v27;
    v28 = [v25 actionWithTitle:v26 style:1 handler:v57];
    [v18 addAction:v28];

    [(PUEditPluginSession *)self presentAlertController:v18];
    v29 = v60;
  }

  else
  {
    if (!-[PUImageEditPluginSession allowLivePhotoExtensions](self, "allowLivePhotoExtensions") || ([pluginCopy extension], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "pu_supportsMediaType:", 1), v30, (v31 & 1) != 0))
    {
      v52.receiver = self;
      v52.super_class = PUImageEditPluginSession;
      [(PUEditPluginSession *)&v52 shouldLaunchPlugin:pluginCopy completion:completionCopy];
      goto LABEL_7;
    }

    v51 = PULocalizedString(@"PLUGIN_DISABLES_LIVE_PHOTO_TITLE_FORMAT");
    title2 = [pluginCopy title];
    v15 = PUStringWithValidatedFormat(v51, @"%@", v33, v34, v35, v36, v37, v38, title2);

    v39 = MEMORY[0x1E69DC650];
    v40 = PULocalizedString(@"PLUGIN_DISABLES_LIVE_PHOTO_MESSAGE");
    v18 = [v39 alertControllerWithTitle:v15 message:v40 preferredStyle:1];

    v41 = MEMORY[0x1E69DC648];
    v42 = PULocalizedString(@"OK");
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __58__PUImageEditPluginSession_shouldLaunchPlugin_completion___block_invoke_3;
    v55[3] = &unk_1E7B80980;
    v43 = pluginCopy;
    v44 = completionCopy;
    v45 = completionCopy;
    v56 = v45;
    v46 = [v41 actionWithTitle:v42 style:0 handler:v55];
    [v18 addAction:v46];

    v47 = MEMORY[0x1E69DC648];
    v48 = PULocalizedString(@"CANCEL");
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __58__PUImageEditPluginSession_shouldLaunchPlugin_completion___block_invoke_4;
    v53[3] = &unk_1E7B80980;
    v49 = v45;
    completionCopy = v44;
    pluginCopy = v43;
    v54 = v49;
    v50 = [v47 actionWithTitle:v48 style:1 handler:v53];
    [v18 addAction:v50];

    [(PUEditPluginSession *)self presentAlertController:v18];
    v29 = v56;
  }

LABEL_7:
}

- (id)imageDataSource
{
  dataSource = [(PUEditPluginSession *)self dataSource];
  if (([dataSource conformsToProtocol:&unk_1F2C63308] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUImageEditPluginSession.m" lineNumber:54 description:@"data source must conform to PUImageEditPluginSessionDataSource"];
  }

  return dataSource;
}

- (void)setAllowSpatialPhotoExtensions:(BOOL)extensions
{
  if (self->_allowSpatialPhotoExtensions != extensions)
  {
    self->_allowSpatialPhotoExtensions = extensions;
    [(PUEditPluginSession *)self updatePluginManager];
  }
}

- (void)setAllowLivePhotoExtensions:(BOOL)extensions
{
  if (self->_allowLivePhotoExtensions != extensions)
  {
    self->_allowLivePhotoExtensions = extensions;
    [(PUEditPluginSession *)self updatePluginManager];
  }
}

@end