@interface AVTResourceLocator
+ (id)_resourcePathInDirectoryURL:(id)l subDirectory:(id)directory name:(id)name ofType:(id)type isDirectory:(BOOL)isDirectory;
+ (id)sharedResourceLocator;
- (CGImageRef)imageWithPath:(uint64_t)path;
- (id)_init;
- (id)pathForAnimojiResource:(void *)resource ofType:inDirectory:isDirectory:;
- (id)pathForAnimojiResource:(void *)resource ofType:isDirectory:;
- (id)pathForEnvironmentResource:(void *)resource ofType:inDirectory:isDirectory:;
- (id)pathForEnvironmentResource:(void *)resource ofType:isDirectory:;
- (id)pathForMemojiResource:(void *)resource ofType:inDirectory:isDirectory:;
- (id)pathForMemojiResource:(void *)resource ofType:isDirectory:;
- (id)pathForPoseResource:(void *)resource ofType:inDirectory:isDirectory:;
- (id)pathForPoseResource:(void *)resource ofType:isDirectory:;
- (id)pathForStickerResource:(void *)resource ofType:inDirectory:isDirectory:;
- (id)pathForStickerResource:(void *)resource ofType:isDirectory:;
- (id)rootCacheURL;
- (id)subdivDataCacheURL;
- (id)urlForFrameworkResourceAtPath:(uint64_t)path isDirectory:;
- (id)urlForMemojiAssetAtPath:(uint64_t)path isDirectory:;
- (id)urlForMemojiResourceAtPath:(uint64_t)path isDirectory:;
- (id)urlForStickerResourceAtPath:(uint64_t)path isDirectory:;
- (void)_init;
- (void)deleteLegacyCache;
- (void)deleteObsoleteVersionsInCache:(id)cache currentVersion:(unint64_t)version;
- (void)initCaches;
@end

@implementation AVTResourceLocator

- (id)_init
{
  v72 = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = AVTResourceLocator;
  v2 = [(AVTResourceLocator *)&v64 init];
  if (!v2)
  {
    return v2;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  imageCache = v2->_imageCache;
  v2->_imageCache = dictionary;

  v5 = MEMORY[0x1E696AAE8];
  objc_opt_class();
  v6 = [v5 bundleForClass:?];
  resourceURL = [v6 resourceURL];
  p_resourcesURL = &v2->_resourcesURL;
  resourcesURL = v2->_resourcesURL;
  v2->_resourcesURL = resourceURL;

  v10 = v2->_resourcesURL;
  if (!v10)
  {
    v11 = avt_default_log(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(AVTResourceLocator *)v11 _init:v12];
    }

    v10 = *p_resourcesURL;
  }

  path = [v10 path];
  v20 = [path containsString:?];

  if (v20)
  {
LABEL_13:
    v33 = v2->_resourcesURL;
    v34 = [NSURL URLByAppendingPathComponent:v33 isDirectory:"URLByAppendingPathComponent:isDirectory:"];
    environmentResourcesURL = v2->_environmentResourcesURL;
    v2->_environmentResourcesURL = v34;

    v36 = [NSURL URLByAppendingPathComponent:v33 isDirectory:"URLByAppendingPathComponent:isDirectory:"];
    animojiResourcesURL = v2->_animojiResourcesURL;
    v2->_animojiResourcesURL = v36;

    v38 = [NSURL URLByAppendingPathComponent:v33 isDirectory:"URLByAppendingPathComponent:isDirectory:"];
    memojiResourcesURL = v2->_memojiResourcesURL;
    v2->_memojiResourcesURL = v38;

    v40 = [NSURL URLByAppendingPathComponent:v33 isDirectory:"URLByAppendingPathComponent:isDirectory:"];
    stickerResourcesURL = v2->_stickerResourcesURL;
    v2->_stickerResourcesURL = v40;

    v42 = [NSURL URLByAppendingPathComponent:v33 isDirectory:"URLByAppendingPathComponent:isDirectory:"];
    poseResourcesURL = v2->_poseResourcesURL;
    v2->_poseResourcesURL = v42;

    v44 = [NSURL URLByAppendingPathComponent:"URLByAppendingPathComponent:isDirectory:" isDirectory:?];
    memojiAssetsURL = v2->_memojiAssetsURL;
    v2->_memojiAssetsURL = v44;

    if (!v2->_memojiAssetsURL)
    {
      v47 = avt_default_log(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [(AVTResourceLocator *)v47 _init:v48];
      }
    }

    [(AVTResourceLocator *)v2 initCaches];

    return v2;
  }

  v22 = avt_default_log(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [(AVTResourceLocator *)&v2->_resourcesURL _init];
  }

  if (!AVTLogAllowsInternalCrash())
  {
    v23 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
    v24 = *p_resourcesURL;
    *p_resourcesURL = v23;

    v26 = avt_default_log(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(AVTResourceLocator *)&v2->_resourcesURL _init:v26];
    }

    goto LABEL_13;
  }

  v63 = 0;
  memset(v71, 0, sizeof(v71));
  v56 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v57 = 3;
  }

  else
  {
    v57 = 2;
  }

  v58 = v2->_resourcesURL;
  v59 = objc_opt_class();
  v60 = MEMORY[0x1E696AAE8];
  objc_opt_class();
  v61 = [v60 bundleForClass:?];
  bundlePath = [v61 bundlePath];
  v65 = 138412802;
  v66 = v58;
  v67 = 2112;
  v68 = v59;
  v69 = 2112;
  v70 = bundlePath;
  _os_log_send_and_compose_impl(v57, &v63, v71, 80, &dword_1BB472000, v56, 16, "AvatarKit crash: Invalid resource URL '%@' for class %@ in bundle at %@", &v65, 32);

  result = _os_crash_msg();
  __break(1u);
  return result;
}

+ (id)sharedResourceLocator
{
  v1 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AVTResourceLocator_sharedResourceLocator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  if (sharedResourceLocator_once != -1)
  {
    dispatch_once(&sharedResourceLocator_once, block);
  }

  v2 = sharedResourceLocator_sSharedResourceLocator;

  return v2;
}

uint64_t __43__AVTResourceLocator_sharedResourceLocator__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = sharedResourceLocator_sSharedResourceLocator;
  sharedResourceLocator_sSharedResourceLocator = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)_resourcePathInDirectoryURL:(id)l subDirectory:(id)directory name:(id)name ofType:(id)type isDirectory:(BOOL)isDirectory
{
  lCopy = l;
  directoryCopy = directory;
  nameCopy = name;
  typeCopy = type;
  v14 = lCopy;
  v15 = v14;
  v16 = v14;
  if (directoryCopy)
  {
    v16 = [v14 URLByAppendingPathComponent:? isDirectory:?];
  }

  if (nameCopy)
  {
    v17 = [v16 URLByAppendingPathComponent:? isDirectory:?];

    v16 = v17;
  }

  if (typeCopy)
  {
    v18 = [v16 URLByAppendingPathExtension:?];

    v16 = v18;
  }

  path = [v16 path];

  return path;
}

- (void)initCaches
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void *__32__AVTResourceLocator_initCaches__block_invoke(uint64_t a1)
{
  [*(a1 + 32) deleteLegacyCache];
  [*(a1 + 32) deleteObsoleteVersionsInCache:? currentVersion:?];
  v2 = *(a1 + 32);

  return [v2 deleteObsoleteVersionsInCache:? currentVersion:?];
}

- (void)deleteObsoleteVersionsInCache:(id)cache currentVersion:(unint64_t)version
{
  v43 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v34 = cacheCopy;
  v6 = [defaultManager contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];

  obj = v6;
  v7 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v37 = MEMORY[0];
    v9 = *MEMORY[0x1E695DB50];
    do
    {
      v10 = 0;
      do
      {
        if (MEMORY[0] != v37)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(8 * v10);
        lastPathComponent = [v11 lastPathComponent];
        v13 = [lastPathComponent hasPrefix:?];
        if (!v13)
        {
          v16 = avt_default_log(v13);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v39 = lastPathComponent;
            _os_log_error_impl(&dword_1BB472000, v16, OS_LOG_TYPE_ERROR, "Error: [Cache] Unknown cache folder %@", buf, 0xCu);
          }

LABEL_12:
          defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
          v42 = v9;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
          v19 = [defaultManager2 enumeratorAtURL:? includingPropertiesForKeys:? options:? errorHandler:?];

          v20 = v19;
          v21 = [v20 countByEnumeratingWithState:? objects:? count:?];
          if (v21)
          {
            v22 = v21;
            v23 = 0;
            v24 = MEMORY[0];
            do
            {
              for (i = 0; i != v22; i = (i + 1))
              {
                if (MEMORY[0] != v24)
                {
                  objc_enumerationMutation(v20);
                }

                [*(8 * i) getResourceValue:? forKey:? error:?];
                v23 += [0 unsignedLongLongValue];
              }

              v22 = [v20 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v22);
          }

          defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
          v27 = [defaultManager3 removeItemAtURL:? error:?];
          v28 = 0;

          if (v27)
          {
            v30 = [MEMORY[0x1E696AAF0] stringFromByteCount:? countStyle:?];
            path2 = avt_default_log(v30);
            if (os_log_type_enabled(path2, OS_LOG_TYPE_DEFAULT))
            {
              path = [v11 path];
              *buf = 138412546;
              v39 = v30;
              v40 = 2112;
              v41 = path;
              _os_log_impl(&dword_1BB472000, path2, OS_LOG_TYPE_DEFAULT, "[Cache] Reclaimed %@ from obsolete cache: %@", buf, 0x16u);
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          v30 = avt_default_log(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            path2 = [v11 path];
            path = [v28 description];
            *buf = 138412546;
            v39 = path2;
            v40 = 2112;
            v41 = path;
            _os_log_error_impl(&dword_1BB472000, v30, OS_LOG_TYPE_ERROR, "Error: [Cache] Failed to delete %@ with error %@", buf, 0x16u);
LABEL_22:

LABEL_23:
          }

          goto LABEL_26;
        }

        v14 = [lastPathComponent substringFromIndex:?];
        v15 = AVTAvatarKitSnapshotVersionNumberFromString(v14);

        if (v15 < version)
        {
          goto LABEL_12;
        }

LABEL_26:

        v10 = (v10 + 1);
      }

      while (v10 != v8);
      v33 = [obj countByEnumeratingWithState:? objects:? count:?];
      v8 = v33;
    }

    while (v33);
  }
}

- (void)deleteLegacyCache
{
  path = [self path];
  v9 = [a2 description];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (id)urlForFrameworkResourceAtPath:(uint64_t)path isDirectory:
{
  if (self)
  {
    self = [self[2] URLByAppendingPathComponent:? isDirectory:?];
    v3 = vars8;
  }

  return self;
}

- (id)pathForEnvironmentResource:(void *)resource ofType:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_4_0();
    resource = [OUTLINED_FUNCTION_0_2(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)pathForEnvironmentResource:(void *)resource ofType:inDirectory:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_5_0();
    resource = [OUTLINED_FUNCTION_3_0(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)pathForAnimojiResource:(void *)resource ofType:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_4_0();
    resource = [OUTLINED_FUNCTION_0_2(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)pathForAnimojiResource:(void *)resource ofType:inDirectory:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_5_0();
    resource = [OUTLINED_FUNCTION_3_0(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)urlForMemojiAssetAtPath:(uint64_t)path isDirectory:
{
  if (self)
  {
    self = [self[8] URLByAppendingPathComponent:? isDirectory:?];
    v3 = vars8;
  }

  return self;
}

- (id)urlForMemojiResourceAtPath:(uint64_t)path isDirectory:
{
  if (self)
  {
    self = [self[5] URLByAppendingPathComponent:? isDirectory:?];
    v3 = vars8;
  }

  return self;
}

- (id)pathForMemojiResource:(void *)resource ofType:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_4_0();
    resource = [OUTLINED_FUNCTION_0_2(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)pathForMemojiResource:(void *)resource ofType:inDirectory:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_5_0();
    resource = [OUTLINED_FUNCTION_3_0(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)urlForStickerResourceAtPath:(uint64_t)path isDirectory:
{
  if (self)
  {
    self = [self[6] URLByAppendingPathComponent:? isDirectory:?];
    v3 = vars8;
  }

  return self;
}

- (id)pathForStickerResource:(void *)resource ofType:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_4_0();
    resource = [OUTLINED_FUNCTION_0_2(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)pathForStickerResource:(void *)resource ofType:inDirectory:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_5_0();
    resource = [OUTLINED_FUNCTION_3_0(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)pathForPoseResource:(void *)resource ofType:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_4_0();
    resource = [OUTLINED_FUNCTION_0_2(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (id)pathForPoseResource:(void *)resource ofType:inDirectory:isDirectory:
{
  if (resource)
  {
    OUTLINED_FUNCTION_5_0();
    resource = [OUTLINED_FUNCTION_3_0(AVTResourceLocator) _resourcePathInDirectoryURL:? subDirectory:? name:? ofType:? isDirectory:?];
    v1 = vars8;
  }

  return resource;
}

- (CGImageRef)imageWithPath:(uint64_t)path
{
  v3 = a2;
  if (path)
  {
    ImageAtIndex = [*(path + 8) objectForKeyedSubscript:?];

    if (!ImageAtIndex)
    {
      v6 = +[AVTResourceLocator sharedResourceLocator];
      lastPathComponent = [v3 lastPathComponent];
      v8 = [AVTResourceLocator pathForMemojiResource:v6 ofType:? isDirectory:?];

      if (v8 && ([MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?], v9 = objc_claimAutoreleasedReturnValue(), v10 = CGImageSourceCreateWithURL(v9, 0), v9, v10))
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
        [*(path + 8) setObject:? forKeyedSubscript:?];
        if (ImageAtIndex)
        {
          CGImageRelease(ImageAtIndex);
        }

        CFRelease(v10);
      }

      else
      {
        ImageAtIndex = 0;
      }
    }
  }

  else
  {
    ImageAtIndex = 0;
  }

  return ImageAtIndex;
}

- (id)rootCacheURL
{
  if (self)
  {
    self = self[9];
    v1 = vars8;
  }

  return self;
}

- (id)subdivDataCacheURL
{
  if (self)
  {
    self = self[10];
    v1 = vars8;
  }

  return self;
}

- (void)_init
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_memojiAssetsURL";
}

@end