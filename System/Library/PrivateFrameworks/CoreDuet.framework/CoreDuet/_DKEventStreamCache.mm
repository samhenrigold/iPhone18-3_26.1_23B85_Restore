@interface _DKEventStreamCache
+ (id)sharedCached;
- (id)eventStreamWithName:(id)name valueType:(id)type;
@end

@implementation _DKEventStreamCache

+ (id)sharedCached
{
  if (sharedCached_onceToken != -1)
  {
    +[_DKEventStreamCache sharedCached];
  }

  v3 = sharedCached_sharedCache;

  return v3;
}

- (id)eventStreamWithName:(id)name valueType:(id)type
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  typeCopy = type;
  if (nameCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = [(_DKEventStreamCache *)selfCopy objectForKey:nameCopy];
    v10 = v9;
    if (v9 && (!typeCopy || ([v9 eventValueType], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", typeCopy), v11, v12)))
    {
      v13 = v10;
    }

    else
    {
      v13 = [[_DKEventStream alloc] initWithName:nameCopy valueType:typeCopy cache:0];
      if (v10)
      {
        v14 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          eventValueType = [v10 eventValueType];
          v17 = 138412802;
          v18 = nameCopy;
          v19 = 2112;
          v20 = eventValueType;
          v21 = 2112;
          v22 = typeCopy;
          _os_log_error_impl(&dword_191750000, v14, OS_LOG_TYPE_ERROR, "Conflicting types for event stream %@. Cached: %@ vs. New: %@.", &v17, 0x20u);
        }
      }

      if (v13)
      {
        [(_DKEventStreamCache *)selfCopy setObject:v13 forKey:nameCopy];
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(&selfCopy->super.super, OS_LOG_TYPE_ERROR))
    {
      [_DKEventStream initWithName:? valueType:? cache:?];
    }

    v13 = 0;
  }

  return v13;
}

@end