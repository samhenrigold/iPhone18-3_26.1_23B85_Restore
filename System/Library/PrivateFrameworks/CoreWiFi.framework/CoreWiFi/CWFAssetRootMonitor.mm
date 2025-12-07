@interface CWFAssetRootMonitor
- (CWFAssetRootMonitorDelegate)delegate;
- (id)initMonitorWithPath:(id)path;
- (void)checkForChanges;
- (void)checkForDeletedPath:(id)path;
- (void)dealloc;
- (void)handleUpdatedPaths;
- (void)printDictionaryDifferences:(id)differences dictTwo:(id)two;
- (void)scheduleTimer;
- (void)startMonitoring;
- (void)startMonitoringPath:(id)path;
- (void)stopMonitoringStream;
@end

@implementation CWFAssetRootMonitor

- (id)initMonitorWithPath:(id)path
{
  v39 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v30.receiver = self;
  v30.super_class = CWFAssetRootMonitor;
  v6 = [(CWFAssetRootMonitor *)&v30 init];
  v7 = v6;
  if (!v6)
  {
    v22 = CWFGetOTAOSLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 136446466;
    v32 = "[CWFAssetRootMonitor initMonitorWithPath:]";
    v33 = 1024;
    v34 = 53;
    v25 = "%{public}s::%d:Failed to init";
    v26 = v22;
    v27 = OS_LOG_TYPE_ERROR;
    v28 = 18;
    goto LABEL_4;
  }

  objc_storeStrong(&v6->monitoredPath, path);
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  monitoredParentPath = v7->monitoredParentPath;
  v7->monitoredParentPath = stringByDeletingLastPathComponent;

  v10 = [MEMORY[0x1E695DFA8] set];
  pathsUpdated = v7->pathsUpdated;
  v7->pathsUpdated = v10;

  v12 = [MEMORY[0x1E695DFA8] set];
  pathsExisting = v7->pathsExisting;
  v7->pathsExisting = v12;

  v14 = [MEMORY[0x1E695DFA8] set];
  pathsExistingAtLastCheck = v7->pathsExistingAtLastCheck;
  v7->pathsExistingAtLastCheck = v14;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  pathsFileAttributes = v7->pathsFileAttributes;
  v7->pathsFileAttributes = dictionary;

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  pathsFileAttributesAtLastCheck = v7->pathsFileAttributesAtLastCheck;
  v7->pathsFileAttributesAtLastCheck = dictionary2;

  v7->pathPollingInterval = 600;
  v20 = dispatch_queue_create("com.apple.wifi.CWFAssetRootMonitor", 0);
  timerQueue = v7->timerQueue;
  v7->timerQueue = v20;

  v22 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    monitoredPath = v7->monitoredPath;
    pathPollingInterval = v7->pathPollingInterval;
    *buf = 136446978;
    v32 = "[CWFAssetRootMonitor initMonitorWithPath:]";
    v33 = 1024;
    v34 = 68;
    v35 = 2112;
    v36 = monitoredPath;
    v37 = 2048;
    v38 = pathPollingInterval;
    v25 = "%{public}s::%d:Monitoring Directory %@ at interval %ld seconds";
    v26 = v22;
    v27 = OS_LOG_TYPE_DEFAULT;
    v28 = 38;
LABEL_4:
    _os_log_impl(&dword_1E0BBF000, v26, v27, v25, buf, v28);
  }

LABEL_5:

  return v7;
}

- (void)dealloc
{
  [(CWFAssetRootMonitor *)self stopMonitoringStream];
  v3.receiver = self;
  v3.super_class = CWFAssetRootMonitor;
  [(CWFAssetRootMonitor *)&v3 dealloc];
}

- (void)scheduleTimer
{
  timer = self->timer;
  if (!timer)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->timerQueue);
    v5 = self->timer;
    self->timer = v4;

    objc_initWeak(&location, self);
    v6 = self->timer;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0C968EC;
    v9[3] = &unk_1E86E6190;
    objc_copyWeak(&v10, &location);
    dispatch_source_set_event_handler(v6, v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    timer = self->timer;
  }

  dispatch_activate(timer);
  v7 = self->timer;
  v8 = dispatch_walltime(0, 1000000000 * self->pathPollingInterval);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)startMonitoring
{
  [(CWFAssetRootMonitor *)self scheduleTimer];

  [(CWFAssetRootMonitor *)self checkForChanges];
}

- (void)stopMonitoringStream
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136446466;
    v7 = "[CWFAssetRootMonitor stopMonitoringStream]";
    v8 = 1024;
    v9 = 110;
    _os_log_impl(&dword_1E0BBF000, v3, OS_LOG_TYPE_DEBUG, "%{public}s::%d:stopMonitoringStream", &v6, 0x12u);
  }

  timer = self->timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v5 = self->timer;
    self->timer = 0;
  }
}

- (void)checkForChanges
{
  v34 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"RootMonitorCheckPath"];

  if (v4)
  {
    v5 = [standardUserDefaults stringForKey:@"RootMonitorCheckPath"];
    if (![(NSString *)self->monitoredPath isEqualToString:v5])
    {
      v6 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136447234;
        v25 = "[CWFAssetRootMonitor checkForChanges]";
        v26 = 1024;
        v27 = 128;
        v28 = 2080;
        v29 = "[CWFAssetRootMonitor checkForChanges]";
        v30 = 2112;
        v31 = @"RootMonitorCheckPath";
        v32 = 2112;
        v33 = v5;
        _os_log_impl(&dword_1E0BBF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: checkForChanges NSUserDefaults found with key %@ value %@", &v24, 0x30u);
      }

      objc_storeStrong(&self->monitoredPath, v5);
      stringByDeletingLastPathComponent = [v5 stringByDeletingLastPathComponent];
      monitoredParentPath = self->monitoredParentPath;
      self->monitoredParentPath = stringByDeletingLastPathComponent;

      v9 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v24 = 136446722;
        v25 = "[CWFAssetRootMonitor checkForChanges]";
        v26 = 1024;
        v27 = 133;
        v28 = 2080;
        v29 = "[CWFAssetRootMonitor checkForChanges]";
        _os_log_impl(&dword_1E0BBF000, v9, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%s: Clearing pathsUpdated", &v24, 0x1Cu);
      }

      v10 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v24 = 136446722;
        v25 = "[CWFAssetRootMonitor checkForChanges]";
        v26 = 1024;
        v27 = 134;
        v28 = 2080;
        v29 = "[CWFAssetRootMonitor checkForChanges]";
        _os_log_impl(&dword_1E0BBF000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%s: Clearing pathsExisting", &v24, 0x1Cu);
      }

      v11 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v24 = 136446722;
        v25 = "[CWFAssetRootMonitor checkForChanges]";
        v26 = 1024;
        v27 = 135;
        v28 = 2080;
        v29 = "[CWFAssetRootMonitor checkForChanges]";
        _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%s: Clearing pathsFileAttributes", &v24, 0x1Cu);
      }

      [(NSMutableSet *)self->pathsUpdated removeAllObjects];
      [(NSMutableSet *)self->pathsExisting removeAllObjects];
      [(NSMutableDictionary *)self->pathsFileAttributes removeAllObjects];
      v12 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        monitoredPath = self->monitoredPath;
        pathPollingInterval = self->pathPollingInterval;
        v24 = 136447234;
        v25 = "[CWFAssetRootMonitor checkForChanges]";
        v26 = 1024;
        v27 = 140;
        v28 = 2080;
        v29 = "[CWFAssetRootMonitor checkForChanges]";
        v30 = 2112;
        v31 = monitoredPath;
        v32 = 2048;
        v33 = pathPollingInterval;
        _os_log_impl(&dword_1E0BBF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Monitoring Directory %@ at interval %ld seconds", &v24, 0x30u);
      }
    }
  }

  v15 = [standardUserDefaults objectForKey:@"RootMonitorCheckInterval_s"];

  if (v15)
  {
    v16 = [standardUserDefaults integerForKey:@"RootMonitorCheckInterval_s"];
    if (self->pathPollingInterval != v16)
    {
      v17 = v16;
      v18 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136447234;
        v25 = "[CWFAssetRootMonitor checkForChanges]";
        v26 = 1024;
        v27 = 149;
        v28 = 2080;
        v29 = "[CWFAssetRootMonitor checkForChanges]";
        v30 = 2112;
        v31 = @"RootMonitorCheckInterval_s";
        v32 = 2048;
        v33 = v17;
        _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: checkForChanges NSUserDefaults found with key %@ value %ld", &v24, 0x30u);
      }

      if (v17 >= 1)
      {
        self->pathPollingInterval = v17;
        [(CWFAssetRootMonitor *)self stopMonitoringStream];
        [(CWFAssetRootMonitor *)self scheduleTimer];
      }

      v19 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->monitoredPath;
        v21 = self->pathPollingInterval;
        v24 = 136447234;
        v25 = "[CWFAssetRootMonitor checkForChanges]";
        v26 = 1024;
        v27 = 157;
        v28 = 2080;
        v29 = "[CWFAssetRootMonitor checkForChanges]";
        v30 = 2112;
        v31 = v20;
        v32 = 2048;
        v33 = v21;
        _os_log_impl(&dword_1E0BBF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Monitoring Directory %@ at interval %ld seconds", &v24, 0x30u);
      }
    }
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v23 = [defaultManager fileExistsAtPath:self->monitoredPath isDirectory:0];

  if (v23)
  {
    [(CWFAssetRootMonitor *)self startMonitoringPath:self->monitoredPath];
  }

  else
  {
    [(NSMutableSet *)self->pathsExisting removeAllObjects];
    [(NSMutableDictionary *)self->pathsFileAttributes removeAllObjects];
  }

  [(CWFAssetRootMonitor *)self handleUpdatedPaths];
}

- (void)startMonitoringPath:(id)path
{
  v29 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager enumeratorAtPath:pathCopy];
  [(NSMutableSet *)self->pathsExisting removeAllObjects];
  [(NSMutableDictionary *)self->pathsFileAttributes removeAllObjects];
  nextObject = [v6 nextObject];
  if (nextObject)
  {
    v9 = nextObject;
    v10 = 0;
    *&v8 = 136447234;
    v17 = v8;
    do
    {
      v11 = v10;
      v12 = [pathCopy stringByAppendingPathComponent:{v9, v17}];
      v18 = v10;
      v13 = [defaultManager attributesOfItemAtPath:v12 error:&v18];
      v10 = v18;

      if (v10)
      {
        v14 = CWFGetOTAOSLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v10 localizedDescription];
          *buf = v17;
          v20 = "[CWFAssetRootMonitor startMonitoringPath:]";
          v21 = 1024;
          v22 = 192;
          v23 = 2080;
          v24 = "[CWFAssetRootMonitor startMonitoringPath:]";
          v25 = 2112;
          v26 = v12;
          v27 = 2112;
          v28 = localizedDescription;
          _os_log_impl(&dword_1E0BBF000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Error accessing attributesOfItemAtPath %@ : %@", buf, 0x30u);
        }
      }

      else
      {
        v14 = [(NSMutableDictionary *)self->pathsFileAttributesAtLastCheck objectForKeyedSubscript:v12];
        if (([(NSMutableSet *)self->pathsUpdated containsObject:v12]& 1) == 0 && (!v14 || ([v14 isEqualToDictionary:v13]& 1) == 0))
        {
          [(NSMutableSet *)self->pathsUpdated addObject:v12];
        }

        [(NSMutableSet *)self->pathsExisting addObject:v12];
        [(NSMutableDictionary *)self->pathsFileAttributes setObject:v13 forKeyedSubscript:v12];
      }

      nextObject2 = [v6 nextObject];

      v9 = nextObject2;
    }

    while (nextObject2);
  }

  [(CWFAssetRootMonitor *)self checkForDeletedPath:pathCopy];
}

- (void)printDictionaryDifferences:(id)differences dictTwo:(id)two
{
  v40 = *MEMORY[0x1E69E9840];
  differencesCopy = differences;
  twoCopy = two;
  v7 = MEMORY[0x1E695DFA8];
  allKeys = [differencesCopy allKeys];
  v9 = [v7 setWithArray:allKeys];

  allKeys2 = [twoCopy allKeys];
  [v9 addObjectsFromArray:allKeys2];

  v22 = v9;
  allObjects = [v9 allObjects];
  v12 = [allObjects sortedArrayUsingSelector:sel_compare_];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = [differencesCopy objectForKeyedSubscript:v18];
        v20 = [twoCopy objectForKeyedSubscript:v18];
        if (([v19 isEqual:v20] & 1) == 0)
        {
          v21 = CWFGetOTAOSLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136447490;
            v28 = "[CWFAssetRootMonitor printDictionaryDifferences:dictTwo:]";
            v29 = 1024;
            v30 = 228;
            v31 = 2080;
            v32 = "[CWFAssetRootMonitor printDictionaryDifferences:dictTwo:]";
            v33 = 2112;
            v34 = v18;
            v35 = 2112;
            v36 = v19;
            v37 = 2112;
            v38 = v20;
            _os_log_impl(&dword_1E0BBF000, v21, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%s: key %@\n\tdictOne %@\n\tdictTwo %@", buf, 0x3Au);
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v39 count:16];
    }

    while (v15);
  }
}

- (void)checkForDeletedPath:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFA8] setWithSet:self->pathsExistingAtLastCheck];
  [v4 minusSet:self->pathsExisting];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [(NSMutableSet *)self->pathsUpdated addObject:v10, v11];
        [(NSMutableDictionary *)self->pathsFileAttributes removeObjectForKey:v10];
        [(NSMutableSet *)self->pathsExisting removeObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)handleUpdatedPaths
{
  v51 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v33 = [MEMORY[0x1E695DFA8] set];
  v4 = [MEMORY[0x1E695DFA8] set];
  v32 = [MEMORY[0x1E695DFA8] set];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = self->pathsUpdated;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v36 objects:v50 count:16];
  selfCopy = self;
  v34 = v4;
  if (v6)
  {
    v8 = v6;
    v9 = *v37;
    *&v7 = 136447234;
    v30 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        if (![defaultManager fileExistsAtPath:{v11, v30}])
        {
          [v4 addObject:v11];
          continue;
        }

        v35 = 0;
        v12 = [defaultManager attributesOfItemAtPath:v11 error:&v35];
        v13 = v35;
        v14 = [(NSMutableDictionary *)self->pathsFileAttributesAtLastCheck objectForKeyedSubscript:v11];
        if (v14)
        {
          if ([v12 isEqualToDictionary:v14])
          {
            v15 = CWFGetOTAOSLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v30;
              v41 = "[CWFAssetRootMonitor handleUpdatedPaths]";
              v42 = 1024;
              v43 = 265;
              v44 = 2112;
              v45 = v11;
              v46 = 2112;
              v47 = v12;
              v48 = 2112;
              v49 = v14;
              _os_log_impl(&dword_1E0BBF000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:handleUpdatedPaths ERROR processing pathsUpdated path %@ attr %@ prevAttr %@", buf, 0x30u);
            }

            self = selfCopy;
            goto LABEL_16;
          }

          v16 = v32;
        }

        else
        {
          v16 = v33;
        }

        [v16 addObject:v11];
LABEL_16:

        v4 = v34;
      }

      v8 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v8);
  }

  if ([v33 count])
  {
    v17 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v41 = "[CWFAssetRootMonitor handleUpdatedPaths]";
      v42 = 1024;
      v43 = 276;
      v44 = 2112;
      v45 = v33;
      _os_log_impl(&dword_1E0BBF000, v17, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Files Added %@", buf, 0x1Cu);
    }
  }

  if ([v4 count])
  {
    v18 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v41 = "[CWFAssetRootMonitor handleUpdatedPaths]";
      v42 = 1024;
      v43 = 279;
      v44 = 2112;
      v45 = v4;
      _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Files Deleted \n%@", buf, 0x1Cu);
    }
  }

  if ([v32 count])
  {
    v19 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v41 = "[CWFAssetRootMonitor handleUpdatedPaths]";
      v42 = 1024;
      v43 = 282;
      v44 = 2112;
      v45 = v32;
      _os_log_impl(&dword_1E0BBF000, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Files Modified: \n%@", buf, 0x1Cu);
    }
  }

  if ([v33 count] || objc_msgSend(v4, "count") || objc_msgSend(v32, "count"))
  {
    delegate = [(CWFAssetRootMonitor *)self delegate];
    v21 = MEMORY[0x1E695DF70];
    allObjects = [v33 allObjects];
    v23 = [v21 arrayWithArray:allObjects];
    v24 = MEMORY[0x1E695DF70];
    allObjects2 = [v4 allObjects];
    v26 = [v24 arrayWithArray:allObjects2];
    v27 = MEMORY[0x1E695DF70];
    allObjects3 = [v32 allObjects];
    v29 = [v27 arrayWithArray:allObjects3];
    [delegate rootMonitorDetectedAdd:v23 deleted:v26 updated:v29];

    v4 = v34;
    self = selfCopy;
  }

  [(NSMutableSet *)self->pathsUpdated removeAllObjects];
  objc_storeStrong(&self->pathsExistingAtLastCheck, self->pathsExisting);
  [(NSMutableDictionary *)self->pathsFileAttributesAtLastCheck removeAllObjects];
  [(NSMutableDictionary *)self->pathsFileAttributesAtLastCheck setDictionary:self->pathsFileAttributes];
}

- (CWFAssetRootMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end