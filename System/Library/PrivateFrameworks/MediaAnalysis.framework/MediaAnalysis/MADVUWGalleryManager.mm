@interface MADVUWGalleryManager
+ (id)sharedGalleryForPhotoLibrary:(id)library;
+ (id)sharedGalleryManager;
+ (void)releaseSharedGalleryForPhotoLibrary:(id)library;
- (MADVUWGalleryManager)init;
- (id)sharedGalleryForPhotoLibrary:(id)library;
- (void)releaseSharedGalleryForPhotoLibrary:(id)library;
@end

@implementation MADVUWGalleryManager

- (MADVUWGalleryManager)init
{
  v8.receiver = self;
  v8.super_class = MADVUWGalleryManager;
  v2 = [(MADVUWGalleryManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaanalysisd.MADVUWGalleryManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    galleries = v2->_galleries;
    v2->_galleries = dictionary;
  }

  return v2;
}

+ (id)sharedGalleryManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MADVUWGalleryManager_sharedGalleryManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedGalleryManager_once != -1)
  {
    dispatch_once(&sharedGalleryManager_once, block);
  }

  v2 = sharedGalleryManager_instance;

  return v2;
}

void __44__MADVUWGalleryManager_sharedGalleryManager__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = sharedGalleryManager_instance;
  sharedGalleryManager_instance = v2;
}

- (id)sharedGalleryForPhotoLibrary:(id)library
{
  libraryCopy = library;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  photoLibraryURL = [libraryCopy photoLibraryURL];
  v6 = photoLibraryURL;
  if (photoLibraryURL)
  {
    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__MADVUWGalleryManager_sharedGalleryForPhotoLibrary___block_invoke;
    v10[3] = &unk_1E834C3A8;
    v13 = &v15;
    v10[4] = self;
    v11 = photoLibraryURL;
    v12 = libraryCopy;
    dispatch_sync(queue, v10);
    v8 = v16[5];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVUWGalleryManager] Failed to create VUWGallery: no Photo Library URL", buf, 2u);
    }

    v8 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __53__MADVUWGalleryManager_sharedGalleryForPhotoLibrary___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = [*(a1 + 48) vcp_visionCacheStorageDirectoryURL];
    v6 = [v5 URLByAppendingPathComponent:@"VUIndex.sqlite"];
    v7 = v6;
    if (v6)
    {
      v8 = VCPSignPostLog(v6);
      v9 = os_signpost_id_generate(v8);

      v11 = VCPSignPostLog(v10);
      v12 = v11;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VUWGallery_initWithPath", "", buf, 2u);
      }

      v22 = 0;
      v13 = [objc_alloc(MEMORY[0x1E69E0678]) initWithClient:0 path:v7 error:&v22];
      v14 = v22;
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v13;

      if (*(*(*(a1 + 56) + 8) + 40))
      {
        v18 = VCPSignPostLog(v17);
        v19 = v18;
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_END, v9, "VUWGallery_initWithPath", "", buf, 2u);
        }

        [*(*(a1 + 32) + 16) setObject:*(*(*(a1 + 56) + 8) + 40) forKeyedSubscript:*(a1 + 40)];
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 40);
        *buf = 138412546;
        v24 = v21;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVUWGalleryManager] Failed to create VUWGallery with library %@ - %@", buf, 0x16u);
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 40);
      *buf = 138412290;
      v24 = v20;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVUWGalleryManager] Failed to create VUWGallery: no VUIndex URL for library %@", buf, 0xCu);
    }
  }
}

+ (id)sharedGalleryForPhotoLibrary:(id)library
{
  libraryCopy = library;
  sharedGalleryManager = [objc_opt_class() sharedGalleryManager];
  v5 = [sharedGalleryManager sharedGalleryForPhotoLibrary:libraryCopy];

  return v5;
}

- (void)releaseSharedGalleryForPhotoLibrary:(id)library
{
  libraryCopy = library;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MADVUWGalleryManager_releaseSharedGalleryForPhotoLibrary___block_invoke;
  v7[3] = &unk_1E834C3D0;
  v8 = libraryCopy;
  selfCopy = self;
  v6 = libraryCopy;
  dispatch_sync(queue, v7);
}

void __60__MADVUWGalleryManager_releaseSharedGalleryForPhotoLibrary___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibraryURL];
  if (v2)
  {
    v3 = v2;
    v4 = *(*(a1 + 40) + 16);
    v5 = [*(a1 + 32) photoLibraryURL];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = *(*(a1 + 40) + 16);
      v8 = [*(a1 + 32) photoLibraryURL];
      [v7 setObject:0 forKeyedSubscript:v8];

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 32) photoLibraryURL];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADVUWGalleryManager] Releasing shared gallery for %@", &v10, 0xCu);
      }
    }
  }
}

+ (void)releaseSharedGalleryForPhotoLibrary:(id)library
{
  libraryCopy = library;
  sharedGalleryManager = [objc_opt_class() sharedGalleryManager];
  [sharedGalleryManager releaseSharedGalleryForPhotoLibrary:libraryCopy];
}

@end