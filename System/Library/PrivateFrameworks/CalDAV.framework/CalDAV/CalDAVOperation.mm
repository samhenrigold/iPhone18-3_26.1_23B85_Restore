@interface CalDAVOperation
- (CalDAVOperation)init;
- (CalDAVOperation)initWithPrincipal:(id)principal;
- (void)_tearDownAllTaskGroupsWithBlock:(id)block;
- (void)bailWithError:(id)error;
- (void)cancelTaskGroup;
- (void)dealloc;
@end

@implementation CalDAVOperation

- (CalDAVOperation)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CalDAVOperation.m" lineNumber:23 description:@"You must call initWithPrincipal:"];

  return 0;
}

- (CalDAVOperation)initWithPrincipal:(id)principal
{
  principalCopy = principal;
  taskManager = [principalCopy taskManager];
  v11.receiver = self;
  v11.super_class = CalDAVOperation;
  v7 = [(CoreDAVTaskGroup *)&v11 initWithAccountInfoProvider:principalCopy taskManager:taskManager];

  if (v7)
  {
    objc_storeStrong(&v7->_principal, principal);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    outstandingTaskGroups = v7->_outstandingTaskGroups;
    v7->_outstandingTaskGroups = v8;
  }

  return v7;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:a3 file:@"CalDAVOperation.m" lineNumber:37 description:{@"We should never finish a task group with an existing task group.  I have %@", *self}];
}

- (void)_tearDownAllTaskGroupsWithBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!self->_isCancellingTaskGroups)
  {
    self->_isCancellingTaskGroups = 1;
    v5 = [(NSMutableSet *)self->_outstandingTaskGroups copy];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          blockCopy[2](blockCopy, v11);
          [v11 setDelegate:{0, v12}];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)cancelTaskGroup
{
  [(CalDAVOperation *)self _tearDownAllTaskGroupsWithBlock:&__block_literal_global_2];
  v3.receiver = self;
  v3.super_class = CalDAVOperation;
  [(CoreDAVTaskGroup *)&v3 cancelTaskGroup];
}

- (void)bailWithError:(id)error
{
  errorCopy = error;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__CalDAVOperation_bailWithError___block_invoke;
  v7[3] = &unk_278D66A40;
  v8 = errorCopy;
  v5 = errorCopy;
  [(CalDAVOperation *)self _tearDownAllTaskGroupsWithBlock:v7];
  v6.receiver = self;
  v6.super_class = CalDAVOperation;
  [(CoreDAVTaskGroup *)&v6 bailWithError:v5];
}

@end