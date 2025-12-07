@interface LACDTOEventBus
- (LACDTOEventBus)init;
- (void)dispatchEvent:(id)event sender:(id)sender;
@end

@implementation LACDTOEventBus

- (LACDTOEventBus)init
{
  v6.receiver = self;
  v6.super_class = LACDTOEventBus;
  v2 = [(LACDTOEventBus *)&v6 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    eventHandlers = v2->_eventHandlers;
    v2->_eventHandlers = weakObjectsHashTable;
  }

  return v2;
}

- (void)dispatchEvent:(id)event sender:(id)sender
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  senderCopy = sender;
  v8 = LACLogDTOEvent(senderCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(LACDTOEventBus *)eventCopy dispatchEvent:senderCopy sender:v8];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSHashTable *)self->_eventHandlers allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (v14 != senderCopy)
        {
          [v14 handleEvent:eventCopy sender:senderCopy];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)dispatchEvent:(os_log_t)log sender:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1B0233000, log, OS_LOG_TYPE_DEBUG, "Will dispatch event: %@ from: %@", &v3, 0x16u);
}

@end