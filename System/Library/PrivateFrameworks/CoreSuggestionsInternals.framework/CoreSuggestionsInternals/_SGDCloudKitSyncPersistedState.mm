@interface _SGDCloudKitSyncPersistedState
+ (id)properties;
- (SEL)_getterForProperty:(objc_property *)property;
- (SEL)_setterForProperty:(objc_property *)property;
- (_SGDCloudKitSyncPersistedState)init;
- (_SGDCloudKitSyncPersistedState)initWithCoder:(id)coder;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setupKvo;
- (void)stopKvo;
@end

@implementation _SGDCloudKitSyncPersistedState

+ (id)properties
{
  if (properties__pasOnceToken3 != -1)
  {
    dispatch_once(&properties__pasOnceToken3, &__block_literal_global_19133);
  }

  v3 = properties__pasExprOnceResult;

  return v3;
}

- (id)description
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = +[_SGDCloudKitSyncPersistedState properties];
  v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        v10 = objc_opt_class();
        second = [v9 second];
        Property = class_getProperty(v10, [second UTF8String]);

        if (!Property)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"SGDCloudKitSync.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"objcProperty != nil"}];
        }

        v13 = [(_SGDCloudKitSyncPersistedState *)self _getterForProperty:Property];
        v14 = ([(_SGDCloudKitSyncPersistedState *)self methodForSelector:v13])(self, v13);
        v15 = v14;
        if (!v14)
        {
          null = [MEMORY[0x277CBEB68] null];
          v15 = null;
        }

        second2 = [v9 second];
        [v4 setObject:v15 forKeyedSubscript:second2];

        if (!v14)
        {
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  v18 = objc_alloc(MEMORY[0x277CCACA8]);
  v25.receiver = self;
  v25.super_class = _SGDCloudKitSyncPersistedState;
  v19 = [(_SGDCloudKitSyncPersistedState *)&v25 description];
  v20 = [v4 description];
  v21 = [v18 initWithFormat:@"<%@ %@>", v19, v20];

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = +[_SGDCloudKitSyncPersistedState properties];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = objc_opt_class();
        second = [v10 second];
        Property = class_getProperty(v11, [second UTF8String]);

        if (!Property)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"SGDCloudKitSync.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"objcProperty != nil"}];
        }

        v14 = [(_SGDCloudKitSyncPersistedState *)self _getterForProperty:Property];
        v15 = ([(_SGDCloudKitSyncPersistedState *)self methodForSelector:v14])(self, v14);
        second2 = [v10 second];
        [coderCopy encodeObject:v15 forKey:second2];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (objectCopy == self)
  {
    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412802;
      v16 = pathCopy;
      v17 = 2112;
      v18 = changeCopy;
      v19 = 2112;
      v20 = objectCopy;
      _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, "SGCK Persisted state changed (keyPath: %@, change: %@, self: %@)", &v15, 0x20u);
    }

    changeCallback = [(_SGDCloudKitSyncPersistedState *)self changeCallback];

    if (changeCallback)
    {
      changeCallback2 = [(_SGDCloudKitSyncPersistedState *)self changeCallback];
      (changeCallback2)[2](changeCallback2, self);
    }
  }
}

- (void)stopKvo
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = +[_SGDCloudKitSyncPersistedState properties];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        second = [*(*(&v9 + 1) + 8 * v7) second];
        [(_SGDCloudKitSyncPersistedState *)self removeObserver:self forKeyPath:second context:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)setupKvo
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = +[_SGDCloudKitSyncPersistedState properties];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        second = [*(*(&v9 + 1) + 8 * v7) second];
        [(_SGDCloudKitSyncPersistedState *)self addObserver:self forKeyPath:second options:0 context:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  [(_SGDCloudKitSyncPersistedState *)self stopKvo];
  v3.receiver = self;
  v3.super_class = _SGDCloudKitSyncPersistedState;
  [(_SGDCloudKitSyncPersistedState *)&v3 dealloc];
}

- (_SGDCloudKitSyncPersistedState)initWithCoder:(id)coder
{
  v34 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = _SGDCloudKitSyncPersistedState;
  v6 = [(_SGDCloudKitSyncPersistedState *)&v30 init];
  if (v6)
  {
    v25 = a2;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = +[_SGDCloudKitSyncPersistedState properties];
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          first = [v12 first];
          v14 = NSClassFromString(first);

          if (!v14)
          {
            v23 = sgLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v32 = v12;
              _os_log_error_impl(&dword_231E60000, v23, OS_LOG_TYPE_ERROR, "_SGDCloudKitSyncPersistedState got invalid class name in property: %@", buf, 0xCu);
            }

            v22 = 0;
            goto LABEL_17;
          }

          second = [v12 second];
          v16 = [coderCopy decodeObjectOfClass:v14 forKey:second];

          v17 = objc_opt_class();
          second2 = [v12 second];
          Property = class_getProperty(v17, [second2 UTF8String]);

          if (!Property)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:v25 object:v6 file:@"SGDCloudKitSync.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"objcProperty != nil"}];
          }

          v20 = [(_SGDCloudKitSyncPersistedState *)v6 _setterForProperty:Property];
          ([(_SGDCloudKitSyncPersistedState *)v6 methodForSelector:v20])(v6, v20, v16);
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v33 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    [(_SGDCloudKitSyncPersistedState *)v6 setupKvo];
  }

  v22 = v6;
LABEL_17:

  return v22;
}

- (SEL)_setterForProperty:(objc_property *)property
{
  v6 = property_copyAttributeValue(property, "S");
  if (!v6)
  {
    Name = property_getName(property);
    v8 = strlen(Name);
    v9 = malloc_type_malloc(v8 + 5, 0x4A67B19AuLL);
    if (!v9)
    {
      v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v17);
    }

    v6 = v9;
    v12 = *Name;
    v11 = Name + 1;
    v10 = v12;
    v13 = v12 - 32;
    if ((v12 - 97) < 0x1A)
    {
      v10 = v13;
    }

    if (snprintf(v9, v8 + 5, "set%c%s:", v10, v11) < 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SGDCloudKitSync.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"snprintfResult >= 0"}];
    }
  }

  v14 = sel_registerName(v6);
  free(v6);
  return v14;
}

- (SEL)_getterForProperty:(objc_property *)property
{
  if (!property)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGDCloudKitSync.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"property"}];
  }

  v4 = property_copyAttributeValue(property, "G");
  if (v4)
  {
    v5 = v4;
    v6 = sel_registerName(v4);
    free(v5);
    return v6;
  }

  else
  {
    Name = property_getName(property);

    return sel_registerName(Name);
  }
}

- (_SGDCloudKitSyncPersistedState)init
{
  v5.receiver = self;
  v5.super_class = _SGDCloudKitSyncPersistedState;
  v2 = [(_SGDCloudKitSyncPersistedState *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_SGDCloudKitSyncPersistedState *)v2 setupKvo];
  }

  return v3;
}

@end