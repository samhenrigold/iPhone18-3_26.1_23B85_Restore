@interface ATXWidgetLocationAuthorizationTracker
- (ATXWidgetLocationAuthorizationTracker)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier;
- (BOOL)isContainerAuthorizedForWidgetUpdates;
- (BOOL)widgetWantsLocation;
- (void)isContainerAuthorizedForWidgetUpdates;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)widgetWantsLocation;
@end

@implementation ATXWidgetLocationAuthorizationTracker

- (ATXWidgetLocationAuthorizationTracker)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v20.receiver = self;
  v20.super_class = ATXWidgetLocationAuthorizationTracker;
  v8 = [(ATXWidgetLocationAuthorizationTracker *)&v20 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    extensionBundleIdentifier = v8->_extensionBundleIdentifier;
    v8->_extensionBundleIdentifier = v9;

    v11 = [bundleIdentifierCopy copy];
    containerBundleIdentifier = v8->_containerBundleIdentifier;
    v8->_containerBundleIdentifier = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    uTF8String = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(uTF8String, v16);
    queue = v8->_queue;
    v8->_queue = v17;
  }

  return v8;
}

- (BOOL)isContainerAuthorizedForWidgetUpdates
{
  p_containerBundleIdentifier = &self->_containerBundleIdentifier;
  if (self->_containerBundleIdentifier)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__ATXWidgetLocationAuthorizationTracker_isContainerAuthorizedForWidgetUpdates__block_invoke;
    block[3] = &unk_278E08D40;
    block[4] = self;
    block[5] = &v14;
    dispatch_sync(queue, block);
    v5 = v15[5];
    if (v5)
    {
      bOOLValue = [v5 BOOLValue];
    }

    else
    {
      v8 = [MEMORY[0x277D425A0] waitForSemaphore:self->_sem timeoutSeconds:1.0];
      if (v8 == 1)
      {
        v9 = __atxlog_handle_default(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(ATXWidgetLocationAuthorizationTracker *)p_containerBundleIdentifier isContainerAuthorizedForWidgetUpdates];
        }

        v7 = 0;
        goto LABEL_11;
      }

      v10 = self->_queue;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __78__ATXWidgetLocationAuthorizationTracker_isContainerAuthorizedForWidgetUpdates__block_invoke_21;
      v12[3] = &unk_278E08D68;
      v12[4] = self;
      v12[5] = &v14;
      dispatch_sync(v10, v12);
      bOOLValue = [v15[5] BOOLValue];
    }

    v7 = bOOLValue;
LABEL_11:
    _Block_object_dispose(&v14, 8);

    return v7;
  }

  return 1;
}

uint64_t __78__ATXWidgetLocationAuthorizationTracker_isContainerAuthorizedForWidgetUpdates__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = *(*(result + 40) + 8);
    *(v4 + 40) = v3;
  }

  else
  {
    if (*(v2 + 48))
    {
      return result;
    }

    v5 = dispatch_semaphore_create(0);
    v6 = *(v1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *(*(v1 + 32) + 48) = [objc_alloc(MEMORY[0x277CBFC10]) initWithEffectiveBundleIdentifier:*(*(v1 + 32) + 16) delegate:*(v1 + 32) onQueue:*(*(v1 + 32) + 24)];
  }

  return MEMORY[0x2821F96F8]();
}

- (BOOL)widgetWantsLocation
{
  p_extensionBundleIdentifier = &self->_extensionBundleIdentifier;
  if (ATXBundleIdIsSpecialWidgetExtensionBundleId())
  {
    return 0;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x277CC1E50]);
  v6 = *p_extensionBundleIdentifier;
  v13 = 0;
  v7 = [v5 initWithBundleIdentifier:v6 error:&v13];
  v8 = v13;
  objc_autoreleasePoolPop(v4);
  if (v8)
  {
    infoDictionary = __atxlog_handle_default(v9);
    if (os_log_type_enabled(infoDictionary, OS_LOG_TYPE_ERROR))
    {
      [(ATXWidgetLocationAuthorizationTracker *)p_extensionBundleIdentifier widgetWantsLocation];
    }

    bOOLValue = 0;
  }

  else
  {
    infoDictionary = [v7 infoDictionary];
    v11 = [infoDictionary objectForKey:@"NSWidgetWantsLocation" ofClass:objc_opt_class()];
    bOOLValue = [v11 BOOLValue];
  }

  return bOOLValue;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  queue = self->_queue;
  authorizationCopy = authorization;
  dispatch_assert_queue_V2(queue);
  v6 = MEMORY[0x277CCABB0];
  isAuthorizedForWidgetUpdates = [authorizationCopy isAuthorizedForWidgetUpdates];

  v8 = [v6 numberWithBool:isAuthorizedForWidgetUpdates];
  queue_authorizedForWidgetUpdates = self->_queue_authorizedForWidgetUpdates;
  self->_queue_authorizedForWidgetUpdates = v8;

  sem = self->_sem;

  dispatch_semaphore_signal(sem);
}

- (void)isContainerAuthorizedForWidgetUpdates
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v3 = 136315394;
  v4 = "[ATXWidgetLocationAuthorizationTracker isContainerAuthorizedForWidgetUpdates]";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_244192000, a2, OS_LOG_TYPE_ERROR, "%s: Timed out waiting for location auth delegate callback for bundle id: %@", &v3, 0x16u);
}

- (void)widgetWantsLocation
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_244192000, a2, OS_LOG_TYPE_ERROR, "ATXWidgetLocationAuthorizationTracker: could not access LSApplicationExtensionRecord for extension bundle id %@", &v3, 0xCu);
}

@end