@interface DNDSClientDetailsProvider
+ (id)_defaultModuleDirectories;
- (DNDSClientDetailsProvider)init;
- (id)clientDetailsForIdentifier:(id)identifier applicationBundleURL:(id)l;
- (id)findClientDetailsForIdentifier:(id)identifier;
- (void)_loadPreloadBundles;
@end

@implementation DNDSClientDetailsProvider

- (DNDSClientDetailsProvider)init
{
  v6.receiver = self;
  v6.super_class = DNDSClientDetailsProvider;
  v2 = [(DNDSClientDetailsProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    detailsByIdentifier = v2->_detailsByIdentifier;
    v2->_detailsByIdentifier = v3;

    [(DNDSClientDetailsProvider *)v2 _loadPreloadBundles];
  }

  return v2;
}

- (id)findClientDetailsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_detailsByIdentifier;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_detailsByIdentifier objectForKey:identifierCopy];
  objc_sync_exit(v5);

  return v6;
}

- (id)clientDetailsForIdentifier:(id)identifier applicationBundleURL:(id)l
{
  v26[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  lCopy = l;
  v8 = self->_detailsByIdentifier;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_detailsByIdentifier objectForKey:identifierCopy];
  if (!v9)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__DNDSClientDetailsProvider_clientDetailsForIdentifier_applicationBundleURL___block_invoke;
    aBlock[3] = &unk_278F8B558;
    aBlock[4] = self;
    v10 = _Block_copy(aBlock);
    v11 = v10[2](v10, identifierCopy);
    v9 = v11;
    if (lCopy && !v11)
    {
      v9 = [DNDSClientDetails detailsForClientIdentifier:identifierCopy applicationBundleURL:lCopy];
    }

    if (!v9)
    {
      if (([identifierCopy isEqualToString:@"com.apple.donotdisturb.private.schedule"] & 1) != 0 || !objc_msgSend(identifierCopy, "hasSuffix:", @".private.schedule") || (-[NSMutableDictionary objectForKey:](self->_detailsByIdentifier, "objectForKey:", @"com.apple.donotdisturb.private.schedule"), (v12 = objc_claimAutoreleasedReturnValue()) == 0) && (v10[2](v10, @"com.apple.donotdisturb.private.schedule"), v12 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary setObject:forKey:](self->_detailsByIdentifier, "setObject:forKey:", v12, @"com.apple.donotdisturb.private.schedule"), !v12) || (v23 = [DNDSClientDetails alloc], v26[0] = identifierCopy, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v26, 1), v13 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v12, "isResolutionContextAssumingDeviceUILocked"), v21 = objc_msgSend(v12, "isUserInteractionClient"), v14 = objc_msgSend(v12, "isPersistentAssertionClient"), v15 = objc_msgSend(v12, "isSyncSuppressedClient"), v16 = objc_msgSend(v12, "isIOS14SyncSuppressedClient"), BYTE1(v20) = objc_msgSend(v12, "forcesAssertionStatusUpdate"), LOBYTE(v20) = v16, v9 = -[DNDSClientDetails initWithClientIdentifier:identifiers:resolutionContextAssumingDeviceUILocked:userInteractionClient:persistentAssertionClient:syncSuppressedClient:iOS14SyncSuppressedClient:forcesAssertionStatusUpdate:](v23, "initWithClientIdentifier:identifiers:resolutionContextAssumingDeviceUILocked:userInteractionClient:persistentAssertionClient:syncSuppressedClient:iOS14SyncSuppressedClient:forcesAssertionStatusUpdate:", identifierCopy, v13, v22, v21, v14, v15, v20), v13, v12, !v9))
      {
        v17 = [DNDSClientDetails alloc];
        v25 = identifierCopy;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
        LOWORD(v20) = 0;
        v9 = [(DNDSClientDetails *)v17 initWithClientIdentifier:identifierCopy identifiers:v18 resolutionContextAssumingDeviceUILocked:0 userInteractionClient:0 persistentAssertionClient:0 syncSuppressedClient:0 iOS14SyncSuppressedClient:v20 forcesAssertionStatusUpdate:?];
      }
    }

    [(NSMutableDictionary *)self->_detailsByIdentifier setObject:v9 forKey:identifierCopy];
  }

  objc_sync_exit(v8);

  return v9;
}

id __77__DNDSClientDetailsProvider_clientDetailsForIdentifier_applicationBundleURL___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [objc_opt_class() _defaultModuleDirectories];
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v15 + 1) + 8 * i) URLByAppendingPathComponent:v2];
        v8 = [v7 URLByAppendingPathExtension:@"bundle"];

        v9 = [MEMORY[0x277CCAA00] defaultManager];
        v10 = [v8 path];
        v11 = [v9 fileExistsAtPath:v10];

        if (v11)
        {
          v12 = [DNDSClientDetails detailsForBundleAtURL:v8];

          goto LABEL_11;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (id)_defaultModuleDirectories
{
  if (_defaultModuleDirectories_onceToken != -1)
  {
    +[DNDSClientDetailsProvider _defaultModuleDirectories];
  }

  v3 = _defaultModuleDirectories_directories;

  return v3;
}

void __54__DNDSClientDetailsProvider__defaultModuleDirectories__block_invoke()
{
  v5 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  if (os_variant_has_internal_content())
  {
    v0 = [MEMORY[0x277CCACA8] pathWithComponents:&unk_285C53C18];
    v1 = [v5 arrayByAddingObject:v0];

    v2 = v1;
  }

  else
  {
    v2 = v5;
  }

  v6 = v2;
  v3 = [v2 bs_map:&__block_literal_global_22];
  v4 = _defaultModuleDirectories_directories;
  _defaultModuleDirectories_directories = v3;
}

id __54__DNDSClientDetailsProvider__defaultModuleDirectories__block_invoke_2(uint64_t a1, void *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBC0];
  v3 = a2;
  v4 = BSSystemRootDirectory();
  v8[0] = v4;
  v8[1] = v3;
  v8[2] = @"DoNotDisturb";
  v8[3] = @"ClientBundles";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];
  v6 = [v2 fileURLWithPathComponents:v5];

  return v6;
}

- (void)_loadPreloadBundles
{
  v28 = *MEMORY[0x277D85DE8];
  _defaultModuleDirectories = [objc_opt_class() _defaultModuleDirectories];
  v17 = [_defaultModuleDirectories bs_mapNoNulls:&__block_literal_global_32];

  bs_flatten = [v17 bs_flatten];
  v15 = [bs_flatten bs_filter:&__block_literal_global_35];
  v4 = [v15 bs_mapNoNulls:&__block_literal_global_41];
  obj = self->_detailsByIdentifier;
  objc_sync_enter(obj);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        identifiers = [v9 identifiers];
        v11 = [identifiers countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = *v19;
          do
          {
            v13 = 0;
            do
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(identifiers);
              }

              [(NSMutableDictionary *)self->_detailsByIdentifier setObject:v9 forKey:*(*(&v18 + 1) + 8 * v13++)];
            }

            while (v11 != v13);
            v11 = [identifiers countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v11);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  objc_sync_exit(obj);
}

id __48__DNDSClientDetailsProvider__loadPreloadBundles__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAA00];
  v3 = a2;
  v4 = [v2 defaultManager];
  v5 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:1 error:0];

  return v5;
}

uint64_t __48__DNDSClientDetailsProvider__loadPreloadBundles__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 path];
  v3 = [v2 hasSuffix:@".preload.bundle"];

  return v3;
}

@end