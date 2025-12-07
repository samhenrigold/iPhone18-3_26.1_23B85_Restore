@interface PFOSTransactionQueue
+ (id)sharedTransactionQueueForName:(id)name;
- (PFOSTransactionQueue)initWithTransactionName:(id)name;
- (id)description;
- (void)_dispatchWork:(id)work waitUntilFinished:(BOOL)finished;
@end

@implementation PFOSTransactionQueue

+ (id)sharedTransactionQueueForName:(id)name
{
  nameCopy = name;
  if (sharedTransactionQueueForName__onceToken != -1)
  {
    +[PFOSTransactionQueue sharedTransactionQueueForName:];
  }

  if (![(__CFString *)nameCopy length])
  {

    nameCopy = @"DEFAULT_TX_QUEUE";
  }

  v4 = sharedTransactionQueueForName__nameToQueueWeakMap;
  objc_sync_enter(v4);
  v5 = [sharedTransactionQueueForName__nameToQueueWeakMap objectForKey:nameCopy];
  if (!v5)
  {
    v5 = [objc_alloc(objc_opt_class()) initWithTransactionName:nameCopy];
    [sharedTransactionQueueForName__nameToQueueWeakMap setObject:v5 forKey:nameCopy];
  }

  objc_sync_exit(v4);

  return v5;
}

uint64_t __54__PFOSTransactionQueue_sharedTransactionQueueForName___block_invoke()
{
  sharedTransactionQueueForName__nameToQueueWeakMap = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];

  return MEMORY[0x1EEE66BB8]();
}

- (PFOSTransactionQueue)initWithTransactionName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = PFOSTransactionQueue;
  v5 = [(PFOSTransactionQueue *)&v12 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    transactionName = v5->_transactionName;
    v5->_transactionName = v6;

    v8 = [@"PFOSTransaction-" stringByAppendingString:nameCopy];
    v9 = objc_opt_new();
    txOperationQueue = v5->_txOperationQueue;
    v5->_txOperationQueue = v9;

    [(NSOperationQueue *)v5->_txOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_txOperationQueue setName:v8];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_transactionName withName:@"transactionName"];
  progress = [(NSOperationQueue *)self->_txOperationQueue progress];
  v5 = [v3 appendObject:progress withName:@"progress"];

  build = [v3 build];

  return build;
}

- (void)_dispatchWork:(id)work waitUntilFinished:(BOOL)finished
{
  finishedCopy = finished;
  v19[1] = *MEMORY[0x1E69E9840];
  workCopy = work;
  if (workCopy)
  {
    transactionName = [(PFOSTransactionQueue *)self transactionName];
    txOperationQueue = self->_txOperationQueue;
    v9 = MEMORY[0x1E696AAE0];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __56__PFOSTransactionQueue__dispatchWork_waitUntilFinished___block_invoke;
    v16 = &unk_1E8189FF8;
    v17 = transactionName;
    v18 = workCopy;
    v10 = transactionName;
    v11 = [v9 blockOperationWithBlock:&v13];
    v19[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:{1, v13, v14, v15, v16}];
    [(NSOperationQueue *)txOperationQueue addOperations:v12 waitUntilFinished:finishedCopy];
  }
}

void __56__PFOSTransactionQueue__dispatchWork_waitUntilFinished___block_invoke(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  v2 = os_transaction_create();
  (*(*(a1 + 40) + 16))();
}

@end