@interface FCFeldsparIDProvider
+ (FCFeldsparIDProvider)sharedInstance;
- (FCFeldsparIDProvider)init;
- (NSString)feldsparID;
- (void)_updateFeldsparID:(id)d;
- (void)addObserver:(id)observer;
- (void)registerUserInfo:(id)info;
- (void)removeObserver:(id)observer;
- (void)userInfoDidChangeFeldsparID:(id)d fromCloud:(BOOL)cloud;
@end

@implementation FCFeldsparIDProvider

+ (FCFeldsparIDProvider)sharedInstance
{
  if (qword_1EDB27030 != -1)
  {
    dispatch_once(&qword_1EDB27030, &__block_literal_global_30);
  }

  v3 = _MergedGlobals_142;

  return v3;
}

uint64_t __38__FCFeldsparIDProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(FCFeldsparIDProvider);
  v1 = _MergedGlobals_142;
  _MergedGlobals_142 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (FCFeldsparIDProvider)init
{
  v9.receiver = self;
  v9.super_class = FCFeldsparIDProvider;
  v2 = [(FCFeldsparIDProvider *)&v9 init];
  if (v2)
  {
    v3 = NewsCoreSensitiveUserDefaults();
    v4 = [v3 stringForKey:@"provider_user_id"];
    feldsparID = v2->_feldsparID;
    v2->_feldsparID = v4;

    v6 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v6;
  }

  return v2;
}

- (NSString)feldsparID
{
  v3 = +[FCUserInfo overrideFeldsparID];
  if ([v3 length])
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  if (self->_userInfo)
  {
    v4 = self->_feldsparID;
    goto LABEL_5;
  }

  v7 = NewsCoreSensitiveUserDefaults();
  v5 = [v7 stringForKey:@"provider_user_id"];

LABEL_6:

  return v5;
}

- (void)registerUserInfo:(id)info
{
  v17 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  [MEMORY[0x1E696AF00] isMainThread];
  if (infoCopy)
  {
    userInfo = self->_userInfo;
    if (userInfo != infoCopy)
    {
      [(FCUserInfo *)userInfo removeObserver:self];
      [(FCUserInfo *)infoCopy addObserver:self];
      objc_storeStrong(&self->_userInfo, info);
      feldsparID = [(FCUserInfo *)infoCopy feldsparID];
      [(FCFeldsparIDProvider *)self _updateFeldsparID:feldsparID];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "userInfo"];
    *buf = 136315906;
    v10 = "[FCFeldsparIDProvider registerUserInfo:]";
    v11 = 2080;
    v12 = "FCFeldsparIDProvider.m";
    v13 = 1024;
    v14 = 67;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }
}

- (void)addObserver:(id)observer
{
  v14 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    observers = [(FCFeldsparIDProvider *)self observers];
    [observers addObject:observerCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    observers = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer"];
    *buf = 136315906;
    v7 = "[FCFeldsparIDProvider addObserver:]";
    v8 = 2080;
    v9 = "FCFeldsparIDProvider.m";
    v10 = 1024;
    v11 = 87;
    v12 = 2114;
    v13 = observers;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
}

- (void)removeObserver:(id)observer
{
  v14 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    observers = [(FCFeldsparIDProvider *)self observers];
    [observers removeObject:observerCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    observers = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer"];
    *buf = 136315906;
    v7 = "[FCFeldsparIDProvider removeObserver:]";
    v8 = 2080;
    v9 = "FCFeldsparIDProvider.m";
    v10 = 1024;
    v11 = 98;
    v12 = 2114;
    v13 = observers;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
}

- (void)userInfoDidChangeFeldsparID:(id)d fromCloud:(BOOL)cloud
{
  cloudCopy = cloud;
  dCopy = d;
  feldsparID = [dCopy feldsparID];
  [(FCFeldsparIDProvider *)self _updateFeldsparID:feldsparID];

  if (cloudCopy)
  {
    [dCopy resetSportsID];
  }
}

- (void)_updateFeldsparID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  if ([dCopy length])
  {
    feldsparID = [(FCFeldsparIDProvider *)self feldsparID];
    v6 = [feldsparID isEqualToString:dCopy];

    if ((v6 & 1) == 0)
    {
      [(FCFeldsparIDProvider *)self setFeldsparID:dCopy];
      v7 = NewsCoreSensitiveUserDefaults();
      [v7 setValue:dCopy forKey:@"provider_user_id"];

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      observers = [(FCFeldsparIDProvider *)self observers];
      v9 = [observers copy];

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          v13 = 0;
          do
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v15 + 1) + 8 * v13);
            if (objc_opt_respondsToSelector())
            {
              [v14 feldsparIDProviderDidChangeFeldsparID:self];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }
    }
  }
}

@end