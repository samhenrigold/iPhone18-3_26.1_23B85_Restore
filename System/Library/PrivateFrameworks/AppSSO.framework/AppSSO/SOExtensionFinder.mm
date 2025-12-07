@interface SOExtensionFinder
- (SOExtensionFinder)init;
- (id)_soExtensionsForExtensions:(id)extensions;
- (void)beginMatchingExtensionsWithCompletion:(id)completion;
- (void)endMatchingExtensions;
- (void)findExtensionWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)findExtensionsWithCompletion:(id)completion;
@end

@implementation SOExtensionFinder

- (SOExtensionFinder)init
{
  v6.receiver = self;
  v6.super_class = SOExtensionFinder;
  v2 = [(SOExtensionFinder *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AppSSO.extension-finder-queue", 0);
    extensionFinderQueue = v2->_extensionFinderQueue;
    v2->_extensionFinderQueue = v3;
  }

  return v2;
}

- (void)findExtensionsWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtensionFinder(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SOExtensionFinder findExtensionsWithCompletion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  extensionFinderQueue = self->_extensionFinderQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SOExtensionFinder_findExtensionsWithCompletion___block_invoke;
  v8[3] = &unk_1E813E450;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_sync(extensionFinderQueue, v8);
}

void __50__SOExtensionFinder_findExtensionsWithCompletion___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABD0];
  v17 = *MEMORY[0x1E696A2F8];
  v18[0] = @"com.apple.AppSSO.idp-extension";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v12 = 0;
  v4 = [v2 extensionsWithMatchingAttributes:v3 error:&v12];
  v5 = v12;

  v7 = SO_LOG_SOExtensionFinder(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __50__SOExtensionFinder_findExtensionsWithCompletion___block_invoke_cold_1();
  }

  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) _soExtensionsForExtensions:v4];
    v9 = v8;
  }

  v10 = SO_LOG_SOExtensionFinder(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = v9;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "findExtensionsWithCompletion: %{public}@, error: %{public}@", buf, 0x16u);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v5);
  }
}

- (void)findExtensionWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = SO_LOG_SOExtensionFinder(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[SOExtensionFinder findExtensionWithBundleIdentifier:completion:]";
    v18 = 2114;
    v19 = identifierCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", buf, 0x20u);
  }

  extensionFinderQueue = self->_extensionFinderQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SOExtensionFinder_findExtensionWithBundleIdentifier_completion___block_invoke;
  block[3] = &unk_1E813E478;
  v13 = identifierCopy;
  selfCopy2 = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_sync(extensionFinderQueue, block);
}

void __66__SOExtensionFinder_findExtensionWithBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABD0];
  v3 = *MEMORY[0x1E696A2E0];
  v24[0] = *MEMORY[0x1E696A2F8];
  v24[1] = v3;
  v4 = *(a1 + 32);
  v25[0] = @"com.apple.AppSSO.idp-extension";
  v25[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v19 = 0;
  v6 = [v2 extensionsWithMatchingAttributes:v5 error:&v19];
  v7 = v19;

  v9 = SO_LOG_SOExtensionFinder(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __50__SOExtensionFinder_findExtensionsWithCompletion___block_invoke_cold_1();
  }

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = [*(a1 + 40) _soExtensionsForExtensions:v6];
  }

  if ([v10 count] == 1)
  {
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = v11;
  }

  else
  {
    v13 = [v10 count];
    SOErrorHelperClass_5 = getSOErrorHelperClass_5();
    if (v13)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"More than one IdP extension with bundle ID: %@", *(a1 + 32)];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"No valid IdP extension with bundle ID: %@", *(a1 + 32)];
    }
    v15 = ;
    v16 = [SOErrorHelperClass_5 internalErrorWithMessage:v15];

    v12 = 0;
    v7 = v16;
  }

  v17 = SO_LOG_SOExtensionFinder(v11);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = v12;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_1C1317000, v17, OS_LOG_TYPE_DEFAULT, "findExtensionWithBundleIdentifier: %{public}@, error: %{public}@", buf, 0x16u);
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))(v18, v12, v7);
  }
}

- (void)beginMatchingExtensionsWithCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtensionFinder(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[SOExtensionFinder beginMatchingExtensionsWithCompletion:]";
    v27 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if (self->_matchingContext)
  {
    v7 = SO_LOG_SOExtensionFinder(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SOExtensionFinder *)v7 beginMatchingExtensionsWithCompletion:v8, v9, v10, v11, v12, v13, v14];
    }

    if (completionCopy)
    {
      v15 = [getSOErrorHelperClass_5() silentInternalErrorWithMessage:{@"Extension matching is already in progress, ignoring request"}];
      completionCopy[2](completionCopy, 0, v15);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v16 = MEMORY[0x1E696ABD0];
    v23 = *MEMORY[0x1E696A2F8];
    v24 = @"com.apple.AppSSO.idp-extension";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__SOExtensionFinder_beginMatchingExtensionsWithCompletion___block_invoke;
    v20[3] = &unk_1E813EEB8;
    objc_copyWeak(&v22, buf);
    v21 = completionCopy;
    v18 = [v16 beginMatchingExtensionsWithAttributes:v17 completion:v20];
    matchingContext = self->_matchingContext;
    self->_matchingContext = v18;

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }
}

void __59__SOExtensionFinder_beginMatchingExtensionsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOExtensionFinder(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __59__SOExtensionFinder_beginMatchingExtensionsWithCompletion___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__SOExtensionFinder_beginMatchingExtensionsWithCompletion___block_invoke_17;
    v21[3] = &unk_1E813E518;
    v22 = v6;
    v23 = v9;
    v24 = v5;
    v25 = *(a1 + 32);
    dispatch_async(v10, v21);

    v11 = v22;
LABEL_9:

    goto LABEL_10;
  }

  v12 = SO_LOG_SOExtensionFinder(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __59__SOExtensionFinder_beginMatchingExtensionsWithCompletion___block_invoke_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    v11 = [getSOErrorHelperClass_5() silentInternalErrorWithMessage:{@"Extension matching deallocated, request failed"}];
    (*(v20 + 16))(v20, 0, v11);
    goto LABEL_9;
  }

LABEL_10:
}

void __59__SOExtensionFinder_beginMatchingExtensionsWithCompletion___block_invoke_17(uint64_t a1)
{
  v1 = a1;
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    a1 = [*(a1 + 40) _soExtensionsForExtensions:*(a1 + 48)];
    v2 = a1;
  }

  v3 = SO_LOG_SOExtensionFinder(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 32);
    v6 = 138543618;
    v7 = v2;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "beginMatchingExtensionsWithCompletion: %{public}@, error: %{public}@", &v6, 0x16u);
  }

  v5 = *(v1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v2, *(v1 + 32));
  }
}

- (void)endMatchingExtensions
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionFinder(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SOExtensionFinder endMatchingExtensions]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v13, 0x16u);
  }

  if (self->_matchingContext)
  {
    [MEMORY[0x1E696ABD0] endMatchingExtensions:?];
    matchingContext = self->_matchingContext;
    self->_matchingContext = 0;
  }

  else
  {
    matchingContext = SO_LOG_SOExtensionFinder(v4);
    if (os_log_type_enabled(matchingContext, OS_LOG_TYPE_ERROR))
    {
      [(SOExtensionFinder *)matchingContext endMatchingExtensions:v6];
    }
  }
}

- (id)_soExtensionsForExtensions:(id)extensions
{
  v19 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = extensionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [SOExtension alloc];
        v12 = [(SOExtension *)v11 initWithExtension:v10, v14];
        [array addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return array;
}

@end