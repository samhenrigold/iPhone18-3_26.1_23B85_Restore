@interface BKDisplayCloneMirrorRequestCache
- (void)_lock_addDeathWatcherForPid:(int)pid;
- (void)_lock_rebuildModeCache;
@end

@implementation BKDisplayCloneMirrorRequestCache

- (void)_lock_rebuildModeCache
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_alloc_init(NSMutableDictionary);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_modeRequestsInOrder;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 16);
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        v12 = [v3 objectForKey:{v11, v16}];

        if (!v12)
        {
          [v3 setObject:v9 forKey:v11];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v13 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
      v6 = v13;
    }

    while (v13);
  }

  objc_storeStrong(&self->_displayUUIDToModeRequest, v3);
  v14 = BKLogDisplay();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [BSDescriptionStream descriptionForRootObject:v3];
    *buf = 138543362;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "clone mirror cache is now %{public}@", buf, 0xCu);
  }
}

- (void)_lock_addDeathWatcherForPid:(int)pid
{
  v3 = *&pid;
  if (!self->_pidToDeathWatcher)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    pidToDeathWatcher = self->_pidToDeathWatcher;
    self->_pidToDeathWatcher = v5;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000397E8;
  v10[3] = &unk_1000FCD68;
  v10[4] = self;
  v11 = v3;
  v7 = [[BSProcessDeathWatcher alloc] initWithPID:v3 queue:&_dispatch_main_q deathHandler:v10];
  v8 = self->_pidToDeathWatcher;
  v9 = [NSNumber numberWithInt:v3];
  [(NSMutableDictionary *)v8 setObject:v7 forKey:v9];
}

@end