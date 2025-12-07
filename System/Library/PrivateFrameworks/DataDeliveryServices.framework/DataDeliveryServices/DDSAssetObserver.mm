@interface DDSAssetObserver
- (DDSAssetObserver)init;
- (DDSAssetObservingDelegate)delegate;
- (void)beginObservingType:(id)type;
- (void)dealloc;
- (void)endObservingTypes:(id)types;
- (void)notifyObserversAssetsUpdatedForType:(id)type;
- (void)observeAssetType:(id)type;
@end

@implementation DDSAssetObserver

- (DDSAssetObserver)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = DDSAssetObserver;
  v2 = [(DDSAssetObserver *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    typesToObserve = v2->_typesToObserve;
    v2->_typesToObserve = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = MEMORY[0x1E695DFD8];
    v11[0] = @"com.apple.MobileAsset.LinguisticDataAuto";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v7 = [v5 setWithArray:v6];
    autoAssetTypes = v2->_autoAssetTypes;
    v2->_autoAssetTypes = v7;
  }

  return v2;
}

- (void)observeAssetType:(id)type
{
  v12 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  os_unfair_lock_lock(&self->_lock);
  typesToObserve = [(DDSAssetObserver *)self typesToObserve];
  v6 = [typesToObserve containsObject:typeCopy];

  if ((v6 & 1) == 0)
  {
    v8 = DefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = typeCopy;
      _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Adding observer for DDS asset update notification for asset type: (%{public}@)", &v10, 0xCu);
    }

    typesToObserve2 = [(DDSAssetObserver *)self typesToObserve];
    [typesToObserve2 addObject:typeCopy];

    [(DDSAssetObserver *)self beginObservingType:typeCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)beginObservingType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy stringByAppendingString:@".dds.assets-updated"];
  autoAssetTypes = [(DDSAssetObserver *)self autoAssetTypes];
  v6 = [autoAssetTypes containsObject:typeCopy];

  if (v6)
  {
    v7 = [MEMORY[0x1E69B1900] notifyRegistrationName:@"ASSET_VERSION_DOWNLOADED" forAssetType:typeCopy];

    v4 = v7;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, assetUpdatedNotificationCallback, v4, 0, CFNotificationSuspensionBehaviorCoalesce);
}

- (void)endObservingTypes:(id)types
{
  v24 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v5 = DefaultLog(typesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = typesCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "End observing types: %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = typesCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 stringByAppendingString:{@".dds.assets-updated", v17}];
        autoAssetTypes = [(DDSAssetObserver *)self autoAssetTypes];
        v14 = [autoAssetTypes containsObject:v11];

        if (v14)
        {
          v15 = [MEMORY[0x1E69B1900] notifyRegistrationName:@"ASSET_VERSION_DOWNLOADED" forAssetType:v11];

          v12 = v15;
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v12, 0);
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)notifyObserversAssetsUpdatedForType:(id)type
{
  name = [type stringByAppendingString:@".dds.assets-updated"];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

- (void)dealloc
{
  v3 = DefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Unexpected dealloc for asset observer", buf, 2u);
  }

  [(DDSAssetObserver *)self setDelegate:0];
  typesToObserve = [(DDSAssetObserver *)self typesToObserve];
  [(DDSAssetObserver *)self endObservingTypes:typesToObserve];

  v5.receiver = self;
  v5.super_class = DDSAssetObserver;
  [(DDSAssetObserver *)&v5 dealloc];
}

- (DDSAssetObservingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end