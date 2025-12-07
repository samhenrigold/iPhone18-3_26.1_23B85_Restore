@interface _CDObservationCenter
+ (id)sharedInstance;
- (_CDObservationCenter)init;
- (id)_notificationToObserverEntriesForSender:(int)sender observerObserver:(int)observer shouldCreate:;
- (id)_observerToEntriesForSender:(void *)sender name:(int)name observerObserver:(int)observer shouldCreate:;
- (unint64_t)observerCountOnName:(id)name;
- (void)_addObserver:(void *)observer name:(void *)name sender:(void *)sender queue:(uint64_t)queue observerObserver:(void *)observerObserver usingCall:;
- (void)_postNotificationName:(void *)name userInfo:(void *)info sender:(uint64_t)sender observerObserver:;
- (void)_postObserverChangesNotificationWithObserverCounts:(void *)counts;
- (void)_removeObserver:(uint64_t)observer observerObserver:;
- (void)_removeObserver:(void *)observer name:(int)name observerObserver:;
- (void)_removeObserver:(void *)observer name:(void *)name sender:(int)sender observerObserver:(void *)observerObserver observerCounts:;
- (void)addObserver:(id)observer name:(id)name sender:(id)sender queue:(id)queue usingBlock:(id)block;
- (void)addObserver:(id)observer name:(id)name sender:(id)sender queue:(id)queue usingSelector:(SEL)selector;
- (void)addObserverChangesObserver:(id)observer onName:(id)name queue:(id)queue usingBlock:(id)block;
- (void)addObserverChangesObserver:(id)observer onName:(id)name queue:(id)queue usingSelector:(SEL)selector;
@end

@implementation _CDObservationCenter

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___CDObservationCenter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_initialized_1 != -1)
  {
    dispatch_once(&sharedInstance_initialized_1, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

- (_CDObservationCenter)init
{
  v8.receiver = self;
  v8.super_class = _CDObservationCenter;
  v2 = [(_CDObservationCenter *)&v8 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    senderToNotificationObservers = v2->_senderToNotificationObservers;
    v2->_senderToNotificationObservers = weakToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    senderToNotificationObserverObservers = v2->_senderToNotificationObserverObservers;
    v2->_senderToNotificationObserverObservers = weakToStrongObjectsMapTable2;
  }

  return v2;
}

- (void)_addObserver:(void *)observer name:(void *)name sender:(void *)sender queue:(uint64_t)queue observerObserver:(void *)observerObserver usingCall:
{
  queueCopy = queue;
  v29[1] = *MEMORY[0x1E69E9840];
  v13 = a2;
  observerCopy = observer;
  nameCopy = name;
  senderCopy = sender;
  observerObserverCopy = observerObserver;
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v19 = [(_CDObservationCenter *)selfCopy _observerToEntriesForSender:nameCopy name:observerCopy observerObserver:queueCopy shouldCreate:1];
    v20 = objc_opt_new();
    v22 = v20;
    if (v20)
    {
      objc_setProperty_atomic(v20, v21, senderCopy, 8);
      objc_setProperty_atomic(v22, v23, observerObserverCopy, 16);
    }

    v24 = [v19 count];
    [v19 setObject:v22 forKey:v13];
    if ((queueCopy & 1) != 0 || [v19 count] == v24)
    {
      v25 = -1;
    }

    else
    {
      v25 = [selfCopy observerCountOnName:observerCopy];
    }

    objc_sync_exit(selfCopy);
    if ((v25 & 0x8000000000000000) == 0)
    {
      v28 = @"observerCount";
      v26 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
      v29[0] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      [(_CDObservationCenter *)selfCopy _postNotificationName:observerCopy userInfo:v27 sender:selfCopy observerObserver:1];
    }
  }
}

- (void)_postNotificationName:(void *)name userInfo:(void *)info sender:(uint64_t)sender observerObserver:
{
  senderCopy = sender;
  v61 = *MEMORY[0x1E69E9840];
  v9 = a2;
  nameCopy = name;
  infoCopy = info;
  v57 = infoCopy;
  v36 = v9;
  if (self)
  {
    v11 = objc_opt_new();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = [(_CDObservationCenter *)selfCopy _observerToEntriesForSender:infoCopy name:v9 observerObserver:senderCopy shouldCreate:0];
    v14 = [v13 copy];

    if (v14)
    {
      [v11 addObject:v14];
    }

    v15 = [(_CDObservationCenter *)selfCopy _observerToEntriesForSender:v36 name:senderCopy observerObserver:0 shouldCreate:?];
    v16 = [v15 copy];

    if (v16)
    {
      [v11 addObject:v16];
    }

    objc_sync_exit(selfCopy);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v11;
    v39 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v39)
    {
      v38 = *v54;
      do
      {
        v17 = 0;
        do
        {
          if (*v54 != v38)
          {
            v18 = v17;
            objc_enumerationMutation(obj);
            v17 = v18;
          }

          v40 = v17;
          v19 = *(*(&v53 + 1) + 8 * v17);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v20 = v19;
          v42 = [v20 countByEnumeratingWithState:&v49 objects:v59 count:16];
          if (v42)
          {
            v41 = *v50;
            do
            {
              v21 = 0;
              do
              {
                if (*v50 != v41)
                {
                  objc_enumerationMutation(v20);
                }

                v22 = *(*(&v49 + 1) + 8 * v21);
                v23 = [v20 objectForKey:v22];
                v25 = v23;
                if (v23)
                {
                  v26 = objc_getProperty(v23, v24, 8, 1);
                  Property = objc_getProperty(v25, v27, 16, 1);
                }

                else
                {
                  v26 = 0;
                  Property = 0;
                }

                v29 = Property;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v30 = v29;
                  v31 = NSSelectorFromString(v30);
                  v32 = [objc_opt_class() instanceMethodSignatureForSelector:v31];
                  if (v32)
                  {
                    v33 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v32];
                    [v33 setSelector:v31];
                    [v33 setTarget:v22];
                    [v33 setArgument:&v57 atIndex:2];
                    [v33 setArgument:&nameCopy atIndex:3];
                    if (v26)
                    {
                      block[0] = MEMORY[0x1E69E9820];
                      block[1] = 3221225472;
                      block[2] = __79___CDObservationCenter__postNotificationName_userInfo_sender_observerObserver___block_invoke;
                      block[3] = &unk_1E7367440;
                      v48 = v33;
                      dispatch_async(v26, block);
                    }

                    else
                    {
                      [v33 invoke];
                    }
                  }
                }

                else
                {
                  v34 = MEMORY[0x193B00C50](v29);
                  v30 = v34;
                  if (v34)
                  {
                    if (v26)
                    {
                      v43[0] = MEMORY[0x1E69E9820];
                      v43[1] = 3221225472;
                      v43[2] = __79___CDObservationCenter__postNotificationName_userInfo_sender_observerObserver___block_invoke_2;
                      v43[3] = &unk_1E7368368;
                      v44 = v57;
                      v45 = nameCopy;
                      v30 = v30;
                      v46 = v30;
                      dispatch_async(v26, v43);
                    }

                    else
                    {
                      (*(v34 + 16))(v34, v57, nameCopy);
                    }
                  }
                }

                ++v21;
              }

              while (v42 != v21);
              v35 = [v20 countByEnumeratingWithState:&v49 objects:v59 count:16];
              v42 = v35;
            }

            while (v35);
          }

          v17 = v40 + 1;
        }

        while (v40 + 1 != v39);
        v39 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v39);
    }

    infoCopy = v57;
  }
}

- (void)_removeObserver:(uint64_t)observer observerObserver:
{
  observerCopy = observer;
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v6 = objc_opt_new();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = 8;
    if (observerCopy)
    {
      v8 = 16;
    }

    v9 = *&selfCopy[v8];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = v9;
    keyEnumerator = [v9 keyEnumerator];
    allObjects = [keyEnumerator allObjects];
    v12 = [allObjects copy];

    v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v23 = v12;
      v24 = *v33;
      do
      {
        v26 = v13;
        for (i = 0; i != v26; ++i)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = [v25 objectForKey:v15];
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v27 = v16;
          keyEnumerator2 = [v16 keyEnumerator];
          allObjects2 = [keyEnumerator2 allObjects];
          v19 = [allObjects2 copy];

          v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v20)
          {
            v21 = *v29;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v29 != v21)
                {
                  objc_enumerationMutation(v19);
                }

                [(_CDObservationCenter *)selfCopy _removeObserver:v5 name:*(*(&v28 + 1) + 8 * j) sender:v15 observerObserver:observerCopy observerCounts:v6];
              }

              v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v20);
          }

          v12 = v23;
        }

        v13 = [v23 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v13);
    }

    [(_CDObservationCenter *)v12 _removeObserver:v25 observerObserver:selfCopy, v6];
  }
}

- (void)_removeObserver:(void *)observer name:(void *)name sender:(int)sender observerObserver:(void *)observerObserver observerCounts:
{
  v26 = a2;
  observerCopy = observer;
  nameCopy = name;
  observerObserverCopy = observerObserver;
  v14 = observerObserverCopy;
  if (self)
  {
    v15 = observerObserverCopy;
    if (!observerObserverCopy)
    {
      v15 = objc_opt_new();
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v17 = 8;
    if (sender)
    {
      v17 = 16;
    }

    v18 = *&selfCopy[v17];
    v19 = [v18 objectForKey:nameCopy];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 objectForKey:observerCopy];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 count];
        [v22 removeObjectForKey:v26];
        if ((sender & 1) == 0 && [v22 count] != v23)
        {
          v24 = [selfCopy observerCountOnName:observerCopy];
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
          [v15 setObject:v25 forKey:observerCopy];
        }

        if (![v22 count])
        {
          [v20 removeObjectForKey:observerCopy];
        }
      }

      if (![v20 count])
      {
        [v18 removeObjectForKey:nameCopy];
      }
    }

    objc_sync_exit(selfCopy);
    if (!v14)
    {
      [(_CDObservationCenter *)selfCopy _postObserverChangesNotificationWithObserverCounts:v15];
    }
  }

  else
  {
    v15 = observerObserverCopy;
  }
}

- (void)_removeObserver:(void *)observer name:(int)name observerObserver:
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  observerCopy = observer;
  if (self)
  {
    v9 = objc_opt_new();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = 8;
    if (name)
    {
      v11 = 16;
    }

    v12 = *&selfCopy[v11];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v12;
    keyEnumerator = [v12 keyEnumerator];
    allObjects = [keyEnumerator allObjects];
    v15 = [allObjects copy];

    v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v16)
    {
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v21 + 1) + 8 * v18);
          [(_CDObservationCenter *)selfCopy _removeObserver:v7 name:observerCopy sender:v19 observerObserver:name observerCounts:v9];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [(_CDObservationCenter *)v15 _removeObserver:v20 observerObserver:selfCopy, v9];
  }
}

- (void)addObserver:(id)observer name:(id)name sender:(id)sender queue:(id)queue usingSelector:(SEL)selector
{
  queueCopy = queue;
  senderCopy = sender;
  nameCopy = name;
  observerCopy = observer;
  v16 = NSStringFromSelector(selector);
  [(_CDObservationCenter *)self _addObserver:observerCopy name:nameCopy sender:senderCopy queue:queueCopy observerObserver:0 usingCall:v16];
}

- (void)addObserver:(id)observer name:(id)name sender:(id)sender queue:(id)queue usingBlock:(id)block
{
  queueCopy = queue;
  senderCopy = sender;
  nameCopy = name;
  observerCopy = observer;
  v16 = MEMORY[0x193B00C50](block);
  [(_CDObservationCenter *)self _addObserver:observerCopy name:nameCopy sender:senderCopy queue:queueCopy observerObserver:0 usingCall:v16];
}

- (void)addObserverChangesObserver:(id)observer onName:(id)name queue:(id)queue usingSelector:(SEL)selector
{
  observerCopy = observer;
  nameCopy = name;
  queueCopy = queue;
  v12 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  if (v12)
  {
    v13 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v12];
    [v13 setSelector:selector];
    [v13 setTarget:observerCopy];
    [v13 setArgument:&nameCopy atIndex:2];
    v14 = nameCopy;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78___CDObservationCenter_addObserverChangesObserver_onName_queue_usingSelector___block_invoke;
    v16[3] = &unk_1E7368390;
    v17 = v13;
    v15 = v13;
    [(_CDObservationCenter *)self addObserverChangesObserver:observerCopy onName:v14 queue:queueCopy usingBlock:v16];
  }
}

- (void)addObserverChangesObserver:(id)observer onName:(id)name queue:(id)queue usingBlock:(id)block
{
  observerCopy = observer;
  nameCopy = name;
  queueCopy = queue;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75___CDObservationCenter_addObserverChangesObserver_onName_queue_usingBlock___block_invoke;
  v18[3] = &unk_1E73683B8;
  v15 = blockCopy;
  v20 = v15;
  v16 = nameCopy;
  v19 = v16;
  v17 = MEMORY[0x193B00C50](v18);
  [(_CDObservationCenter *)selfCopy _addObserver:observerCopy name:v16 sender:selfCopy queue:queueCopy observerObserver:1 usingCall:v17];

  objc_sync_exit(selfCopy);
}

- (unint64_t)observerCountOnName:(id)name
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = selfCopy->_senderToNotificationObservers;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  keyEnumerator = [(NSMapTable *)v6 keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v9 = 0;
  v10 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = [(_CDObservationCenter *)selfCopy _observerToEntriesForSender:v13 name:nameCopy observerObserver:0 shouldCreate:0];
        v15 = v14;
        if (v14)
        {
          v9 += [v14 count];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
  return v9;
}

- (id)_notificationToObserverEntriesForSender:(int)sender observerObserver:(int)observer shouldCreate:
{
  null = a2;
  if (self)
  {
    v8 = 8;
    if (sender)
    {
      v8 = 16;
    }

    v9 = *(self + v8);
    if (!null)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v10 = [v9 objectForKey:null];
    if (!v10 && observer)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      OUTLINED_FUNCTION_1_9(strongToStrongObjectsMapTable);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_observerToEntriesForSender:(void *)sender name:(int)name observerObserver:(int)observer shouldCreate:
{
  senderCopy = sender;
  if (self)
  {
    v10 = [(_CDObservationCenter *)self _notificationToObserverEntriesForSender:a2 observerObserver:name shouldCreate:observer];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKey:senderCopy];
      if (!v12 && observer)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        OUTLINED_FUNCTION_1_9(weakToStrongObjectsMapTable);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_postObserverChangesNotificationWithObserverCounts:(void *)counts
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (counts && [v3 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v5 objectForKeyedSubscript:v10];
          unsignedIntegerValue = [v11 unsignedIntegerValue];
          v20 = @"observerCount";
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
          v21 = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
          [(_CDObservationCenter *)counts _postNotificationName:v10 userInfo:v14 sender:counts observerObserver:1];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v7);
    }

    v4 = v15;
  }
}

- (void)_removeObserver:(void *)a3 observerObserver:(void *)a4 .cold.1(void *a1, void *a2, void *a3, void *a4)
{
  objc_sync_exit(a3);

  if ([a4 count])
  {
    [(_CDObservationCenter *)a3 _postObserverChangesNotificationWithObserverCounts:a4];
  }
}

@end