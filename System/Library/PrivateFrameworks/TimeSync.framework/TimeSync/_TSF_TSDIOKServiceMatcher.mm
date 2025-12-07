@interface _TSF_TSDIOKServiceMatcher
- (BOOL)startNotificationsWithMatchingDictionary:(id)dictionary;
- (_TSF_TSDIOKServiceMatcher)init;
- (void)dealloc;
- (void)handleServiceMatched:(id)matched;
- (void)handleServiceTerminated:(id)terminated;
- (void)init;
@end

@implementation _TSF_TSDIOKServiceMatcher

- (_TSF_TSDIOKServiceMatcher)init
{
  v6.receiver = self;
  v6.super_class = _TSF_TSDIOKServiceMatcher;
  v2 = [(_TSF_TSDIOKServiceMatcher *)&v6 init];
  if (v2)
  {
    if (init_onceToken != -1)
    {
      [_TSF_TSDIOKServiceMatcher init];
    }

    if (_sharedTSDIOKServiceMatcherNotificationsQueue)
    {
      if (_sharedTSDIOKServiceMatcherNotificationsPort)
      {
        v3 = [MEMORY[0x277CBEB58] set];
        matchedEntryIDs = v2->_matchedEntryIDs;
        v2->_matchedEntryIDs = v3;

        if (v2->_matchedEntryIDs)
        {
          return v2;
        }

        [_TSF_TSDIOKServiceMatcher init];
      }

      else
      {
        [_TSF_TSDIOKServiceMatcher init];
      }
    }

    else
    {
      [_TSF_TSDIOKServiceMatcher init];
    }

    return 0;
  }

  return v2;
}

- (BOOL)startNotificationsWithMatchingDictionary:(id)dictionary
{
  v27 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    goto LABEL_7;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:?];
  identifier = self->_identifier;
  self->_identifier = v6;

  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D1AE20];
  v20[1] = MEMORY[0x277D85DD0];
  v20[2] = 3221225472;
  v20[3] = __70___TSF_TSDIOKServiceMatcher_startNotificationsWithMatchingDictionary___block_invoke;
  v20[4] = &unk_279DBD910;
  objc_copyWeak(&v21, &location);
  v9 = [v8 addNotificationOfType:? forMatching:? usingNotificationPort:? error:? withHandler:?];
  matchNotification = self->_matchNotification;
  self->_matchNotification = v9;

  if (!self->_matchNotification)
  {
    [(_TSF_TSDIOKServiceMatcher *)&v21 startNotificationsWithMatchingDictionary:?];
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v11 = MEMORY[0x277D1AE20];
  v19[5] = MEMORY[0x277D85DD0];
  v19[6] = 3221225472;
  v19[7] = __70___TSF_TSDIOKServiceMatcher_startNotificationsWithMatchingDictionary___block_invoke_12;
  v19[8] = &unk_279DBD910;
  objc_copyWeak(v20, &location);
  v12 = [v11 addNotificationOfType:? forMatching:? usingNotificationPort:? error:? withHandler:?];
  terminateNotification = self->_terminateNotification;
  self->_terminateNotification = v12;

  v14 = self->_terminateNotification;
  v15 = v14 != 0;
  if (v14)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70___TSF_TSDIOKServiceMatcher_startNotificationsWithMatchingDictionary___block_invoke_14;
    v19[3] = &unk_279DBD538;
    v19[4] = self;
    dispatch_async(_sharedTSDIOKServiceMatcherNotificationsQueue, v19);
  }

  else
  {
    [_TSF_TSDIOKServiceMatcher startNotificationsWithMatchingDictionary:];
  }

  objc_destroyWeak(v20);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    uTF8String = [(NSString *)self->_identifier UTF8String];
    v17 = "failed";
    if (v15)
    {
      v17 = "success";
    }

    *buf = 136315394;
    v24 = uTF8String;
    v25 = 2080;
    v26 = v17;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDIOKServiceMatcher startNotificationsWithMatchingDictionary %s %s", buf, 0x16u);
  }

  return v15;
}

- (void)dealloc
{
  matchedEntryIDs = self->_matchedEntryIDs;
  self->_matchedEntryIDs = 0;

  matchNotification = self->_matchNotification;
  self->_matchNotification = 0;

  terminateNotification = self->_terminateNotification;
  self->_terminateNotification = 0;

  v6.receiver = self;
  v6.super_class = _TSF_TSDIOKServiceMatcher;
  [(_TSF_TSDIOKServiceMatcher *)&v6 dealloc];
}

- (void)handleServiceMatched:(id)matched
{
  matchedCopy = matched;
  v5 = MEMORY[0x277CCABB0];
  v7 = matchedCopy;
  [matchedCopy entryID];
  v6 = [v5 numberWithUnsignedLongLong:?];
  if (([(NSMutableSet *)self->_matchedEntryIDs containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->_matchedEntryIDs addObject:?];
    [(_TSF_TSDIOKServiceMatcher *)self serviceMatched:?];
  }
}

- (void)handleServiceTerminated:(id)terminated
{
  terminatedCopy = terminated;
  v5 = MEMORY[0x277CCABB0];
  v7 = terminatedCopy;
  [terminatedCopy entryID];
  v6 = [v5 numberWithUnsignedLongLong:?];
  if ([(NSMutableSet *)self->_matchedEntryIDs containsObject:?])
  {
    [(NSMutableSet *)self->_matchedEntryIDs removeObject:?];
    [(_TSF_TSDIOKServiceMatcher *)self serviceTerminated:?];
  }
}

- (void)init
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)startNotificationsWithMatchingDictionary:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)startNotificationsWithMatchingDictionary:(id *)a1 .cold.2(id *a1, id *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v4, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v5, v6, v7, v8, v9);
  }

  objc_destroyWeak(a1);
  objc_destroyWeak(a2);
}

@end