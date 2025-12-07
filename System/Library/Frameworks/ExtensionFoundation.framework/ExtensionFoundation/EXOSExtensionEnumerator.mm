@interface EXOSExtensionEnumerator
+ (void)enumerateExtensionsInDirectoryAtURL:(id)l block:(id)block;
- (EXOSExtensionEnumerator)initWithCacheURLs:(id)ls paths:(id)paths;
- (id)nextObject;
@end

@implementation EXOSExtensionEnumerator

+ (void)enumerateExtensionsInDirectoryAtURL:(id)l block:(id)block
{
  v49[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  blockCopy = block;
  v49[0] = *MEMORY[0x1E695DB78];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v31 = lCopy;
  v9 = [defaultManager enumeratorAtURL:lCopy includingPropertiesForKeys:v7 options:1 errorHandler:0];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    v32 = *v42;
    do
    {
      v13 = 0;
      v33 = v11;
      do
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * v13);
        if ([v14 _EX_isDirectory] && (objc_msgSend(v14, "pathExtension"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "caseInsensitiveCompare:", @"appex"), v15, !v16))
        {
          blockCopy[2](blockCopy, v14);
        }

        else if (([v14 _EX_isDirectory] & 1) == 0)
        {
          [v14 pathExtension];
          v17 = v36 = v14;
          v18 = [v17 caseInsensitiveCompare:@"appexlist"];

          if (!v18)
          {
            v34 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v14];
            v19 = [v34 _EX_dictionaryForKey:@"AppExtensions"];
            allKeys = [v19 allKeys];

            v22 = _EXRegistrationLog(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v47 = allKeys;
              _os_log_debug_impl(&dword_1847D1000, v22, OS_LOG_TYPE_DEBUG, "Discovered list of App Extension paths '%{public}@'", buf, 0xCu);
            }

            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v23 = allKeys;
            v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v38;
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v38 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v28 = *(*(&v37 + 1) + 8 * i);
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  if (isKindOfClass)
                  {
                    v30 = [MEMORY[0x1E695DFF8] fileURLWithPath:v28 isDirectory:1];
                    blockCopy[2](blockCopy, v30);
                  }

                  else
                  {
                    v30 = _EXRegistrationLog(isKindOfClass);
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      v47 = v36;
                      _os_log_error_impl(&dword_1847D1000, v30, OS_LOG_TYPE_ERROR, "unexpected class for entry in %{public}@ extension list.", buf, 0xCu);
                    }
                  }
                }

                v25 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
              }

              while (v25);
            }

            v12 = v32;
            v11 = v33;
          }
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v11);
  }
}

- (EXOSExtensionEnumerator)initWithCacheURLs:(id)ls paths:(id)paths
{
  v43 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  pathsCopy = paths;
  v39.receiver = self;
  v39.super_class = EXOSExtensionEnumerator;
  v8 = [(EXOSExtensionEnumerator *)&v39 init];
  v9 = v8;
  if (v8)
  {
    v30 = v8;
    v10 = _EXRegistrationLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [EXOSExtensionEnumerator initWithCacheURLs:paths:];
    }

    v31 = pathsCopy;
    v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:pathsCopy];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = lsCopy;
    v12 = lsCopy;
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          if ([v17 _EX_isDirectory])
          {
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __51__EXOSExtensionEnumerator_initWithCacheURLs_paths___block_invoke;
            v33[3] = &unk_1E6E4E5D8;
            v34 = v11;
            [EXOSExtensionEnumerator enumerateExtensionsInDirectoryAtURL:v17 block:v33];
            v18 = v34;
          }

          else
          {
            v18 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v17];
            v19 = [v18 _EX_objectForKey:@"AppExtensions" ofClass:objc_opt_class()];
            allKeys = [v19 allKeys];

            v22 = _EXRegistrationLog(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v41 = allKeys;
              _os_log_debug_impl(&dword_1847D1000, v22, OS_LOG_TYPE_DEBUG, "Discovered cached App Extension paths '%{public}@'", buf, 0xCu);
            }

            v23 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_429];
            v24 = [allKeys filteredArrayUsingPredicate:v23];

            [v11 addObjectsFromArray:v24];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v14);
    }

    v25 = [v11 copy];
    v9 = v30;
    extensionPaths = v30->_extensionPaths;
    v30->_extensionPaths = v25;

    objectEnumerator = [(NSArray *)v30->_extensionPaths objectEnumerator];
    extensionPathsEnumerator = v30->_extensionPathsEnumerator;
    v30->_extensionPathsEnumerator = objectEnumerator;

    pathsCopy = v31;
    lsCopy = v32;
  }

  return v9;
}

void __51__EXOSExtensionEnumerator_initWithCacheURLs_paths___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _EXRegistrationLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __51__EXOSExtensionEnumerator_initWithCacheURLs_paths___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = [v3 path];
  [v5 addObject:v6];
}

uint64_t __51__EXOSExtensionEnumerator_initWithCacheURLs_paths___block_invoke_426(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 hasPrefix:@"/System/Library/Frameworks"] & 1) != 0 || (v3 = objc_msgSend(v2, "hasPrefix:", @"/System/Library/PrivateFrameworks"), (v3))
  {
    v4 = 1;
  }

  else
  {
    v5 = _EXRegistrationLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v2;
    }

    v4 = 0;
  }

  return v4;
}

- (id)nextObject
{
  nextObject = [(NSEnumerator *)self->_extensionPathsEnumerator nextObject];
  if (nextObject)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:nextObject isDirectory:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end