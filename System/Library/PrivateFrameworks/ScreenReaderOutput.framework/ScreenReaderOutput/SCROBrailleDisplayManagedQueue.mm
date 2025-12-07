@interface SCROBrailleDisplayManagedQueue
- (SCROBrailleDisplayManagedQueue)init;
- (id)_queueForState:(int)state createQueue:(BOOL)queue;
- (id)primaryDisplay;
- (int)stateForDisplay:(id)display;
- (unint64_t)displayCountIncludingDisconnectedDisplays:(BOOL)displays;
- (void)_fillActiveBrailleDisplayQueue;
- (void)addDisplay:(id)display withState:(int)state;
- (void)dealloc;
- (void)removeDisplay:(id)display;
- (void)setActiveQueueMaximumSize:(unint64_t)size;
- (void)setPrimaryDisplay:(id)display;
- (void)setState:(int)state forDisplay:(id)display;
@end

@implementation SCROBrailleDisplayManagedQueue

- (SCROBrailleDisplayManagedQueue)init
{
  v8.receiver = self;
  v8.super_class = SCROBrailleDisplayManagedQueue;
  v2 = [(SCROBrailleDisplayManagedQueue *)&v8 init];
  if (v2)
  {
    v2->_displayQueueDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    v2->_queueStateDict = CFDictionaryCreateMutable(0, 0, 0, 0);
    v3 = objc_alloc_init(MEMORY[0x277D4B818]);
    stateQueueMap = v2->_stateQueueMap;
    v2->_stateQueueMap = v3;

    v5 = objc_alloc_init(MEMORY[0x277D4B818]);
    tokenDisplayMap = v2->_tokenDisplayMap;
    v2->_tokenDisplayMap = v5;

    v2->_maxActiveQueueSize = 1;
  }

  return v2;
}

- (void)dealloc
{
  displayQueueDict = self->_displayQueueDict;
  if (displayQueueDict)
  {
    CFRelease(displayQueueDict);
  }

  queueStateDict = self->_queueStateDict;
  if (queueStateDict)
  {
    CFRelease(queueStateDict);
  }

  v5.receiver = self;
  v5.super_class = SCROBrailleDisplayManagedQueue;
  [(SCROBrailleDisplayManagedQueue *)&v5 dealloc];
}

- (id)_queueForState:(int)state createQueue:(BOOL)queue
{
  queueCopy = queue;
  stateCopy = state;
  v7 = [(SCRCIndexMap *)self->_stateQueueMap objectForIndex:state];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !queueCopy;
  }

  if (!v8)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(SCRCIndexMap *)self->_stateQueueMap setObject:v7 forIndex:stateCopy];
    queueStateDict = self->_queueStateDict;
    if (queueStateDict)
    {
      CFDictionarySetValue(queueStateDict, v7, stateCopy);
    }
  }

  return v7;
}

- (void)addDisplay:(id)display withState:(int)state
{
  v4 = *&state;
  key = display;
  token = [key token];
  if (key)
  {
    if (v4 <= 4)
    {
      v7 = token;
      v8 = [(SCRCIndexMap *)self->_tokenDisplayMap objectForIndex:token];

      if (!v8)
      {
        v9 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:v4 createQueue:1];
        if (v9)
        {
          [(SCRCIndexMap *)self->_tokenDisplayMap setObject:key forIndex:v7];
          if (v4 == 1)
          {
            if ([v9 count] >= self->_maxActiveQueueSize)
            {
              v14 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:2 createQueue:1];

              [v14 addObject:key];
              v9 = v14;
            }

            else
            {
              lastObject = [v9 lastObject];
              v11 = lastObject;
              if (lastObject && (v12 = [lastObject token], v12 == kSCROSystemVirtualBrailleDisplayToken))
              {
                [v9 insertObject:key atIndex:{objc_msgSend(v9, "count") - 1}];
              }

              else
              {
                [v9 addObject:key];
              }
            }

            displayQueueDict = self->_displayQueueDict;
            if (displayQueueDict)
            {
              CFDictionarySetValue(displayQueueDict, key, v9);
            }
          }

          else
          {
            [v9 addObject:key];
            v13 = self->_displayQueueDict;
            if (v13)
            {
              CFDictionarySetValue(v13, key, v9);
            }

            if (v4 == 2)
            {
              [(SCROBrailleDisplayManagedQueue *)self _fillActiveBrailleDisplayQueue];
            }
          }
        }
      }
    }
  }

  MEMORY[0x2821F96F8](token);
}

- (void)removeDisplay:(id)display
{
  displayCopy = display;
  if (displayCopy)
  {
    key = displayCopy;
    token = [displayCopy token];
    v6 = [(SCRCIndexMap *)self->_tokenDisplayMap objectForIndex:token];
    if (v6 == key)
    {
      displayQueueDict = self->_displayQueueDict;
      if (displayQueueDict)
      {
        v8 = CFDictionaryGetValue(displayQueueDict, key);
        p_queueStateDict = &self->_queueStateDict;
        queueStateDict = self->_queueStateDict;
        Value = 5;
        if (queueStateDict && v8)
        {
          Value = CFDictionaryGetValue(queueStateDict, v8);
        }
      }

      else
      {
        v8 = 0;
        p_queueStateDict = &self->_queueStateDict;
        Value = 5;
      }

      [(SCRCIndexMap *)self->_tokenDisplayMap removeObjectForIndex:token];
      [v8 removeObjectIdenticalTo:key];
      v12 = self->_displayQueueDict;
      if (v12)
      {
        CFDictionaryRemoveValue(v12, key);
      }

      if (![v8 count])
      {
        if (*p_queueStateDict)
        {
          CFDictionaryRemoveValue(*p_queueStateDict, v8);
        }

        [(SCRCIndexMap *)self->_stateQueueMap removeObjectForIndex:Value];
      }

      if (Value == 1)
      {
        [(SCROBrailleDisplayManagedQueue *)self _fillActiveBrailleDisplayQueue];
      }
    }

    displayCopy = key;
  }
}

- (void)_fillActiveBrailleDisplayQueue
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:2 createQueue:0];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v6 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:1 createQueue:1];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 count];
      maxActiveQueueSize = self->_maxActiveQueueSize;
      v10 = maxActiveQueueSize > v8;
      v11 = maxActiveQueueSize - v8;
      if (v10)
      {
        v12 = v8;
        if (v11 >= v5)
        {
          v13 = v5;
        }

        else
        {
          v13 = v11;
        }

        lastObject = [v7 lastObject];
        v15 = [v3 subarrayWithRange:{0, v13}];
        [v7 addObjectsFromArray:v15];
        if (lastObject)
        {
          token = [lastObject token];
          if (token == kSCROSystemVirtualBrailleDisplayToken)
          {
            [v7 addObject:lastObject];
            [v7 removeObjectAtIndex:v12 - 1];
          }
        }

        [v3 removeObjectsInRange:{0, v13}];
        if (![v3 count])
        {
          queueStateDict = self->_queueStateDict;
          if (queueStateDict)
          {
            CFDictionaryRemoveValue(queueStateDict, v3);
          }

          [(SCRCIndexMap *)self->_stateQueueMap removeObjectForIndex:2];
        }

        if (self->_displayQueueDict)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v18 = v15;
          v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v24;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v24 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                CFDictionarySetValue(self->_displayQueueDict, *(*(&v23 + 1) + 8 * i), v7);
              }

              v20 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
            }

            while (v20);
          }
        }
      }
    }
  }
}

- (void)setState:(int)state forDisplay:(id)display
{
  v4 = *&state;
  v22 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  v7 = _SCROD_LOG(displayCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109378;
    v19[1] = v4;
    v20 = 2114;
    v21 = displayCopy;
    _os_log_impl(&dword_26490B000, v7, OS_LOG_TYPE_DEFAULT, "Set state: %d for display %{public}@", v19, 0x12u);
  }

  if (v4 <= 4 && displayCopy)
  {
    displayQueueDict = self->_displayQueueDict;
    if (displayQueueDict)
    {
      v9 = CFDictionaryGetValue(displayQueueDict, displayCopy);
      if (v9)
      {
        queueStateDict = self->_queueStateDict;
        v11 = queueStateDict ? CFDictionaryGetValue(queueStateDict, v9) : 5;
        if (v11 != v4)
        {
          v12 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:v4 createQueue:1];
          if (v12)
          {
            v13 = v12;
            if (v4 == 1)
            {
              if ([v12 count] >= self->_maxActiveQueueSize)
              {
                v17 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:2 createQueue:1];

                [v17 addObject:displayCopy];
                v13 = v17;
              }

              else
              {
                lastObject = [v13 lastObject];
                v15 = lastObject;
                if (lastObject && (v16 = [lastObject token], v16 == kSCROSystemVirtualBrailleDisplayToken))
                {
                  [v13 insertObject:displayCopy atIndex:{objc_msgSend(v13, "count") - 1}];
                }

                else
                {
                  [v13 addObject:displayCopy];
                }
              }
            }

            else
            {
              [v12 addObject:displayCopy];
            }

            v18 = self->_displayQueueDict;
            if (v18)
            {
              CFDictionarySetValue(v18, displayCopy, v13);
            }

            [v9 removeObjectIdenticalTo:displayCopy];
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }
}

- (int)stateForDisplay:(id)display
{
  displayCopy = display;
  displayQueueDict = self->_displayQueueDict;
  if (!displayQueueDict)
  {
    v6 = 0;
LABEL_6:
    Value = 5;
    goto LABEL_7;
  }

  v6 = CFDictionaryGetValue(displayQueueDict, displayCopy);
  if (!v6)
  {
    goto LABEL_6;
  }

  queueStateDict = self->_queueStateDict;
  if (!queueStateDict)
  {
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(queueStateDict, v6);
LABEL_7:

  return Value;
}

- (unint64_t)displayCountIncludingDisconnectedDisplays:(BOOL)displays
{
  displayQueueDict = self->_displayQueueDict;
  if (!displayQueueDict)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(displayQueueDict);
  if (!displays)
  {
    disconnectedDisplays = [(SCROBrailleDisplayManagedQueue *)self disconnectedDisplays];
    Count -= [disconnectedDisplays count];
  }

  return Count;
}

- (id)primaryDisplay
{
  v2 = [(SCRCIndexMap *)self->_stateQueueMap objectForIndex:1];
  firstObject = [v2 firstObject];

  return firstObject;
}

- (void)setPrimaryDisplay:(id)display
{
  displayCopy = display;
  v4 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:1 createQueue:0];
  if ([v4 count])
  {
    v5 = [v4 indexOfObjectIdenticalTo:displayCopy];
    if (v5)
    {
      v6 = v5;
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = [v4 objectAtIndex:v5];
        [v4 insertObject:v7 atIndex:0];
        [v4 removeObjectAtIndex:v6 + 1];
      }
    }
  }
}

- (void)setActiveQueueMaximumSize:(unint64_t)size
{
  maxActiveQueueSize = self->_maxActiveQueueSize;
  self->_maxActiveQueueSize = size;
  if (maxActiveQueueSize >= size)
  {
    if (maxActiveQueueSize > size)
    {
      v13 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:1 createQueue:0];
      v5 = [v13 count];
      if (v5 > self->_maxActiveQueueSize)
      {
        v6 = v5;
        v7 = [(SCROBrailleDisplayManagedQueue *)self _queueForState:2 createQueue:1];
        v8 = self->_maxActiveQueueSize;
        v9 = v6 - v8;
        lastObject = [v13 lastObject];
        v11 = lastObject;
        if (v8 && lastObject)
        {
          token = [lastObject token];
          v8 -= token == kSCROSystemVirtualBrailleDisplayToken;
        }

        [v7 replaceObjectsInRange:0 withObjectsFromArray:0 range:{v13, v8, v9}];
        [v13 removeObjectsInRange:{v8, v9}];
      }
    }
  }

  else
  {

    [(SCROBrailleDisplayManagedQueue *)self _fillActiveBrailleDisplayQueue];
  }
}

@end