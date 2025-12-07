@interface MCMRuntimeState
- (MCMRuntimeState)init;
- (id)_accumulateAsPlist;
- (id)_accumulateTestLocksAsPlistArray;
- (id)_urlForDirectory;
- (void)_accumulateAndPersist;
- (void)_loadAndRestore;
- (void)_restoreFromPlist:(id)plist;
- (void)_restoreTestLock:(unint64_t)lock count:(unint64_t)count;
- (void)_restoreTestLocksWithPlistArray:(id)array;
- (void)persist;
- (void)reset;
- (void)restore;
@end

@implementation MCMRuntimeState

- (void)_restoreTestLock:(unint64_t)lock count:(unint64_t)count
{
  if (count)
  {
    countCopy = count;
    do
    {
      testLocks = [(MCMRuntimeState *)self testLocks];
      [testLocks acquireLock:lock];

      --countCopy;
    }

    while (countCopy);
  }
}

- (void)_restoreTestLocksWithPlistArray:(id)array
{
  v27 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [arrayCopy countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        objc_opt_class();
        v9 = v8;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_11:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          goto LABEL_12;
        }

        if (!v9)
        {
          goto LABEL_11;
        }

        v10 = [v9 objectForKeyedSubscript:@"MCMRuntimeStateTestLocksNum"];
        objc_opt_class();
        v11 = v10;
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v16 = [v9 objectForKeyedSubscript:@"MCMRuntimeStateTestLocksCount"];
        objc_opt_class();
        v17 = v16;
        if (objc_opt_isKindOfClass())
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }

        if (v12 && v13)
        {
          -[MCMRuntimeState _restoreTestLock:count:](self, "_restoreTestLock:count:", [v12 unsignedLongLongValue], objc_msgSend(v13, "unsignedLongValue"));
          v14 = v9;
          goto LABEL_15;
        }

        v14 = v9;
LABEL_12:
        v15 = container_log_handle_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = v9;
          _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Malformed test locks dict when restoring state; testLockValue = %@", buf, 0xCu);
        }

LABEL_15:
        ++v7;
      }

      while (v5 != v7);
      v18 = [arrayCopy countByEnumeratingWithState:&v23 objects:v22 count:16];
      v5 = v18;
    }

    while (v18);
  }
}

- (void)_restoreFromPlist:(id)plist
{
  plistCopy = plist;
  v4 = [plistCopy objectForKeyedSubscript:@"MCMRuntimeStateTestLocksEnabled"];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
    testLocks = [(MCMRuntimeState *)self testLocks];
    [testLocks setEnabled:bOOLValue];
  }

  v9 = [plistCopy objectForKeyedSubscript:@"MCMRuntimeStateTestLocks"];
  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    [(MCMRuntimeState *)self _restoreTestLocksWithPlistArray:v11];
  }
}

- (void)_loadAndRestore
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = +[MCMFileManager defaultManager];
  v5 = MEMORY[0x1E695DF20];
  v6 = [(MCMRuntimeState *)self url];
  v12 = 0;
  v7 = [v5 MCM_dictionaryWithContentsOfURL:v6 options:0 fileManager:v4 fsNode:0 error:&v12];
  v8 = v12;

  if (!v7)
  {
    domain = [v8 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      code = [v8 code];

      if (code == 2)
      {
        v11 = container_log_handle_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "Did not find runtime state to restore, so skipping", buf, 2u);
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
    }

    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Could not load runtime state to restore; error = %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  [(MCMRuntimeState *)self _restoreFromPlist:v7];
LABEL_11:

  objc_autoreleasePoolPop(v3);
}

- (id)_accumulateTestLocksAsPlistArray
{
  v13[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 15; ++i)
  {
    testLocks = [(MCMRuntimeState *)self testLocks];
    v6 = [testLocks countOfLock:i];

    if (v6 >= 1)
    {
      v12[0] = @"MCMRuntimeStateTestLocksNum";
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:i];
      v12[1] = @"MCMRuntimeStateTestLocksCount";
      v13[0] = v7;
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      v13[1] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
      [array addObject:v9];
    }
  }

  v10 = [array copy];

  return v10;
}

- (id)_accumulateAsPlist
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"MCMRuntimeStateTestLocksEnabled";
  v3 = MEMORY[0x1E696AD98];
  testLocks = [(MCMRuntimeState *)self testLocks];
  v5 = [v3 numberWithBool:{objc_msgSend(testLocks, "enabled")}];
  v9[1] = @"MCMRuntimeStateTestLocks";
  v10[0] = v5;
  _accumulateTestLocksAsPlistArray = [(MCMRuntimeState *)self _accumulateTestLocksAsPlistArray];
  v10[1] = _accumulateTestLocksAsPlistArray;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (void)_accumulateAndPersist
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = +[MCMFileManager defaultManager];
  _accumulateAsPlist = [(MCMRuntimeState *)self _accumulateAsPlist];
  v6 = [(MCMRuntimeState *)self url];
  v10 = 0;
  v7 = [_accumulateAsPlist MCM_writeToURL:v6 withOptions:0x10000000 fileManager:v4 error:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Failed to write runtime state data; error = %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_urlForDirectory
{
  if (xpc_is_system_session())
  {
    v2 = @"root";
  }

  else
  {
    v2 = @"mobile";
  }

  v3 = [MCMPOSIXUser posixUserWithName:v2];
  homeDirectoryURL = [v3 homeDirectoryURL];
  v5 = [homeDirectoryURL URLByAppendingPathComponent:@"Library/MobileContainerManager" isDirectory:1];

  return v5;
}

- (void)restore
{
  if (os_variant_has_internal_content())
  {

    [(MCMRuntimeState *)self _loadAndRestore];
  }
}

- (void)persist
{
  if (os_variant_has_internal_content())
  {

    [(MCMRuntimeState *)self _accumulateAndPersist];
  }
}

- (void)reset
{
  v4 = +[MCMFileManager defaultManager];
  v3 = [(MCMRuntimeState *)self url];
  [v4 removeItemAtURL:v3 error:0];
}

- (MCMRuntimeState)init
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MCMRuntimeState;
  v2 = [(MCMRuntimeState *)&v11 init];
  v3 = v2;
  if (v2)
  {
    _urlForDirectory = [(MCMRuntimeState *)v2 _urlForDirectory];
    v5 = [_urlForDirectory URLByAppendingPathComponent:@"runtime_state" isDirectory:0];
    v6 = [v5 URLByAppendingPathExtension:@"plist"];
    url = v3->_url;
    v3->_url = v6;

    v8 = +[MCMTestLocks sharedInstance];
    testLocks = v3->_testLocks;
    v3->_testLocks = v8;
  }

  return v3;
}

@end