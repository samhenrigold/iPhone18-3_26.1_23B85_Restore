@interface INExecutionCounterpartMapper
+ (void)initialize;
- (INExecutionCounterpartMapper)init;
- (id)counterpartIdentifiersForLocalIdentifier:(id)identifier;
- (id)localIdentifiersForCounterpartIdentifier:(id)identifier;
- (void)dealloc;
- (void)installedApplicationsDidChange:(id)change;
- (void)reset;
@end

@implementation INExecutionCounterpartMapper

- (id)counterpartIdentifiersForLocalIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E69635F8];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];

  if (v5)
  {
    v6 = INCounterpartIdentifiersForApplicationRecord(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)localIdentifiersForCounterpartIdentifier:(id)identifier
{
  v51 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v46 = "[INExecutionCounterpartMapper localIdentifiersForCounterpartIdentifier:]";
    v47 = 2112;
    v48 = identifierCopy;
    _os_log_impl(&dword_18E991000, v5, OS_LOG_TYPE_INFO, "%s [Counterpart Mapping] Starting counterpart mapping for bundle id: %@", buf, 0x16u);
  }

  if (identifierCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __73__INExecutionCounterpartMapper_localIdentifiersForCounterpartIdentifier___block_invoke;
    v42[3] = &unk_1E72882F8;
    v42[4] = self;
    v29 = MEMORY[0x193AD7780](v42);
    v27 = [(NSMutableDictionary *)self->_mapping objectForKey:identifierCopy];
    if (v27)
    {
      v6 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v46 = "[INExecutionCounterpartMapper localIdentifiersForCounterpartIdentifier:]";
        v47 = 2112;
        v48 = identifierCopy;
        v49 = 2112;
        v50 = v27;
        _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s [Counterpart Mapping] (%@) Found counterpart in local mapping: %@", buf, 0x20u);
      }

      v7 = v27;
      v8 = v27;
    }

    else
    {
      if (self->_filled)
      {
        v9 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v46 = "[INExecutionCounterpartMapper localIdentifiersForCounterpartIdentifier:]";
          v47 = 2112;
          v48 = identifierCopy;
          _os_log_impl(&dword_18E991000, v9, OS_LOG_TYPE_INFO, "%s [Counterpart Mapping] (%@) Mapping is filled and a counterpart was not found, returning nil", buf, 0x16u);
        }

        v8 = 0;
      }

      else
      {
        [MEMORY[0x1E69635F8] enumeratorWithOptions:1];
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        obj = v39 = 0u;
        v10 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v10)
        {
          v31 = *v39;
          *&v11 = 136315394;
          v26 = v11;
          while (2)
          {
            v33 = 0;
            v30 = v10;
            do
            {
              if (*v39 != v31)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v38 + 1) + 8 * v33);
              context = objc_autoreleasePoolPush();
              v13 = INCounterpartIdentifiersForApplicationRecord(v12);
              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              v14 = v13;
              v15 = [v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
              if (v15)
              {
                v16 = *v35;
                while (2)
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v35 != v16)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v18 = *(*(&v34 + 1) + 8 * i);
                    v19 = INSiriLogContextIntents;
                    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315650;
                      v46 = "[INExecutionCounterpartMapper localIdentifiersForCounterpartIdentifier:]";
                      v47 = 2112;
                      v48 = identifierCopy;
                      v49 = 2112;
                      v50 = v18;
                      _os_log_impl(&dword_18E991000, v19, OS_LOG_TYPE_INFO, "%s [Counterpart Mapping] (%@) Found counterpart: %@", buf, 0x20u);
                    }

                    v20 = [(NSMutableDictionary *)self->_mapping objectForKey:v18, v26];
                    if (!v20)
                    {
                      v20 = objc_opt_new();
                      [(NSMutableDictionary *)self->_mapping setObject:v20 forKey:v18];
                    }

                    bundleIdentifier = [v12 bundleIdentifier];
                    [v20 addObject:bundleIdentifier];

                    if ([v18 isEqualToString:identifierCopy])
                    {
                      v23 = INSiriLogContextIntents;
                      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
                      {
                        *buf = v26;
                        v46 = "[INExecutionCounterpartMapper localIdentifiersForCounterpartIdentifier:]";
                        v47 = 2112;
                        v48 = identifierCopy;
                        _os_log_impl(&dword_18E991000, v23, OS_LOG_TYPE_INFO, "%s [Counterpart Mapping] (%@) Counterpart and original match, stopping", buf, 0x16u);
                      }

                      v22 = 1;
                      goto LABEL_34;
                    }
                  }

                  v15 = [v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
                  if (v15)
                  {
                    continue;
                  }

                  break;
                }
              }

              v22 = 0;
LABEL_34:

              objc_autoreleasePoolPop(context);
              if (v22)
              {
                v24 = 0;
                goto LABEL_39;
              }

              ++v33;
            }

            while (v33 != v30);
            v10 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v24 = 1;
LABEL_39:

        self->_filled = v24;
        v8 = [(NSMutableDictionary *)self->_mapping objectForKey:identifierCopy];
      }

      v7 = 0;
    }

    v29[2]();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__INExecutionCounterpartMapper_reset__block_invoke;
  v6[3] = &unk_1E72882F8;
  v6[4] = self;
  v3 = MEMORY[0x193AD7780](v6);
  v4 = objc_opt_new();
  mapping = self->_mapping;
  self->_mapping = v4;

  self->_filled = 0;
  v3[2](v3);
}

- (void)installedApplicationsDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:@"isPlaceholder"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bOOLValue = [v7 BOOLValue];
  if ((bOOLValue & 1) == 0)
  {

    [(INExecutionCounterpartMapper *)self reset];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.LaunchServices.applicationRegistered" object:0];
  [defaultCenter removeObserver:self name:@"com.apple.LaunchServices.applicationUnregistered" object:0];

  v4.receiver = self;
  v4.super_class = INExecutionCounterpartMapper;
  [(INExecutionCounterpartMapper *)&v4 dealloc];
}

- (INExecutionCounterpartMapper)init
{
  v7.receiver = self;
  v7.super_class = INExecutionCounterpartMapper;
  v2 = [(INExecutionCounterpartMapper *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_installedApplicationsDidChange_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [defaultCenter addObserver:v3 selector:sel_installedApplicationsDidChange_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    [(INExecutionCounterpartMapper *)v3 reset];
    v5 = v3;
  }

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

@end