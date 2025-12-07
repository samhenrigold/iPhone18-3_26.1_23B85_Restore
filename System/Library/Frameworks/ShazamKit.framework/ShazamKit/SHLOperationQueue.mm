@interface SHLOperationQueue
+ (id)defaultQueue;
- (NSOperation)tailOperation;
- (id)initOperationQueue;
- (void)addOperation:(id)operation waitUntilFinished:(BOOL)finished;
- (void)cancelAllOperations;
@end

@implementation SHLOperationQueue

+ (id)defaultQueue
{
  if (qword_100098298 != -1)
  {
    sub_1000241C4();
  }

  v3 = qword_100098290;

  return v3;
}

- (id)initOperationQueue
{
  v6.receiver = self;
  v6.super_class = SHLOperationQueue;
  v2 = [(SHLOperationQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setName:@"com.shazam.ShazamLibrary.operation-queue"];
    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
  }

  return v2;
}

- (void)addOperation:(id)operation waitUntilFinished:(BOOL)finished
{
  finishedCopy = finished;
  operationCopy = operation;
  tailOperation = [(SHLOperationQueue *)self tailOperation];
  if ([tailOperation isFinished])
  {
    v8 = 0;
  }

  else
  {
    tailOperation2 = [(SHLOperationQueue *)self tailOperation];
    v8 = [tailOperation2 isCancelled] ^ 1;
  }

  tailOperation3 = [(SHLOperationQueue *)self tailOperation];

  if (tailOperation3 && v8)
  {
    tailOperation4 = [(SHLOperationQueue *)self tailOperation];
    [operationCopy addDependency:tailOperation4];
  }

  [(SHLOperationQueue *)self setTailOperation:operationCopy];
  operationQueue = [(SHLOperationQueue *)self operationQueue];
  v14 = operationCopy;
  v13 = [NSArray arrayWithObjects:&v14 count:1];
  [operationQueue addOperations:v13 waitUntilFinished:finishedCopy];
}

- (void)cancelAllOperations
{
  [(SHLOperationQueue *)self setTailOperation:0];
  operationQueue = [(SHLOperationQueue *)self operationQueue];
  [operationQueue cancelAllOperations];
}

- (NSOperation)tailOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_tailOperation);

  return WeakRetained;
}

@end