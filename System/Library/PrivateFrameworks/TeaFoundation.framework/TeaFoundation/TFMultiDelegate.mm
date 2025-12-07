@interface TFMultiDelegate
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (TFMultiDelegate)initWithDelegate:(id)delegate delegateProtocol:(id)protocol;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)addDelegate:(id)delegate;
- (void)forwardInvocation:(id)invocation;
- (void)removeDelegate:(id)delegate;
- (void)replaceDelegate:(id)delegate withDelegate:(id)withDelegate;
@end

@implementation TFMultiDelegate

- (TFMultiDelegate)initWithDelegate:(id)delegate delegateProtocol:(id)protocol
{
  delegateCopy = delegate;
  protocolCopy = protocol;
  v12.receiver = self;
  v12.super_class = TFMultiDelegate;
  v8 = [(TFMultiDelegate *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    children = v8->_children;
    v8->_children = v9;

    [(NSHashTable *)v8->_children addObject:delegateCopy];
    objc_storeStrong(&v8->_delegateProtocol, protocol);
  }

  return v8;
}

- (void)addDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
    children = [(TFMultiDelegate *)self children];
    [children addObject:delegateCopy];
  }
}

- (void)removeDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
    children = [(TFMultiDelegate *)self children];
    [children removeObject:delegateCopy];
  }
}

- (void)replaceDelegate:(id)delegate withDelegate:(id)withDelegate
{
  if (delegate != withDelegate)
  {
    withDelegateCopy = withDelegate;
    [(TFMultiDelegate *)self removeDelegate:delegate];
    [(TFMultiDelegate *)self addDelegate:withDelegateCopy];
  }
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v8.receiver = self;
  v8.super_class = TFMultiDelegate;
  if ([(TFMultiDelegate *)&v8 conformsToProtocol:protocolCopy])
  {
    v5 = 1;
  }

  else if (protocolCopy)
  {
    delegateProtocol = [(TFMultiDelegate *)self delegateProtocol];
    v5 = delegateProtocol == protocolCopy;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = TFMultiDelegate;
  if ([(TFMultiDelegate *)&v15 respondsToSelector:?])
  {
    return 1;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  children = [(TFMultiDelegate *)self children];
  v6 = [children countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(children);
        }

        if (*(*(&v11 + 1) + 8 * i) && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v4 = 1;
          goto LABEL_14;
        }
      }

      v7 = [children countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v4 = 0;
LABEL_14:

  return v4;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = TFMultiDelegate;
  v5 = [(TFMultiDelegate *)&v16 methodSignatureForSelector:?];
  if (!v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    children = [(TFMultiDelegate *)self children];
    v5 = [children countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v5)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(children);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if (v9)
          {
            v10 = [v9 methodSignatureForSelector:selector];
            if (v10)
            {
              v5 = v10;

              children = v5;
              goto LABEL_13;
            }
          }
        }

        v5 = [children countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  v16 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  children = [(TFMultiDelegate *)self children];
  v6 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(children);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (v10)
        {
          [invocationCopy selector];
          if (objc_opt_respondsToSelector())
          {
            [invocationCopy invokeWithTarget:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end