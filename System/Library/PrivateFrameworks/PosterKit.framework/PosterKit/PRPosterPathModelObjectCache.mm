@interface PRPosterPathModelObjectCache
+ (id)modelObjectCacheForPath:(id)path;
+ (id)modelObjectCacheLock;
+ (void)invalidateModelObjectCacheForPath:(id)path;
- (ATXPosterDescriptorGalleryOptions)proactiveGalleryOptions;
- (NSDictionary)userInfo;
- (NSString)description;
- (PFServerPosterIdentity)identity;
- (PRPosterAmbientConfiguration)ambientConfiguration;
- (PRPosterAmbientWidgetLayout)ambientWidgetLayout;
- (PRPosterColorVariationsConfiguration)colorVariationsConfiguration;
- (PRPosterComplicationLayout)complicationLayout;
- (PRPosterConfigurableOptions)configurableOptions;
- (PRPosterConfiguredProperties)configuredProperties;
- (PRPosterDescriptorGalleryOptions)galleryOptions;
- (PRPosterFocusConfiguration)focusConfiguration;
- (PRPosterMetadata)otherMetadata;
- (PRPosterQuickActionsConfiguration)quickActionsConfiguration;
- (PRPosterRenderingConfiguration)renderingConfiguration;
- (PRPosterSuggestionMetadata)suggestionMetadata;
- (PRPosterTitleStyleConfiguration)titleStyleConfiguration;
- (id)_initWithPath:(id)path;
- (id)homeScreenConfigurationOrError:(id *)error;
- (void)configuredProperties;
- (void)dealloc;
- (void)invalidate;
- (void)resetAmbientConfiguration;
- (void)resetAmbientWidgetLayout;
- (void)resetColorVariationsConfiguration;
- (void)resetComplicationLayout;
- (void)resetConfigurableOptions;
- (void)resetConfiguredProperties;
- (void)resetFocusConfiguration;
- (void)resetGalleryOptions;
- (void)resetHomeScreenConfiguration;
- (void)resetOtherMetadata;
- (void)resetProactiveGalleryOptions;
- (void)resetQuickActionsConfiguration;
- (void)resetRenderingConfiguration;
- (void)resetSuggestionMetadata;
- (void)resetTitleStyleConfiguration;
- (void)resetUserInfo;
- (void)userInfo;
@end

@implementation PRPosterPathModelObjectCache

- (NSDictionary)userInfo
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_userInfoLoadError)
  {
    v5 = PRLogModel(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v8 = PRLogModel(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v9 = 0;
  }

  else if (selfCopy->_userInfo)
  {
    v10 = PRLogModel(v4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PRLogModel(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v9 = selfCopy->_userInfo;
  }

  else
  {
    v14 = [PRPosterPathUtilities userInfoURLForPosterContentsURL:selfCopy->_pathContentsURL];
    v26 = 0;
    v15 = [PRPosterPathUtilities loadUserInfoForURL:v14 error:&v26];
    v16 = v26;
    v17 = v26;
    userInfo = selfCopy->_userInfo;
    selfCopy->_userInfo = v15;

    v20 = PRLogModel(v19);
    LODWORD(v15) = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      if (selfCopy->_userInfo)
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = selfCopy->_logPreamble;
          v25 = NSStringFromSelector(a2);
          *buf = 138543874;
          v28 = logPreamble;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v17;
          _os_log_debug_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v17)
    {
      objc_storeStrong(&selfCopy->_userInfoLoadError, v16);
    }

    v9 = selfCopy->_userInfo;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

+ (id)modelObjectCacheLock
{
  if (modelObjectCacheLock_onceToken != -1)
  {
    +[PRPosterPathModelObjectCache modelObjectCacheLock];
  }

  v3 = modelObjectCacheLock_modelObjectCacheLock;

  return v3;
}

uint64_t __52__PRPosterPathModelObjectCache_modelObjectCacheLock__block_invoke()
{
  v0 = objc_opt_new();
  v1 = modelObjectCacheLock_modelObjectCacheLock;
  modelObjectCacheLock_modelObjectCacheLock = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)modelObjectCacheForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isServerPosterPath])
  {
    identity = [pathCopy identity];
    if (identity)
    {
      modelObjectCacheLock = [self modelObjectCacheLock];
      [modelObjectCacheLock lock];

      v7 = objc_getAssociatedObject(identity, "modelObjectCache");
      if (!v7)
      {
        v7 = [[PRPosterPathModelObjectCache alloc] _initWithPath:pathCopy];
        if (v7)
        {
          objc_setAssociatedObject(identity, "modelObjectCache", v7, 0x301);
        }
      }

      modelObjectCacheLock2 = [self modelObjectCacheLock];
      [modelObjectCacheLock2 unlock];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)invalidateModelObjectCacheForPath:(id)path
{
  pathCopy = path;
  isServerPosterPath = [pathCopy isServerPosterPath];
  v5 = pathCopy;
  if (isServerPosterPath)
  {
    identity = [pathCopy identity];
    if (identity)
    {
      modelObjectCacheLock = [self modelObjectCacheLock];
      [modelObjectCacheLock lock];

      v8 = objc_getAssociatedObject(identity, "modelObjectCache");
      v9 = v8;
      if (v8)
      {
        [v8 invalidate];
      }

      objc_setAssociatedObject(identity, "modelObjectCache", 0, 0x301);
      modelObjectCacheLock2 = [self modelObjectCacheLock];
      [modelObjectCacheLock2 unlock];
    }

    v5 = pathCopy;
  }

  MEMORY[0x1EEE66BB8](isServerPosterPath, v5);
}

- (id)_initWithPath:(id)path
{
  pathCopy = path;
  v46.receiver = self;
  v46.super_class = PRPosterPathModelObjectCache;
  v5 = [(PRPosterPathModelObjectCache *)&v46 init];
  if (!v5)
  {
LABEL_8:
    v21 = v5;
    goto LABEL_9;
  }

  identity = [pathCopy identity];
  objc_storeWeak(&v5->_identity, identity);

  role = [pathCopy role];
  role = v5->_role;
  v5->_role = role;

  containerURL = [pathCopy containerURL];
  pathURL = v5->_pathURL;
  v5->_pathURL = containerURL;

  instanceURL = [pathCopy instanceURL];
  pathInstanceURL = v5->_pathInstanceURL;
  v5->_pathInstanceURL = instanceURL;

  contentsURL = [pathCopy contentsURL];
  pathContentsURL = v5->_pathContentsURL;
  v5->_pathContentsURL = contentsURL;

  identifierURL = [pathCopy identifierURL];
  pathIdentifierURL = v5->_pathIdentifierURL;
  v5->_pathIdentifierURL = identifierURL;

  supplementURL = [pathCopy supplementURL];
  pathSupplementURL = v5->_pathSupplementURL;
  v5->_pathSupplementURL = supplementURL;

  path = [(NSURL *)v5->_pathInstanceURL path];
  v20 = [path containsString:@"_STAGED_"];

  if ((v20 & 1) == 0)
  {
    v41 = MEMORY[0x1E696AEC0];
    WeakRetained = objc_loadWeakRetained(&v5->_identity);
    provider = [WeakRetained provider];
    pathExtension = [provider pathExtension];
    v43 = objc_loadWeakRetained(&v5->_identity);
    [v43 type];
    v37 = NSStringFromPFServerPosterType();
    v42 = objc_loadWeakRetained(&v5->_identity);
    descriptorIdentifier = [v42 descriptorIdentifier];
    v40 = objc_loadWeakRetained(&v5->_identity);
    posterUUID = [v40 posterUUID];
    uUIDString = [posterUUID UUIDString];
    v23 = [uUIDString substringToIndex:7];
    v24 = objc_loadWeakRetained(&v5->_identity);
    version = [v24 version];
    v26 = objc_loadWeakRetained(&v5->_identity);
    supplement = [v26 supplement];
    v28 = [(NSString *)v5->_role stringByReplacingOccurrencesOfString:@"PRPosterRole" withString:&stru_1F1C13D90];
    v29 = [v41 stringWithFormat:@"%@:%@:%@:%@:%llu_%llu:%@", pathExtension, v37, descriptorIdentifier, v23, version, supplement, v28];
    logPreamble = v5->_logPreamble;
    v5->_logPreamble = v29;

    v32 = PRLogModel(v31);
    LODWORD(uUIDString) = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);

    if (uUIDString)
    {
      v34 = PRLogModel(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [PRPosterPathModelObjectCache _initWithPath:];
      }
    }

    goto LABEL_8;
  }

  v21 = 0;
LABEL_9:

  return v21;
}

- (void)invalidate
{
  v3 = PRLogModel(self);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
LABEL_5:

    goto LABEL_6;
  }

  logPreamble = self->_logPreamble;

  if (logPreamble)
  {
    v3 = PRLogModel(v5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PRPosterPathModelObjectCache invalidate];
    }

    goto LABEL_5;
  }

LABEL_6:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  userInfoLoadError = selfCopy->_userInfoLoadError;
  selfCopy->_userInfoLoadError = 0;

  userInfo = selfCopy->_userInfo;
  selfCopy->_userInfo = 0;

  titleStyleConfigurationLoadError = selfCopy->_titleStyleConfigurationLoadError;
  selfCopy->_titleStyleConfigurationLoadError = 0;

  titleStyleConfiguration = selfCopy->_titleStyleConfiguration;
  selfCopy->_titleStyleConfiguration = 0;

  renderingConfigurationLoadError = selfCopy->_renderingConfigurationLoadError;
  selfCopy->_renderingConfigurationLoadError = 0;

  renderingConfiguration = selfCopy->_renderingConfiguration;
  selfCopy->_renderingConfiguration = 0;

  configurableOptionsLoadError = selfCopy->_configurableOptionsLoadError;
  selfCopy->_configurableOptionsLoadError = 0;

  configurableOptions = selfCopy->_configurableOptions;
  selfCopy->_configurableOptions = 0;

  homeScreenConfigurationLoadError = selfCopy->_homeScreenConfigurationLoadError;
  selfCopy->_homeScreenConfigurationLoadError = 0;

  homeScreenConfiguration = selfCopy->_homeScreenConfiguration;
  selfCopy->_homeScreenConfiguration = 0;

  focusConfigurationLoadError = selfCopy->_focusConfigurationLoadError;
  selfCopy->_focusConfigurationLoadError = 0;

  focusConfiguration = selfCopy->_focusConfiguration;
  selfCopy->_focusConfiguration = 0;

  complicationLayoutLoadError = selfCopy->_complicationLayoutLoadError;
  selfCopy->_complicationLayoutLoadError = 0;

  complicationLayout = selfCopy->_complicationLayout;
  selfCopy->_complicationLayout = 0;

  colorVariationsConfigurationLoadError = selfCopy->_colorVariationsConfigurationLoadError;
  selfCopy->_colorVariationsConfigurationLoadError = 0;

  colorVariationsConfiguration = selfCopy->_colorVariationsConfiguration;
  selfCopy->_colorVariationsConfiguration = 0;

  quickActionsConfigurationLoadError = selfCopy->_quickActionsConfigurationLoadError;
  selfCopy->_quickActionsConfigurationLoadError = 0;

  quickActionsConfiguration = selfCopy->_quickActionsConfiguration;
  selfCopy->_quickActionsConfiguration = 0;

  suggestionMetadataLoadError = selfCopy->_suggestionMetadataLoadError;
  selfCopy->_suggestionMetadataLoadError = 0;

  suggestionMetadata = selfCopy->_suggestionMetadata;
  selfCopy->_suggestionMetadata = 0;

  otherMetadataLoadError = selfCopy->_otherMetadataLoadError;
  selfCopy->_otherMetadataLoadError = 0;

  otherMetadata = selfCopy->_otherMetadata;
  selfCopy->_otherMetadata = 0;

  galleryOptionsLoadError = selfCopy->_galleryOptionsLoadError;
  selfCopy->_galleryOptionsLoadError = 0;

  galleryOptions = selfCopy->_galleryOptions;
  selfCopy->_galleryOptions = 0;

  ambientConfigurationLoadError = selfCopy->_ambientConfigurationLoadError;
  selfCopy->_ambientConfigurationLoadError = 0;

  ambientConfiguration = selfCopy->_ambientConfiguration;
  selfCopy->_ambientConfiguration = 0;

  ambientWidgetLayoutLoadError = selfCopy->_ambientWidgetLayoutLoadError;
  selfCopy->_ambientWidgetLayoutLoadError = 0;

  ambientWidgetLayout = selfCopy->_ambientWidgetLayout;
  selfCopy->_ambientWidgetLayout = 0;

  objc_sync_exit(selfCopy);
}

- (void)dealloc
{
  v3 = PRLogModel(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    v6 = PRLogModel(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PRPosterPathModelObjectCache dealloc];
    }
  }

  v7.receiver = self;
  v7.super_class = PRPosterPathModelObjectCache;
  [(PRPosterPathModelObjectCache *)&v7 dealloc];
}

- (PRPosterConfiguredProperties)configuredProperties
{
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  if (selfCopy->_configuredProperties)
  {
    v4 = PRLogModel(v3);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (!v5)
    {
      goto LABEL_15;
    }

    v7 = PRLogModel(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache configuredProperties];
    }
  }

  else
  {
    if ([(NSString *)selfCopy->_role isEqual:@"PRPosterRoleAmbient"])
    {
      v8 = [PRPosterConfiguredProperties alloc];
      ambientConfiguration = [(PRPosterPathModelObjectCache *)selfCopy ambientConfiguration];
      ambientWidgetLayout = [(PRPosterPathModelObjectCache *)selfCopy ambientWidgetLayout];
      otherMetadata = [(PRPosterPathModelObjectCache *)selfCopy otherMetadata];
      userInfo = [(PRPosterPathModelObjectCache *)selfCopy userInfo];
      v12 = [(PRPosterConfiguredProperties *)v8 initWithAmbientConfiguration:ambientConfiguration widgetLayout:ambientWidgetLayout otherMetadata:otherMetadata userInfo:userInfo];
      configuredProperties = selfCopy->_configuredProperties;
      selfCopy->_configuredProperties = v12;
    }

    else
    {
      v27 = [PRPosterConfiguredProperties alloc];
      ambientConfiguration = [(PRPosterPathModelObjectCache *)selfCopy titleStyleConfiguration];
      ambientWidgetLayout = [(PRPosterPathModelObjectCache *)selfCopy focusConfiguration];
      otherMetadata = [(PRPosterPathModelObjectCache *)selfCopy complicationLayout];
      userInfo = [(PRPosterPathModelObjectCache *)selfCopy renderingConfiguration];
      configuredProperties = [(PRPosterPathModelObjectCache *)selfCopy homeScreenConfiguration];
      colorVariationsConfiguration = [(PRPosterPathModelObjectCache *)selfCopy colorVariationsConfiguration];
      quickActionsConfiguration = [(PRPosterPathModelObjectCache *)selfCopy quickActionsConfiguration];
      suggestionMetadata = [(PRPosterPathModelObjectCache *)selfCopy suggestionMetadata];
      otherMetadata2 = [(PRPosterPathModelObjectCache *)selfCopy otherMetadata];
      userInfo2 = [(PRPosterPathModelObjectCache *)selfCopy userInfo];
      v19 = [(PRPosterConfiguredProperties *)v27 initWithTitleStyleConfiguration:ambientConfiguration focusConfiguration:ambientWidgetLayout complicationLayout:otherMetadata renderingConfiguration:userInfo homeScreenConfiguration:configuredProperties colorVariationsConfiguration:colorVariationsConfiguration quickActionsConfiguration:quickActionsConfiguration suggestionMetadata:suggestionMetadata otherMetadata:otherMetadata2 userInfo:userInfo2];
      v20 = selfCopy->_configuredProperties;
      selfCopy->_configuredProperties = v19;
    }

    v22 = PRLogModel(v21);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);

    if (!v23)
    {
      goto LABEL_15;
    }

    if (selfCopy->_configuredProperties)
    {
      v7 = PRLogModel(v24);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    else
    {
      v7 = PRLogModel(v24);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }
  }

LABEL_15:
  v25 = selfCopy->_configuredProperties;
  objc_sync_exit(selfCopy);

  return v25;
}

- (void)resetConfiguredProperties
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(self + 56);
  v5 = NSStringFromSelector(aSelector);
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_1A8AA7000, a3, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] %{public}@", &v6, 0x16u);
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  identity = [(PRPosterPathModelObjectCache *)self identity];
  v5 = [v3 appendObject:identity withName:@"identity"];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__PRPosterPathModelObjectCache_description__block_invoke;
  v16[3] = &unk_1E7843070;
  v6 = v3;
  v17 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:@"cached properties" multilinePrefix:@"\n" block:v16];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __43__PRPosterPathModelObjectCache_description__block_invoke_2;
  v13 = &unk_1E7843070;
  v14 = v6;
  selfCopy2 = self;
  v7 = v6;
  [v7 appendBodySectionWithName:@"cache property errors" multilinePrefix:@"\n" block:&v10];
  build = [v7 build];

  return build;
}

id __43__PRPosterPathModelObjectCache_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 72) != 0 withName:@"configuredProperties" ifEqualTo:1];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 88) != 0 withName:@"userInfo" ifEqualTo:1];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 104) != 0 withName:@"titleStyleConfiguration" ifEqualTo:1];
  v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 120) != 0 withName:@"renderingConfiguration" ifEqualTo:1];
  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 136) != 0 withName:@"configurableOptions" ifEqualTo:1];
  v7 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 152) != 0 withName:@"homeScreenConfiguration" ifEqualTo:1];
  v8 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 168) != 0 withName:@"focusConfiguration" ifEqualTo:1];
  v9 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 184) != 0 withName:@"complicationLayout" ifEqualTo:1];
  v10 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 200) != 0 withName:@"colorVariationsConfiguration" ifEqualTo:1];
  v11 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 216) != 0 withName:@"quickActionsConfiguration" ifEqualTo:1];
  v12 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 232) != 0 withName:@"suggestionMetadata" ifEqualTo:1];
  v13 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 248) != 0 withName:@"otherMetadata" ifEqualTo:1];
  v14 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 264) != 0 withName:@"galleryOptions" ifEqualTo:1];
  v15 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 280) != 0 withName:@"ambientConfiguration" ifEqualTo:1];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 296) != 0 withName:@"ambientWidgetLayout" ifEqualTo:1];
}

id __43__PRPosterPathModelObjectCache_description__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 288) withName:@"_ambientWidgetLayoutLoadError" skipIfNil:1];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 272) withName:@"_ambientConfigurationLoadError" skipIfNil:1];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 256) withName:@"_galleryOptionsLoadError" skipIfNil:1];
  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 240) withName:@"_otherMetadataLoadError" skipIfNil:1];
  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 224) withName:@"_suggestionMetadataLoadError" skipIfNil:1];
  v7 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 208) withName:@"_quickActionsConfigurationLoadError" skipIfNil:1];
  v8 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 192) withName:@"_colorVariationsConfigurationLoadError" skipIfNil:1];
  v9 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 176) withName:@"_complicationLayoutLoadError" skipIfNil:1];
  v10 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 160) withName:@"_focusConfigurationLoadError" skipIfNil:1];
  v11 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 144) withName:@"_homeScreenConfigurationLoadError" skipIfNil:1];
  v12 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 128) withName:@"_configurableOptionsLoadError" skipIfNil:1];
  v13 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 112) withName:@"_renderingConfigurationLoadError" skipIfNil:1];
  v14 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 96) withName:@"_titleStyleConfigurationLoadError" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 80) withName:@"_userInfoLoadError" skipIfNil:1];
}

- (void)resetUserInfo
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_12(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_4_0(&dword_1A8AA7000, "[%{public}@ cache] %{public}@", v4, v5);
}

- (PRPosterTitleStyleConfiguration)titleStyleConfiguration
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_titleStyleConfigurationLoadError)
  {
    v5 = PRLogModel(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v8 = PRLogModel(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v9 = 0;
  }

  else if (selfCopy->_titleStyleConfiguration)
  {
    v10 = PRLogModel(v4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PRLogModel(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v9 = selfCopy->_titleStyleConfiguration;
  }

  else
  {
    v14 = [PRPosterPathUtilities titleStyleConfigurationURLForPathInstanceURL:selfCopy->_pathInstanceURL];
    v26 = 0;
    v15 = [PRPosterPathUtilities loadUserObjectForURL:v14 expectedClass:objc_opt_class() strict:1 error:&v26];
    v16 = v26;
    v17 = v26;
    titleStyleConfiguration = selfCopy->_titleStyleConfiguration;
    selfCopy->_titleStyleConfiguration = v15;

    v20 = PRLogModel(v19);
    LODWORD(v15) = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      if (selfCopy->_titleStyleConfiguration)
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = selfCopy->_logPreamble;
          v25 = NSStringFromSelector(a2);
          *buf = 138543874;
          v28 = logPreamble;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v17;
          _os_log_debug_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v17)
    {
      objc_storeStrong(&selfCopy->_titleStyleConfigurationLoadError, v16);
    }

    v9 = selfCopy->_titleStyleConfiguration;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)resetTitleStyleConfiguration
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  v5 = PRLogModel(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v8 = PRLogModel(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  titleStyleConfiguration = selfCopy->_titleStyleConfiguration;
  selfCopy->_titleStyleConfiguration = 0;

  titleStyleConfigurationLoadError = selfCopy->_titleStyleConfigurationLoadError;
  selfCopy->_titleStyleConfigurationLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterRenderingConfiguration)renderingConfiguration
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_renderingConfigurationLoadError)
  {
    v5 = PRLogModel(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v8 = PRLogModel(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v9 = 0;
  }

  else if (selfCopy->_renderingConfiguration)
  {
    v10 = PRLogModel(v4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PRLogModel(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v9 = selfCopy->_renderingConfiguration;
  }

  else
  {
    v14 = [PRPosterPathUtilities renderingConfigurationURLForPathInstanceURL:selfCopy->_pathInstanceURL];
    v26 = 0;
    v15 = [PRPosterPathUtilities loadUserObjectForURL:v14 expectedClass:objc_opt_class() strict:1 error:&v26];
    v16 = v26;
    v17 = v26;
    renderingConfiguration = selfCopy->_renderingConfiguration;
    selfCopy->_renderingConfiguration = v15;

    v20 = PRLogModel(v19);
    LODWORD(v15) = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      if (selfCopy->_renderingConfiguration)
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = selfCopy->_logPreamble;
          v25 = NSStringFromSelector(a2);
          *buf = 138543874;
          v28 = logPreamble;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v17;
          _os_log_debug_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v17)
    {
      objc_storeStrong(&selfCopy->_renderingConfigurationLoadError, v16);
    }

    v9 = selfCopy->_renderingConfiguration;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)resetRenderingConfiguration
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  v5 = PRLogModel(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v8 = PRLogModel(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  renderingConfiguration = selfCopy->_renderingConfiguration;
  selfCopy->_renderingConfiguration = 0;

  renderingConfigurationLoadError = selfCopy->_renderingConfigurationLoadError;
  selfCopy->_renderingConfigurationLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterConfigurableOptions)configurableOptions
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_configurableOptionsLoadError)
  {
    v5 = PRLogModel(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v8 = PRLogModel(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v9 = 0;
  }

  else if (selfCopy->_configurableOptions)
  {
    v10 = PRLogModel(v4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PRLogModel(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v9 = selfCopy->_configurableOptions;
  }

  else
  {
    v14 = [PRPosterPathUtilities configurableOptionsURLForContentsURL:selfCopy->_pathContentsURL];
    v26 = 0;
    v15 = [PRPosterPathUtilities loadUserObjectForURL:v14 expectedClass:objc_opt_class() strict:1 error:&v26];
    v16 = v26;
    v17 = v26;
    configurableOptions = selfCopy->_configurableOptions;
    selfCopy->_configurableOptions = v15;

    v20 = PRLogModel(v19);
    LODWORD(v15) = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      if (selfCopy->_configurableOptions)
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = selfCopy->_logPreamble;
          v25 = NSStringFromSelector(a2);
          *buf = 138543874;
          v28 = logPreamble;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v17;
          _os_log_debug_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v17)
    {
      objc_storeStrong(&selfCopy->_configurableOptionsLoadError, v16);
    }

    v9 = selfCopy->_configurableOptions;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)resetConfigurableOptions
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  v5 = PRLogModel(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v8 = PRLogModel(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  configurableOptions = selfCopy->_configurableOptions;
  selfCopy->_configurableOptions = 0;

  configurableOptionsLoadError = selfCopy->_configurableOptionsLoadError;
  selfCopy->_configurableOptionsLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (id)homeScreenConfigurationOrError:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v6 = objc_sync_enter(selfCopy);
  p_homeScreenConfigurationLoadError = &selfCopy->_homeScreenConfigurationLoadError;
  if (selfCopy->_homeScreenConfigurationLoadError)
  {
    v8 = PRLogModel(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v11 = PRLogModel(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    if (error && ([*p_homeScreenConfigurationLoadError pf_isFileNotFoundError] & 1) == 0)
    {
      v17 = [*p_homeScreenConfigurationLoadError copy];
      v12 = 0;
      *error = v17;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_37;
  }

  if (selfCopy->_homeScreenConfiguration)
  {
    v13 = PRLogModel(v6);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

    if (v14)
    {
      v16 = PRLogModel(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v12 = selfCopy->_homeScreenConfiguration;
    goto LABEL_37;
  }

  v18 = [PRPosterPathUtilities homeScreenConfigurationURLForSupplementURL:selfCopy->_pathSupplementURL];
  v42 = 0;
  v19 = [PRPosterPathUtilities loadUserObjectForURL:v18 expectedClass:objc_opt_class() strict:0 error:&v42];
  v20 = v42;
  homeScreenConfiguration = selfCopy->_homeScreenConfiguration;
  selfCopy->_homeScreenConfiguration = v19;

  if (selfCopy->_homeScreenConfiguration)
  {
    v22 = 0;
  }

  else
  {
    v23 = [PRPosterPathUtilities oldHomeScreenConfigurationURLForIdentifierURL:selfCopy->_pathIdentifierURL];
    v41 = 0;
    v24 = [PRPosterPathUtilities loadUserObjectForURL:v23 expectedClass:objc_opt_class() strict:0 error:&v41];
    v22 = v41;
    v25 = selfCopy->_homeScreenConfiguration;
    selfCopy->_homeScreenConfiguration = v24;
  }

  if (v20)
  {
    v26 = v20;
  }

  else
  {
    v26 = v22;
  }

  v27 = v26;
  v28 = v27;
  if (!selfCopy->_homeScreenConfiguration)
  {
    v33 = PRLogModel(v27);
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);

    if (v34)
    {
      v36 = PRLogModel(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        logPreamble = selfCopy->_logPreamble;
        v40 = NSStringFromSelector(a2);
        *buf = 138543874;
        v44 = logPreamble;
        v45 = 2114;
        v46 = v40;
        v47 = 2114;
        v48 = v28;
        _os_log_debug_impl(&dword_1A8AA7000, v36, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
      }
    }

    pf_isFileNotFoundError = [v28 pf_isFileNotFoundError];
    if (!pf_isFileNotFoundError)
    {
      goto LABEL_34;
    }

    v32 = PRLogModel(pf_isFileNotFoundError);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [PRPosterPathModelObjectCache homeScreenConfigurationOrError:];
    }

    goto LABEL_33;
  }

  v29 = PRLogModel(v27);
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);

  if (v30)
  {
    v32 = PRLogModel(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache configuredProperties];
    }

LABEL_33:
  }

LABEL_34:
  if (v28)
  {
    objc_storeStrong(&selfCopy->_homeScreenConfigurationLoadError, v26);
  }

  v12 = selfCopy->_homeScreenConfiguration;

LABEL_37:
  objc_sync_exit(selfCopy);

  return v12;
}

- (void)resetHomeScreenConfiguration
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  v5 = PRLogModel(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v8 = PRLogModel(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  homeScreenConfiguration = selfCopy->_homeScreenConfiguration;
  selfCopy->_homeScreenConfiguration = 0;

  homeScreenConfigurationLoadError = selfCopy->_homeScreenConfigurationLoadError;
  selfCopy->_homeScreenConfigurationLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterFocusConfiguration)focusConfiguration
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_focusConfigurationLoadError)
  {
    v5 = PRLogModel(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v8 = PRLogModel(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v9 = 0;
  }

  else if (selfCopy->_focusConfiguration)
  {
    v10 = PRLogModel(v4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PRLogModel(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v9 = selfCopy->_focusConfiguration;
  }

  else
  {
    v14 = [PRPosterPathUtilities focusConfigurationURLForIdentifierURL:selfCopy->_pathIdentifierURL];
    v26 = 0;
    v15 = [PRPosterPathUtilities loadUserObjectForURL:v14 expectedClass:objc_opt_class() strict:0 error:&v26];
    v16 = v26;
    v17 = v26;
    focusConfiguration = selfCopy->_focusConfiguration;
    selfCopy->_focusConfiguration = v15;

    v20 = PRLogModel(v19);
    LODWORD(v15) = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      if (selfCopy->_focusConfiguration)
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = selfCopy->_logPreamble;
          v25 = NSStringFromSelector(a2);
          *buf = 138543874;
          v28 = logPreamble;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v17;
          _os_log_debug_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v17)
    {
      objc_storeStrong(&selfCopy->_focusConfigurationLoadError, v16);
    }

    v9 = selfCopy->_focusConfiguration;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)resetFocusConfiguration
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  v5 = PRLogModel(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v8 = PRLogModel(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  focusConfiguration = selfCopy->_focusConfiguration;
  selfCopy->_focusConfiguration = 0;

  focusConfigurationLoadError = selfCopy->_focusConfigurationLoadError;
  selfCopy->_focusConfigurationLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterComplicationLayout)complicationLayout
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_complicationLayoutLoadError)
  {
    v5 = PRLogModel(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v8 = PRLogModel(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v9 = 0;
  }

  else if (selfCopy->_complicationLayout)
  {
    v10 = PRLogModel(v4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PRLogModel(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v9 = selfCopy->_complicationLayout;
  }

  else
  {
    v14 = [PRPosterPathUtilities complicationsLayoutURLForInstanceURL:selfCopy->_pathInstanceURL];
    v26 = 0;
    v15 = [PRPosterPathUtilities loadUserObjectForURL:v14 expectedClass:objc_opt_class() strict:0 error:&v26];
    v16 = v26;
    v17 = v26;
    complicationLayout = selfCopy->_complicationLayout;
    selfCopy->_complicationLayout = v15;

    v20 = PRLogModel(v19);
    LODWORD(v15) = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      if (selfCopy->_complicationLayout)
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = selfCopy->_logPreamble;
          v25 = NSStringFromSelector(a2);
          *buf = 138543874;
          v28 = logPreamble;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v17;
          _os_log_debug_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v17)
    {
      objc_storeStrong(&selfCopy->_complicationLayoutLoadError, v16);
    }

    v9 = selfCopy->_complicationLayout;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)resetComplicationLayout
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  v5 = PRLogModel(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v8 = PRLogModel(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  complicationLayout = selfCopy->_complicationLayout;
  selfCopy->_complicationLayout = 0;

  complicationLayoutLoadError = selfCopy->_complicationLayoutLoadError;
  selfCopy->_complicationLayoutLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterColorVariationsConfiguration)colorVariationsConfiguration
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_colorVariationsConfigurationLoadError)
  {
    v5 = PRLogModel(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v8 = PRLogModel(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v9 = 0;
  }

  else if (selfCopy->_colorVariationsConfiguration)
  {
    v10 = PRLogModel(v4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PRLogModel(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v9 = selfCopy->_colorVariationsConfiguration;
  }

  else
  {
    v14 = [PRPosterPathUtilities colorVariationsConfigurationURLForInstanceURL:selfCopy->_pathInstanceURL];
    v26 = 0;
    v15 = [PRPosterPathUtilities loadUserObjectForURL:v14 expectedClass:objc_opt_class() strict:1 error:&v26];
    v16 = v26;
    v17 = v26;
    colorVariationsConfiguration = selfCopy->_colorVariationsConfiguration;
    selfCopy->_colorVariationsConfiguration = v15;

    v20 = PRLogModel(v19);
    LODWORD(v15) = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      if (selfCopy->_colorVariationsConfiguration)
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = selfCopy->_logPreamble;
          v25 = NSStringFromSelector(a2);
          *buf = 138543874;
          v28 = logPreamble;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v17;
          _os_log_debug_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v17)
    {
      objc_storeStrong(&selfCopy->_colorVariationsConfigurationLoadError, v16);
    }

    v9 = selfCopy->_colorVariationsConfiguration;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)resetColorVariationsConfiguration
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  v5 = PRLogModel(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v8 = PRLogModel(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  colorVariationsConfiguration = selfCopy->_colorVariationsConfiguration;
  selfCopy->_colorVariationsConfiguration = 0;

  colorVariationsConfigurationLoadError = selfCopy->_colorVariationsConfigurationLoadError;
  selfCopy->_colorVariationsConfigurationLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterQuickActionsConfiguration)quickActionsConfiguration
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_quickActionsConfigurationLoadError)
  {
    v5 = PRLogModel(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v8 = PRLogModel(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v9 = 0;
  }

  else if (selfCopy->_quickActionsConfiguration)
  {
    v10 = PRLogModel(v4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PRLogModel(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v9 = selfCopy->_quickActionsConfiguration;
  }

  else
  {
    v14 = [PRPosterPathUtilities quickActionsConfigurationURLForInstanceURL:selfCopy->_pathInstanceURL];
    v26 = 0;
    v15 = [PRPosterPathUtilities loadUserObjectForURL:v14 expectedClass:objc_opt_class() strict:0 error:&v26];
    v16 = v26;
    v17 = v26;
    quickActionsConfiguration = selfCopy->_quickActionsConfiguration;
    selfCopy->_quickActionsConfiguration = v15;

    v20 = PRLogModel(v19);
    LODWORD(v15) = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      if (selfCopy->_quickActionsConfiguration)
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = selfCopy->_logPreamble;
          v25 = NSStringFromSelector(a2);
          *buf = 138543874;
          v28 = logPreamble;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v17;
          _os_log_debug_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v17)
    {
      objc_storeStrong(&selfCopy->_quickActionsConfigurationLoadError, v16);
    }

    v9 = selfCopy->_quickActionsConfiguration;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)resetQuickActionsConfiguration
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  v5 = PRLogModel(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v8 = PRLogModel(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  quickActionsConfiguration = selfCopy->_quickActionsConfiguration;
  selfCopy->_quickActionsConfiguration = 0;

  quickActionsConfigurationLoadError = selfCopy->_quickActionsConfigurationLoadError;
  selfCopy->_quickActionsConfigurationLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterSuggestionMetadata)suggestionMetadata
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_suggestionMetadataLoadError)
  {
    v5 = PRLogModel(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v8 = PRLogModel(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v9 = 0;
  }

  else if (selfCopy->_suggestionMetadata)
  {
    v10 = PRLogModel(v4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PRLogModel(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v9 = selfCopy->_suggestionMetadata;
  }

  else
  {
    v14 = [PRPosterPathUtilities suggestionMetadataURLForIdentifierURL:selfCopy->_pathIdentifierURL];
    v26 = 0;
    v15 = [PRPosterPathUtilities loadUserObjectForURL:v14 expectedClass:objc_opt_class() strict:0 error:&v26];
    v16 = v26;
    v17 = v26;
    suggestionMetadata = selfCopy->_suggestionMetadata;
    selfCopy->_suggestionMetadata = v15;

    v20 = PRLogModel(v19);
    LODWORD(v15) = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      if (selfCopy->_suggestionMetadata)
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = selfCopy->_logPreamble;
          v25 = NSStringFromSelector(a2);
          *buf = 138543874;
          v28 = logPreamble;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v17;
          _os_log_debug_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v17)
    {
      objc_storeStrong(&selfCopy->_suggestionMetadataLoadError, v16);
    }

    v9 = selfCopy->_suggestionMetadata;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)resetSuggestionMetadata
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  v5 = PRLogModel(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v8 = PRLogModel(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  suggestionMetadata = selfCopy->_suggestionMetadata;
  selfCopy->_suggestionMetadata = 0;

  suggestionMetadataLoadError = selfCopy->_suggestionMetadataLoadError;
  selfCopy->_suggestionMetadataLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterMetadata)otherMetadata
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_otherMetadataLoadError)
  {
    v5 = PRLogModel(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v8 = PRLogModel(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v9 = 0;
  }

  else if (selfCopy->_otherMetadata)
  {
    v10 = PRLogModel(v4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PRLogModel(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v9 = selfCopy->_otherMetadata;
  }

  else
  {
    v14 = [PRPosterPathUtilities otherMetadataURLForContentsURL:selfCopy->_pathContentsURL];
    v26 = 0;
    v15 = [PRPosterPathUtilities loadUserObjectForURL:v14 expectedClass:objc_opt_class() strict:1 error:&v26];
    v16 = v26;
    v17 = v26;
    otherMetadata = selfCopy->_otherMetadata;
    selfCopy->_otherMetadata = v15;

    v20 = PRLogModel(v19);
    LODWORD(v15) = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      if (selfCopy->_otherMetadata)
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = selfCopy->_logPreamble;
          v25 = NSStringFromSelector(a2);
          *buf = 138543874;
          v28 = logPreamble;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v17;
          _os_log_debug_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v17)
    {
      objc_storeStrong(&selfCopy->_otherMetadataLoadError, v16);
    }

    v9 = selfCopy->_otherMetadata;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)resetOtherMetadata
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  v5 = PRLogModel(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v8 = PRLogModel(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  otherMetadata = selfCopy->_otherMetadata;
  selfCopy->_otherMetadata = 0;

  otherMetadataLoadError = selfCopy->_otherMetadataLoadError;
  selfCopy->_otherMetadataLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterDescriptorGalleryOptions)galleryOptions
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_galleryOptionsLoadError)
  {
    v5 = PRLogModel(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v8 = PRLogModel(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v9 = 0;
  }

  else if (selfCopy->_galleryOptions)
  {
    v10 = PRLogModel(v4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PRLogModel(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v9 = selfCopy->_galleryOptions;
  }

  else
  {
    v14 = [PRPosterPathUtilities descriptorGalleryOptionsURLForContentsURL:selfCopy->_pathContentsURL];
    v26 = 0;
    v15 = [PRPosterPathUtilities loadUserObjectForURL:v14 expectedClass:objc_opt_class() strict:0 error:&v26];
    v16 = v26;
    v17 = v26;
    galleryOptions = selfCopy->_galleryOptions;
    selfCopy->_galleryOptions = v15;

    v20 = PRLogModel(v19);
    LODWORD(v15) = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      if (selfCopy->_galleryOptions)
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = selfCopy->_logPreamble;
          v25 = NSStringFromSelector(a2);
          *buf = 138543874;
          v28 = logPreamble;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v17;
          _os_log_debug_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v17)
    {
      objc_storeStrong(&selfCopy->_galleryOptionsLoadError, v16);
    }

    v9 = selfCopy->_galleryOptions;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)resetGalleryOptions
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  v5 = PRLogModel(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v8 = PRLogModel(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  galleryOptions = selfCopy->_galleryOptions;
  selfCopy->_galleryOptions = 0;

  galleryOptionsLoadError = selfCopy->_galleryOptionsLoadError;
  selfCopy->_galleryOptionsLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (ATXPosterDescriptorGalleryOptions)proactiveGalleryOptions
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_proactiveGalleryOptionsLoadError)
  {
    v5 = PRLogModel(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v8 = PRLogModel(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v9 = 0;
  }

  else if (selfCopy->_proactiveGalleryOptions)
  {
    v10 = PRLogModel(v4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PRLogModel(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v9 = selfCopy->_proactiveGalleryOptions;
  }

  else
  {
    v14 = [PRPosterPathUtilities proactiveGalleryOptionsURLForContentsURL:selfCopy->_pathContentsURL];
    v26 = 0;
    v15 = [PRPosterPathUtilities loadUserObjectForURL:v14 expectedClass:objc_opt_class() strict:0 error:&v26];
    v16 = v26;
    v17 = v26;
    proactiveGalleryOptions = selfCopy->_proactiveGalleryOptions;
    selfCopy->_proactiveGalleryOptions = v15;

    v20 = PRLogModel(v19);
    LODWORD(v15) = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      if (selfCopy->_proactiveGalleryOptions)
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = selfCopy->_logPreamble;
          v25 = NSStringFromSelector(a2);
          *buf = 138543874;
          v28 = logPreamble;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v17;
          _os_log_debug_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v17)
    {
      objc_storeStrong(&selfCopy->_proactiveGalleryOptionsLoadError, v16);
    }

    v9 = selfCopy->_proactiveGalleryOptions;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)resetProactiveGalleryOptions
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  v5 = PRLogModel(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v8 = PRLogModel(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  proactiveGalleryOptions = selfCopy->_proactiveGalleryOptions;
  selfCopy->_proactiveGalleryOptions = 0;

  proactiveGalleryOptionsLoadError = selfCopy->_proactiveGalleryOptionsLoadError;
  selfCopy->_proactiveGalleryOptionsLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterAmbientConfiguration)ambientConfiguration
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_ambientConfigurationLoadError)
  {
    v5 = PRLogModel(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v8 = PRLogModel(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v9 = 0;
  }

  else if (selfCopy->_ambientConfiguration)
  {
    v10 = PRLogModel(v4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PRLogModel(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v9 = selfCopy->_ambientConfiguration;
  }

  else
  {
    v14 = [PRPosterPathUtilities ambientConfigurationURLForContentsURL:selfCopy->_pathContentsURL];
    v26 = 0;
    v15 = [PRPosterPathUtilities loadUserObjectForURL:v14 expectedClass:objc_opt_class() strict:0 error:&v26];
    v16 = v26;
    v17 = v26;
    ambientConfiguration = selfCopy->_ambientConfiguration;
    selfCopy->_ambientConfiguration = v15;

    v20 = PRLogModel(v19);
    LODWORD(v15) = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      if (selfCopy->_ambientConfiguration)
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = selfCopy->_logPreamble;
          v25 = NSStringFromSelector(a2);
          *buf = 138543874;
          v28 = logPreamble;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v17;
          _os_log_debug_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v17)
    {
      objc_storeStrong(&selfCopy->_ambientConfigurationLoadError, v16);
    }

    v9 = selfCopy->_ambientConfiguration;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)resetAmbientConfiguration
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  v5 = PRLogModel(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v8 = PRLogModel(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  ambientConfiguration = selfCopy->_ambientConfiguration;
  selfCopy->_ambientConfiguration = 0;

  ambientConfigurationLoadError = selfCopy->_ambientConfigurationLoadError;
  selfCopy->_ambientConfigurationLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterAmbientWidgetLayout)ambientWidgetLayout
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_ambientWidgetLayoutLoadError)
  {
    v5 = PRLogModel(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v8 = PRLogModel(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v9 = 0;
  }

  else if (selfCopy->_ambientWidgetLayout)
  {
    v10 = PRLogModel(v4);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = PRLogModel(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v9 = selfCopy->_ambientWidgetLayout;
  }

  else
  {
    v14 = [PRPosterPathUtilities ambientWidgetLayoutURLForInstanceURL:selfCopy->_pathInstanceURL];
    v26 = 0;
    v15 = [PRPosterPathUtilities loadUserObjectForURL:v14 expectedClass:objc_opt_class() strict:0 error:&v26];
    v16 = v26;
    v17 = v26;
    ambientWidgetLayout = selfCopy->_ambientWidgetLayout;
    selfCopy->_ambientWidgetLayout = v15;

    v20 = PRLogModel(v19);
    LODWORD(v15) = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      if (selfCopy->_ambientWidgetLayout)
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v22 = PRLogModel(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = selfCopy->_logPreamble;
          v25 = NSStringFromSelector(a2);
          *buf = 138543874;
          v28 = logPreamble;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v17;
          _os_log_debug_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v17)
    {
      objc_storeStrong(&selfCopy->_ambientWidgetLayoutLoadError, v16);
    }

    v9 = selfCopy->_ambientWidgetLayout;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)resetAmbientWidgetLayout
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  v5 = PRLogModel(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v8 = PRLogModel(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  ambientWidgetLayout = selfCopy->_ambientWidgetLayout;
  selfCopy->_ambientWidgetLayout = 0;

  ambientWidgetLayoutLoadError = selfCopy->_ambientWidgetLayoutLoadError;
  selfCopy->_ambientWidgetLayoutLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PFServerPosterIdentity)identity
{
  WeakRetained = objc_loadWeakRetained(&self->_identity);

  return WeakRetained;
}

- (void)configuredProperties
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_12(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_4_0(&dword_1A8AA7000, "[%{public}@ cache] failed to load cached value for %{public}@", v4, v5);
}

- (void)userInfo
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_12(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_4_0(&dword_1A8AA7000, "[%{public}@ cache] bailing; previous loading error %{public}@", v4, v5);
}

@end