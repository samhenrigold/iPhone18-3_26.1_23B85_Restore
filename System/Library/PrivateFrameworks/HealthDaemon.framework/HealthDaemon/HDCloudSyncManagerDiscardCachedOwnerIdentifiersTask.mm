@interface HDCloudSyncManagerDiscardCachedOwnerIdentifiersTask
- (HDCloudSyncManagerDiscardCachedOwnerIdentifiersTask)initWithDaemon:(id)daemon;
- (void)main;
@end

@implementation HDCloudSyncManagerDiscardCachedOwnerIdentifiersTask

- (HDCloudSyncManagerDiscardCachedOwnerIdentifiersTask)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v8.receiver = self;
  v8.super_class = HDCloudSyncManagerDiscardCachedOwnerIdentifiersTask;
  v5 = [(HDCloudSyncManagerTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
  }

  return v6;
}

- (void)main
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  profileManager = [WeakRetained profileManager];
  allProfileIdentifiers = [profileManager allProfileIdentifiers];

  v6 = [allProfileIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allProfileIdentifiers);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = objc_loadWeakRetained(&self->_daemon);
        profileManager2 = [v11 profileManager];
        v13 = [profileManager2 profileForIdentifier:v10];

        cloudSyncManager = [v13 cloudSyncManager];
        ownerIdentifierManager = [cloudSyncManager ownerIdentifierManager];
        [ownerIdentifierManager discardCachedIdentifiers];

        ++v9;
      }

      while (v7 != v9);
      v7 = [allProfileIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [(HDCloudSyncManagerTask *)self finish];
}

@end