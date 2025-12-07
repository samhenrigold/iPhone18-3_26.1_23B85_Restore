@interface SRAssetBundleCacheEntry
- (BOOL)makeResultWithBundleVersion:(id)version path:(id)path loaded:(BOOL)loaded;
- (BOOL)onDevice;
- (SRAssetBundleCacheEntry)initWithAssetType:(int64_t)type language:(id)language deliveryType:(int64_t)deliveryType;
- (void)makeResultNone;
- (void)onDevice;
@end

@implementation SRAssetBundleCacheEntry

- (void)makeResultNone
{
  [self assetTypeString];
  objc_claimAutoreleasedReturnValue();
  deliveryTypeString = [OUTLINED_FUNCTION_5() deliveryTypeString];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE58E000, v3, v4, "No assets for (%@, %@, %@)", v5, v6, v7, v8);
}

- (SRAssetBundleCacheEntry)initWithAssetType:(int64_t)type language:(id)language deliveryType:(int64_t)deliveryType
{
  languageCopy = language;
  v15.receiver = self;
  v15.super_class = SRAssetBundleCacheEntry;
  v10 = [(SRAssetBundleCacheEntry *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_assetType = type;
    objc_storeStrong(&v10->_language, language);
    v11->_isResult = 0;
    bundleVersion = v11->_bundleVersion;
    v11->_deliveryType = deliveryType;
    v11->_bundleVersion = 0;

    path = v11->_path;
    v11->_path = 0;

    v11->_loaded = 0;
  }

  return v11;
}

- (BOOL)makeResultWithBundleVersion:(id)version path:(id)path loaded:(BOOL)loaded
{
  v37 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  pathCopy = path;
  v11 = pathCopy;
  self->_isResult = 1;
  if (!versionCopy)
  {
    v15 = SRLogCategoryAssets(pathCopy);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SRAssetBundleCacheEntry makeResultWithBundleVersion:? path:? loaded:?];
    }

    goto LABEL_10;
  }

  if (!pathCopy)
  {
    v15 = SRLogCategoryAssets(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SRAssetBundleCacheEntry makeResultWithBundleVersion:? path:? loaded:?];
    }

LABEL_10:

    bundleVersion = self->_bundleVersion;
    self->_bundleVersion = 0;

    path = self->_path;
    self->_path = 0;

    v14 = 0;
    self->_loaded = 0;
    goto LABEL_11;
  }

  objc_storeStrong(&self->_bundleVersion, version);
  objc_storeStrong(&self->_path, path);
  self->_loaded = loaded;
  v13 = SRLogCategoryAssets(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    version = [(SRAssetBundleVersion *)self->_bundleVersion version];
    v20 = self->_path;
    loaded = self->_loaded;
    assetTypeString = [(SRAssetBundleCacheEntry *)self assetTypeString];
    language = self->_language;
    deliveryTypeString = [(SRAssetBundleCacheEntry *)self deliveryTypeString];
    v25 = 138413570;
    v26 = version;
    v27 = 2112;
    v28 = v20;
    v29 = 1024;
    loadedCopy = loaded;
    v31 = 2112;
    v32 = assetTypeString;
    v33 = 2112;
    v34 = language;
    v35 = 2112;
    v36 = deliveryTypeString;
    _os_log_debug_impl(&dword_1AE58E000, v13, OS_LOG_TYPE_DEBUG, "(%@, %@, %d) for asset (%@, %@, %@)", &v25, 0x3Au);
  }

  v14 = 1;
LABEL_11:

  return v14;
}

- (BOOL)onDevice
{
  v10 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fileExistsAtPath:self->_path isDirectory:&v10];

  if ((v4 & 1) == 0)
  {
    v6 = SRLogCategoryAssets(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SRAssetBundleCacheEntry *)self onDevice];
    }
  }

  if (v10)
  {
    v7 = 1;
  }

  else
  {
    v8 = SRLogCategoryAssets(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SRAssetBundleCacheEntry *)self onDevice];
    }

    v7 = v10;
  }

  return v4 & v7;
}

- (void)makeResultWithBundleVersion:(void *)a1 path:loaded:.cold.1(void *a1)
{
  [a1 assetTypeString];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_5() deliveryTypeString];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)makeResultWithBundleVersion:(void *)a1 path:loaded:.cold.2(void *a1)
{
  [a1 assetTypeString];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_5() deliveryTypeString];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)onDevice
{
  assetTypeString = [self assetTypeString];
  deliveryTypeString = [self deliveryTypeString];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

@end