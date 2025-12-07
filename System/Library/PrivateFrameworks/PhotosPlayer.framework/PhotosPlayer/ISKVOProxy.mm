@interface ISKVOProxy
- (ISKVOProxy)initWithTarget:(id)target keyPaths:(id)paths identifier:(id)identifier delegate:(id)delegate;
- (ISKVOProxyDelegate)delegate;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startObservingTarget;
- (void)stopObservingTarget;
@end

@implementation ISKVOProxy

- (ISKVOProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_keyPaths;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [self->_target removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = ISKVOProxy;
  [(ISKVOProxy *)&v8 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  pathCopy = path;
  delegate = [(ISKVOProxy *)self delegate];
  [delegate observeChangeforKVOProxyIdentifier:self->_identifier keyPath:pathCopy change:changeCopy];
}

- (void)stopObservingTarget
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_keyPaths;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [self->_target removeObserver:self forKeyPath:{*(*(&v10 + 1) + 8 * v7++), v10}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  keyPaths = self->_keyPaths;
  self->_keyPaths = 0;

  target = self->_target;
  self->_target = 0;
}

- (void)startObservingTarget
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_keyPaths;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [self->_target addObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v7++) options:5 context:{0, v8}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (ISKVOProxy)initWithTarget:(id)target keyPaths:(id)paths identifier:(id)identifier delegate:(id)delegate
{
  targetCopy = target;
  pathsCopy = paths;
  identifierCopy = identifier;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = ISKVOProxy;
  v15 = [(ISKVOProxy *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_delegate, delegateCopy);
    objc_storeStrong(&v16->_target, target);
    v17 = [pathsCopy copy];
    keyPaths = v16->_keyPaths;
    v16->_keyPaths = v17;

    v19 = [identifierCopy copy];
    identifier = v16->_identifier;
    v16->_identifier = v19;
  }

  return v16;
}

@end