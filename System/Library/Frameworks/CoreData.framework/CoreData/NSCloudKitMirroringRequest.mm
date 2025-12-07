@interface NSCloudKitMirroringRequest
+ (id)allRequestClasses;
- (NSCloudKitMirroringRequest)initWithActivity:(id)activity options:(id)options completionBlock:(id)block;
- (NSCloudKitMirroringRequest)initWithOptions:(id)options completionBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_invokeContainerBlocksWithResult:(void *)result;
- (void)addContainerBlock:(uint64_t)block;
- (void)dealloc;
- (void)invokeCompletionBlockWithResult:(void *)result;
@end

@implementation NSCloudKitMirroringRequest

- (void)dealloc
{
  self->_requestIdentifier = 0;

  self->_options = 0;
  self->_requestCompletionBlock = 0;

  self->_schedulerActivity = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringRequest;
  [(NSPersistentStoreRequest *)&v3 dealloc];
}

- (NSCloudKitMirroringRequest)initWithOptions:(id)options completionBlock:(id)block
{
  v10.receiver = self;
  v10.super_class = NSCloudKitMirroringRequest;
  v6 = [(NSCloudKitMirroringRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (options)
    {
      createDefaultOptions = [options copy];
    }

    else
    {
      createDefaultOptions = [(NSCloudKitMirroringRequest *)v6 createDefaultOptions];
    }

    v7->_options = createDefaultOptions;
    v7->_requestIdentifier = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v7->_requestCompletionBlock = [block copy];
    v7->_deferredByBackgroundTimeout = 0;
    v7->_containerBlocks = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v7;
}

- (NSCloudKitMirroringRequest)initWithActivity:(id)activity options:(id)options completionBlock:(id)block
{
  v6 = [(NSCloudKitMirroringRequest *)self initWithOptions:options completionBlock:block];
  if (v6)
  {
    v6->_schedulerActivity = activity;
  }

  return v6;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_msgSend_stringWithFormat_(v4, v6, self, self->_requestIdentifier);
  objc_autoreleasePoolPop(v3);

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringRequest;
  v4 = [(NSPersistentStoreRequest *)&v6 copyWithZone:zone];
  v4[2] = self->_requestIdentifier;
  v4[3] = self->_options;
  v4[4] = self->_requestCompletionBlock;
  v4[8] = self->_schedulerActivity;
  *(v4 + 56) = self->_isContainerRequest;
  v4[6] = [(NSMutableArray *)self->_containerBlocks mutableCopy];
  *(v4 + 40) = self->_deferredByBackgroundTimeout;
  return v4;
}

- (void)invokeCompletionBlockWithResult:(void *)result
{
  if (result)
  {
    v2 = result;
    v3 = result[4];
    if (v3)
    {
      (*(v3 + 16))(v3, a2);
    }

    return [NSCloudKitMirroringRequest _invokeContainerBlocksWithResult:v2];
  }

  return result;
}

- (void)_invokeContainerBlocksWithResult:(void *)result
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    v1 = result[6];
    result = [v1 countByEnumeratingWithState:&v5 objects:v9 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v6;
      do
      {
        v4 = 0;
        do
        {
          if (*v6 != v3)
          {
            objc_enumerationMutation(v1);
          }

          (*(*(*(&v5 + 1) + 8 * v4) + 16))();
          v4 = (v4 + 1);
        }

        while (v2 != v4);
        result = [v1 countByEnumeratingWithState:&v5 objects:v9 count:16];
        v2 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)addContainerBlock:(uint64_t)block
{
  if (block)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [a2 copy];
    [*(block + 48) addObject:v5];

    objc_autoreleasePoolPop(v4);
  }
}

+ (id)allRequestClasses
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:11];
  return [v2 setWithArray:{v3, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14}];
}

@end