@interface STKAlertSessionEventQueue
- (STKAlertSessionEventQueue)init;
- (id)acquireEventQueueHaltingAssertionForReason:(id)reason;
- (void)_queue_dequeueEventsIfPossible;
- (void)_queue_enqueueEvent:(id)event;
- (void)enqueue:(id)enqueue;
@end

@implementation STKAlertSessionEventQueue

- (STKAlertSessionEventQueue)init
{
  v6.receiver = self;
  v6.super_class = STKAlertSessionEventQueue;
  v2 = [(STKAlertSessionEventQueue *)&v6 init];
  if (v2)
  {
    v3 = BSDispatchQueueCreateWithQualityOfService();
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (id)acquireEventQueueHaltingAssertionForReason:(id)reason
{
  v4 = MEMORY[0x277CF0CE8];
  reasonCopy = reason;
  v6 = [v4 alloc];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__STKAlertSessionEventQueue_acquireEventQueueHaltingAssertionForReason___block_invoke;
  v15[3] = &unk_279B4C670;
  v15[4] = self;
  v7 = [v6 initWithIdentifier:@"stk.telephony.eventQueueHaltingAssertion" forReason:reasonCopy invalidationBlock:v15];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__STKAlertSessionEventQueue_acquireEventQueueHaltingAssertionForReason___block_invoke_3;
  block[3] = &unk_279B4C4C8;
  block[4] = self;
  v9 = v7;
  v14 = v9;
  dispatch_async(queue, block);
  v10 = v14;
  v11 = v9;

  return v9;
}

void __72__STKAlertSessionEventQueue_acquireEventQueueHaltingAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__STKAlertSessionEventQueue_acquireEventQueueHaltingAssertionForReason___block_invoke_2;
  v7[3] = &unk_279B4C4C8;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void *__72__STKAlertSessionEventQueue_acquireEventQueueHaltingAssertionForReason___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 16) count];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _queue_dequeueEventsIfPossible];
  }

  return result;
}

uint64_t __72__STKAlertSessionEventQueue_acquireEventQueueHaltingAssertionForReason___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)enqueue:(id)enqueue
{
  enqueueCopy = enqueue;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__STKAlertSessionEventQueue_enqueue___block_invoke;
  v7[3] = &unk_279B4C698;
  v7[4] = self;
  v8 = enqueueCopy;
  v6 = enqueueCopy;
  dispatch_async(queue, v7);
}

- (void)_queue_enqueueEvent:(id)event
{
  eventCopy = event;
  BSDispatchQueueAssert();
  v4 = eventCopy;
  if (eventCopy)
  {
    queue_eventQueue = self->_queue_eventQueue;
    if (!queue_eventQueue)
    {
      array = [MEMORY[0x277CBEB18] array];
      v7 = self->_queue_eventQueue;
      self->_queue_eventQueue = array;

      queue_eventQueue = self->_queue_eventQueue;
    }

    v8 = MEMORY[0x266731D40](eventCopy);
    [(NSMutableArray *)queue_eventQueue addObject:v8];

    [(STKAlertSessionEventQueue *)self _queue_dequeueEventsIfPossible];
    v4 = eventCopy;
  }
}

- (void)_queue_dequeueEventsIfPossible
{
  v16 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssert();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableArray *)self->_queue_eventQueue copy];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (![(NSMutableArray *)self->_queue_haltingAssertions count])
        {
          (*(v8 + 16))(v8);
          queue_eventQueue = self->_queue_eventQueue;
          v10 = MEMORY[0x266731D40](v8);
          [(NSMutableArray *)queue_eventQueue removeObject:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

@end