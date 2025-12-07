@interface NUANFFontLoader
- (NUANFFontLoader)initWithANFContent:(id)content flintResourceManager:(id)manager fontRegistration:(id)registration;
- (id)asyncLoadFontsOnceWithCompletion:(id)completion;
- (id)loadFontsWithCompletion:(id)completion;
- (void)registerFontsWithCompletion:(id)completion;
- (void)setRelativePriority:(int64_t)priority;
- (void)unregisterFontsWithCompletion:(id)completion;
@end

@implementation NUANFFontLoader

- (NUANFFontLoader)initWithANFContent:(id)content flintResourceManager:(id)manager fontRegistration:(id)registration
{
  contentCopy = content;
  managerCopy = manager;
  registrationCopy = registration;
  v21.receiver = self;
  v21.super_class = NUANFFontLoader;
  v12 = [(NUANFFontLoader *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_anfContent, content);
    objc_storeStrong(&v13->_flintResourceManager, manager);
    objc_storeStrong(&v13->_fontRegistration, registration);
    v14 = objc_opt_new();
    fontResourcesToRegister = v13->_fontResourcesToRegister;
    v13->_fontResourcesToRegister = v14;

    v16 = objc_opt_new();
    fontResourcesRegistered = v13->_fontResourcesRegistered;
    v13->_fontResourcesRegistered = v16;

    v13->_relativePriority = 0;
    v18 = [objc_alloc(MEMORY[0x277D30E30]) initWithTarget:v13 selector:sel_asyncLoadFontsOnceWithCompletion_];
    asyncOnceOperation = v13->_asyncOnceOperation;
    v13->_asyncOnceOperation = v18;
  }

  return v13;
}

- (void)setRelativePriority:(int64_t)priority
{
  self->_relativePriority = priority;
  asyncOnceOperation = [(NUANFFontLoader *)self asyncOnceOperation];
  [asyncOnceOperation setRelativePriority:priority];
}

- (void)registerFontsWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = NUSharedLog(completionCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25C2D6000, v4, OS_LOG_TYPE_DEFAULT, "Registering font resource for loader %{public}@", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  fontResourcesToRegister = [(NUANFFontLoader *)self fontResourcesToRegister];
  v6 = [fontResourcesToRegister copy];

  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        fileURL = [v11 fileURL];

        fontRegistration = NUSharedLog(v13);
        v15 = os_log_type_enabled(fontRegistration, OS_LOG_TYPE_DEFAULT);
        if (fileURL)
        {
          if (v15)
          {
            resourceID = [v11 resourceID];
            *buf = 138543362;
            selfCopy = resourceID;
            _os_log_impl(&dword_25C2D6000, fontRegistration, OS_LOG_TYPE_DEFAULT, "Registering font resource %{public}@", buf, 0xCu);
          }

          fontRegistration = [(NUANFFontLoader *)self fontRegistration];
          fileURL2 = [v11 fileURL];
          [fontRegistration registerFontWithURL:fileURL2 error:0];
        }

        else
        {
          if (!v15)
          {
            goto LABEL_15;
          }

          fileURL2 = [v11 resourceID];
          *buf = 138543362;
          selfCopy = fileURL2;
          _os_log_impl(&dword_25C2D6000, fontRegistration, OS_LOG_TYPE_DEFAULT, "Unable to register font resource %{public}@", buf, 0xCu);
        }

LABEL_15:
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  fontResourcesRegistered = [(NUANFFontLoader *)self fontResourcesRegistered];
  fontResourcesToRegister2 = [(NUANFFontLoader *)self fontResourcesToRegister];
  [fontResourcesRegistered addObjectsFromArray:fontResourcesToRegister2];

  fontResourcesToRegister3 = [(NUANFFontLoader *)self fontResourcesToRegister];
  [fontResourcesToRegister3 removeAllObjects];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)unregisterFontsWithCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = NUSharedLog(completionCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25C2D6000, v4, OS_LOG_TYPE_DEFAULT, "Unregistering font resource for loader %{public}@", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  fontResourcesRegistered = [(NUANFFontLoader *)self fontResourcesRegistered];
  v6 = [fontResourcesRegistered copy];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = NUSharedLog(v7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          resourceID = [v11 resourceID];
          *buf = 138543362;
          selfCopy = resourceID;
          _os_log_impl(&dword_25C2D6000, v12, OS_LOG_TYPE_DEFAULT, "Unregistering font resource %{public}@", buf, 0xCu);
        }

        fileURL = [v11 fileURL];

        if (fileURL)
        {
          fontRegistration = [(NUANFFontLoader *)self fontRegistration];
          fileURL2 = [v11 fileURL];
          [fontRegistration unregisterFontWithURL:fileURL2];
        }

        ++v10;
      }

      while (v8 != v10);
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v8 = v7;
    }

    while (v7);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (id)loadFontsWithCompletion:(id)completion
{
  completionCopy = completion;
  asyncOnceOperation = [(NUANFFontLoader *)self asyncOnceOperation];
  v6 = [asyncOnceOperation executeWithCompletionHandler:completionCopy];

  return v6;
}

- (id)asyncLoadFontsOnceWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = NUSharedLog(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25C2D6000, v5, OS_LOG_TYPE_DEFAULT, "Loading font resources for loader %{public}@", buf, 0xCu);
  }

  anfContent = [(NUANFFontLoader *)self anfContent];
  fontResourceIDs = [anfContent fontResourceIDs];

  if ([fontResourceIDs count])
  {
    objc_initWeak(buf, self);
    flintResourceManager = [(NUANFFontLoader *)self flintResourceManager];
    relativePriority = [(NUANFFontLoader *)self relativePriority];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_2;
    v12[3] = &unk_2799A36D0;
    objc_copyWeak(&v15, buf);
    v14 = completionCopy;
    v13 = fontResourceIDs;
    v10 = [flintResourceManager fetchFontResourcesWithIdentifiers:v13 downloadAssets:1 relativePriority:relativePriority completionBlock:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke;
    v16[3] = &unk_2799A3680;
    v16[4] = self;
    v17 = completionCopy;
    v10 = __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke(v16);
  }

  return v10;
}

uint64_t __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NUSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v8 = v3;
    _os_log_impl(&dword_25C2D6000, v2, OS_LOG_TYPE_DEFAULT, "No font resources required for loader %{public}@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_4;
  block[3] = &unk_2799A3148;
  v6 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);

  return 0;
}

uint64_t __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_4(uint64_t a1)
{
  return (*(*(a1 + 32) + 16))();
}

void __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = v9;
    if (v6)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_4;
      v40[3] = &unk_2799A36A8;
      v11 = &v41;
      v41 = v6;
      v42 = a1[5];
      __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_4(v40);
    }

    else
    {
      v12 = NUSharedLog(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v47 = [v5 count];
        v48 = 2114;
        v49 = v10;
        _os_log_impl(&dword_25C2D6000, v12, OS_LOG_TYPE_DEFAULT, "Finished loading %lu fonts for loader %{public}@", buf, 0x16u);
      }

      v13 = [v10 fontResourcesToRegister];
      [v13 removeAllObjects];

      v14 = [v5 count];
      if (v14 != [a1[4] count])
      {
        v15 = [a1[4] mutableCopy];
        v16 = [v5 allKeys];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = MEMORY[0x277CBEBF8];
        }

        [v15 removeObjectsInArray:v18];

        v20 = NUSharedLog(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v47 = v15;
          _os_log_impl(&dword_25C2D6000, v20, OS_LOG_TYPE_DEFAULT, "Missing font resources %{public}@", buf, 0xCu);
        }
      }

      v32 = a1;
      v33 = v8;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v21 = a1[4];
      v22 = [v21 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v37;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v36 + 1) + 8 * i);
            v27 = [v5 objectForKey:v26];
            v28 = [v27 fileURL];

            v30 = NUSharedLog(v29);
            v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
            if (v28)
            {
              if (v31)
              {
                *buf = 138543362;
                v47 = v26;
                _os_log_impl(&dword_25C2D6000, v30, OS_LOG_TYPE_DEFAULT, "Tracking font resource to register %{public}@", buf, 0xCu);
              }

              v30 = [v10 fontResourcesToRegister];
              [v30 addObject:v27];
            }

            else if (v31)
            {
              *buf = 138543362;
              v47 = v26;
              _os_log_impl(&dword_25C2D6000, v30, OS_LOG_TYPE_DEFAULT, "Failed to load font resource with identifier %{public}@", buf, 0xCu);
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v23);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_7;
      block[3] = &unk_2799A3148;
      v11 = &v35;
      v35 = v32[5];
      dispatch_async(MEMORY[0x277D85CD0], block);
      v8 = v33;
      v6 = 0;
    }
  }

  else
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_3;
    v43[3] = &unk_2799A3148;
    v44 = a1[5];
    __52__NUANFFontLoader_asyncLoadFontsOnceWithCompletion___block_invoke_3(v43);
    v10 = v44;
  }
}

@end