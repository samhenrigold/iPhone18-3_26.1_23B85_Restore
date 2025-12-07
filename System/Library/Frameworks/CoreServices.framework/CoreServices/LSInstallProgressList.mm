@interface LSInstallProgressList
- (LSInstallProgressList)init;
- (id)progressForBundleID:(id)d;
- (id)subscriberForBundleID:(id)d andPublishingKey:(id)key;
- (void)addSubscriber:(id)subscriber forPublishingKey:(id)key andBundleID:(id)d;
- (void)removeProgressForBundleID:(id)d;
- (void)removeSubscriberForPublishingKey:(id)key andBundleID:(id)d;
- (void)setProgress:(id)progress forBundleID:(id)d;
@end

@implementation LSInstallProgressList

- (LSInstallProgressList)init
{
  v8.receiver = self;
  v8.super_class = LSInstallProgressList;
  v2 = [(LSInstallProgressList *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    progresses = v2->_progresses;
    v2->_progresses = v3;

    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    subscriptions = v2->_subscriptions;
    v2->_subscriptions = v5;
  }

  return v2;
}

- (id)progressForBundleID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_progresses objectForKey:dCopy];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)setProgress:(id)progress forBundleID:(id)d
{
  progressCopy = progress;
  dCopy = d;
  selfCopy = self;
  v8 = objc_sync_enter(selfCopy);
  if ([__LSDefaultsGetSharedInstance(v8 v9)])
  {
    allKeys = [(NSMutableDictionary *)selfCopy->_progresses allKeys];
    v11 = [allKeys containsObject:dCopy];

    if ((v11 & 1) == 0)
    {
      MEMORY[0x1865D7C40]();
    }
  }

  [(NSMutableDictionary *)selfCopy->_progresses setObject:progressCopy forKey:dCopy];
  objc_sync_exit(selfCopy);
}

- (void)addSubscriber:(id)subscriber forPublishingKey:(id)key andBundleID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  subscriberCopy = subscriber;
  keyCopy = key;
  dCopy = d;
  selfCopy = self;
  v12 = objc_sync_enter(selfCopy);
  v13 = _LSProgressLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = subscriberCopy;
    v17 = 2112;
    v18 = keyCopy;
    _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "#LSInstallProgressList add subscriber: %@ publishingString: %@", &v15, 0x16u);
  }

  array = [(NSMutableDictionary *)selfCopy->_subscriptions objectForKey:keyCopy];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(NSMutableDictionary *)selfCopy->_subscriptions setObject:array forKey:keyCopy];
  }

  [array addObject:subscriberCopy];

  objc_sync_exit(selfCopy);
}

- (id)subscriberForBundleID:(id)d andPublishingKey:(id)key
{
  dCopy = d;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_subscriptions objectForKeyedSubscript:keyCopy];
  objc_sync_exit(selfCopy);

  return v9;
}

- (void)removeSubscriberForPublishingKey:(id)key andBundleID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_subscriptions objectForKeyedSubscript:keyCopy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v8 = v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
  v10 = v9;
  if (v9)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = _LSProgressLog(v9);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v21 = v13;
          v22 = 2112;
          v23 = keyCopy;
          _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "#LSInstallProgressList remove subscriber: %@ publishingString: %@", buf, 0x16u);
        }

        v9 = [MEMORY[0x1E696AE38] _removeSubscriber:{v13, dCopy}];
        ++v12;
      }

      while (v10 != v12);
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      v10 = v9;
    }

    while (v9);
  }

  [(NSMutableDictionary *)selfCopy->_subscriptions removeObjectForKey:keyCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeProgressForBundleID:(id)d
{
  dCopy = d;
  selfCopy = self;
  v5 = objc_sync_enter(selfCopy);
  if ([__LSDefaultsGetSharedInstance(v5 v6)])
  {
    allKeys = [(NSMutableDictionary *)selfCopy->_progresses allKeys];
    v8 = [allKeys containsObject:dCopy];

    if (v8)
    {
      MEMORY[0x1865D7C50]();
    }
  }

  [(NSMutableDictionary *)selfCopy->_progresses removeObjectForKey:dCopy];
  objc_sync_exit(selfCopy);
}

@end