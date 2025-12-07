@interface DriverManager
+ (id)sharedManager;
- (DriverManager)initWithSwiftManager:(id)manager;
- (id)driverApprovalStatesForThirdPartyApp:(id)app;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation DriverManager

- (DriverManager)initWithSwiftManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = DriverManager;
  v6 = [(DriverManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_swiftManager, manager);
    array = [MEMORY[0x277CBEB18] array];
    observers = v7->_observers;
    v7->_observers = array;
  }

  return v7;
}

+ (id)sharedManager
{
  v2 = [DriverManager alloc];
  v3 = +[_SwiftDriverManager sharedManager];
  v4 = [(DriverManager *)v2 initWithSwiftManager:v3];

  return v4;
}

- (void)addObserver:(id)observer
{
  v16 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = [[ProxyDriverManagerObserver alloc] initWithObserver:observerCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_observers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (*(*(*(&v11 + 1) + 8 * v10) + 8) == observerCopy)
        {

          goto LABEL_11;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  [(_SwiftDriverManager *)self->_swiftManager addObserver:v5, v11];
  [(NSMutableArray *)self->_observers addObject:v5];
LABEL_11:
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if ([(NSMutableArray *)self->_observers count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [(NSMutableArray *)self->_observers objectAtIndex:v4];
      if (v5[1] == observerCopy)
      {
        break;
      }

      if (++v4 >= [(NSMutableArray *)self->_observers count])
      {
        goto LABEL_7;
      }
    }

    [(NSMutableArray *)self->_observers removeObjectAtIndex:v4];
    [(_SwiftDriverManager *)self->_swiftManager removeObserver:v5];
  }

LABEL_7:
}

- (id)driverApprovalStatesForThirdPartyApp:(id)app
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(_SwiftDriverManager *)self->_swiftManager driverApprovalStatesForThirdPartyApp:app];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [DriverApprovalState alloc];
        v12 = [(DriverApprovalState *)v11 initWithSwiftDriverApprovalState:v10, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end