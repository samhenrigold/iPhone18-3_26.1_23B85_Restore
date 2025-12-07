@interface NSFileManager
@end

@implementation NSFileManager

void __89__NSFileManager_SafariNSFileManagerExtras__safari_mobileSafariGroupContainerDirectoryURL__block_invoke()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.safari"];
  v2 = [NSFileManager(SafariNSFileManagerExtras) safari_mobileSafariGroupContainerDirectoryURL]::containerURL;
  [NSFileManager(SafariNSFileManagerExtras) safari_mobileSafariGroupContainerDirectoryURL]::containerURL = v1;

  if (![NSFileManager(SafariNSFileManagerExtras) safari_mobileSafariGroupContainerDirectoryURL]::containerURL)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXFileManager(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __89__NSFileManager_SafariNSFileManagerExtras__safari_mobileSafariGroupContainerDirectoryURL__block_invoke_cold_1(v5);
    }
  }
}

void __71__NSFileManager_SafariNSFileManagerExtras__safari_settingsDirectoryURL__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 safari_safariLibraryDirectory];
  v2 = [v1 safari_settingsDirectoryForLibraryDirectory:?];
  v3 = [NSFileManager(SafariNSFileManagerExtras) safari_settingsDirectoryURL]::settingsDirectory;
  [NSFileManager(SafariNSFileManagerExtras) safari_settingsDirectoryURL]::settingsDirectory = v2;
}

void __73__NSFileManager_SafariNSFileManagerExtras__safari_safariLibraryDirectory__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safari_mobileSafariContainerDirectoryURL];
  v9 = v2;
  if (v2)
  {
    v3 = [*(a1 + 32) _safari_libraryDirectoryForHomeDirectory:v2];
    v4 = [NSFileManager(SafariNSFileManagerExtras) safari_safariLibraryDirectory]::safariLibraryDirectory;
    [NSFileManager(SafariNSFileManagerExtras) safari_safariLibraryDirectory]::safariLibraryDirectory = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695DFF8];
    v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v6 = [v4 objectAtIndex:0];
    v7 = [v5 fileURLWithPath:v6 isDirectory:1];
    v8 = [NSFileManager(SafariNSFileManagerExtras) safari_safariLibraryDirectory]::safariLibraryDirectory;
    [NSFileManager(SafariNSFileManagerExtras) safari_safariLibraryDirectory]::safariLibraryDirectory = v7;
  }
}

void __84__NSFileManager_SafariNSFileManagerExtras__safari_webExtensionsSettingsDirectoryURL__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) safari_settingsDirectoryURL];
  v1 = [v3 URLByAppendingPathComponent:@"WebExtensions"];
  v2 = [NSFileManager(SafariNSFileManagerExtras) safari_webExtensionsSettingsDirectoryURL]::settingsDirectory;
  [NSFileManager(SafariNSFileManagerExtras) safari_webExtensionsSettingsDirectoryURL]::settingsDirectory = v1;
}

void __105__NSFileManager_SafariNSFileManagerExtras___safari_getMobileSafariContainerDirectoryURL_isContainerized___block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  getpid();
  if (sandbox_container_path_for_pid() || ([MEMORY[0x1E696AAE8] mainBundle], v0 = objc_claimAutoreleasedReturnValue(), v1 = objc_msgSend(v0, "safari_isPasswordsAppBundle"), v0, (v1 & 1) != 0))
  {
    v12 = 0;
    v2 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:@"com.apple.mobilesafari" allowPlaceholder:0 error:&v12];
    v3 = v12;
    v4 = [v2 dataContainerURL];
    v5 = [NSFileManager(SafariNSFileManagerExtras) _safari_getMobileSafariContainerDirectoryURL:isContainerized:]::containerURL;
    [NSFileManager(SafariNSFileManagerExtras) _safari_getMobileSafariContainerDirectoryURL:isContainerized:]::containerURL = v4;

    if (![NSFileManager(SafariNSFileManagerExtras) _safari_getMobileSafariContainerDirectoryURL:isContainerized:]::containerURL)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXOther(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v3 safari_privacyPreservingDescription];
        *buf = 138543362;
        v14 = v9;
        _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_INFO, "Safari received a nil container URL from LSApplicationRecord which must not happen unless Safari has been deleted: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v15];
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];
    v11 = [NSFileManager(SafariNSFileManagerExtras) _safari_getMobileSafariContainerDirectoryURL:isContainerized:]::containerURL;
    [NSFileManager(SafariNSFileManagerExtras) _safari_getMobileSafariContainerDirectoryURL:isContainerized:]::containerURL = v10;

    [NSFileManager(SafariNSFileManagerExtras) _safari_getMobileSafariContainerDirectoryURL:isContainerized:]::isContainerized = 1;
  }
}

void __116__NSFileManager_SafariNSFileManagerExtras__safari_mobileSafariAppContainerDirectoryURLFromOutsideSafariAppContainer__block_invoke()
{
  v4 = 0;
  v0 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:@"com.apple.mobilesafari" allowPlaceholder:0 error:&v4];
  v1 = v4;
  v2 = [v0 dataContainerURL];
  v3 = [NSFileManager(SafariNSFileManagerExtras) safari_mobileSafariAppContainerDirectoryURLFromOutsideSafariAppContainer]::containerURL;
  [NSFileManager(SafariNSFileManagerExtras) safari_mobileSafariAppContainerDirectoryURLFromOutsideSafariAppContainer]::containerURL = v2;
}

void __105__NSFileManager_SafariNSFileManagerExtras___safari_getPasswordsAppContainerDirectoryURL_isContainerized___block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  if (![v0 safari_isPasswordsAppBundle])
  {

    goto LABEL_5;
  }

  getpid();
  v1 = sandbox_container_path_for_pid() == 0;

  if (!v1)
  {
LABEL_5:
    v8 = 0;
    v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:@"com.apple.Passwords" allowPlaceholder:0 error:&v8];
    v2 = v8;
    v6 = [v5 dataContainerURL];
    v7 = [NSFileManager(SafariNSFileManagerExtras) _safari_getPasswordsAppContainerDirectoryURL:isContainerized:]::containerURL;
    [NSFileManager(SafariNSFileManagerExtras) _safari_getPasswordsAppContainerDirectoryURL:isContainerized:]::containerURL = v6;

    goto LABEL_6;
  }

  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v9];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2 isDirectory:1];
  v4 = [NSFileManager(SafariNSFileManagerExtras) _safari_getPasswordsAppContainerDirectoryURL:isContainerized:]::containerURL;
  [NSFileManager(SafariNSFileManagerExtras) _safari_getPasswordsAppContainerDirectoryURL:isContainerized:]::containerURL = v3;

  [NSFileManager(SafariNSFileManagerExtras) _safari_getPasswordsAppContainerDirectoryURL:isContainerized:]::isContainerized = 1;
LABEL_6:
}

void __71__NSFileManager_SafariNSFileManagerExtras__safari_profilesDirectoryURL__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) safari_settingsDirectoryURL];
  v1 = [v3 URLByAppendingPathComponent:@"Profiles"];
  v2 = [NSFileManager(SafariNSFileManagerExtras) safari_profilesDirectoryURL]::profilesDirectory;
  [NSFileManager(SafariNSFileManagerExtras) safari_profilesDirectoryURL]::profilesDirectory = v1;
}

void __85__NSFileManager_SafariNSFileManagerExtras__safari_nonContaineredSettingsDirectoryURL__block_invoke()
{
  v2 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Safari"];
  v0 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
  v1 = [NSFileManager(SafariNSFileManagerExtras) safari_nonContaineredSettingsDirectoryURL]::nonContaineredSettingsDirectoryURL;
  [NSFileManager(SafariNSFileManagerExtras) safari_nonContaineredSettingsDirectoryURL]::nonContaineredSettingsDirectoryURL = v0;
}

void __84__NSFileManager_SafariNSFileManagerExtras__safari_productionSafariSettingsDirectory__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) safari_safariLibraryDirectory];
  v1 = [v3 URLByAppendingPathComponent:@"Safari" isDirectory:1];
  v2 = [NSFileManager(SafariNSFileManagerExtras) safari_productionSafariSettingsDirectory]::settingsDirectory;
  [NSFileManager(SafariNSFileManagerExtras) safari_productionSafariSettingsDirectory]::settingsDirectory = v1;
}

uint64_t __112__NSFileManager_SafariNSFileManagerExtras__safari_removeContentsOfDirectory_preservingContainerManagerMetadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v8 = WBS_LOG_CHANNEL_PREFIXFileManager(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(*(a1 + 32));
    v11 = [v6 safari_privacyPreservingDescription];
    v12 = 138543875;
    v13 = v10;
    v14 = 2113;
    v15 = v5;
    v16 = 2114;
    v17 = v11;
    _os_log_error_impl(&dword_1B8447000, v8, OS_LOG_TYPE_ERROR, "%{public}@: error while enumerating %{private}@: %{public}@", &v12, 0x20u);
  }

  return 1;
}

void __112__NSFileManager_SafariNSFileManagerExtras__safari_removeContentsOfDirectory_preservingContainerManagerMetadata___block_invoke_82(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = *(a1 + 40);
  v11 = 0;
  [v4 removeItemAtURL:v3 error:&v11];
  v5 = v11;
  v7 = v5;
  if (v5)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXFileManager(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(*(a1 + 48));
      v10 = [v7 safari_privacyPreservingDescription];
      *buf = 138543875;
      v13 = v9;
      v14 = 2113;
      v15 = v3;
      v16 = 2114;
      v17 = v10;
      _os_log_error_impl(&dword_1B8447000, v8, OS_LOG_TYPE_ERROR, "%{public}@: error while removing %{private}@: %{public}@", buf, 0x20u);
    }
  }
}

uint64_t __76__NSFileManager_SafariNSFileManagerExtras__safari_topLevelDirectoriesAtURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v8 = WBS_LOG_CHANNEL_PREFIXFileManager(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(*(a1 + 32));
    v11 = [v6 safari_privacyPreservingDescription];
    v12 = 138543875;
    v13 = v10;
    v14 = 2113;
    v15 = v5;
    v16 = 2114;
    v17 = v11;
    _os_log_error_impl(&dword_1B8447000, v8, OS_LOG_TYPE_ERROR, "%{public}@: error while enumerating %{private}@: %{public}@", &v12, 0x20u);
  }

  return 1;
}

void __89__NSFileManager_SafariNSFileManagerExtras__safari_mobileSafariGroupContainerDirectoryURL__block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = @"group.com.apple.safari";
  _os_log_fault_impl(&dword_1B8447000, log, OS_LOG_TYPE_FAULT, "Failed to get MobileSafari group container path, groupID = %{public}@", &v1, 0xCu);
}

@end