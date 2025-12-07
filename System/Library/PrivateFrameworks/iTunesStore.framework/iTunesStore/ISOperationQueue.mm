@interface ISOperationQueue
+ (id)mainQueue;
- (ISOperationQueue)init;
- (void)addOperation:(id)operation;
- (void)addOperations:(id)operations waitUntilFinished:(BOOL)finished;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation ISOperationQueue

+ (id)mainQueue
{
  pthread_once(&mainQueue_sInstanceGuard, __CreateMainQueue);
  v2 = __MainQueue;

  return v2;
}

- (ISOperationQueue)init
{
  __ISRecordSPIClassUsage(self, "/Library/Caches/com.apple.xbs/Sources/iTunesStore/src/ISOperationQueue.m", 29, a2);
  v7.receiver = self;
  v7.super_class = ISOperationQueue;
  v3 = [(ISOperationQueue *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v3->_queue;
    v3->_queue = v4;

    [(NSOperationQueue *)v3->_queue setMaxConcurrentOperationCount:3];
    [(NSOperationQueue *)v3->_queue addObserver:v3 forKeyPath:@"operationCount" options:0 context:0];
  }

  return v3;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_queue removeObserver:self forKeyPath:@"operationCount" context:0];
  [(NSOperationQueue *)self->_queue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = ISOperationQueue;
  [(ISOperationQueue *)&v3 dealloc];
}

- (void)addOperation:(id)operation
{
  operationCopy = operation;
  v4 = +[ISUniqueOperationManager sharedInstance];
  [v4 checkInOperation:operationCopy];

  [(NSOperationQueue *)self->_queue addOperation:operationCopy];
}

- (void)addOperations:(id)operations waitUntilFinished:(BOOL)finished
{
  finishedCopy = finished;
  v18 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  v7 = +[ISUniqueOperationManager sharedInstance];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = operationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 checkInOperation:{*(*(&v13 + 1) + 8 * v12++), v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [(NSOperationQueue *)self->_queue addOperations:v8 waitUntilFinished:finishedCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ISOperationQueueOperationCountChangedNotification" object:self];
}

@end