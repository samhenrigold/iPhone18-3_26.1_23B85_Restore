@interface LSDAppProtectionClient
@end

@implementation LSDAppProtectionClient

void __67___LSDAppProtectionClient_sendPluginNotificationsFor_notification___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    do
    {
      v5 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v14 + 1) + 8 * v5);
        v7 = [LSApplicationRecord alloc];
        v8 = [(LSApplicationRecord *)v7 initWithBundleIdentifier:v6 allowPlaceholder:0 error:0, v14];
        v9 = v8;
        if (v8)
        {
          v10 = *(a1 + 40);
          v11 = [(LSApplicationRecord *)v8 applicationExtensionRecords];
          v12 = [v11 allObjects];
          [v10 addObjectsFromArray:v12];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  v13 = +[_LSInstallProgressService sharedInstance];
  [v13 detachAndSendNotification:*(a1 + 48) forApplicationExtensionRecords:*(a1 + 40)];
}

@end