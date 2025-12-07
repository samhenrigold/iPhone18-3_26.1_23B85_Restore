@interface CSEventMonitor
- (CSEventMonitor)init;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)enumerateObservers:(id)observers;
- (void)enumerateObserversInQueue:(id)queue;
- (void)notifyObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation CSEventMonitor

- (CSEventMonitor)init
{
  v8.receiver = self;
  v8.super_class = CSEventMonitor;
  v2 = [(CSEventMonitor *)&v8 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v5 = dispatch_queue_create("Serial CSEventMonitor queue", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)notifyObserver:(id)observer
{
  observerCopy = observer;
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSEventMonitorDidReceiveEvent:self];
  }
}

- (void)enumerateObservers:(id)observers
{
  v15 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  dispatch_assert_queue_V2(self->_queue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        if (observersCopy)
        {
          observersCopy[2](observersCopy, *(*(&v10 + 1) + 8 * v9));
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)enumerateObserversInQueue:(id)queue
{
  queueCopy = queue;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CSEventMonitor_enumerateObserversInQueue___block_invoke;
  v7[3] = &unk_1E865CB90;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__CSEventMonitor_removeObserver___block_invoke;
  v7[3] = &unk_1E865C970;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

void *__33__CSEventMonitor_removeObserver___block_invoke(void *result)
{
  if (result[4])
  {
    v1 = result;
    [*(result[5] + 8) removeObject:?];
    result = [*(v1[5] + 8) count];
    if (!result)
    {
      v2 = v1[5];

      return [v2 _stopMonitoring];
    }
  }

  return result;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__CSEventMonitor_addObserver___block_invoke;
  v7[3] = &unk_1E865C970;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

void *__30__CSEventMonitor_addObserver___block_invoke(void *result)
{
  if (result[4])
  {
    v1 = result;
    [*(result[5] + 8) addObject:?];
    result = [*(v1[5] + 8) count];
    if (result == 1)
    {
      v2 = v1[5];
      v3 = v2[2];

      return [v2 _startMonitoringWithQueue:v3];
    }
  }

  return result;
}

- (void)dealloc
{
  [(CSEventMonitor *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = CSEventMonitor;
  [(CSEventMonitor *)&v3 dealloc];
}

@end