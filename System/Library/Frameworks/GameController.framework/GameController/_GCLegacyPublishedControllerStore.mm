@interface _GCLegacyPublishedControllerStore
+ (id)sharedInstance;
- (_GCLegacyPublishedControllerStore)init;
- (uint64_t)_publishCustomController:(uint64_t)controller;
- (uint64_t)_unpublishCustomController:(uint64_t)controller;
@end

@implementation _GCLegacyPublishedControllerStore

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken_5 != -1)
  {
    +[_GCLegacyPublishedControllerStore sharedInstance];
  }

  v1 = sharedInstance_Shared_2;

  return v1;
}

- (_GCLegacyPublishedControllerStore)init
{
  v6.receiver = self;
  v6.super_class = _GCLegacyPublishedControllerStore;
  v2 = [(_GCLegacyPublishedControllerStore *)&v6 init];
  v2->_controllersLock = 0;
  v3 = objc_opt_new();
  publishedControllers = v2->_publishedControllers;
  v2->_publishedControllers = v3;

  return v2;
}

- (uint64_t)_publishCustomController:(uint64_t)controller
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (controller && v3)
  {
    os_unfair_recursive_lock_lock_with_options();
    v6 = [OUTLINED_FUNCTION_2_14() member:?];

    if (v6)
    {
      v7 = os_unfair_recursive_lock_unlock();
      v8 = _gc_log_session(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LODWORD(v19) = 138412290;
        *(&v19 + 4) = v4;
        OUTLINED_FUNCTION_3_8(&dword_1D2CD5000, v9, v10, "#BUG IN CLIENT - Custom controller is already published: %@", v11, v12, v13, v14, v19, DWORD2(v19));
      }

      v5 = 0;
    }

    else
    {
      v15 = [MEMORY[0x1E695DFD8] setWithObject:v4];
      v5 = 1;
      [OUTLINED_FUNCTION_1_20() willChangeValueForKey:? withSetMutation:? usingObjects:?];
      v16 = [OUTLINED_FUNCTION_2_14() setByAddingObject:?];
      v17 = *(controller + 16);
      *(controller + 16) = v16;

      [OUTLINED_FUNCTION_1_20() didChangeValueForKey:? withSetMutation:? usingObjects:?];
      os_unfair_recursive_lock_unlock();
    }
  }

  return v5;
}

- (uint64_t)_unpublishCustomController:(uint64_t)controller
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (controller && v3)
  {
    os_unfair_recursive_lock_lock_with_options();
    v6 = [OUTLINED_FUNCTION_2_14() member:?];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DFD8] setWithObject:v4];
      [OUTLINED_FUNCTION_0_25() willChangeValueForKey:? withSetMutation:? usingObjects:?];
      v8 = [OUTLINED_FUNCTION_2_14() gc_setByRemovingObject:?];
      v9 = *(controller + 16);
      *(controller + 16) = v8;

      [OUTLINED_FUNCTION_0_25() didChangeValueForKey:? withSetMutation:? usingObjects:?];
      os_unfair_recursive_lock_unlock();

      v5 = 1;
    }

    else
    {
      v10 = os_unfair_recursive_lock_unlock();
      v11 = _gc_log_session(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LODWORD(v19) = 138412290;
        HIDWORD(v19) = v4;
        OUTLINED_FUNCTION_3_8(&dword_1D2CD5000, v12, v13, "#BUG IN CLIENT - Controller is not custom or has not been published: %@", v14, v15, v16, v17, v19, HIDWORD(v4));
      }

      v5 = 0;
    }
  }

  return v5;
}

@end