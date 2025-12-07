@interface GKEventEmitter
+ (id)eventEmitterForProtocols:(id)protocols shouldQueue:(BOOL)queue;
- (BOOL)listenerRegisteredForSelector:(SEL)selector;
- (GKEventEmitter)initWithSupportedProtocols:(id)protocols shouldQueue:(BOOL)queue;
- (id)invocationForProtocol:(id)protocol selector:(SEL)selector;
- (id)methodSignatureForProtocol:(id)protocol selector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dispatchQueuedEventsToListener:(id)listener;
- (void)forwardInvocation:(id)invocation;
- (void)registerListener:(id)listener;
@end

@implementation GKEventEmitter

+ (id)eventEmitterForProtocols:(id)protocols shouldQueue:(BOOL)queue
{
  queueCopy = queue;
  protocolsCopy = protocols;
  v6 = [[GKEventEmitter alloc] initWithSupportedProtocols:protocolsCopy shouldQueue:queueCopy];

  return v6;
}

- (GKEventEmitter)initWithSupportedProtocols:(id)protocols shouldQueue:(BOOL)queue
{
  protocolsCopy = protocols;
  v12.receiver = self;
  v12.super_class = GKEventEmitter;
  v7 = [(GKEventEmitter *)&v12 init];
  if (v7)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(GKEventEmitter *)v7 setListeners:weakObjectsHashTable];

    v9 = [MEMORY[0x277CBEB18] arrayWithArray:protocolsCopy];
    [(GKEventEmitter *)v7 setSupportedProtocols:v9];

    array = [MEMORY[0x277CBEB18] array];
    [(GKEventEmitter *)v7 setQueuedEvents:array];

    v7->_shouldQueue = queue;
  }

  return v7;
}

- (void)dispatchQueuedEventsToListener:(id)listener
{
  listenerCopy = listener;
  if ([(NSMutableArray *)self->_queuedEvents count])
  {
    v4 = [(NSMutableArray *)self->_queuedEvents objectAtIndex:0];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      while (1)
      {
        [v5 selector];
        if (objc_opt_respondsToSelector())
        {
          [v5 invokeWithTarget:listenerCopy];
          [(NSMutableArray *)self->_queuedEvents removeObjectAtIndex:v6];
        }

        else
        {
          ++v6;
        }

        if (v6 >= [(NSMutableArray *)self->_queuedEvents count])
        {
          break;
        }

        v7 = [(NSMutableArray *)self->_queuedEvents objectAtIndex:v6];

        v5 = v7;
        if (!v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

LABEL_11:
}

- (void)registerListener:(id)listener
{
  v15 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  if (![(NSHashTable *)self->_listeners containsObject:listenerCopy])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_supportedProtocols;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([listenerCopy conformsToProtocol:{*(*(&v10 + 1) + 8 * i), v10}])
          {
            [(NSHashTable *)self->_listeners addObject:listenerCopy];
            [(GKEventEmitter *)self dispatchQueuedEventsToListener:listenerCopy];
            goto LABEL_12;
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (id)methodSignatureForProtocol:(id)protocol selector:(SEL)selector
{
  protocolCopy = protocol;
  MethodDescription = protocol_getMethodDescription(protocolCopy, selector, 1, 1);
  types = MethodDescription.types;
  if (MethodDescription.name || (v8 = protocol_getMethodDescription(protocolCopy, selector, 0, 1), types = v8.types, v8.name))
  {
    v9 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:types];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)invocationForProtocol:(id)protocol selector:(SEL)selector
{
  v5 = [(GKEventEmitter *)self methodSignatureForProtocol:protocol selector:?];
  v6 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v5];
  [v6 setSelector:selector];

  return v6;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = GKEventEmitter;
  v5 = [(GKEventEmitter *)&v17 methodSignatureForSelector:?];
  if (!v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_supportedProtocols;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(GKEventEmitter *)self methodSignatureForProtocol:*(*(&v13 + 1) + 8 * i) selector:selector, v13];
          if (v11)
          {
            v5 = v11;
            goto LABEL_12;
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_12:
  }

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  v19 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  [invocationCopy selector];
  listeners = [(GKEventEmitter *)self listeners];
  v6 = [listeners copy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v8)
  {

LABEL_13:
    if (self->_shouldQueue)
    {
      [invocationCopy retainArguments];
      [(NSMutableArray *)self->_queuedEvents addObject:invocationCopy];
    }

    goto LABEL_15;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v15;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v14 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        [invocationCopy invokeWithTarget:{v13, v14}];
        v10 = 1;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_15:
}

- (BOOL)listenerRegisteredForSelector:(SEL)selector
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_listeners;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_opt_respondsToSelector())
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

@end