@interface GTReplayerOperationBatch
- (GTReplayerOperationBatch)initWithRequestID:(unint64_t)d;
- (void)finish:(id)finish;
- (void)flush:(id)flush;
@end

@implementation GTReplayerOperationBatch

- (void)finish:(id)finish
{
  v18 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  if ([(NSMutableArray *)self->_operations count])
  {
    lastObject = [(NSMutableArray *)self->_operations lastObject];
    uuid = self->_uuid;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __35__GTReplayerOperationBatch_finish___block_invoke;
    v16[3] = &__block_descriptor_40_e5_v8__0l;
    v16[4] = uuid;
    [lastObject setCompletionBlock:v16];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_operations;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [finishCopy addOperation:{*(*(&v12 + 1) + 8 * v11++), v12}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v9);
    }

    [(NSMutableArray *)self->_operations removeAllObjects];
  }

  else
  {
    GTCoreOperationControl_removeOperation(self->_uuid);
  }
}

- (void)flush:(id)flush
{
  v15 = *MEMORY[0x277D85DE8];
  flushCopy = flush;
  if ([(NSMutableArray *)self->_operations count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_operations;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [flushCopy addOperation:{*(*(&v10 + 1) + 8 * v9++), v10}];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_operations removeAllObjects];
  }
}

- (GTReplayerOperationBatch)initWithRequestID:(unint64_t)d
{
  v9.receiver = self;
  v9.super_class = GTReplayerOperationBatch;
  v4 = [(GTReplayerOperationBatch *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_uuid = d;
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
    operations = v5->_operations;
    v5->_operations = v6;

    GTCoreOperationControl_addOperation(d);
  }

  return v5;
}

@end