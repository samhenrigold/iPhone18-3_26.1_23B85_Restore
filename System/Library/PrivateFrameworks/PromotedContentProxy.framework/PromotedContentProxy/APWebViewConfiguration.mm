@interface APWebViewConfiguration
- (APWebViewConfiguration)init;
- (WKWebViewConfiguration)videoConfiguration;
- (WKWebViewConfiguration)videoConfigurationWithBackgroundPriority;
- (WKWebViewConfiguration)webProcessConfiguration;
- (WKWebViewConfiguration)webProcessConfigurationWithBackgroundPriority;
- (id)_injectionScriptForResource:(id)resource injectionTime:(int64_t)time;
- (id)_injectionStyleForResource:(id)resource;
- (id)_newProcessPoolWithBackgroundPriority:(BOOL)priority;
- (id)_newSharedConfigurationWithBackgroundPriority:(BOOL)priority;
@end

@implementation APWebViewConfiguration

- (APWebViewConfiguration)init
{
  v28.receiver = self;
  v28.super_class = APWebViewConfiguration;
  v2 = [(APWebViewConfiguration *)&v28 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CE4AD8]);
    v7 = objc_msgSend_initWithOptions_(v3, v4, 1, v5, v6);
    webProcessConfigurationLock = v2->_webProcessConfigurationLock;
    v2->_webProcessConfigurationLock = v7;

    v9 = objc_alloc(MEMORY[0x277CE4AD8]);
    v13 = objc_msgSend_initWithOptions_(v9, v10, 1, v11, v12);
    webProcessConfigurationWithBackgroundPriorityLock = v2->_webProcessConfigurationWithBackgroundPriorityLock;
    v2->_webProcessConfigurationWithBackgroundPriorityLock = v13;

    v15 = objc_alloc(MEMORY[0x277CE4AD8]);
    v19 = objc_msgSend_initWithOptions_(v15, v16, 1, v17, v18);
    videoConfigurationLock = v2->_videoConfigurationLock;
    v2->_videoConfigurationLock = v19;

    v21 = objc_alloc(MEMORY[0x277CE4AD8]);
    v25 = objc_msgSend_initWithOptions_(v21, v22, 1, v23, v24);
    videoConfigurationWithBackgroundPriorityLock = v2->_videoConfigurationWithBackgroundPriorityLock;
    v2->_videoConfigurationWithBackgroundPriorityLock = v25;
  }

  return v2;
}

- (WKWebViewConfiguration)webProcessConfiguration
{
  v6 = objc_msgSend_webProcessConfigurationLock(self, a2, v2, v3, v4);
  objc_msgSend_lock(v6, v7, v8, v9, v10);

  if (!self->_webProcessConfiguration)
  {
    v15 = objc_msgSend__newSharedConfigurationWithBackgroundPriority_(self, v11, 0, v13, v14);
    webProcessConfiguration = self->_webProcessConfiguration;
    self->_webProcessConfiguration = v15;
  }

  v17 = objc_msgSend_webProcessConfigurationLock(self, v11, v12, v13, v14);
  objc_msgSend_unlock(v17, v18, v19, v20, v21);

  v22 = self->_webProcessConfiguration;

  return v22;
}

- (WKWebViewConfiguration)webProcessConfigurationWithBackgroundPriority
{
  v6 = objc_msgSend_webProcessConfigurationWithBackgroundPriorityLock(self, a2, v2, v3, v4);
  objc_msgSend_lock(v6, v7, v8, v9, v10);

  if (!self->_webProcessConfigurationWithBackgroundPriority)
  {
    v15 = objc_msgSend__newSharedConfigurationWithBackgroundPriority_(self, v11, 1, v13, v14);
    webProcessConfigurationWithBackgroundPriority = self->_webProcessConfigurationWithBackgroundPriority;
    self->_webProcessConfigurationWithBackgroundPriority = v15;
  }

  v17 = objc_msgSend_webProcessConfigurationWithBackgroundPriorityLock(self, v11, v12, v13, v14);
  objc_msgSend_unlock(v17, v18, v19, v20, v21);

  v22 = self->_webProcessConfigurationWithBackgroundPriority;

  return v22;
}

- (WKWebViewConfiguration)videoConfiguration
{
  v6 = objc_msgSend_videoConfigurationLock(self, a2, v2, v3, v4);
  objc_msgSend_lock(v6, v7, v8, v9, v10);

  if (!self->_videoConfiguration)
  {
    v15 = objc_msgSend__newSharedConfigurationWithBackgroundPriority_(self, v11, 0, v13, v14);
    videoConfiguration = self->_videoConfiguration;
    self->_videoConfiguration = v15;
  }

  v17 = objc_msgSend_videoConfigurationLock(self, v11, v12, v13, v14);
  objc_msgSend_unlock(v17, v18, v19, v20, v21);

  v22 = self->_videoConfiguration;

  return v22;
}

- (WKWebViewConfiguration)videoConfigurationWithBackgroundPriority
{
  v6 = objc_msgSend_videoConfigurationWithBackgroundPriorityLock(self, a2, v2, v3, v4);
  objc_msgSend_lock(v6, v7, v8, v9, v10);

  if (!self->_videoConfigurationWithBackgroundPriority)
  {
    v15 = objc_msgSend__newSharedConfigurationWithBackgroundPriority_(self, v11, 1, v13, v14);
    videoConfigurationWithBackgroundPriority = self->_videoConfigurationWithBackgroundPriority;
    self->_videoConfigurationWithBackgroundPriority = v15;
  }

  v17 = objc_msgSend_videoConfigurationWithBackgroundPriorityLock(self, v11, v12, v13, v14);
  objc_msgSend_unlock(v17, v18, v19, v20, v21);

  v22 = self->_videoConfigurationWithBackgroundPriority;

  return v22;
}

- (id)_newSharedConfigurationWithBackgroundPriority:(BOOL)priority
{
  priorityCopy = priority;
  v5 = objc_alloc_init(MEMORY[0x277CE3858]);
  objc_msgSend_setAllowsInlineMediaPlayback_(v5, v6, 1, v7, v8);
  objc_msgSend_setMediaTypesRequiringUserActionForPlayback_(v5, v9, 0, v10, v11);
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"connect-src https: %@: %@: %@: %@:", v13, v14, @"pc-video-https", @"pc-video-http", @"pc-x-tag-https", @"pc-x-tag-http");
  objc_msgSend__setOverrideContentSecurityPolicy_(v5, v16, v15, v17, v18);
  v23 = objc_msgSend_nonPersistentDataStore(MEMORY[0x277CE3868], v19, v20, v21, v22);
  objc_msgSend_setWebsiteDataStore_(v5, v24, v23, v25, v26);

  v27 = objc_alloc_init(MEMORY[0x277CE3830]);
  v30 = objc_msgSend__injectionScriptForResource_injectionTime_(self, v28, @"APInjectionScript", 0, v29);
  objc_msgSend_addUserScript_(v27, v31, v30, v32, v33);

  v36 = objc_msgSend__injectionScriptForResource_injectionTime_(self, v34, @"APViewportElementScript", 1, v35);
  objc_msgSend_addUserScript_(v27, v37, v36, v38, v39);

  v43 = objc_msgSend__injectionStyleForResource_(self, v40, @"APStyleSheet", v41, v42);
  objc_msgSend__addUserStyleSheet_(v27, v44, v43, v45, v46);

  objc_msgSend_setUserContentController_(v5, v47, v27, v48, v49);
  v53 = objc_msgSend__newProcessPoolWithBackgroundPriority_(self, v50, priorityCopy, v51, v52);
  objc_msgSend_setProcessPool_(v5, v54, v53, v55, v56);
  objc_msgSend__setWaitsForPaintAfterViewDidMoveToWindow_(v5, v57, 0, v58, v59);
  v60 = objc_alloc_init(MEMORY[0x277CE3818]);
  objc_msgSend__setPeerConnectionEnabled_(v60, v61, 0, v62, v63);
  objc_msgSend_setPreferences_(v5, v64, v60, v65, v66);

  return v5;
}

- (id)_newProcessPoolWithBackgroundPriority:(BOOL)priority
{
  priorityCopy = priority;
  v4 = objc_alloc_init(MEMORY[0x277CE3890]);
  v8 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v5, @"com.apple.ap.Proxy", v6, v7);
  v13 = objc_msgSend_builtInPlugInsURL(v8, v9, v10, v11, v12);
  v16 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v13, v14, @"PromotedContentWebProcessBundle.bundle", 1, v15);

  objc_msgSend_setAlwaysRunsAtBackgroundPriority_(v4, v17, priorityCopy, v18, v19);
  objc_msgSend_setInjectedBundleURL_(v4, v20, v16, v21, v22);
  v23 = objc_alloc(MEMORY[0x277CE3820]);
  v27 = objc_msgSend__initWithConfiguration_(v23, v24, v4, v25, v26);

  return v27;
}

- (id)_injectionScriptForResource:(id)resource injectionTime:(int64_t)time
{
  v5 = MEMORY[0x277CCA8D8];
  resourceCopy = resource;
  v10 = objc_msgSend_bundleWithIdentifier_(v5, v7, @"com.apple.ap.PromotedContentUI", v8, v9);
  v13 = objc_msgSend_URLForResource_withExtension_(v10, v11, resourceCopy, @"js", v12);

  v15 = objc_msgSend_stringWithContentsOfURL_encoding_error_(MEMORY[0x277CCACA8], v14, v13, 4, 0);
  v16 = objc_alloc(MEMORY[0x277CE3838]);
  v18 = objc_msgSend_initWithSource_injectionTime_forMainFrameOnly_(v16, v17, v15, time, 0);

  return v18;
}

- (id)_injectionStyleForResource:(id)resource
{
  v3 = MEMORY[0x277CCA8D8];
  resourceCopy = resource;
  v8 = objc_msgSend_bundleWithIdentifier_(v3, v5, @"com.apple.ap.PromotedContentUI", v6, v7);
  v11 = objc_msgSend_URLForResource_withExtension_(v8, v9, resourceCopy, @"css", v10);

  v13 = objc_msgSend_stringWithContentsOfURL_encoding_error_(MEMORY[0x277CCACA8], v12, v11, 4, 0);
  v14 = objc_alloc(MEMORY[0x277CE38B0]);
  v17 = objc_msgSend_initWithSource_forMainFrameOnly_(v14, v15, v13, 0, v16);

  return v17;
}

@end