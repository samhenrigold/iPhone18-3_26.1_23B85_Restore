@interface _SAMetricsSendCompletionsProxy
- (_SAMetricsSendCompletionsProxy)init;
- (void)addBlock:(id)block;
- (void)dealloc;
- (void)dispatchBlocksWithResult:(int64_t)result error:(id)error;
@end

@implementation _SAMetricsSendCompletionsProxy

- (void)dispatchBlocksWithResult:(int64_t)result error:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([(NSMutableArray *)self->_blocks count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_blocks;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)self->_blocks removeAllObjects];
  }
}

- (void)addBlock:(id)block
{
  if (block)
  {
    blocks = self->_blocks;
    v5 = [block copy];
    v4 = MEMORY[0x26D5E5DB0]();
    [(NSMutableArray *)blocks addObject:v4];
  }
}

- (void)dealloc
{
  [(_SAMetricsSendCompletionsProxy *)self dispatchBlocksWithResult:2 error:0];
  v3.receiver = self;
  v3.super_class = _SAMetricsSendCompletionsProxy;
  [(_SAMetricsSendCompletionsProxy *)&v3 dealloc];
}

- (_SAMetricsSendCompletionsProxy)init
{
  v6.receiver = self;
  v6.super_class = _SAMetricsSendCompletionsProxy;
  v2 = [(_SAMetricsSendCompletionsProxy *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    blocks = v2->_blocks;
    v2->_blocks = v3;
  }

  return v2;
}

@end