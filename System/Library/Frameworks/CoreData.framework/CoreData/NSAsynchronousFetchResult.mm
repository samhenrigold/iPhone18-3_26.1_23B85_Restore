@interface NSAsynchronousFetchResult
- (id)initForFetchRequest:(id)request withContext:(id)context andProgress:(id)progress completetionBlock:(id)block;
- (void)dealloc;
- (void)setFinalResult:(void *)result;
- (void)setOperationError:(id)error;
@end

@implementation NSAsynchronousFetchResult

- (void)dealloc
{
  [(NSFetchRequest *)[(NSAsynchronousFetchRequest *)self->_fetchRequest fetchRequest] _setAsyncResultHandle:0];

  self->_fetchRequest = 0;
  self->_finalResult = 0;
  intermediateResultCallback = self->_intermediateResultCallback;
  if (intermediateResultCallback)
  {
    _Block_release(intermediateResultCallback);
    self->_intermediateResultCallback = 0;
  }

  v4.receiver = self;
  v4.super_class = NSAsynchronousFetchResult;
  [(NSPersistentStoreAsynchronousResult *)&v4 dealloc];
}

- (id)initForFetchRequest:(id)request withContext:(id)context andProgress:(id)progress completetionBlock:(id)block
{
  v9.receiver = self;
  v9.super_class = NSAsynchronousFetchResult;
  v7 = [(NSPersistentStoreAsynchronousResult *)&v9 initWithContext:context andProgress:progress completetionBlock:block];
  if (v7)
  {
    v7->_fetchRequest = request;
  }

  return v7;
}

- (void)setFinalResult:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[7];
    if (v4 != a2)
    {

      v3[7] = a2;
    }

    fetchRequest = [v3[6] fetchRequest];

    return [fetchRequest _setAsyncResultHandle:0];
  }

  return result;
}

- (void)setOperationError:(id)error
{
  v4.receiver = self;
  v4.super_class = NSAsynchronousFetchResult;
  [(NSPersistentStoreAsynchronousResult *)&v4 setOperationError:error];
  [(NSFetchRequest *)[(NSAsynchronousFetchRequest *)self->_fetchRequest fetchRequest] _setAsyncResultHandle:0];
}

@end