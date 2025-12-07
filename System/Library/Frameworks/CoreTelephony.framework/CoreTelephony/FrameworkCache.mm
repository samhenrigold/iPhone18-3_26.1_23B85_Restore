@interface FrameworkCache
+ (SEL)getCacheableSelectorForNotification:(id)notification;
+ (unsigned)getCachePolicyForSelector:(SEL)selector;
- (FrameworkCache)init;
- (id)valueForSelector:(SEL)selector;
- (void)handleDisconnection;
- (void)handleNotification:(id)notification;
- (void)handleValue:(id)value forSelector:(SEL)selector;
@end

@implementation FrameworkCache

- (FrameworkCache)init
{
  v6.receiver = self;
  v6.super_class = FrameworkCache;
  v2 = [(FrameworkCache *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    selectorValueDict = v2->_selectorValueDict;
    v2->_selectorValueDict = v3;
  }

  return v2;
}

- (void)handleDisconnection
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_selectorValueDict allKeys];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        pointerValue = [v7 pointerValue];
        v9 = [objc_opt_class() getCachePolicyForSelector:pointerValue];
        if (v9 != 1)
        {
          v11 = CTLogClientCache(v9, v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = NSStringFromSelector(pointerValue);
            [(FrameworkCache *)v12 handleDisconnection:v17];
          }

          [(NSMutableDictionary *)selfCopy->_selectorValueDict removeObjectForKey:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

+ (SEL)getCacheableSelectorForNotification:(id)notification
{
  v13[2] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if ((_MergedGlobals_2 & 1) == 0)
  {
    v13[0] = sel_currentDataServiceDescriptorChanged_;
    v13[1] = sel_getCurrentDataServiceDescriptor_;
    std::map<objc_selector *,objc_selector *>::map[abi:nn200100](v12, v13, 1);
    [FrameworkCache getCacheableSelectorForNotification:v12];
  }

  selector = [notificationCopy selector];
  v5 = qword_1ED516480;
  if (!qword_1ED516480)
  {
    goto LABEL_11;
  }

  v6 = &qword_1ED516480;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= selector;
    v9 = v7 < selector;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != &qword_1ED516480 && selector >= v6[4])
  {
    v10 = v6[5];
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

  return v10;
}

+ (unsigned)getCachePolicyForSelector:(SEL)selector
{
  if ((byte_1ED516471 & 1) == 0)
  {
    selectorCopy = selector;
    +[FrameworkCache getCachePolicyForSelector:];
    selector = selectorCopy;
  }

  v3 = qword_1ED516498;
  if (!qword_1ED516498)
  {
    return 0;
  }

  v4 = &qword_1ED516498;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= selector;
    v7 = v5 < selector;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 != &qword_1ED516498 && v4[4] <= selector)
  {
    return *(v4 + 40);
  }

  else
  {
    return 0;
  }
}

- (void)handleValue:(id)value forSelector:(SEL)selector
{
  v18[3] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if ([objc_opt_class() getCachePolicyForSelector:selector])
  {
    v7 = [MEMORY[0x1E696B098] valueWithPointer:selector];
    selfCopy = self;
    v9 = objc_sync_enter(selfCopy);
    if (valueCopy)
    {
      v11 = CTLogClientCache(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = NSStringFromSelector(selector);
        [(FrameworkCache *)v12 handleValue:valueCopy forSelector:v18];
      }

      [(NSMutableDictionary *)selfCopy->_selectorValueDict setObject:valueCopy forKey:v7];
    }

    else
    {
      v13 = [(NSMutableDictionary *)selfCopy->_selectorValueDict objectForKey:v7];

      if (v13)
      {
        v16 = CTLogClientCache(v14, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = NSStringFromSelector(selector);
          [(FrameworkCache *)v17 handleValue:v18 forSelector:v16];
        }

        [(NSMutableDictionary *)selfCopy->_selectorValueDict removeObjectForKey:v7];
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)handleNotification:(id)notification
{
  v13[3] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = [objc_opt_class() getCacheableSelectorForNotification:notificationCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E696B098] valueWithPointer:v5];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [(NSMutableDictionary *)selfCopy->_selectorValueDict objectForKey:v6];

    if (v8)
    {
      v11 = CTLogClientCache(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = NSStringFromSelector([notificationCopy selector]);
        [(FrameworkCache *)v12 handleNotification:v13, v11];
      }

      [(NSMutableDictionary *)selfCopy->_selectorValueDict removeObjectForKey:v6];
    }

    objc_sync_exit(selfCopy);
  }
}

- (id)valueForSelector:(SEL)selector
{
  v13[3] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [MEMORY[0x1E696B098] valueWithPointer:selector];
  v6 = [(NSMutableDictionary *)selfCopy->_selectorValueDict objectForKey:v5];
  v8 = v6;
  if (v6)
  {
    v9 = CTLogClientCache(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = NSStringFromSelector(selector);
      [(FrameworkCache *)v10 valueForSelector:v8, v13];
    }

    v11 = v8;
  }

  objc_sync_exit(selfCopy);

  return v8;
}

@end