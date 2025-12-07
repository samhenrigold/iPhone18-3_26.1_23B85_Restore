@interface CSLPRFApplicationLibrary
+ (id)_withClassLock_libraryForLocation:(unint64_t)location;
+ (id)libraryForLocation:(unint64_t)location;
+ (id)sharedLibraryForLocation:(unint64_t)location;
@end

@implementation CSLPRFApplicationLibrary

+ (id)_withClassLock_libraryForLocation:(unint64_t)location
{
  v31 = *MEMORY[0x277D85DE8];
  if (location >= 4)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"location < __locationCount"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v20 = v16;
      v21 = 2114;
      v22 = v18;
      v23 = 2048;
      selfCopy = self;
      v25 = 2114;
      v26 = @"CSLPRFApplicationLibrary.m";
      v27 = 1024;
      v28 = 51;
      v29 = 2114;
      v30 = v15;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x22CEAA144);
  }

  v4 = __sharedLibraries[location];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    if (location > 1)
    {
      v9 = [CSLPRFCompositeApplicationLibrary alloc];
      if (location == 2)
      {
        v10 = +[CSLPRFWatchApplicationLibrary libraryForWatchApplications];
        v11 = objc_alloc_init(CSLPRFBulletinBoardApplicationLibrary);
      }

      else
      {
        v10 = objc_alloc_init(CSLPRFLocalApplicationLibrary);
        v11 = +[CSLPRFWatchApplicationLibrary libraryForWatchApplications];
      }

      v12 = v11;
      v7 = [(CSLPRFCompositeApplicationLibrary *)v9 initWithPrimaryLibrary:v10 secondaryLibrary:v11];

      goto LABEL_5;
    }

    if (location)
    {
      v6 = objc_alloc_init(CSLPRFLocalApplicationLibrary);
    }

    else
    {
      v6 = +[CSLPRFWatchApplicationLibrary libraryForWatchApplications];
    }
  }

  v7 = v6;
LABEL_5:

  return v7;
}

+ (id)libraryForLocation:(unint64_t)location
{
  v24 = *MEMORY[0x277D85DE8];
  if (location >= 4)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"location < __locationCount"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"CSLPRFApplicationLibrary.m";
      v20 = 1024;
      v21 = 39;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x22CEAA300);
  }

  os_unfair_lock_lock(&__lock);
  v5 = __sharedLibraries[location];
  if (!v5)
  {
    v5 = [self _withClassLock_libraryForLocation:location];
  }

  os_unfair_lock_unlock(&__lock);

  return v5;
}

+ (id)sharedLibraryForLocation:(unint64_t)location
{
  v26 = *MEMORY[0x277D85DE8];
  if (location >= 4)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"location < __locationCount"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      v18 = 2048;
      selfCopy = self;
      v20 = 2114;
      v21 = @"CSLPRFApplicationLibrary.m";
      v22 = 1024;
      v23 = 27;
      v24 = 2114;
      v25 = v10;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x22CEAA4D0);
  }

  os_unfair_lock_lock(&__lock);
  v5 = __sharedLibraries[location];
  if (!v5)
  {
    v6 = [self _withClassLock_libraryForLocation:location];
    v7 = __sharedLibraries[location];
    __sharedLibraries[location] = v6;

    v5 = v6;
  }

  os_unfair_lock_unlock(&__lock);

  return v5;
}

@end