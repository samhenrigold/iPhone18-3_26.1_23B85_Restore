@interface NSSQLCoreDispatchManager
- (NSSQLCoreDispatchManager)initWithSQLCore:(id)core seedConnection:(id)connection;
- (void)dealloc;
- (void)disconnectAllConnections;
- (void)enumerateAvailableConnectionsWithBlock:(void *)result;
- (void)routeStoreRequest:(void *)result;
- (void)scheduleBarrierBlock:(id)block;
- (void)setExclusiveLockingMode:(BOOL)mode;
@end

@implementation NSSQLCoreDispatchManager

- (void)disconnectAllConnections
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    v1 = result[2];
    result = [v1 countByEnumeratingWithState:&v5 objects:v9 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v6;
      do
      {
        v4 = 0;
        do
        {
          if (*v6 != v3)
          {
            objc_enumerationMutation(v1);
          }

          [*(*(&v5 + 1) + 8 * v4) disconnectAllConnections];
          v4 = (v4 + 1);
        }

        while (v2 != v4);
        result = [v1 countByEnumeratingWithState:&v5 objects:v9 count:16];
        v2 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)dealloc
{
  self->_sqlCore = 0;

  v3.receiver = self;
  v3.super_class = NSSQLCoreDispatchManager;
  [(NSSQLCoreDispatchManager *)&v3 dealloc];
}

- (NSSQLCoreDispatchManager)initWithSQLCore:(id)core seedConnection:(id)connection
{
  v10.receiver = self;
  v10.super_class = NSSQLCoreDispatchManager;
  v6 = [(NSSQLCoreDispatchManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_sqlCore = core;
    v6->_connectionManagers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [(NSSQLConnectionManager *)[NSSQLDefaultConnectionManager alloc] initWithSQLCore:core seedConnection:connection];
    if (v8)
    {
      [(NSMutableArray *)v7->_connectionManagers addObject:v8];
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (void)routeStoreRequest:(void *)result
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = result[2];
    result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v9;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (v7 && ((*(v7[2] + 16))() & 1) != 0)
          {
            return [v7 handleStoreRequest:a2];
          }

          v6 = (v6 + 1);
        }

        while (v4 != v6);
        result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        v4 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (void)setExclusiveLockingMode:(BOOL)mode
{
  modeCopy = mode;
  if ([(NSMutableArray *)self->_connectionManagers count]== 1)
  {
    firstObject = [(NSMutableArray *)self->_connectionManagers firstObject];

    [firstObject setExclusiveLockingMode:modeCopy];
  }
}

- (void)scheduleBarrierBlock:(id)block
{
  firstObject = [(NSMutableArray *)self->_connectionManagers firstObject];

  [firstObject scheduleBarrierBlock:block];
}

- (void)enumerateAvailableConnectionsWithBlock:(void *)result
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v3 = result[2];
    result = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v7 + 1) + 8 * v6) enumerateAvailableConnectionsWithBlock:a2];
          v6 = (v6 + 1);
        }

        while (v4 != v6);
        result = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

@end